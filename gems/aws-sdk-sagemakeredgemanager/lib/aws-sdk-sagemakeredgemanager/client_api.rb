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
    Checksum = Shapes::StructureShape.new(name: 'Checksum')
    ChecksumString = Shapes::StringShape.new(name: 'ChecksumString')
    ChecksumType = Shapes::StringShape.new(name: 'ChecksumType')
    Definition = Shapes::StructureShape.new(name: 'Definition')
    Definitions = Shapes::ListShape.new(name: 'Definitions')
    DeploymentModel = Shapes::StructureShape.new(name: 'DeploymentModel')
    DeploymentModels = Shapes::ListShape.new(name: 'DeploymentModels')
    DeploymentResult = Shapes::StructureShape.new(name: 'DeploymentResult')
    DeploymentStatus = Shapes::StringShape.new(name: 'DeploymentStatus')
    DeploymentType = Shapes::StringShape.new(name: 'DeploymentType')
    DeviceFleetName = Shapes::StringShape.new(name: 'DeviceFleetName')
    DeviceName = Shapes::StringShape.new(name: 'DeviceName')
    DeviceRegistration = Shapes::StringShape.new(name: 'DeviceRegistration')
    Dimension = Shapes::StringShape.new(name: 'Dimension')
    EdgeDeployment = Shapes::StructureShape.new(name: 'EdgeDeployment')
    EdgeDeployments = Shapes::ListShape.new(name: 'EdgeDeployments')
    EdgeMetric = Shapes::StructureShape.new(name: 'EdgeMetric')
    EdgeMetrics = Shapes::ListShape.new(name: 'EdgeMetrics')
    EntityName = Shapes::StringShape.new(name: 'EntityName')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    FailureHandlingPolicy = Shapes::StringShape.new(name: 'FailureHandlingPolicy')
    GetDeploymentsRequest = Shapes::StructureShape.new(name: 'GetDeploymentsRequest')
    GetDeploymentsResult = Shapes::StructureShape.new(name: 'GetDeploymentsResult')
    GetDeviceRegistrationRequest = Shapes::StructureShape.new(name: 'GetDeviceRegistrationRequest')
    GetDeviceRegistrationResult = Shapes::StructureShape.new(name: 'GetDeviceRegistrationResult')
    InternalServiceException = Shapes::StructureShape.new(name: 'InternalServiceException')
    Metric = Shapes::StringShape.new(name: 'Metric')
    Model = Shapes::StructureShape.new(name: 'Model')
    ModelName = Shapes::StringShape.new(name: 'ModelName')
    ModelState = Shapes::StringShape.new(name: 'ModelState')
    Models = Shapes::ListShape.new(name: 'Models')
    S3Uri = Shapes::StringShape.new(name: 'S3Uri')
    SendHeartbeatRequest = Shapes::StructureShape.new(name: 'SendHeartbeatRequest')
    String = Shapes::StringShape.new(name: 'String')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Value = Shapes::FloatShape.new(name: 'Value')
    Version = Shapes::StringShape.new(name: 'Version')

    Checksum.add_member(:type, Shapes::ShapeRef.new(shape: ChecksumType, location_name: "Type"))
    Checksum.add_member(:sum, Shapes::ShapeRef.new(shape: ChecksumString, location_name: "Sum"))
    Checksum.struct_class = Types::Checksum

    Definition.add_member(:model_handle, Shapes::ShapeRef.new(shape: EntityName, location_name: "ModelHandle"))
    Definition.add_member(:s3_url, Shapes::ShapeRef.new(shape: S3Uri, location_name: "S3Url"))
    Definition.add_member(:checksum, Shapes::ShapeRef.new(shape: Checksum, location_name: "Checksum"))
    Definition.add_member(:state, Shapes::ShapeRef.new(shape: ModelState, location_name: "State"))
    Definition.struct_class = Types::Definition

    Definitions.member = Shapes::ShapeRef.new(shape: Definition)

    DeploymentModel.add_member(:model_handle, Shapes::ShapeRef.new(shape: EntityName, location_name: "ModelHandle"))
    DeploymentModel.add_member(:model_name, Shapes::ShapeRef.new(shape: ModelName, location_name: "ModelName"))
    DeploymentModel.add_member(:model_version, Shapes::ShapeRef.new(shape: Version, location_name: "ModelVersion"))
    DeploymentModel.add_member(:desired_state, Shapes::ShapeRef.new(shape: ModelState, location_name: "DesiredState"))
    DeploymentModel.add_member(:state, Shapes::ShapeRef.new(shape: ModelState, location_name: "State"))
    DeploymentModel.add_member(:status, Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: "Status"))
    DeploymentModel.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "StatusReason"))
    DeploymentModel.add_member(:rollback_failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "RollbackFailureReason"))
    DeploymentModel.struct_class = Types::DeploymentModel

    DeploymentModels.member = Shapes::ShapeRef.new(shape: DeploymentModel)

    DeploymentResult.add_member(:deployment_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "DeploymentName"))
    DeploymentResult.add_member(:deployment_status, Shapes::ShapeRef.new(shape: EntityName, location_name: "DeploymentStatus"))
    DeploymentResult.add_member(:deployment_status_message, Shapes::ShapeRef.new(shape: String, location_name: "DeploymentStatusMessage"))
    DeploymentResult.add_member(:deployment_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DeploymentStartTime"))
    DeploymentResult.add_member(:deployment_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DeploymentEndTime"))
    DeploymentResult.add_member(:deployment_models, Shapes::ShapeRef.new(shape: DeploymentModels, location_name: "DeploymentModels"))
    DeploymentResult.struct_class = Types::DeploymentResult

    EdgeDeployment.add_member(:deployment_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "DeploymentName"))
    EdgeDeployment.add_member(:type, Shapes::ShapeRef.new(shape: DeploymentType, location_name: "Type"))
    EdgeDeployment.add_member(:failure_handling_policy, Shapes::ShapeRef.new(shape: FailureHandlingPolicy, location_name: "FailureHandlingPolicy"))
    EdgeDeployment.add_member(:definitions, Shapes::ShapeRef.new(shape: Definitions, location_name: "Definitions"))
    EdgeDeployment.struct_class = Types::EdgeDeployment

    EdgeDeployments.member = Shapes::ShapeRef.new(shape: EdgeDeployment)

    EdgeMetric.add_member(:dimension, Shapes::ShapeRef.new(shape: Dimension, location_name: "Dimension"))
    EdgeMetric.add_member(:metric_name, Shapes::ShapeRef.new(shape: Metric, location_name: "MetricName"))
    EdgeMetric.add_member(:value, Shapes::ShapeRef.new(shape: Value, location_name: "Value"))
    EdgeMetric.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    EdgeMetric.struct_class = Types::EdgeMetric

    EdgeMetrics.member = Shapes::ShapeRef.new(shape: EdgeMetric)

    GetDeploymentsRequest.add_member(:device_name, Shapes::ShapeRef.new(shape: DeviceName, required: true, location_name: "DeviceName"))
    GetDeploymentsRequest.add_member(:device_fleet_name, Shapes::ShapeRef.new(shape: DeviceFleetName, required: true, location_name: "DeviceFleetName"))
    GetDeploymentsRequest.struct_class = Types::GetDeploymentsRequest

    GetDeploymentsResult.add_member(:deployments, Shapes::ShapeRef.new(shape: EdgeDeployments, location_name: "Deployments"))
    GetDeploymentsResult.struct_class = Types::GetDeploymentsResult

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
    SendHeartbeatRequest.add_member(:deployment_result, Shapes::ShapeRef.new(shape: DeploymentResult, location_name: "DeploymentResult"))
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

      api.add_operation(:get_deployments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDeployments"
        o.http_method = "POST"
        o.http_request_uri = "/GetDeployments"
        o.input = Shapes::ShapeRef.new(shape: GetDeploymentsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDeploymentsResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

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
