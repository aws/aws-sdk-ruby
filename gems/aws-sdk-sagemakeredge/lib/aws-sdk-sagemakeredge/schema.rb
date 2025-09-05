# frozen_string_literal: true

# This is generated code!

module Aws::SagemakerEdge
  # This module contains a schema composed of shapes used by the client.
  module Schema

    CacheTTLSeconds = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakeredge#CacheTTLSeconds', name: 'CacheTTLSeconds', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    Checksum = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakeredge#Checksum', name: 'Checksum')
    ChecksumString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakeredge#ChecksumString', name: 'ChecksumString', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9](-*[a-z0-9])*$"})
    ChecksumType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sagemakeredge#ChecksumType', name: 'ChecksumType')
    Definition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakeredge#Definition', name: 'Definition')
    Definitions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sagemakeredge#Definitions', name: 'Definitions')
    DeploymentModel = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakeredge#DeploymentModel', name: 'DeploymentModel')
    DeploymentModels = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sagemakeredge#DeploymentModels', name: 'DeploymentModels')
    DeploymentResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakeredge#DeploymentResult', name: 'DeploymentResult')
    DeploymentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sagemakeredge#DeploymentStatus', name: 'DeploymentStatus')
    DeploymentType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sagemakeredge#DeploymentType', name: 'DeploymentType')
    DeviceFleetName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakeredge#DeviceFleetName', name: 'DeviceFleetName', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9](-*_*[a-zA-Z0-9])*$"})
    DeviceName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakeredge#DeviceName', name: 'DeviceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9](-*_*[a-zA-Z0-9])*$"})
    DeviceRegistration = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakeredge#DeviceRegistration', name: 'DeviceRegistration', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    Dimension = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakeredge#Dimension', name: 'Dimension', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[a-zA-Z0-9](-*[a-zA-Z0-9\\/])*$"})
    EdgeDeployment = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakeredge#EdgeDeployment', name: 'EdgeDeployment')
    EdgeDeployments = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sagemakeredge#EdgeDeployments', name: 'EdgeDeployments')
    EdgeMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakeredge#EdgeMetric', name: 'EdgeMetric')
    EdgeMetrics = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sagemakeredge#EdgeMetrics', name: 'EdgeMetrics')
    EntityName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakeredge#EntityName', name: 'EntityName', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9](-*[a-zA-Z0-9])*$"})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakeredge#ErrorMessage', name: 'ErrorMessage')
    FailureHandlingPolicy = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sagemakeredge#FailureHandlingPolicy', name: 'FailureHandlingPolicy')
    GetDeploymentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakeredge#GetDeploymentsRequest', name: 'GetDeploymentsRequest')
    GetDeploymentsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakeredge#GetDeploymentsResult', name: 'GetDeploymentsResult')
    GetDeviceRegistrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakeredge#GetDeviceRegistrationRequest', name: 'GetDeviceRegistrationRequest')
    GetDeviceRegistrationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakeredge#GetDeviceRegistrationResult', name: 'GetDeviceRegistrationResult')
    InternalServiceException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakeredge#InternalServiceException', name: 'InternalServiceException', traits: {"smithy.api#error" => "client"})
    Metric = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakeredge#Metric', name: 'Metric', traits: {"smithy.api#length" => {"min" => 4, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9](-*[a-zA-Z0-9])*$"})
    Model = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakeredge#Model', name: 'Model')
    ModelName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakeredge#ModelName', name: 'ModelName', traits: {"smithy.api#length" => {"min" => 4, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9](-*[a-zA-Z0-9])*$"})
    ModelState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sagemakeredge#ModelState', name: 'ModelState')
    Models = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sagemakeredge#Models', name: 'Models')
    S3Uri = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakeredge#S3Uri', name: 'S3Uri', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^s3://([^/]+)/?(.*)$"})
    SendHeartbeatRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakeredge#SendHeartbeatRequest', name: 'SendHeartbeatRequest')
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakeredge#String', name: 'String')
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.sagemakeredge#Timestamp', name: 'Timestamp')
    Value = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.sagemakeredge#Value', name: 'Value')
    Version = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakeredge#Version', name: 'Version', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9\\ \\_\\.]+$"})

    Checksum.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChecksumType, location_name: 'Type'))
    Checksum.add_member(:sum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChecksumString, location_name: 'Sum'))
    Checksum.type = Types::Checksum
    ChecksumType.add_member(:sha1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Sha1', traits: {"smithy.api#enumValue" => "SHA1"}))
    Definition.add_member(:model_handle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'ModelHandle'))
    Definition.add_member(:s3_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'S3Url'))
    Definition.add_member(:checksum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Checksum, location_name: 'Checksum'))
    Definition.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelState, location_name: 'State'))
    Definition.type = Types::Definition
    Definitions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Definition)
    DeploymentModel.add_member(:model_handle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'ModelHandle'))
    DeploymentModel.add_member(:model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'ModelName'))
    DeploymentModel.add_member(:model_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'ModelVersion'))
    DeploymentModel.add_member(:desired_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelState, location_name: 'DesiredState'))
    DeploymentModel.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelState, location_name: 'State'))
    DeploymentModel.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: 'Status'))
    DeploymentModel.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatusReason'))
    DeploymentModel.add_member(:rollback_failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RollbackFailureReason'))
    DeploymentModel.type = Types::DeploymentModel
    DeploymentModels.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentModel)
    DeploymentResult.add_member(:deployment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'DeploymentName'))
    DeploymentResult.add_member(:deployment_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'DeploymentStatus'))
    DeploymentResult.add_member(:deployment_status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeploymentStatusMessage'))
    DeploymentResult.add_member(:deployment_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DeploymentStartTime'))
    DeploymentResult.add_member(:deployment_end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DeploymentEndTime'))
    DeploymentResult.add_member(:deployment_models, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentModels, location_name: 'DeploymentModels'))
    DeploymentResult.type = Types::DeploymentResult
    DeploymentStatus.add_member(:success, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Success', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    DeploymentStatus.add_member(:fail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Fail', traits: {"smithy.api#enumValue" => "FAIL"}))
    DeploymentType.add_member(:model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Model', traits: {"smithy.api#enumValue" => "Model"}))
    EdgeDeployment.add_member(:deployment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'DeploymentName'))
    EdgeDeployment.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentType, location_name: 'Type'))
    EdgeDeployment.add_member(:failure_handling_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureHandlingPolicy, location_name: 'FailureHandlingPolicy'))
    EdgeDeployment.add_member(:definitions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Definitions, location_name: 'Definitions'))
    EdgeDeployment.type = Types::EdgeDeployment
    EdgeDeployments.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EdgeDeployment)
    EdgeMetric.add_member(:dimension, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Dimension, location_name: 'Dimension'))
    EdgeMetric.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Metric, location_name: 'MetricName'))
    EdgeMetric.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Value, location_name: 'Value'))
    EdgeMetric.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Timestamp'))
    EdgeMetric.type = Types::EdgeMetric
    EdgeMetrics.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EdgeMetric)
    FailureHandlingPolicy.add_member(:rollback_on_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RollbackOnFailure', traits: {"smithy.api#enumValue" => "ROLLBACK_ON_FAILURE"}))
    FailureHandlingPolicy.add_member(:do_nothing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DoNothing', traits: {"smithy.api#enumValue" => "DO_NOTHING"}))
    GetDeploymentsRequest.add_member(:device_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceName, location_name: 'DeviceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetDeploymentsRequest.add_member(:device_fleet_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFleetName, location_name: 'DeviceFleetName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetDeploymentsRequest.type = Types::GetDeploymentsRequest
    GetDeploymentsResult.add_member(:deployments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EdgeDeployments, location_name: 'Deployments'))
    GetDeploymentsResult.type = Types::GetDeploymentsResult
    GetDeviceRegistrationRequest.add_member(:device_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceName, location_name: 'DeviceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetDeviceRegistrationRequest.add_member(:device_fleet_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFleetName, location_name: 'DeviceFleetName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetDeviceRegistrationRequest.type = Types::GetDeviceRegistrationRequest
    GetDeviceRegistrationResult.add_member(:device_registration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceRegistration, location_name: 'DeviceRegistration'))
    GetDeviceRegistrationResult.add_member(:cache_ttl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheTTLSeconds, location_name: 'CacheTTL'))
    GetDeviceRegistrationResult.type = Types::GetDeviceRegistrationResult
    InternalServiceException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InternalServiceException.type = Types::InternalServiceException
    Model.add_member(:model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'ModelName'))
    Model.add_member(:model_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'ModelVersion'))
    Model.add_member(:latest_sample_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LatestSampleTime'))
    Model.add_member(:latest_inference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LatestInference'))
    Model.add_member(:model_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EdgeMetrics, location_name: 'ModelMetrics'))
    Model.type = Types::Model
    ModelState.add_member(:deploy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Deploy', traits: {"smithy.api#enumValue" => "DEPLOY"}))
    ModelState.add_member(:undeploy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Undeploy', traits: {"smithy.api#enumValue" => "UNDEPLOY"}))
    Models.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Model)
    SendHeartbeatRequest.add_member(:agent_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EdgeMetrics, location_name: 'AgentMetrics'))
    SendHeartbeatRequest.add_member(:models, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Models, location_name: 'Models'))
    SendHeartbeatRequest.add_member(:agent_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'AgentVersion', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SendHeartbeatRequest.add_member(:device_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceName, location_name: 'DeviceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SendHeartbeatRequest.add_member(:device_fleet_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFleetName, location_name: 'DeviceFleetName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SendHeartbeatRequest.add_member(:deployment_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentResult, location_name: 'DeploymentResult'))
    SendHeartbeatRequest.type = Types::SendHeartbeatRequest

    AmazonSageMakerEdge = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.sagemakeredge#AmazonSageMakerEdge"
      service.name = "AmazonSageMakerEdge"
      service.version = "2020-09-23"
      service.traits = {"aws.api#service" => {"sdkId" => "Sagemaker Edge", "arnNamespace" => "sagemaker", "cloudFormationName" => "SagemakerEdge", "cloudTrailEventSource" => "sagemakeredge.amazonaws.com", "endpointPrefix" => "edge.sagemaker"}, "aws.auth#sigv4" => {"name" => "sagemaker"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Sagemaker Edge Manager"}
      service.add_operation(:get_deployments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakeredge#GetDeployments"
        operation.name = "GetDeployments"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeploymentsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeploymentsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetDeployments", "code" => 200}}
      end)
      service.add_operation(:get_device_registration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakeredge#GetDeviceRegistration"
        operation.name = "GetDeviceRegistration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeviceRegistrationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeviceRegistrationResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetDeviceRegistration", "code" => 200}}
      end)
      service.add_operation(:send_heartbeat, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakeredge#SendHeartbeat"
        operation.name = "SendHeartbeat"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendHeartbeatRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/SendHeartbeat", "code" => 200}}
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
