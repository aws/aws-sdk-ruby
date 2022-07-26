# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Route53RecoveryCluster
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Arn = Shapes::StringShape.new(name: 'Arn')
    Arns = Shapes::ListShape.new(name: 'Arns')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ControlPanelName = Shapes::StringShape.new(name: 'ControlPanelName')
    EndpointTemporarilyUnavailableException = Shapes::StructureShape.new(name: 'EndpointTemporarilyUnavailableException')
    GetRoutingControlStateRequest = Shapes::StructureShape.new(name: 'GetRoutingControlStateRequest')
    GetRoutingControlStateResponse = Shapes::StructureShape.new(name: 'GetRoutingControlStateResponse')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListRoutingControlsRequest = Shapes::StructureShape.new(name: 'ListRoutingControlsRequest')
    ListRoutingControlsResponse = Shapes::StructureShape.new(name: 'ListRoutingControlsResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    PageToken = Shapes::StringShape.new(name: 'PageToken')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RetryAfterSeconds = Shapes::IntegerShape.new(name: 'RetryAfterSeconds')
    RoutingControl = Shapes::StructureShape.new(name: 'RoutingControl')
    RoutingControlName = Shapes::StringShape.new(name: 'RoutingControlName')
    RoutingControlState = Shapes::StringShape.new(name: 'RoutingControlState')
    RoutingControls = Shapes::ListShape.new(name: 'RoutingControls')
    ServiceLimitExceededException = Shapes::StructureShape.new(name: 'ServiceLimitExceededException')
    String = Shapes::StringShape.new(name: 'String')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UpdateRoutingControlStateEntries = Shapes::ListShape.new(name: 'UpdateRoutingControlStateEntries')
    UpdateRoutingControlStateEntry = Shapes::StructureShape.new(name: 'UpdateRoutingControlStateEntry')
    UpdateRoutingControlStateRequest = Shapes::StructureShape.new(name: 'UpdateRoutingControlStateRequest')
    UpdateRoutingControlStateResponse = Shapes::StructureShape.new(name: 'UpdateRoutingControlStateResponse')
    UpdateRoutingControlStatesRequest = Shapes::StructureShape.new(name: 'UpdateRoutingControlStatesRequest')
    UpdateRoutingControlStatesResponse = Shapes::StructureShape.new(name: 'UpdateRoutingControlStatesResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    Arns.member = Shapes::ShapeRef.new(shape: Arn)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    EndpointTemporarilyUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    EndpointTemporarilyUnavailableException.struct_class = Types::EndpointTemporarilyUnavailableException

    GetRoutingControlStateRequest.add_member(:routing_control_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "RoutingControlArn"))
    GetRoutingControlStateRequest.struct_class = Types::GetRoutingControlStateRequest

    GetRoutingControlStateResponse.add_member(:routing_control_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "RoutingControlArn"))
    GetRoutingControlStateResponse.add_member(:routing_control_state, Shapes::ShapeRef.new(shape: RoutingControlState, required: true, location_name: "RoutingControlState"))
    GetRoutingControlStateResponse.add_member(:routing_control_name, Shapes::ShapeRef.new(shape: RoutingControlName, location_name: "RoutingControlName"))
    GetRoutingControlStateResponse.struct_class = Types::GetRoutingControlStateResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: "retryAfterSeconds"))
    InternalServerException.struct_class = Types::InternalServerException

    ListRoutingControlsRequest.add_member(:control_panel_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ControlPanelArn"))
    ListRoutingControlsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "NextToken"))
    ListRoutingControlsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListRoutingControlsRequest.struct_class = Types::ListRoutingControlsRequest

    ListRoutingControlsResponse.add_member(:routing_controls, Shapes::ShapeRef.new(shape: RoutingControls, required: true, location_name: "RoutingControls"))
    ListRoutingControlsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "NextToken"))
    ListRoutingControlsResponse.struct_class = Types::ListRoutingControlsResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RoutingControl.add_member(:control_panel_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ControlPanelArn"))
    RoutingControl.add_member(:control_panel_name, Shapes::ShapeRef.new(shape: ControlPanelName, location_name: "ControlPanelName"))
    RoutingControl.add_member(:routing_control_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "RoutingControlArn"))
    RoutingControl.add_member(:routing_control_name, Shapes::ShapeRef.new(shape: RoutingControlName, location_name: "RoutingControlName"))
    RoutingControl.add_member(:routing_control_state, Shapes::ShapeRef.new(shape: RoutingControlState, location_name: "RoutingControlState"))
    RoutingControl.struct_class = Types::RoutingControl

    RoutingControls.member = Shapes::ShapeRef.new(shape: RoutingControl)

    ServiceLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceLimitExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ServiceLimitExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ServiceLimitExceededException.add_member(:limit_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "limitCode"))
    ServiceLimitExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceCode"))
    ServiceLimitExceededException.struct_class = Types::ServiceLimitExceededException

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: "retryAfterSeconds"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UpdateRoutingControlStateEntries.member = Shapes::ShapeRef.new(shape: UpdateRoutingControlStateEntry)

    UpdateRoutingControlStateEntry.add_member(:routing_control_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "RoutingControlArn"))
    UpdateRoutingControlStateEntry.add_member(:routing_control_state, Shapes::ShapeRef.new(shape: RoutingControlState, required: true, location_name: "RoutingControlState"))
    UpdateRoutingControlStateEntry.struct_class = Types::UpdateRoutingControlStateEntry

    UpdateRoutingControlStateRequest.add_member(:routing_control_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "RoutingControlArn"))
    UpdateRoutingControlStateRequest.add_member(:routing_control_state, Shapes::ShapeRef.new(shape: RoutingControlState, required: true, location_name: "RoutingControlState"))
    UpdateRoutingControlStateRequest.add_member(:safety_rules_to_override, Shapes::ShapeRef.new(shape: Arns, location_name: "SafetyRulesToOverride"))
    UpdateRoutingControlStateRequest.struct_class = Types::UpdateRoutingControlStateRequest

    UpdateRoutingControlStateResponse.struct_class = Types::UpdateRoutingControlStateResponse

    UpdateRoutingControlStatesRequest.add_member(:update_routing_control_state_entries, Shapes::ShapeRef.new(shape: UpdateRoutingControlStateEntries, required: true, location_name: "UpdateRoutingControlStateEntries"))
    UpdateRoutingControlStatesRequest.add_member(:safety_rules_to_override, Shapes::ShapeRef.new(shape: Arns, location_name: "SafetyRulesToOverride"))
    UpdateRoutingControlStatesRequest.struct_class = Types::UpdateRoutingControlStatesRequest

    UpdateRoutingControlStatesResponse.struct_class = Types::UpdateRoutingControlStatesResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "reason"))
    ValidationException.add_member(:fields, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fields"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2019-12-02"

      api.metadata = {
        "apiVersion" => "2019-12-02",
        "endpointPrefix" => "route53-recovery-cluster",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "serviceFullName" => "Route53 Recovery Cluster",
        "serviceId" => "Route53 Recovery Cluster",
        "signatureVersion" => "v4",
        "signingName" => "route53-recovery-cluster",
        "targetPrefix" => "ToggleCustomerAPI",
        "uid" => "route53-recovery-cluster-2019-12-02",
      }

      api.add_operation(:get_routing_control_state, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRoutingControlState"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRoutingControlStateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRoutingControlStateResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: EndpointTemporarilyUnavailableException)
      end)

      api.add_operation(:list_routing_controls, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRoutingControls"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRoutingControlsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRoutingControlsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: EndpointTemporarilyUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:update_routing_control_state, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRoutingControlState"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateRoutingControlStateRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRoutingControlStateResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: EndpointTemporarilyUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_routing_control_states, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRoutingControlStates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateRoutingControlStatesRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRoutingControlStatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: EndpointTemporarilyUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLimitExceededException)
      end)
    end

  end
end
