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
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    EndpointTemporarilyUnavailableException = Shapes::StructureShape.new(name: 'EndpointTemporarilyUnavailableException')
    GetRoutingControlStateRequest = Shapes::StructureShape.new(name: 'GetRoutingControlStateRequest')
    GetRoutingControlStateResponse = Shapes::StructureShape.new(name: 'GetRoutingControlStateResponse')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RetryAfterSeconds = Shapes::IntegerShape.new(name: 'RetryAfterSeconds')
    RoutingControlState = Shapes::StringShape.new(name: 'RoutingControlState')
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
    GetRoutingControlStateResponse.struct_class = Types::GetRoutingControlStateResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: "retryAfterSeconds"))
    InternalServerException.struct_class = Types::InternalServerException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: "retryAfterSeconds"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UpdateRoutingControlStateEntries.member = Shapes::ShapeRef.new(shape: UpdateRoutingControlStateEntry)

    UpdateRoutingControlStateEntry.add_member(:routing_control_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "RoutingControlArn"))
    UpdateRoutingControlStateEntry.add_member(:routing_control_state, Shapes::ShapeRef.new(shape: RoutingControlState, required: true, location_name: "RoutingControlState"))
    UpdateRoutingControlStateEntry.struct_class = Types::UpdateRoutingControlStateEntry

    UpdateRoutingControlStateRequest.add_member(:routing_control_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "RoutingControlArn"))
    UpdateRoutingControlStateRequest.add_member(:routing_control_state, Shapes::ShapeRef.new(shape: RoutingControlState, required: true, location_name: "RoutingControlState"))
    UpdateRoutingControlStateRequest.struct_class = Types::UpdateRoutingControlStateRequest

    UpdateRoutingControlStateResponse.struct_class = Types::UpdateRoutingControlStateResponse

    UpdateRoutingControlStatesRequest.add_member(:update_routing_control_state_entries, Shapes::ShapeRef.new(shape: UpdateRoutingControlStateEntries, required: true, location_name: "UpdateRoutingControlStateEntries"))
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
      end)
    end

  end
end
