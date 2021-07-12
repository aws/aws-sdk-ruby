# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SagemakerEdgeManager
  # @api private
  module ClientApi

    include Seahorse::Model

    CacheTTLSeconds = Shapes::StringShape.new(name: 'CacheTTLSeconds')
    DeviceFleetName = Shapes::StringShape.new(name: 'DeviceFleetName')
    DeviceName = Shapes::StringShape.new(name: 'DeviceName')
    DeviceRegistration = Shapes::StringShape.new(name: 'DeviceRegistration')
    Dimension = Shapes::StringShape.new(name: 'Dimension')
    EdgeMetric = Shapes::StructureShape.new(name: 'EdgeMetric')
    EdgeMetrics = Shapes::ListShape.new(name: 'EdgeMetrics')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    GetDeviceRegistrationRequest = Shapes::StructureShape.new(name: 'GetDeviceRegistrationRequest')
    GetDeviceRegistrationResult = Shapes::StructureShape.new(name: 'GetDeviceRegistrationResult')
    InternalServiceException = Shapes::StructureShape.new(name: 'InternalServiceException')
    Metric = Shapes::StringShape.new(name: 'Metric')
    Model = Shapes::StructureShape.new(name: 'Model')
    ModelName = Shapes::StringShape.new(name: 'ModelName')
    Models = Shapes::ListShape.new(name: 'Models')
    SendHeartbeatRequest = Shapes::StructureShape.new(name: 'SendHeartbeatRequest')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Value = Shapes::FloatShape.new(name: 'Value')
    Version = Shapes::StringShape.new(name: 'Version')

    EdgeMetric.add_member(:dimension, Shapes::ShapeRef.new(shape: Dimension, location_name: "Dimension"))
    EdgeMetric.add_member(:metric_name, Shapes::ShapeRef.new(shape: Metric, location_name: "MetricName"))
    EdgeMetric.add_member(:value, Shapes::ShapeRef.new(shape: Value, location_name: "Value"))
    EdgeMetric.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    EdgeMetric.struct_class = Types::EdgeMetric

    EdgeMetrics.member = Shapes::ShapeRef.new(shape: EdgeMetric)

    GetDeviceRegistrationRequest.add_member(:device_name, Shapes::ShapeRef.new(shape: DeviceName, required: true, location_name: "DeviceName"))
    GetDeviceRegistrationRequest.add_member(:device_fleet_name, Shapes::ShapeRef.new(shape: DeviceFleetName, required: true, location_name: "DeviceFleetName"))
    GetDeviceRegistrationRequest.struct_class = Types::GetDeviceRegistrationRequest

    GetDeviceRegistrationResult.add_member(:device_registration, Shapes::ShapeRef.new(shape: DeviceRegistration, location_name: "DeviceRegistration"))
    GetDeviceRegistrationResult.add_member(:cache_ttl, Shapes::ShapeRef.new(shape: CacheTTLSeconds, location_name: "CacheTTL"))
    GetDeviceRegistrationResult.struct_class = Types::GetDeviceRegistrationResult

    InternalServiceException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServiceException.struct_class = Types::InternalServiceException

    Model.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, location_name: "ModelName"))
    Model.add_member(:model_version, Shapes::ShapeRef.new(shape: Version, location_name: "ModelVersion"))
    Model.add_member(:latest_sample_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LatestSampleTime"))
    Model.add_member(:latest_inference, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LatestInference"))
    Model.add_member(:model_metrics, Shapes::ShapeRef.new(shape: EdgeMetrics, location_name: "ModelMetrics"))
    Model.struct_class = Types::Model

    Models.member = Shapes::ShapeRef.new(shape: Model)

    SendHeartbeatRequest.add_member(:agent_metrics, Shapes::ShapeRef.new(shape: EdgeMetrics, location_name: "AgentMetrics"))
    SendHeartbeatRequest.add_member(:models, Shapes::ShapeRef.new(shape: Models, location_name: "Models"))
    SendHeartbeatRequest.add_member(:agent_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "AgentVersion"))
    SendHeartbeatRequest.add_member(:device_name, Shapes::ShapeRef.new(shape: DeviceName, required: true, location_name: "DeviceName"))
    SendHeartbeatRequest.add_member(:device_fleet_name, Shapes::ShapeRef.new(shape: DeviceFleetName, required: true, location_name: "DeviceFleetName"))
    SendHeartbeatRequest.struct_class = Types::SendHeartbeatRequest


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-09-23"

      api.metadata = {
        "apiVersion" => "2020-09-23",
        "endpointPrefix" => "edge.sagemaker",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon Sagemaker Edge Manager",
        "serviceId" => "Sagemaker Edge",
        "signatureVersion" => "v4",
        "signingName" => "sagemaker",
        "uid" => "sagemaker-edge-2020-09-23",
      }

      api.add_operation(:get_device_registration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDeviceRegistration"
        o.http_method = "POST"
        o.http_request_uri = "/GetDeviceRegistration"
        o.input = Shapes::ShapeRef.new(shape: GetDeviceRegistrationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDeviceRegistrationResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:send_heartbeat, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendHeartbeat"
        o.http_method = "POST"
        o.http_request_uri = "/SendHeartbeat"
        o.input = Shapes::ShapeRef.new(shape: SendHeartbeatRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)
    end

  end
end
