# frozen_string_literal: true

# This is generated code!

module Aws::Route53RecoveryCluster
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycluster#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53recoverycluster#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z0-9:.\\/_-]*$"})
    Arns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53recoverycluster#Arns', name: 'Arns')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycluster#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ControlPanelName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53recoverycluster#ControlPanelName', name: 'ControlPanelName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^\\S+$"})
    EndpointTemporarilyUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycluster#EndpointTemporarilyUnavailableException', name: 'EndpointTemporarilyUnavailableException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    GetRoutingControlStateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycluster#GetRoutingControlStateRequest', name: 'GetRoutingControlStateRequest')
    GetRoutingControlStateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycluster#GetRoutingControlStateResponse', name: 'GetRoutingControlStateResponse')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycluster#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListRoutingControlsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycluster#ListRoutingControlsRequest', name: 'ListRoutingControlsRequest')
    ListRoutingControlsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycluster#ListRoutingControlsResponse', name: 'ListRoutingControlsResponse')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.route53recoverycluster#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1}})
    Owner = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53recoverycluster#Owner', name: 'Owner', traits: {"smithy.api#length" => {"min" => 12, "max" => 1024}, "smithy.api#pattern" => "^\\S+$"})
    PageToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53recoverycluster#PageToken', name: 'PageToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 8096}, "smithy.api#pattern" => "^[\\S]*$"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycluster#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RetryAfterSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.route53recoverycluster#RetryAfterSeconds', name: 'RetryAfterSeconds', traits: {"smithy.api#default" => 0})
    RoutingControl = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycluster#RoutingControl', name: 'RoutingControl')
    RoutingControlName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53recoverycluster#RoutingControlName', name: 'RoutingControlName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^\\S+$"})
    RoutingControlState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53recoverycluster#RoutingControlState', name: 'RoutingControlState')
    RoutingControls = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53recoverycluster#RoutingControls', name: 'RoutingControls')
    ServiceLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycluster#ServiceLimitExceededException', name: 'ServiceLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53recoverycluster#String', name: 'String')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycluster#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UpdateRoutingControlStateEntries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53recoverycluster#UpdateRoutingControlStateEntries', name: 'UpdateRoutingControlStateEntries')
    UpdateRoutingControlStateEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycluster#UpdateRoutingControlStateEntry', name: 'UpdateRoutingControlStateEntry')
    UpdateRoutingControlStateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycluster#UpdateRoutingControlStateRequest', name: 'UpdateRoutingControlStateRequest')
    UpdateRoutingControlStateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycluster#UpdateRoutingControlStateResponse', name: 'UpdateRoutingControlStateResponse')
    UpdateRoutingControlStatesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycluster#UpdateRoutingControlStatesRequest', name: 'UpdateRoutingControlStatesRequest')
    UpdateRoutingControlStatesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycluster#UpdateRoutingControlStatesResponse', name: 'UpdateRoutingControlStatesResponse')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycluster#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycluster#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53recoverycluster#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53recoverycluster#ValidationExceptionReason', name: 'ValidationExceptionReason')

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    Arns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#documentation" => "Description of the ConflictException error", "smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "Identifier of the resource in use", "smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "Type of the resource in use", "smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    EndpointTemporarilyUnavailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    EndpointTemporarilyUnavailableException.type = Types::EndpointTemporarilyUnavailableException
    GetRoutingControlStateRequest.add_member(:routing_control_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'RoutingControlArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the routing control that you want to get the state for.</p>", "smithy.api#required" => {}}))
    GetRoutingControlStateRequest.type = Types::GetRoutingControlStateRequest
    GetRoutingControlStateResponse.add_member(:routing_control_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'RoutingControlArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the response.</p>", "smithy.api#required" => {}}))
    GetRoutingControlStateResponse.add_member(:routing_control_state, Smithy::Schema::Shapes::ShapeRef.new(shape: RoutingControlState, location_name: 'RoutingControlState', traits: {"smithy.api#documentation" => "<p>The state of the routing control.</p>", "smithy.api#required" => {}}))
    GetRoutingControlStateResponse.add_member(:routing_control_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RoutingControlName, location_name: 'RoutingControlName', traits: {"smithy.api#documentation" => "<p>The routing control name.</p>"}))
    GetRoutingControlStateResponse.type = Types::GetRoutingControlStateResponse
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: 'retryAfterSeconds', traits: {"smithy.api#default" => 0, "smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    ListRoutingControlsRequest.add_member(:control_panel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ControlPanelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the control panel of the routing controls to list.</p>"}))
    ListRoutingControlsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. You receive this token from a previous call.</p>"}))
    ListRoutingControlsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The number of routing controls objects that you want to return with this call. The default value is 500.</p>"}))
    ListRoutingControlsRequest.type = Types::ListRoutingControlsRequest
    ListRoutingControlsResponse.add_member(:routing_controls, Smithy::Schema::Shapes::ShapeRef.new(shape: RoutingControls, location_name: 'RoutingControls', traits: {"smithy.api#documentation" => "<p>The list of routing controls.</p>", "smithy.api#required" => {}}))
    ListRoutingControlsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. You receive this token from a previous call.</p>"}))
    ListRoutingControlsResponse.type = Types::ListRoutingControlsResponse
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "Hypothetical resource identifier that was not found", "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "Hypothetical resource type that was not found", "smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RoutingControl.add_member(:control_panel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ControlPanelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the control panel where the routing control is located.</p>"}))
    RoutingControl.add_member(:control_panel_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlPanelName, location_name: 'ControlPanelName', traits: {"smithy.api#documentation" => "<p>The name of the control panel where the routing control is located. Only ASCII characters are supported for control\n\t\tpanel names.</p>"}))
    RoutingControl.add_member(:routing_control_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'RoutingControlArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the routing control.</p>"}))
    RoutingControl.add_member(:routing_control_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RoutingControlName, location_name: 'RoutingControlName', traits: {"smithy.api#documentation" => "<p>The name of the routing control.</p>"}))
    RoutingControl.add_member(:routing_control_state, Smithy::Schema::Shapes::ShapeRef.new(shape: RoutingControlState, location_name: 'RoutingControlState', traits: {"smithy.api#documentation" => "<p>The current state of the routing control. When a routing control state is set to ON, traffic flows to a cell. When\n\t\t\tthe state is set to OFF, traffic does not flow. </p>"}))
    RoutingControl.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: Owner, location_name: 'Owner', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the routing control owner.</p>"}))
    RoutingControl.type = Types::RoutingControl
    RoutingControlState.add_member(:on, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'On', traits: {"smithy.api#enumValue" => "On"}))
    RoutingControlState.add_member(:off, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Off', traits: {"smithy.api#enumValue" => "Off"}))
    RoutingControls.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RoutingControl)
    ServiceLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceLimitExceededException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The resource identifier of the limit that was exceeded.</p>"}))
    ServiceLimitExceededException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The resource type of the limit that was exceeded.</p>"}))
    ServiceLimitExceededException.add_member(:limit_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'limitCode', traits: {"smithy.api#documentation" => "<p>The code of the limit that was exceeded.</p>", "smithy.api#required" => {}}))
    ServiceLimitExceededException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceCode', traits: {"smithy.api#documentation" => "<p>The service code of the limit that was exceeded.</p>", "smithy.api#required" => {}}))
    ServiceLimitExceededException.type = Types::ServiceLimitExceededException
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: 'retryAfterSeconds', traits: {"smithy.api#default" => 0, "smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UpdateRoutingControlStateEntries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRoutingControlStateEntry)
    UpdateRoutingControlStateEntry.add_member(:routing_control_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'RoutingControlArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for a routing control state entry.</p>", "smithy.api#required" => {}}))
    UpdateRoutingControlStateEntry.add_member(:routing_control_state, Smithy::Schema::Shapes::ShapeRef.new(shape: RoutingControlState, location_name: 'RoutingControlState', traits: {"smithy.api#documentation" => "<p>The routing control state in a set of routing control state entries.</p>", "smithy.api#required" => {}}))
    UpdateRoutingControlStateEntry.type = Types::UpdateRoutingControlStateEntry
    UpdateRoutingControlStateRequest.add_member(:routing_control_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'RoutingControlArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the routing control that you want to update the state for.</p>", "smithy.api#required" => {}}))
    UpdateRoutingControlStateRequest.add_member(:routing_control_state, Smithy::Schema::Shapes::ShapeRef.new(shape: RoutingControlState, location_name: 'RoutingControlState', traits: {"smithy.api#documentation" => "<p>The state of the routing control. You can set the value to ON or OFF.</p>", "smithy.api#required" => {}}))
    UpdateRoutingControlStateRequest.add_member(:safety_rules_to_override, Smithy::Schema::Shapes::ShapeRef.new(shape: Arns, location_name: 'SafetyRulesToOverride', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Names (ARNs) for the safety rules that you want to override when you're updating the state of\n\t\t\ta routing control. You can override one safety rule or multiple safety rules by including one or more ARNs, separated \n\t\t\tby commas.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html\">\n\t\t\tOverride safety rules to reroute traffic</a> in the Amazon Route 53 Application Recovery Controller Developer Guide.</p>"}))
    UpdateRoutingControlStateRequest.type = Types::UpdateRoutingControlStateRequest
    UpdateRoutingControlStateResponse.type = Types::UpdateRoutingControlStateResponse
    UpdateRoutingControlStatesRequest.add_member(:update_routing_control_state_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRoutingControlStateEntries, location_name: 'UpdateRoutingControlStateEntries', traits: {"smithy.api#documentation" => "<p>A set of routing control entries that you want to update.</p>", "smithy.api#required" => {}}))
    UpdateRoutingControlStatesRequest.add_member(:safety_rules_to_override, Smithy::Schema::Shapes::ShapeRef.new(shape: Arns, location_name: 'SafetyRulesToOverride', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Names (ARNs) for the safety rules that you want to override when you're updating routing\n\t\t\tcontrol states. You can override one safety rule or multiple safety rules by including one or more ARNs, separated \n\t\t\tby commas.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html\">\n\t\t\tOverride safety rules to reroute traffic</a> in the Amazon Route 53 Application Recovery Controller Developer Guide.</p>"}))
    UpdateRoutingControlStatesRequest.type = Types::UpdateRoutingControlStatesRequest
    UpdateRoutingControlStatesResponse.type = Types::UpdateRoutingControlStatesResponse
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason'))
    ValidationException.add_member(:fields, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fields'))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The field that had the validation exception.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Information about the validation exception.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    ValidationExceptionReason.add_member(:unknown_operation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_OPERATION', traits: {"smithy.api#enumValue" => "unknownOperation"}))
    ValidationExceptionReason.add_member(:cannot_parse, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANNOT_PARSE', traits: {"smithy.api#enumValue" => "cannotParse"}))
    ValidationExceptionReason.add_member(:field_validation_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIELD_VALIDATION_FAILED', traits: {"smithy.api#enumValue" => "fieldValidationFailed"}))
    ValidationExceptionReason.add_member(:other, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "other"}))

    ToggleCustomerAPI = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.route53recoverycluster#ToggleCustomerAPI"
      service.name = "ToggleCustomerAPI"
      service.version = "2019-12-02"
      service.traits = {"aws.api#service" => {"sdkId" => "Route53 Recovery Cluster", "arnNamespace" => "route53-recovery-cluster", "cloudFormationName" => "Route53RecoveryCluster", "cloudTrailEventSource" => "route53recoverycluster.amazonaws.com", "endpointPrefix" => "route53-recovery-cluster"}, "aws.auth#sigv4" => {"name" => "route53-recovery-cluster"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "Route53 Recovery Cluster"}
      service.add_operation(:get_routing_control_state, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycluster#GetRoutingControlState"
        operation.name = "GetRoutingControlState"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRoutingControlStateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRoutingControlStateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointTemporarilyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:list_routing_controls, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycluster#ListRoutingControls"
        operation.name = "ListRoutingControls"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRoutingControlsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRoutingControlsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointTemporarilyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListRoutingControls.new
      end)
      service.add_operation(:update_routing_control_state, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycluster#UpdateRoutingControlState"
        operation.name = "UpdateRoutingControlState"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRoutingControlStateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRoutingControlStateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointTemporarilyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_routing_control_states, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycluster#UpdateRoutingControlStates"
        operation.name = "UpdateRoutingControlStates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRoutingControlStatesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRoutingControlStatesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointTemporarilyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
