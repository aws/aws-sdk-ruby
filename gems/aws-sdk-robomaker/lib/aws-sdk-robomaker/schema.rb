# frozen_string_literal: true

# This is generated code!

module Aws::RoboMaker
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Architecture = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#Architecture', name: 'Architecture')
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1224}, "smithy.api#pattern" => "^arn:"})
    Arns = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#Arns', name: 'Arns', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    BatchDeleteWorldsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#BatchDeleteWorldsRequest', name: 'BatchDeleteWorldsRequest')
    BatchDeleteWorldsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#BatchDeleteWorldsResponse', name: 'BatchDeleteWorldsResponse')
    BatchDescribeSimulationJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#BatchDescribeSimulationJobRequest', name: 'BatchDescribeSimulationJobRequest')
    BatchDescribeSimulationJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#BatchDescribeSimulationJobResponse', name: 'BatchDescribeSimulationJobResponse')
    BatchPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#BatchPolicy', name: 'BatchPolicy')
    BatchTimeoutInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.robomaker#BatchTimeoutInSeconds', name: 'BatchTimeoutInSeconds')
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.robomaker#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    BoxedBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.robomaker#BoxedBoolean', name: 'BoxedBoolean')
    CancelDeploymentJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CancelDeploymentJobRequest', name: 'CancelDeploymentJobRequest', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    CancelDeploymentJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CancelDeploymentJobResponse', name: 'CancelDeploymentJobResponse', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    CancelSimulationJobBatchRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CancelSimulationJobBatchRequest', name: 'CancelSimulationJobBatchRequest')
    CancelSimulationJobBatchResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CancelSimulationJobBatchResponse', name: 'CancelSimulationJobBatchResponse')
    CancelSimulationJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CancelSimulationJobRequest', name: 'CancelSimulationJobRequest')
    CancelSimulationJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CancelSimulationJobResponse', name: 'CancelSimulationJobResponse')
    CancelWorldExportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CancelWorldExportJobRequest', name: 'CancelWorldExportJobRequest')
    CancelWorldExportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CancelWorldExportJobResponse', name: 'CancelWorldExportJobResponse')
    CancelWorldGenerationJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CancelWorldGenerationJobRequest', name: 'CancelWorldGenerationJobRequest')
    CancelWorldGenerationJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CancelWorldGenerationJobResponse', name: 'CancelWorldGenerationJobResponse')
    ClientRequestToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#ClientRequestToken', name: 'ClientRequestToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-=]*$"})
    Command = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#Command', name: 'Command', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[a-zA-Z0-9_.\\-]*$"})
    CommandList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#CommandList', name: 'CommandList')
    Compute = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#Compute', name: 'Compute')
    ComputeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ComputeResponse', name: 'ComputeResponse')
    ComputeType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#ComputeType', name: 'ComputeType')
    ConcurrentDeploymentException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ConcurrentDeploymentException', name: 'ConcurrentDeploymentException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CreateDeploymentJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateDeploymentJobRequest', name: 'CreateDeploymentJobRequest', traits: {"smithy.api#deprecated" => {"message" => "AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    CreateDeploymentJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateDeploymentJobResponse', name: 'CreateDeploymentJobResponse', traits: {"smithy.api#deprecated" => {"message" => "AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    CreateFleetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateFleetRequest', name: 'CreateFleetRequest', traits: {"smithy.api#deprecated" => {"message" => "AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    CreateFleetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateFleetResponse', name: 'CreateFleetResponse', traits: {"smithy.api#deprecated" => {"message" => "AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    CreateRobotApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateRobotApplicationRequest', name: 'CreateRobotApplicationRequest')
    CreateRobotApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateRobotApplicationResponse', name: 'CreateRobotApplicationResponse')
    CreateRobotApplicationVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateRobotApplicationVersionRequest', name: 'CreateRobotApplicationVersionRequest')
    CreateRobotApplicationVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateRobotApplicationVersionResponse', name: 'CreateRobotApplicationVersionResponse')
    CreateRobotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateRobotRequest', name: 'CreateRobotRequest', traits: {"smithy.api#deprecated" => {"message" => "AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    CreateRobotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateRobotResponse', name: 'CreateRobotResponse', traits: {"smithy.api#deprecated" => {"message" => "AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    CreateSimulationApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateSimulationApplicationRequest', name: 'CreateSimulationApplicationRequest')
    CreateSimulationApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateSimulationApplicationResponse', name: 'CreateSimulationApplicationResponse')
    CreateSimulationApplicationVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateSimulationApplicationVersionRequest', name: 'CreateSimulationApplicationVersionRequest')
    CreateSimulationApplicationVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateSimulationApplicationVersionResponse', name: 'CreateSimulationApplicationVersionResponse')
    CreateSimulationJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateSimulationJobRequest', name: 'CreateSimulationJobRequest')
    CreateSimulationJobRequests = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#CreateSimulationJobRequests', name: 'CreateSimulationJobRequests', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    CreateSimulationJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateSimulationJobResponse', name: 'CreateSimulationJobResponse')
    CreateWorldExportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateWorldExportJobRequest', name: 'CreateWorldExportJobRequest')
    CreateWorldExportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateWorldExportJobResponse', name: 'CreateWorldExportJobResponse')
    CreateWorldGenerationJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateWorldGenerationJobRequest', name: 'CreateWorldGenerationJobRequest')
    CreateWorldGenerationJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateWorldGenerationJobResponse', name: 'CreateWorldGenerationJobResponse')
    CreateWorldTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateWorldTemplateRequest', name: 'CreateWorldTemplateRequest')
    CreateWorldTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateWorldTemplateResponse', name: 'CreateWorldTemplateResponse')
    CreatedAt = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.robomaker#CreatedAt', name: 'CreatedAt')
    DataSource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DataSource', name: 'DataSource')
    DataSourceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DataSourceConfig', name: 'DataSourceConfig')
    DataSourceConfigs = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#DataSourceConfigs', name: 'DataSourceConfigs', traits: {"smithy.api#length" => {"min" => 1, "max" => 6}})
    DataSourceNames = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#DataSourceNames', name: 'DataSourceNames')
    DataSourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#DataSourceType', name: 'DataSourceType')
    DataSources = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#DataSources', name: 'DataSources')
    DeleteFleetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DeleteFleetRequest', name: 'DeleteFleetRequest', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    DeleteFleetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DeleteFleetResponse', name: 'DeleteFleetResponse', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    DeleteRobotApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DeleteRobotApplicationRequest', name: 'DeleteRobotApplicationRequest')
    DeleteRobotApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DeleteRobotApplicationResponse', name: 'DeleteRobotApplicationResponse')
    DeleteRobotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DeleteRobotRequest', name: 'DeleteRobotRequest', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    DeleteRobotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DeleteRobotResponse', name: 'DeleteRobotResponse', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    DeleteSimulationApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DeleteSimulationApplicationRequest', name: 'DeleteSimulationApplicationRequest')
    DeleteSimulationApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DeleteSimulationApplicationResponse', name: 'DeleteSimulationApplicationResponse')
    DeleteWorldTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DeleteWorldTemplateRequest', name: 'DeleteWorldTemplateRequest')
    DeleteWorldTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DeleteWorldTemplateResponse', name: 'DeleteWorldTemplateResponse')
    DeploymentApplicationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DeploymentApplicationConfig', name: 'DeploymentApplicationConfig')
    DeploymentApplicationConfigs = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#DeploymentApplicationConfigs', name: 'DeploymentApplicationConfigs', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    DeploymentConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DeploymentConfig', name: 'DeploymentConfig')
    DeploymentJob = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DeploymentJob', name: 'DeploymentJob')
    DeploymentJobErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#DeploymentJobErrorCode', name: 'DeploymentJobErrorCode')
    DeploymentJobs = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#DeploymentJobs', name: 'DeploymentJobs', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    DeploymentLaunchConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DeploymentLaunchConfig', name: 'DeploymentLaunchConfig')
    DeploymentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#DeploymentStatus', name: 'DeploymentStatus')
    DeploymentTimeout = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.robomaker#DeploymentTimeout', name: 'DeploymentTimeout')
    DeploymentVersion = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#DeploymentVersion', name: 'DeploymentVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[0-9]*$"})
    DeregisterRobotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DeregisterRobotRequest', name: 'DeregisterRobotRequest', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    DeregisterRobotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DeregisterRobotResponse', name: 'DeregisterRobotResponse', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    DescribeDeploymentJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeDeploymentJobRequest', name: 'DescribeDeploymentJobRequest', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    DescribeDeploymentJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeDeploymentJobResponse', name: 'DescribeDeploymentJobResponse', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    DescribeFleetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeFleetRequest', name: 'DescribeFleetRequest', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    DescribeFleetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeFleetResponse', name: 'DescribeFleetResponse', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    DescribeRobotApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeRobotApplicationRequest', name: 'DescribeRobotApplicationRequest')
    DescribeRobotApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeRobotApplicationResponse', name: 'DescribeRobotApplicationResponse')
    DescribeRobotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeRobotRequest', name: 'DescribeRobotRequest', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    DescribeRobotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeRobotResponse', name: 'DescribeRobotResponse', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    DescribeSimulationApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeSimulationApplicationRequest', name: 'DescribeSimulationApplicationRequest')
    DescribeSimulationApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeSimulationApplicationResponse', name: 'DescribeSimulationApplicationResponse')
    DescribeSimulationJobBatchRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeSimulationJobBatchRequest', name: 'DescribeSimulationJobBatchRequest')
    DescribeSimulationJobBatchResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeSimulationJobBatchResponse', name: 'DescribeSimulationJobBatchResponse')
    DescribeSimulationJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeSimulationJobRequest', name: 'DescribeSimulationJobRequest')
    DescribeSimulationJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeSimulationJobResponse', name: 'DescribeSimulationJobResponse')
    DescribeWorldExportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeWorldExportJobRequest', name: 'DescribeWorldExportJobRequest')
    DescribeWorldExportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeWorldExportJobResponse', name: 'DescribeWorldExportJobResponse')
    DescribeWorldGenerationJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeWorldGenerationJobRequest', name: 'DescribeWorldGenerationJobRequest')
    DescribeWorldGenerationJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeWorldGenerationJobResponse', name: 'DescribeWorldGenerationJobResponse')
    DescribeWorldRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeWorldRequest', name: 'DescribeWorldRequest')
    DescribeWorldResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeWorldResponse', name: 'DescribeWorldResponse')
    DescribeWorldTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeWorldTemplateRequest', name: 'DescribeWorldTemplateRequest')
    DescribeWorldTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeWorldTemplateResponse', name: 'DescribeWorldTemplateResponse')
    Environment = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#Environment', name: 'Environment')
    EnvironmentVariableKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#EnvironmentVariableKey', name: 'EnvironmentVariableKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[A-Z_][A-Z0-9_]*$"})
    EnvironmentVariableMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.robomaker#EnvironmentVariableMap', name: 'EnvironmentVariableMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    EnvironmentVariableValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#EnvironmentVariableValue', name: 'EnvironmentVariableValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => ".*"})
    ExitBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#ExitBehavior', name: 'ExitBehavior')
    FailedAt = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.robomaker#FailedAt', name: 'FailedAt')
    FailedCreateSimulationJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#FailedCreateSimulationJobRequest', name: 'FailedCreateSimulationJobRequest')
    FailedCreateSimulationJobRequests = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#FailedCreateSimulationJobRequests', name: 'FailedCreateSimulationJobRequests')
    FailureBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#FailureBehavior', name: 'FailureBehavior')
    FailureSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#FailureSummary', name: 'FailureSummary')
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#Filter', name: 'Filter')
    FilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#FilterValues', name: 'FilterValues', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    Filters = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#Filters', name: 'Filters', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    FinishedWorldsSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#FinishedWorldsSummary', name: 'FinishedWorldsSummary')
    Fleet = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#Fleet', name: 'Fleet')
    Fleets = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#Fleets', name: 'Fleets', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    FloorplanCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.robomaker#FloorplanCount', name: 'FloorplanCount')
    GPUUnit = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.robomaker#GPUUnit', name: 'GPUUnit', traits: {"smithy.api#range" => {"min" => 0, "max" => 1}})
    GenericInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.robomaker#GenericInteger', name: 'GenericInteger')
    GenericString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#GenericString', name: 'GenericString', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => ".*"})
    GetWorldTemplateBodyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#GetWorldTemplateBodyRequest', name: 'GetWorldTemplateBodyRequest')
    GetWorldTemplateBodyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#GetWorldTemplateBodyResponse', name: 'GetWorldTemplateBodyResponse')
    IamRole = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#IamRole', name: 'IamRole', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^arn:aws:iam::\\w+:role/"})
    Id = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#Id', name: 'Id', traits: {"smithy.api#length" => {"min" => 1, "max" => 1224}, "smithy.api#pattern" => ".*"})
    IdempotentParameterMismatchException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#IdempotentParameterMismatchException', name: 'IdempotentParameterMismatchException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ImageDigest = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#ImageDigest', name: 'ImageDigest', traits: {"smithy.api#length" => {"min" => 0, "max" => 72}, "smithy.api#pattern" => "^[Ss][Hh][Aa]256:[0-9a-fA-F]{64}$"})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.robomaker#Integer', name: 'Integer', traits: {"smithy.api#default" => 0})
    InteriorCountPerFloorplan = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.robomaker#InteriorCountPerFloorplan', name: 'InteriorCountPerFloorplan')
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#InvalidParameterException', name: 'InvalidParameterException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    JobDuration = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.robomaker#JobDuration', name: 'JobDuration', traits: {"smithy.api#default" => 0})
    Json = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#Json', name: 'Json', traits: {"smithy.api#length" => {"min" => 1, "max" => 262144}, "smithy.api#pattern" => "^[\\S\\s]+$"})
    LastStartedAt = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.robomaker#LastStartedAt', name: 'LastStartedAt')
    LastUpdatedAt = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.robomaker#LastUpdatedAt', name: 'LastUpdatedAt')
    LaunchConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#LaunchConfig', name: 'LaunchConfig')
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListDeploymentJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListDeploymentJobsRequest', name: 'ListDeploymentJobsRequest', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    ListDeploymentJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListDeploymentJobsResponse', name: 'ListDeploymentJobsResponse', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    ListFleetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListFleetsRequest', name: 'ListFleetsRequest', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    ListFleetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListFleetsResponse', name: 'ListFleetsResponse', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    ListRobotApplicationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListRobotApplicationsRequest', name: 'ListRobotApplicationsRequest')
    ListRobotApplicationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListRobotApplicationsResponse', name: 'ListRobotApplicationsResponse')
    ListRobotsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListRobotsRequest', name: 'ListRobotsRequest', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    ListRobotsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListRobotsResponse', name: 'ListRobotsResponse', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    ListSimulationApplicationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListSimulationApplicationsRequest', name: 'ListSimulationApplicationsRequest')
    ListSimulationApplicationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListSimulationApplicationsResponse', name: 'ListSimulationApplicationsResponse')
    ListSimulationJobBatchesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListSimulationJobBatchesRequest', name: 'ListSimulationJobBatchesRequest')
    ListSimulationJobBatchesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListSimulationJobBatchesResponse', name: 'ListSimulationJobBatchesResponse')
    ListSimulationJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListSimulationJobsRequest', name: 'ListSimulationJobsRequest')
    ListSimulationJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListSimulationJobsResponse', name: 'ListSimulationJobsResponse')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListWorldExportJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListWorldExportJobsRequest', name: 'ListWorldExportJobsRequest')
    ListWorldExportJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListWorldExportJobsResponse', name: 'ListWorldExportJobsResponse')
    ListWorldGenerationJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListWorldGenerationJobsRequest', name: 'ListWorldGenerationJobsRequest')
    ListWorldGenerationJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListWorldGenerationJobsResponse', name: 'ListWorldGenerationJobsResponse')
    ListWorldTemplatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListWorldTemplatesRequest', name: 'ListWorldTemplatesRequest')
    ListWorldTemplatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListWorldTemplatesResponse', name: 'ListWorldTemplatesResponse')
    ListWorldsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListWorldsRequest', name: 'ListWorldsRequest')
    ListWorldsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListWorldsResponse', name: 'ListWorldsResponse')
    LoggingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#LoggingConfig', name: 'LoggingConfig')
    MaxConcurrency = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.robomaker#MaxConcurrency', name: 'MaxConcurrency')
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.robomaker#MaxResults', name: 'MaxResults')
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#Name', name: 'Name', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-]*$"})
    NetworkInterface = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#NetworkInterface', name: 'NetworkInterface')
    NonEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#NonEmptyString', name: 'NonEmptyString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^.+$"})
    NonSystemPort = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.robomaker#NonSystemPort', name: 'NonSystemPort', traits: {"smithy.api#range" => {"min" => 1024, "max" => 65535}})
    OutputLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#OutputLocation', name: 'OutputLocation')
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9_.\\-\\/+=]*$"})
    Path = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#Path', name: 'Path', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => ".*"})
    PercentDone = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.robomaker#PercentDone', name: 'PercentDone', traits: {"smithy.api#range" => {"min" => 0.0, "max" => 100.0}})
    Percentage = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.robomaker#Percentage', name: 'Percentage', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    Port = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.robomaker#Port', name: 'Port', traits: {"smithy.api#range" => {"min" => 1, "max" => 65535}})
    PortForwardingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#PortForwardingConfig', name: 'PortForwardingConfig')
    PortMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#PortMapping', name: 'PortMapping')
    PortMappingList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#PortMappingList', name: 'PortMappingList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ProgressDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ProgressDetail', name: 'ProgressDetail')
    RegisterRobotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#RegisterRobotRequest', name: 'RegisterRobotRequest', traits: {"smithy.api#deprecated" => {"message" => "AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    RegisterRobotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#RegisterRobotResponse', name: 'RegisterRobotResponse', traits: {"smithy.api#deprecated" => {"message" => "AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    RenderingEngine = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#RenderingEngine', name: 'RenderingEngine')
    RenderingEngineType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#RenderingEngineType', name: 'RenderingEngineType')
    RenderingEngineVersionType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#RenderingEngineVersionType', name: 'RenderingEngineVersionType', traits: {"smithy.api#length" => {"min" => 1, "max" => 4}, "smithy.api#pattern" => "^1.x$"})
    RepositoryUrl = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#RepositoryUrl', name: 'RepositoryUrl', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^.+$"})
    ResourceAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ResourceAlreadyExistsException', name: 'ResourceAlreadyExistsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    RestartSimulationJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#RestartSimulationJobRequest', name: 'RestartSimulationJobRequest')
    RestartSimulationJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#RestartSimulationJobResponse', name: 'RestartSimulationJobResponse')
    RevisionId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#RevisionId', name: 'RevisionId', traits: {"smithy.api#length" => {"min" => 1, "max" => 40}, "smithy.api#pattern" => "^[a-zA-Z0-9_.\\-]*$"})
    Robot = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#Robot', name: 'Robot')
    RobotApplicationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#RobotApplicationConfig', name: 'RobotApplicationConfig')
    RobotApplicationConfigs = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#RobotApplicationConfigs', name: 'RobotApplicationConfigs', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    RobotApplicationNames = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#RobotApplicationNames', name: 'RobotApplicationNames')
    RobotApplicationSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#RobotApplicationSummaries', name: 'RobotApplicationSummaries', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    RobotApplicationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#RobotApplicationSummary', name: 'RobotApplicationSummary')
    RobotDeployment = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#RobotDeployment', name: 'RobotDeployment')
    RobotDeploymentStep = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#RobotDeploymentStep', name: 'RobotDeploymentStep')
    RobotDeploymentSummary = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#RobotDeploymentSummary', name: 'RobotDeploymentSummary')
    RobotSoftwareSuite = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#RobotSoftwareSuite', name: 'RobotSoftwareSuite')
    RobotSoftwareSuiteType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#RobotSoftwareSuiteType', name: 'RobotSoftwareSuiteType')
    RobotSoftwareSuiteVersionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#RobotSoftwareSuiteVersionType', name: 'RobotSoftwareSuiteVersionType')
    RobotStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#RobotStatus', name: 'RobotStatus')
    Robots = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#Robots', name: 'Robots', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    S3Bucket = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#S3Bucket', name: 'S3Bucket', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9][a-z0-9.\\-]*[a-z0-9]$"})
    S3Etag = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#S3Etag', name: 'S3Etag')
    S3Etags = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#S3Etags', name: 'S3Etags')
    S3Key = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#S3Key', name: 'S3Key', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => ".*"})
    S3KeyOrPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#S3KeyOrPrefix', name: 'S3KeyOrPrefix', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => ".*"})
    S3KeyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#S3KeyOutput', name: 'S3KeyOutput')
    S3KeyOutputs = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#S3KeyOutputs', name: 'S3KeyOutputs')
    S3KeysOrPrefixes = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#S3KeysOrPrefixes', name: 'S3KeysOrPrefixes', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    S3Object = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#S3Object', name: 'S3Object')
    SecurityGroups = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#SecurityGroups', name: 'SecurityGroups', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ServiceUnavailableException', name: 'ServiceUnavailableException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SimulationApplicationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#SimulationApplicationConfig', name: 'SimulationApplicationConfig')
    SimulationApplicationConfigs = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#SimulationApplicationConfigs', name: 'SimulationApplicationConfigs', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    SimulationApplicationNames = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#SimulationApplicationNames', name: 'SimulationApplicationNames')
    SimulationApplicationSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#SimulationApplicationSummaries', name: 'SimulationApplicationSummaries', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    SimulationApplicationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#SimulationApplicationSummary', name: 'SimulationApplicationSummary')
    SimulationJob = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#SimulationJob', name: 'SimulationJob')
    SimulationJobBatchErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#SimulationJobBatchErrorCode', name: 'SimulationJobBatchErrorCode')
    SimulationJobBatchStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#SimulationJobBatchStatus', name: 'SimulationJobBatchStatus')
    SimulationJobBatchSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#SimulationJobBatchSummaries', name: 'SimulationJobBatchSummaries')
    SimulationJobBatchSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#SimulationJobBatchSummary', name: 'SimulationJobBatchSummary')
    SimulationJobErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#SimulationJobErrorCode', name: 'SimulationJobErrorCode')
    SimulationJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#SimulationJobRequest', name: 'SimulationJobRequest')
    SimulationJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#SimulationJobStatus', name: 'SimulationJobStatus')
    SimulationJobSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#SimulationJobSummaries', name: 'SimulationJobSummaries', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    SimulationJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#SimulationJobSummary', name: 'SimulationJobSummary')
    SimulationJobs = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#SimulationJobs', name: 'SimulationJobs')
    SimulationSoftwareSuite = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#SimulationSoftwareSuite', name: 'SimulationSoftwareSuite')
    SimulationSoftwareSuiteType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#SimulationSoftwareSuiteType', name: 'SimulationSoftwareSuiteType')
    SimulationSoftwareSuiteVersionType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#SimulationSoftwareSuiteVersionType', name: 'SimulationSoftwareSuiteVersionType', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^7|9|11|Kinetic|Melodic|Dashing|Foxy$"})
    SimulationTimeMillis = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.robomaker#SimulationTimeMillis', name: 'SimulationTimeMillis', traits: {"smithy.api#default" => 0})
    SimulationUnit = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.robomaker#SimulationUnit', name: 'SimulationUnit', traits: {"smithy.api#range" => {"min" => 1, "max" => 15}})
    Source = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#Source', name: 'Source')
    SourceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#SourceConfig', name: 'SourceConfig')
    SourceConfigs = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#SourceConfigs', name: 'SourceConfigs')
    Sources = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#Sources', name: 'Sources')
    StartSimulationJobBatchRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#StartSimulationJobBatchRequest', name: 'StartSimulationJobBatchRequest')
    StartSimulationJobBatchResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#StartSimulationJobBatchResponse', name: 'StartSimulationJobBatchResponse')
    Subnets = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#Subnets', name: 'Subnets', traits: {"smithy.api#length" => {"min" => 1, "max" => 16}})
    SyncDeploymentJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#SyncDeploymentJobRequest', name: 'SyncDeploymentJobRequest', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    SyncDeploymentJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#SyncDeploymentJobResponse', name: 'SyncDeploymentJobResponse', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9 _.\\-\\/+=:]*$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#TagKeyList', name: 'TagKeyList')
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.robomaker#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9 _.\\-\\/+=:]*$"})
    TemplateLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#TemplateLocation', name: 'TemplateLocation')
    TemplateName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#TemplateName', name: 'TemplateName', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => ".*"})
    TemplateSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#TemplateSummaries', name: 'TemplateSummaries')
    TemplateSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#TemplateSummary', name: 'TemplateSummary')
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Tool = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#Tool', name: 'Tool')
    Tools = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#Tools', name: 'Tools', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    UnrestrictedCommand = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#UnrestrictedCommand', name: 'UnrestrictedCommand', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => ".*"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateRobotApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#UpdateRobotApplicationRequest', name: 'UpdateRobotApplicationRequest')
    UpdateRobotApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#UpdateRobotApplicationResponse', name: 'UpdateRobotApplicationResponse')
    UpdateSimulationApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#UpdateSimulationApplicationRequest', name: 'UpdateSimulationApplicationRequest')
    UpdateSimulationApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#UpdateSimulationApplicationResponse', name: 'UpdateSimulationApplicationResponse')
    UpdateWorldTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#UpdateWorldTemplateRequest', name: 'UpdateWorldTemplateRequest')
    UpdateWorldTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#UpdateWorldTemplateResponse', name: 'UpdateWorldTemplateResponse')
    UploadBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#UploadBehavior', name: 'UploadBehavior')
    UploadConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#UploadConfiguration', name: 'UploadConfiguration')
    UploadConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#UploadConfigurations', name: 'UploadConfigurations', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    VPCConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#VPCConfig', name: 'VPCConfig')
    VPCConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#VPCConfigResponse', name: 'VPCConfigResponse')
    Version = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#Version', name: 'Version', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(\\$LATEST)|[0-9]*$"})
    VersionQualifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#VersionQualifier', name: 'VersionQualifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^ALL$"})
    WorldConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#WorldConfig', name: 'WorldConfig')
    WorldConfigs = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#WorldConfigs', name: 'WorldConfigs', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    WorldCount = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#WorldCount', name: 'WorldCount')
    WorldExportJobErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#WorldExportJobErrorCode', name: 'WorldExportJobErrorCode')
    WorldExportJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#WorldExportJobStatus', name: 'WorldExportJobStatus')
    WorldExportJobSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#WorldExportJobSummaries', name: 'WorldExportJobSummaries', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    WorldExportJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#WorldExportJobSummary', name: 'WorldExportJobSummary')
    WorldFailure = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#WorldFailure', name: 'WorldFailure')
    WorldFailures = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#WorldFailures', name: 'WorldFailures', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    WorldGenerationJobErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#WorldGenerationJobErrorCode', name: 'WorldGenerationJobErrorCode')
    WorldGenerationJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#WorldGenerationJobStatus', name: 'WorldGenerationJobStatus')
    WorldGenerationJobSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#WorldGenerationJobSummaries', name: 'WorldGenerationJobSummaries', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    WorldGenerationJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#WorldGenerationJobSummary', name: 'WorldGenerationJobSummary')
    WorldSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#WorldSummaries', name: 'WorldSummaries')
    WorldSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#WorldSummary', name: 'WorldSummary')
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#errorMessage', name: 'ErrorMessage')

    Architecture.add_member(:x86_64, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'X86_64', traits: {"smithy.api#enumValue" => "X86_64"}))
    Architecture.add_member(:arm64, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ARM64', traits: {"smithy.api#enumValue" => "ARM64"}))
    Architecture.add_member(:armhf, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ARMHF', traits: {"smithy.api#enumValue" => "ARMHF"}))
    Arns.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    BatchDeleteWorldsRequest.add_member(:worlds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arns, location_name: 'worlds', traits: {"smithy.api#required" => {}}))
    BatchDeleteWorldsRequest.type = Types::BatchDeleteWorldsRequest
    BatchDeleteWorldsResponse.add_member(:unprocessed_worlds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arns, location_name: 'unprocessedWorlds'))
    BatchDeleteWorldsResponse.type = Types::BatchDeleteWorldsResponse
    BatchDescribeSimulationJobRequest.add_member(:jobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arns, location_name: 'jobs', traits: {"smithy.api#required" => {}}))
    BatchDescribeSimulationJobRequest.type = Types::BatchDescribeSimulationJobRequest
    BatchDescribeSimulationJobResponse.add_member(:jobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobs, location_name: 'jobs'))
    BatchDescribeSimulationJobResponse.add_member(:unprocessed_jobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arns, location_name: 'unprocessedJobs'))
    BatchDescribeSimulationJobResponse.type = Types::BatchDescribeSimulationJobResponse
    BatchPolicy.add_member(:timeout_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchTimeoutInSeconds, location_name: 'timeoutInSeconds'))
    BatchPolicy.add_member(:max_concurrency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxConcurrency, location_name: 'maxConcurrency'))
    BatchPolicy.type = Types::BatchPolicy
    CancelDeploymentJobRequest.add_member(:job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'job', traits: {"smithy.api#required" => {}}))
    CancelDeploymentJobRequest.type = Types::CancelDeploymentJobRequest
    CancelDeploymentJobResponse.type = Types::CancelDeploymentJobResponse
    CancelSimulationJobBatchRequest.add_member(:batch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'batch', traits: {"smithy.api#required" => {}}))
    CancelSimulationJobBatchRequest.type = Types::CancelSimulationJobBatchRequest
    CancelSimulationJobBatchResponse.type = Types::CancelSimulationJobBatchResponse
    CancelSimulationJobRequest.add_member(:job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'job', traits: {"smithy.api#required" => {}}))
    CancelSimulationJobRequest.type = Types::CancelSimulationJobRequest
    CancelSimulationJobResponse.type = Types::CancelSimulationJobResponse
    CancelWorldExportJobRequest.add_member(:job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'job', traits: {"smithy.api#required" => {}}))
    CancelWorldExportJobRequest.type = Types::CancelWorldExportJobRequest
    CancelWorldExportJobResponse.type = Types::CancelWorldExportJobResponse
    CancelWorldGenerationJobRequest.add_member(:job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'job', traits: {"smithy.api#required" => {}}))
    CancelWorldGenerationJobRequest.type = Types::CancelWorldGenerationJobRequest
    CancelWorldGenerationJobResponse.type = Types::CancelWorldGenerationJobResponse
    CommandList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    Compute.add_member(:simulation_unit_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationUnit, location_name: 'simulationUnitLimit'))
    Compute.add_member(:compute_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeType, location_name: 'computeType'))
    Compute.add_member(:gpu_unit_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GPUUnit, location_name: 'gpuUnitLimit'))
    Compute.type = Types::Compute
    ComputeResponse.add_member(:simulation_unit_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationUnit, location_name: 'simulationUnitLimit'))
    ComputeResponse.add_member(:compute_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeType, location_name: 'computeType'))
    ComputeResponse.add_member(:gpu_unit_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GPUUnit, location_name: 'gpuUnitLimit'))
    ComputeResponse.type = Types::ComputeResponse
    ComputeType.add_member(:cpu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CPU', traits: {"smithy.api#enumValue" => "CPU"}))
    ComputeType.add_member(:gpu_and_cpu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GPU_AND_CPU', traits: {"smithy.api#enumValue" => "GPU_AND_CPU"}))
    ConcurrentDeploymentException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ConcurrentDeploymentException.type = Types::ConcurrentDeploymentException
    CreateDeploymentJobRequest.add_member(:deployment_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentConfig, location_name: 'deploymentConfig'))
    CreateDeploymentJobRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken', traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateDeploymentJobRequest.add_member(:fleet, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'fleet', traits: {"smithy.api#required" => {}}))
    CreateDeploymentJobRequest.add_member(:deployment_application_configs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentApplicationConfigs, location_name: 'deploymentApplicationConfigs', traits: {"smithy.api#required" => {}}))
    CreateDeploymentJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateDeploymentJobRequest.type = Types::CreateDeploymentJobRequest
    CreateDeploymentJobResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    CreateDeploymentJobResponse.add_member(:fleet, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'fleet'))
    CreateDeploymentJobResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: 'status'))
    CreateDeploymentJobResponse.add_member(:deployment_application_configs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentApplicationConfigs, location_name: 'deploymentApplicationConfigs'))
    CreateDeploymentJobResponse.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'failureReason'))
    CreateDeploymentJobResponse.add_member(:failure_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentJobErrorCode, location_name: 'failureCode'))
    CreateDeploymentJobResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt'))
    CreateDeploymentJobResponse.add_member(:deployment_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentConfig, location_name: 'deploymentConfig'))
    CreateDeploymentJobResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateDeploymentJobResponse.type = Types::CreateDeploymentJobResponse
    CreateFleetRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateFleetRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateFleetRequest.type = Types::CreateFleetRequest
    CreateFleetResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    CreateFleetResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    CreateFleetResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt'))
    CreateFleetResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateFleetResponse.type = Types::CreateFleetResponse
    CreateRobotApplicationRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateRobotApplicationRequest.add_member(:sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceConfigs, location_name: 'sources'))
    CreateRobotApplicationRequest.add_member(:robot_software_suite, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RobotSoftwareSuite, location_name: 'robotSoftwareSuite', traits: {"smithy.api#required" => {}}))
    CreateRobotApplicationRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateRobotApplicationRequest.add_member(:environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment'))
    CreateRobotApplicationRequest.type = Types::CreateRobotApplicationRequest
    CreateRobotApplicationResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    CreateRobotApplicationResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    CreateRobotApplicationResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version'))
    CreateRobotApplicationResponse.add_member(:sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Sources, location_name: 'sources'))
    CreateRobotApplicationResponse.add_member(:robot_software_suite, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RobotSoftwareSuite, location_name: 'robotSoftwareSuite'))
    CreateRobotApplicationResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt'))
    CreateRobotApplicationResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionId, location_name: 'revisionId'))
    CreateRobotApplicationResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateRobotApplicationResponse.add_member(:environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment'))
    CreateRobotApplicationResponse.type = Types::CreateRobotApplicationResponse
    CreateRobotApplicationVersionRequest.add_member(:application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'application', traits: {"smithy.api#required" => {}}))
    CreateRobotApplicationVersionRequest.add_member(:current_revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionId, location_name: 'currentRevisionId'))
    CreateRobotApplicationVersionRequest.add_member(:s3_etags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Etags, location_name: 's3Etags'))
    CreateRobotApplicationVersionRequest.add_member(:image_digest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageDigest, location_name: 'imageDigest'))
    CreateRobotApplicationVersionRequest.type = Types::CreateRobotApplicationVersionRequest
    CreateRobotApplicationVersionResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    CreateRobotApplicationVersionResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    CreateRobotApplicationVersionResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version'))
    CreateRobotApplicationVersionResponse.add_member(:sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Sources, location_name: 'sources'))
    CreateRobotApplicationVersionResponse.add_member(:robot_software_suite, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RobotSoftwareSuite, location_name: 'robotSoftwareSuite'))
    CreateRobotApplicationVersionResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt'))
    CreateRobotApplicationVersionResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionId, location_name: 'revisionId'))
    CreateRobotApplicationVersionResponse.add_member(:environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment'))
    CreateRobotApplicationVersionResponse.type = Types::CreateRobotApplicationVersionResponse
    CreateRobotRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateRobotRequest.add_member(:architecture, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Architecture, location_name: 'architecture', traits: {"smithy.api#required" => {}}))
    CreateRobotRequest.add_member(:greengrass_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'greengrassGroupId', traits: {"smithy.api#required" => {}}))
    CreateRobotRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateRobotRequest.type = Types::CreateRobotRequest
    CreateRobotResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    CreateRobotResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    CreateRobotResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt'))
    CreateRobotResponse.add_member(:greengrass_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'greengrassGroupId'))
    CreateRobotResponse.add_member(:architecture, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Architecture, location_name: 'architecture'))
    CreateRobotResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateRobotResponse.type = Types::CreateRobotResponse
    CreateSimulationApplicationRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateSimulationApplicationRequest.add_member(:sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceConfigs, location_name: 'sources'))
    CreateSimulationApplicationRequest.add_member(:simulation_software_suite, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationSoftwareSuite, location_name: 'simulationSoftwareSuite', traits: {"smithy.api#required" => {}}))
    CreateSimulationApplicationRequest.add_member(:robot_software_suite, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RobotSoftwareSuite, location_name: 'robotSoftwareSuite', traits: {"smithy.api#required" => {}}))
    CreateSimulationApplicationRequest.add_member(:rendering_engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RenderingEngine, location_name: 'renderingEngine'))
    CreateSimulationApplicationRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateSimulationApplicationRequest.add_member(:environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment'))
    CreateSimulationApplicationRequest.type = Types::CreateSimulationApplicationRequest
    CreateSimulationApplicationResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    CreateSimulationApplicationResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    CreateSimulationApplicationResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version'))
    CreateSimulationApplicationResponse.add_member(:sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Sources, location_name: 'sources'))
    CreateSimulationApplicationResponse.add_member(:simulation_software_suite, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationSoftwareSuite, location_name: 'simulationSoftwareSuite'))
    CreateSimulationApplicationResponse.add_member(:robot_software_suite, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RobotSoftwareSuite, location_name: 'robotSoftwareSuite'))
    CreateSimulationApplicationResponse.add_member(:rendering_engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RenderingEngine, location_name: 'renderingEngine'))
    CreateSimulationApplicationResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt'))
    CreateSimulationApplicationResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionId, location_name: 'revisionId'))
    CreateSimulationApplicationResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateSimulationApplicationResponse.add_member(:environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment'))
    CreateSimulationApplicationResponse.type = Types::CreateSimulationApplicationResponse
    CreateSimulationApplicationVersionRequest.add_member(:application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'application', traits: {"smithy.api#required" => {}}))
    CreateSimulationApplicationVersionRequest.add_member(:current_revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionId, location_name: 'currentRevisionId'))
    CreateSimulationApplicationVersionRequest.add_member(:s3_etags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Etags, location_name: 's3Etags'))
    CreateSimulationApplicationVersionRequest.add_member(:image_digest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageDigest, location_name: 'imageDigest'))
    CreateSimulationApplicationVersionRequest.type = Types::CreateSimulationApplicationVersionRequest
    CreateSimulationApplicationVersionResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    CreateSimulationApplicationVersionResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    CreateSimulationApplicationVersionResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version'))
    CreateSimulationApplicationVersionResponse.add_member(:sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Sources, location_name: 'sources'))
    CreateSimulationApplicationVersionResponse.add_member(:simulation_software_suite, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationSoftwareSuite, location_name: 'simulationSoftwareSuite'))
    CreateSimulationApplicationVersionResponse.add_member(:robot_software_suite, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RobotSoftwareSuite, location_name: 'robotSoftwareSuite'))
    CreateSimulationApplicationVersionResponse.add_member(:rendering_engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RenderingEngine, location_name: 'renderingEngine'))
    CreateSimulationApplicationVersionResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt'))
    CreateSimulationApplicationVersionResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionId, location_name: 'revisionId'))
    CreateSimulationApplicationVersionResponse.add_member(:environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment'))
    CreateSimulationApplicationVersionResponse.type = Types::CreateSimulationApplicationVersionResponse
    CreateSimulationJobRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateSimulationJobRequest.add_member(:output_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputLocation, location_name: 'outputLocation'))
    CreateSimulationJobRequest.add_member(:logging_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfig, location_name: 'loggingConfig'))
    CreateSimulationJobRequest.add_member(:max_job_duration_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobDuration, location_name: 'maxJobDurationInSeconds', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CreateSimulationJobRequest.add_member(:iam_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRole, location_name: 'iamRole', traits: {"smithy.api#required" => {}}))
    CreateSimulationJobRequest.add_member(:failure_behavior, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureBehavior, location_name: 'failureBehavior'))
    CreateSimulationJobRequest.add_member(:robot_applications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RobotApplicationConfigs, location_name: 'robotApplications'))
    CreateSimulationJobRequest.add_member(:simulation_applications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationApplicationConfigs, location_name: 'simulationApplications'))
    CreateSimulationJobRequest.add_member(:data_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceConfigs, location_name: 'dataSources'))
    CreateSimulationJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateSimulationJobRequest.add_member(:vpc_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCConfig, location_name: 'vpcConfig'))
    CreateSimulationJobRequest.add_member(:compute, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Compute, location_name: 'compute'))
    CreateSimulationJobRequest.type = Types::CreateSimulationJobRequest
    CreateSimulationJobRequests.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobRequest)
    CreateSimulationJobResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    CreateSimulationJobResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobStatus, location_name: 'status'))
    CreateSimulationJobResponse.add_member(:last_started_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastStartedAt, location_name: 'lastStartedAt'))
    CreateSimulationJobResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt'))
    CreateSimulationJobResponse.add_member(:failure_behavior, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureBehavior, location_name: 'failureBehavior'))
    CreateSimulationJobResponse.add_member(:failure_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobErrorCode, location_name: 'failureCode'))
    CreateSimulationJobResponse.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken'))
    CreateSimulationJobResponse.add_member(:output_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputLocation, location_name: 'outputLocation'))
    CreateSimulationJobResponse.add_member(:logging_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfig, location_name: 'loggingConfig'))
    CreateSimulationJobResponse.add_member(:max_job_duration_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobDuration, location_name: 'maxJobDurationInSeconds', traits: {"smithy.api#default" => 0}))
    CreateSimulationJobResponse.add_member(:simulation_time_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationTimeMillis, location_name: 'simulationTimeMillis', traits: {"smithy.api#default" => 0}))
    CreateSimulationJobResponse.add_member(:iam_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRole, location_name: 'iamRole'))
    CreateSimulationJobResponse.add_member(:robot_applications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RobotApplicationConfigs, location_name: 'robotApplications'))
    CreateSimulationJobResponse.add_member(:simulation_applications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationApplicationConfigs, location_name: 'simulationApplications'))
    CreateSimulationJobResponse.add_member(:data_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSources, location_name: 'dataSources'))
    CreateSimulationJobResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateSimulationJobResponse.add_member(:vpc_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCConfigResponse, location_name: 'vpcConfig'))
    CreateSimulationJobResponse.add_member(:compute, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeResponse, location_name: 'compute'))
    CreateSimulationJobResponse.type = Types::CreateSimulationJobResponse
    CreateWorldExportJobRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateWorldExportJobRequest.add_member(:worlds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arns, location_name: 'worlds', traits: {"smithy.api#required" => {}}))
    CreateWorldExportJobRequest.add_member(:output_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputLocation, location_name: 'outputLocation', traits: {"smithy.api#required" => {}}))
    CreateWorldExportJobRequest.add_member(:iam_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRole, location_name: 'iamRole', traits: {"smithy.api#required" => {}}))
    CreateWorldExportJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateWorldExportJobRequest.type = Types::CreateWorldExportJobRequest
    CreateWorldExportJobResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    CreateWorldExportJobResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorldExportJobStatus, location_name: 'status'))
    CreateWorldExportJobResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt'))
    CreateWorldExportJobResponse.add_member(:failure_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorldExportJobErrorCode, location_name: 'failureCode'))
    CreateWorldExportJobResponse.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken'))
    CreateWorldExportJobResponse.add_member(:output_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputLocation, location_name: 'outputLocation'))
    CreateWorldExportJobResponse.add_member(:iam_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRole, location_name: 'iamRole'))
    CreateWorldExportJobResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateWorldExportJobResponse.type = Types::CreateWorldExportJobResponse
    CreateWorldGenerationJobRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateWorldGenerationJobRequest.add_member(:template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'template', traits: {"smithy.api#required" => {}}))
    CreateWorldGenerationJobRequest.add_member(:world_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorldCount, location_name: 'worldCount', traits: {"smithy.api#required" => {}}))
    CreateWorldGenerationJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateWorldGenerationJobRequest.add_member(:world_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'worldTags'))
    CreateWorldGenerationJobRequest.type = Types::CreateWorldGenerationJobRequest
    CreateWorldGenerationJobResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    CreateWorldGenerationJobResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorldGenerationJobStatus, location_name: 'status'))
    CreateWorldGenerationJobResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt'))
    CreateWorldGenerationJobResponse.add_member(:failure_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorldGenerationJobErrorCode, location_name: 'failureCode'))
    CreateWorldGenerationJobResponse.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken'))
    CreateWorldGenerationJobResponse.add_member(:template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'template'))
    CreateWorldGenerationJobResponse.add_member(:world_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorldCount, location_name: 'worldCount'))
    CreateWorldGenerationJobResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateWorldGenerationJobResponse.add_member(:world_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'worldTags'))
    CreateWorldGenerationJobResponse.type = Types::CreateWorldGenerationJobResponse
    CreateWorldTemplateRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken'))
    CreateWorldTemplateRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'name'))
    CreateWorldTemplateRequest.add_member(:template_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Json, location_name: 'templateBody'))
    CreateWorldTemplateRequest.add_member(:template_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateLocation, location_name: 'templateLocation'))
    CreateWorldTemplateRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateWorldTemplateRequest.type = Types::CreateWorldTemplateRequest
    CreateWorldTemplateResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    CreateWorldTemplateResponse.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken'))
    CreateWorldTemplateResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt'))
    CreateWorldTemplateResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'name'))
    CreateWorldTemplateResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateWorldTemplateResponse.type = Types::CreateWorldTemplateResponse
    DataSource.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    DataSource.add_member(:s3_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 's3Bucket'))
    DataSource.add_member(:s3_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3KeyOutputs, location_name: 's3Keys'))
    DataSource.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceType, location_name: 'type'))
    DataSource.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'destination'))
    DataSource.type = Types::DataSource
    DataSourceConfig.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    DataSourceConfig.add_member(:s3_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 's3Bucket', traits: {"smithy.api#required" => {}}))
    DataSourceConfig.add_member(:s3_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3KeysOrPrefixes, location_name: 's3Keys', traits: {"smithy.api#required" => {}}))
    DataSourceConfig.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceType, location_name: 'type'))
    DataSourceConfig.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'destination'))
    DataSourceConfig.type = Types::DataSourceConfig
    DataSourceConfigs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceConfig)
    DataSourceNames.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name)
    DataSourceType.add_member(:prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Prefix', traits: {"smithy.api#enumValue" => "Prefix"}))
    DataSourceType.add_member(:archive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Archive', traits: {"smithy.api#enumValue" => "Archive"}))
    DataSourceType.add_member(:file, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'File', traits: {"smithy.api#enumValue" => "File"}))
    DataSources.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSource)
    DeleteFleetRequest.add_member(:fleet, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'fleet', traits: {"smithy.api#required" => {}}))
    DeleteFleetRequest.type = Types::DeleteFleetRequest
    DeleteFleetResponse.type = Types::DeleteFleetResponse
    DeleteRobotApplicationRequest.add_member(:application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'application', traits: {"smithy.api#required" => {}}))
    DeleteRobotApplicationRequest.add_member(:application_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'applicationVersion'))
    DeleteRobotApplicationRequest.type = Types::DeleteRobotApplicationRequest
    DeleteRobotApplicationResponse.type = Types::DeleteRobotApplicationResponse
    DeleteRobotRequest.add_member(:robot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'robot', traits: {"smithy.api#required" => {}}))
    DeleteRobotRequest.type = Types::DeleteRobotRequest
    DeleteRobotResponse.type = Types::DeleteRobotResponse
    DeleteSimulationApplicationRequest.add_member(:application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'application', traits: {"smithy.api#required" => {}}))
    DeleteSimulationApplicationRequest.add_member(:application_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'applicationVersion'))
    DeleteSimulationApplicationRequest.type = Types::DeleteSimulationApplicationRequest
    DeleteSimulationApplicationResponse.type = Types::DeleteSimulationApplicationResponse
    DeleteWorldTemplateRequest.add_member(:template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'template', traits: {"smithy.api#required" => {}}))
    DeleteWorldTemplateRequest.type = Types::DeleteWorldTemplateRequest
    DeleteWorldTemplateResponse.type = Types::DeleteWorldTemplateResponse
    DeploymentApplicationConfig.add_member(:application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'application', traits: {"smithy.api#required" => {}}))
    DeploymentApplicationConfig.add_member(:application_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentVersion, location_name: 'applicationVersion', traits: {"smithy.api#required" => {}}))
    DeploymentApplicationConfig.add_member(:launch_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentLaunchConfig, location_name: 'launchConfig', traits: {"smithy.api#required" => {}}))
    DeploymentApplicationConfig.type = Types::DeploymentApplicationConfig
    DeploymentApplicationConfigs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentApplicationConfig)
    DeploymentConfig.add_member(:concurrent_deployment_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'concurrentDeploymentPercentage'))
    DeploymentConfig.add_member(:failure_threshold_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'failureThresholdPercentage'))
    DeploymentConfig.add_member(:robot_deployment_timeout_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentTimeout, location_name: 'robotDeploymentTimeoutInSeconds'))
    DeploymentConfig.add_member(:download_condition_file, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Object, location_name: 'downloadConditionFile'))
    DeploymentConfig.type = Types::DeploymentConfig
    DeploymentJob.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    DeploymentJob.add_member(:fleet, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'fleet'))
    DeploymentJob.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: 'status'))
    DeploymentJob.add_member(:deployment_application_configs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentApplicationConfigs, location_name: 'deploymentApplicationConfigs'))
    DeploymentJob.add_member(:deployment_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentConfig, location_name: 'deploymentConfig'))
    DeploymentJob.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'failureReason'))
    DeploymentJob.add_member(:failure_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentJobErrorCode, location_name: 'failureCode'))
    DeploymentJob.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt'))
    DeploymentJob.type = Types::DeploymentJob
    DeploymentJobErrorCode.add_member(:resource_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ResourceNotFound', traits: {"smithy.api#enumValue" => "ResourceNotFound"}))
    DeploymentJobErrorCode.add_member(:environment_setup_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EnvironmentSetupError', traits: {"smithy.api#enumValue" => "EnvironmentSetupError"}))
    DeploymentJobErrorCode.add_member(:etag_mismatch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EtagMismatch', traits: {"smithy.api#enumValue" => "EtagMismatch"}))
    DeploymentJobErrorCode.add_member(:failure_threshold_breached, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FailureThresholdBreached', traits: {"smithy.api#enumValue" => "FailureThresholdBreached"}))
    DeploymentJobErrorCode.add_member(:robot_deployment_aborted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RobotDeploymentAborted', traits: {"smithy.api#enumValue" => "RobotDeploymentAborted"}))
    DeploymentJobErrorCode.add_member(:robot_deployment_no_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RobotDeploymentNoResponse', traits: {"smithy.api#enumValue" => "RobotDeploymentNoResponse"}))
    DeploymentJobErrorCode.add_member(:robot_agent_connection_timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RobotAgentConnectionTimeout', traits: {"smithy.api#enumValue" => "RobotAgentConnectionTimeout"}))
    DeploymentJobErrorCode.add_member(:greengrass_deployment_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GreengrassDeploymentFailed', traits: {"smithy.api#enumValue" => "GreengrassDeploymentFailed"}))
    DeploymentJobErrorCode.add_member(:invalid_greengrass_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InvalidGreengrassGroup', traits: {"smithy.api#enumValue" => "InvalidGreengrassGroup"}))
    DeploymentJobErrorCode.add_member(:missing_robot_architecture, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MissingRobotArchitecture', traits: {"smithy.api#enumValue" => "MissingRobotArchitecture"}))
    DeploymentJobErrorCode.add_member(:missing_robot_application_architecture, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MissingRobotApplicationArchitecture', traits: {"smithy.api#enumValue" => "MissingRobotApplicationArchitecture"}))
    DeploymentJobErrorCode.add_member(:missing_robot_deployment_resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MissingRobotDeploymentResource', traits: {"smithy.api#enumValue" => "MissingRobotDeploymentResource"}))
    DeploymentJobErrorCode.add_member(:greengrass_group_version_does_not_exist, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GreengrassGroupVersionDoesNotExist', traits: {"smithy.api#enumValue" => "GreengrassGroupVersionDoesNotExist"}))
    DeploymentJobErrorCode.add_member(:lambda_deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LambdaDeleted', traits: {"smithy.api#enumValue" => "LambdaDeleted"}))
    DeploymentJobErrorCode.add_member(:extracting_bundle_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ExtractingBundleFailure', traits: {"smithy.api#enumValue" => "ExtractingBundleFailure"}))
    DeploymentJobErrorCode.add_member(:pre_launch_file_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PreLaunchFileFailure', traits: {"smithy.api#enumValue" => "PreLaunchFileFailure"}))
    DeploymentJobErrorCode.add_member(:post_launch_file_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PostLaunchFileFailure', traits: {"smithy.api#enumValue" => "PostLaunchFileFailure"}))
    DeploymentJobErrorCode.add_member(:bad_permission_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BadPermissionError', traits: {"smithy.api#enumValue" => "BadPermissionError"}))
    DeploymentJobErrorCode.add_member(:download_condition_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DownloadConditionFailed', traits: {"smithy.api#enumValue" => "DownloadConditionFailed"}))
    DeploymentJobErrorCode.add_member(:bad_lambda_associated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BadLambdaAssociated', traits: {"smithy.api#enumValue" => "BadLambdaAssociated"}))
    DeploymentJobErrorCode.add_member(:internal_server_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InternalServerError', traits: {"smithy.api#enumValue" => "InternalServerError"}))
    DeploymentJobErrorCode.add_member(:robot_application_does_not_exist, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RobotApplicationDoesNotExist', traits: {"smithy.api#enumValue" => "RobotApplicationDoesNotExist"}))
    DeploymentJobErrorCode.add_member(:deployment_fleet_does_not_exist, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DeploymentFleetDoesNotExist', traits: {"smithy.api#enumValue" => "DeploymentFleetDoesNotExist"}))
    DeploymentJobErrorCode.add_member(:fleet_deployment_timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FleetDeploymentTimeout', traits: {"smithy.api#enumValue" => "FleetDeploymentTimeout"}))
    DeploymentJobs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentJob)
    DeploymentLaunchConfig.add_member(:package_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Command, location_name: 'packageName', traits: {"smithy.api#required" => {}}))
    DeploymentLaunchConfig.add_member(:pre_launch_file, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'preLaunchFile'))
    DeploymentLaunchConfig.add_member(:launch_file, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Command, location_name: 'launchFile', traits: {"smithy.api#required" => {}}))
    DeploymentLaunchConfig.add_member(:post_launch_file, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'postLaunchFile'))
    DeploymentLaunchConfig.add_member(:environment_variables, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariableMap, location_name: 'environmentVariables'))
    DeploymentLaunchConfig.type = Types::DeploymentLaunchConfig
    DeploymentStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Pending', traits: {"smithy.api#enumValue" => "Pending"}))
    DeploymentStatus.add_member(:preparing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Preparing', traits: {"smithy.api#enumValue" => "Preparing"}))
    DeploymentStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InProgress', traits: {"smithy.api#enumValue" => "InProgress"}))
    DeploymentStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "Failed"}))
    DeploymentStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Succeeded', traits: {"smithy.api#enumValue" => "Succeeded"}))
    DeploymentStatus.add_member(:canceled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Canceled', traits: {"smithy.api#enumValue" => "Canceled"}))
    DeregisterRobotRequest.add_member(:fleet, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'fleet', traits: {"smithy.api#required" => {}}))
    DeregisterRobotRequest.add_member(:robot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'robot', traits: {"smithy.api#required" => {}}))
    DeregisterRobotRequest.type = Types::DeregisterRobotRequest
    DeregisterRobotResponse.add_member(:fleet, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'fleet'))
    DeregisterRobotResponse.add_member(:robot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'robot'))
    DeregisterRobotResponse.type = Types::DeregisterRobotResponse
    DescribeDeploymentJobRequest.add_member(:job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'job', traits: {"smithy.api#required" => {}}))
    DescribeDeploymentJobRequest.type = Types::DescribeDeploymentJobRequest
    DescribeDeploymentJobResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    DescribeDeploymentJobResponse.add_member(:fleet, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'fleet'))
    DescribeDeploymentJobResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: 'status'))
    DescribeDeploymentJobResponse.add_member(:deployment_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentConfig, location_name: 'deploymentConfig'))
    DescribeDeploymentJobResponse.add_member(:deployment_application_configs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentApplicationConfigs, location_name: 'deploymentApplicationConfigs'))
    DescribeDeploymentJobResponse.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'failureReason'))
    DescribeDeploymentJobResponse.add_member(:failure_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentJobErrorCode, location_name: 'failureCode'))
    DescribeDeploymentJobResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt'))
    DescribeDeploymentJobResponse.add_member(:robot_deployment_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RobotDeploymentSummary, location_name: 'robotDeploymentSummary'))
    DescribeDeploymentJobResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    DescribeDeploymentJobResponse.type = Types::DescribeDeploymentJobResponse
    DescribeFleetRequest.add_member(:fleet, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'fleet', traits: {"smithy.api#required" => {}}))
    DescribeFleetRequest.type = Types::DescribeFleetRequest
    DescribeFleetResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    DescribeFleetResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    DescribeFleetResponse.add_member(:robots, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Robots, location_name: 'robots'))
    DescribeFleetResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt'))
    DescribeFleetResponse.add_member(:last_deployment_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: 'lastDeploymentStatus'))
    DescribeFleetResponse.add_member(:last_deployment_job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'lastDeploymentJob'))
    DescribeFleetResponse.add_member(:last_deployment_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'lastDeploymentTime'))
    DescribeFleetResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    DescribeFleetResponse.type = Types::DescribeFleetResponse
    DescribeRobotApplicationRequest.add_member(:application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'application', traits: {"smithy.api#required" => {}}))
    DescribeRobotApplicationRequest.add_member(:application_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'applicationVersion'))
    DescribeRobotApplicationRequest.type = Types::DescribeRobotApplicationRequest
    DescribeRobotApplicationResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    DescribeRobotApplicationResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    DescribeRobotApplicationResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version'))
    DescribeRobotApplicationResponse.add_member(:sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Sources, location_name: 'sources'))
    DescribeRobotApplicationResponse.add_member(:robot_software_suite, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RobotSoftwareSuite, location_name: 'robotSoftwareSuite'))
    DescribeRobotApplicationResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionId, location_name: 'revisionId'))
    DescribeRobotApplicationResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt'))
    DescribeRobotApplicationResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    DescribeRobotApplicationResponse.add_member(:environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment'))
    DescribeRobotApplicationResponse.add_member(:image_digest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageDigest, location_name: 'imageDigest'))
    DescribeRobotApplicationResponse.type = Types::DescribeRobotApplicationResponse
    DescribeRobotRequest.add_member(:robot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'robot', traits: {"smithy.api#required" => {}}))
    DescribeRobotRequest.type = Types::DescribeRobotRequest
    DescribeRobotResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    DescribeRobotResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    DescribeRobotResponse.add_member(:fleet_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'fleetArn'))
    DescribeRobotResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RobotStatus, location_name: 'status'))
    DescribeRobotResponse.add_member(:greengrass_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'greengrassGroupId'))
    DescribeRobotResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt'))
    DescribeRobotResponse.add_member(:architecture, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Architecture, location_name: 'architecture'))
    DescribeRobotResponse.add_member(:last_deployment_job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'lastDeploymentJob'))
    DescribeRobotResponse.add_member(:last_deployment_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'lastDeploymentTime'))
    DescribeRobotResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    DescribeRobotResponse.type = Types::DescribeRobotResponse
    DescribeSimulationApplicationRequest.add_member(:application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'application', traits: {"smithy.api#required" => {}}))
    DescribeSimulationApplicationRequest.add_member(:application_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'applicationVersion'))
    DescribeSimulationApplicationRequest.type = Types::DescribeSimulationApplicationRequest
    DescribeSimulationApplicationResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    DescribeSimulationApplicationResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    DescribeSimulationApplicationResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version'))
    DescribeSimulationApplicationResponse.add_member(:sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Sources, location_name: 'sources'))
    DescribeSimulationApplicationResponse.add_member(:simulation_software_suite, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationSoftwareSuite, location_name: 'simulationSoftwareSuite'))
    DescribeSimulationApplicationResponse.add_member(:robot_software_suite, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RobotSoftwareSuite, location_name: 'robotSoftwareSuite'))
    DescribeSimulationApplicationResponse.add_member(:rendering_engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RenderingEngine, location_name: 'renderingEngine'))
    DescribeSimulationApplicationResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionId, location_name: 'revisionId'))
    DescribeSimulationApplicationResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt'))
    DescribeSimulationApplicationResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    DescribeSimulationApplicationResponse.add_member(:environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment'))
    DescribeSimulationApplicationResponse.add_member(:image_digest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageDigest, location_name: 'imageDigest'))
    DescribeSimulationApplicationResponse.type = Types::DescribeSimulationApplicationResponse
    DescribeSimulationJobBatchRequest.add_member(:batch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'batch', traits: {"smithy.api#required" => {}}))
    DescribeSimulationJobBatchRequest.type = Types::DescribeSimulationJobBatchRequest
    DescribeSimulationJobBatchResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    DescribeSimulationJobBatchResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobBatchStatus, location_name: 'status'))
    DescribeSimulationJobBatchResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt'))
    DescribeSimulationJobBatchResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt'))
    DescribeSimulationJobBatchResponse.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken'))
    DescribeSimulationJobBatchResponse.add_member(:batch_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPolicy, location_name: 'batchPolicy'))
    DescribeSimulationJobBatchResponse.add_member(:failure_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobBatchErrorCode, location_name: 'failureCode'))
    DescribeSimulationJobBatchResponse.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'failureReason'))
    DescribeSimulationJobBatchResponse.add_member(:failed_requests, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedCreateSimulationJobRequests, location_name: 'failedRequests'))
    DescribeSimulationJobBatchResponse.add_member(:pending_requests, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSimulationJobRequests, location_name: 'pendingRequests'))
    DescribeSimulationJobBatchResponse.add_member(:created_requests, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobSummaries, location_name: 'createdRequests'))
    DescribeSimulationJobBatchResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    DescribeSimulationJobBatchResponse.type = Types::DescribeSimulationJobBatchResponse
    DescribeSimulationJobRequest.add_member(:job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'job', traits: {"smithy.api#required" => {}}))
    DescribeSimulationJobRequest.type = Types::DescribeSimulationJobRequest
    DescribeSimulationJobResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    DescribeSimulationJobResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    DescribeSimulationJobResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobStatus, location_name: 'status'))
    DescribeSimulationJobResponse.add_member(:last_started_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastStartedAt, location_name: 'lastStartedAt'))
    DescribeSimulationJobResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt'))
    DescribeSimulationJobResponse.add_member(:failure_behavior, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureBehavior, location_name: 'failureBehavior'))
    DescribeSimulationJobResponse.add_member(:failure_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobErrorCode, location_name: 'failureCode'))
    DescribeSimulationJobResponse.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'failureReason'))
    DescribeSimulationJobResponse.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken'))
    DescribeSimulationJobResponse.add_member(:output_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputLocation, location_name: 'outputLocation'))
    DescribeSimulationJobResponse.add_member(:logging_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfig, location_name: 'loggingConfig'))
    DescribeSimulationJobResponse.add_member(:max_job_duration_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobDuration, location_name: 'maxJobDurationInSeconds', traits: {"smithy.api#default" => 0}))
    DescribeSimulationJobResponse.add_member(:simulation_time_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationTimeMillis, location_name: 'simulationTimeMillis', traits: {"smithy.api#default" => 0}))
    DescribeSimulationJobResponse.add_member(:iam_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRole, location_name: 'iamRole'))
    DescribeSimulationJobResponse.add_member(:robot_applications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RobotApplicationConfigs, location_name: 'robotApplications'))
    DescribeSimulationJobResponse.add_member(:simulation_applications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationApplicationConfigs, location_name: 'simulationApplications'))
    DescribeSimulationJobResponse.add_member(:data_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSources, location_name: 'dataSources'))
    DescribeSimulationJobResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    DescribeSimulationJobResponse.add_member(:vpc_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCConfigResponse, location_name: 'vpcConfig'))
    DescribeSimulationJobResponse.add_member(:network_interface, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterface, location_name: 'networkInterface'))
    DescribeSimulationJobResponse.add_member(:compute, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeResponse, location_name: 'compute'))
    DescribeSimulationJobResponse.type = Types::DescribeSimulationJobResponse
    DescribeWorldExportJobRequest.add_member(:job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'job', traits: {"smithy.api#required" => {}}))
    DescribeWorldExportJobRequest.type = Types::DescribeWorldExportJobRequest
    DescribeWorldExportJobResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    DescribeWorldExportJobResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorldExportJobStatus, location_name: 'status'))
    DescribeWorldExportJobResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt'))
    DescribeWorldExportJobResponse.add_member(:failure_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorldExportJobErrorCode, location_name: 'failureCode'))
    DescribeWorldExportJobResponse.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'failureReason'))
    DescribeWorldExportJobResponse.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken'))
    DescribeWorldExportJobResponse.add_member(:worlds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arns, location_name: 'worlds'))
    DescribeWorldExportJobResponse.add_member(:output_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputLocation, location_name: 'outputLocation'))
    DescribeWorldExportJobResponse.add_member(:iam_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRole, location_name: 'iamRole'))
    DescribeWorldExportJobResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    DescribeWorldExportJobResponse.type = Types::DescribeWorldExportJobResponse
    DescribeWorldGenerationJobRequest.add_member(:job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'job', traits: {"smithy.api#required" => {}}))
    DescribeWorldGenerationJobRequest.type = Types::DescribeWorldGenerationJobRequest
    DescribeWorldGenerationJobResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    DescribeWorldGenerationJobResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorldGenerationJobStatus, location_name: 'status'))
    DescribeWorldGenerationJobResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt'))
    DescribeWorldGenerationJobResponse.add_member(:failure_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorldGenerationJobErrorCode, location_name: 'failureCode'))
    DescribeWorldGenerationJobResponse.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'failureReason'))
    DescribeWorldGenerationJobResponse.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken'))
    DescribeWorldGenerationJobResponse.add_member(:template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'template'))
    DescribeWorldGenerationJobResponse.add_member(:world_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorldCount, location_name: 'worldCount'))
    DescribeWorldGenerationJobResponse.add_member(:finished_worlds_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FinishedWorldsSummary, location_name: 'finishedWorldsSummary'))
    DescribeWorldGenerationJobResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    DescribeWorldGenerationJobResponse.add_member(:world_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'worldTags'))
    DescribeWorldGenerationJobResponse.type = Types::DescribeWorldGenerationJobResponse
    DescribeWorldRequest.add_member(:world, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'world', traits: {"smithy.api#required" => {}}))
    DescribeWorldRequest.type = Types::DescribeWorldRequest
    DescribeWorldResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    DescribeWorldResponse.add_member(:generation_job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'generationJob'))
    DescribeWorldResponse.add_member(:template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'template'))
    DescribeWorldResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt'))
    DescribeWorldResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    DescribeWorldResponse.add_member(:world_description_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Json, location_name: 'worldDescriptionBody'))
    DescribeWorldResponse.type = Types::DescribeWorldResponse
    DescribeWorldTemplateRequest.add_member(:template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'template', traits: {"smithy.api#required" => {}}))
    DescribeWorldTemplateRequest.type = Types::DescribeWorldTemplateRequest
    DescribeWorldTemplateResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    DescribeWorldTemplateResponse.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken'))
    DescribeWorldTemplateResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'name'))
    DescribeWorldTemplateResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt'))
    DescribeWorldTemplateResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt'))
    DescribeWorldTemplateResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    DescribeWorldTemplateResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'version'))
    DescribeWorldTemplateResponse.type = Types::DescribeWorldTemplateResponse
    Environment.add_member(:uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryUrl, location_name: 'uri'))
    Environment.type = Types::Environment
    EnvironmentVariableMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariableKey)
    EnvironmentVariableMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariableValue)
    ExitBehavior.add_member(:fail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAIL', traits: {"smithy.api#enumValue" => "FAIL"}))
    ExitBehavior.add_member(:restart, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESTART', traits: {"smithy.api#enumValue" => "RESTART"}))
    FailedCreateSimulationJobRequest.add_member(:request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobRequest, location_name: 'request'))
    FailedCreateSimulationJobRequest.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'failureReason'))
    FailedCreateSimulationJobRequest.add_member(:failure_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobErrorCode, location_name: 'failureCode'))
    FailedCreateSimulationJobRequest.add_member(:failed_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedAt, location_name: 'failedAt'))
    FailedCreateSimulationJobRequest.type = Types::FailedCreateSimulationJobRequest
    FailedCreateSimulationJobRequests.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedCreateSimulationJobRequest)
    FailureBehavior.add_member(:fail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Fail', traits: {"smithy.api#enumValue" => "Fail"}))
    FailureBehavior.add_member(:continue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Continue', traits: {"smithy.api#enumValue" => "Continue"}))
    FailureSummary.add_member(:total_failure_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'totalFailureCount', traits: {"smithy.api#default" => 0}))
    FailureSummary.add_member(:failures, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorldFailures, location_name: 'failures'))
    FailureSummary.type = Types::FailureSummary
    Filter.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    Filter.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValues, location_name: 'values'))
    Filter.type = Types::Filter
    FilterValues.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name)
    Filters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filter)
    FinishedWorldsSummary.add_member(:finished_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'finishedCount', traits: {"smithy.api#default" => 0}))
    FinishedWorldsSummary.add_member(:succeeded_worlds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arns, location_name: 'succeededWorlds'))
    FinishedWorldsSummary.add_member(:failure_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureSummary, location_name: 'failureSummary'))
    FinishedWorldsSummary.type = Types::FinishedWorldsSummary
    Fleet.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    Fleet.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    Fleet.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt'))
    Fleet.add_member(:last_deployment_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: 'lastDeploymentStatus'))
    Fleet.add_member(:last_deployment_job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'lastDeploymentJob'))
    Fleet.add_member(:last_deployment_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'lastDeploymentTime'))
    Fleet.type = Types::Fleet
    Fleets.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Fleet)
    GetWorldTemplateBodyRequest.add_member(:template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'template'))
    GetWorldTemplateBodyRequest.add_member(:generation_job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'generationJob'))
    GetWorldTemplateBodyRequest.type = Types::GetWorldTemplateBodyRequest
    GetWorldTemplateBodyResponse.add_member(:template_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Json, location_name: 'templateBody'))
    GetWorldTemplateBodyResponse.type = Types::GetWorldTemplateBodyResponse
    IdempotentParameterMismatchException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    IdempotentParameterMismatchException.type = Types::IdempotentParameterMismatchException
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InternalServerException.type = Types::InternalServerException
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidParameterException.type = Types::InvalidParameterException
    LaunchConfig.add_member(:package_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Command, location_name: 'packageName'))
    LaunchConfig.add_member(:launch_file, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Command, location_name: 'launchFile'))
    LaunchConfig.add_member(:environment_variables, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariableMap, location_name: 'environmentVariables'))
    LaunchConfig.add_member(:port_forwarding_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortForwardingConfig, location_name: 'portForwardingConfig'))
    LaunchConfig.add_member(:stream_ui, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'streamUI', traits: {"smithy.api#default" => false}))
    LaunchConfig.add_member(:command, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommandList, location_name: 'command'))
    LaunchConfig.type = Types::LaunchConfig
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    LimitExceededException.type = Types::LimitExceededException
    ListDeploymentJobsRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'filters'))
    ListDeploymentJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListDeploymentJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    ListDeploymentJobsRequest.type = Types::ListDeploymentJobsRequest
    ListDeploymentJobsResponse.add_member(:deployment_jobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentJobs, location_name: 'deploymentJobs'))
    ListDeploymentJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListDeploymentJobsResponse.type = Types::ListDeploymentJobsResponse
    ListFleetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListFleetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    ListFleetsRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'filters'))
    ListFleetsRequest.type = Types::ListFleetsRequest
    ListFleetsResponse.add_member(:fleet_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Fleets, location_name: 'fleetDetails'))
    ListFleetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListFleetsResponse.type = Types::ListFleetsResponse
    ListRobotApplicationsRequest.add_member(:version_qualifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionQualifier, location_name: 'versionQualifier'))
    ListRobotApplicationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListRobotApplicationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    ListRobotApplicationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'filters'))
    ListRobotApplicationsRequest.type = Types::ListRobotApplicationsRequest
    ListRobotApplicationsResponse.add_member(:robot_application_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RobotApplicationSummaries, location_name: 'robotApplicationSummaries'))
    ListRobotApplicationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListRobotApplicationsResponse.type = Types::ListRobotApplicationsResponse
    ListRobotsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListRobotsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    ListRobotsRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'filters'))
    ListRobotsRequest.type = Types::ListRobotsRequest
    ListRobotsResponse.add_member(:robots, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Robots, location_name: 'robots'))
    ListRobotsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListRobotsResponse.type = Types::ListRobotsResponse
    ListSimulationApplicationsRequest.add_member(:version_qualifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionQualifier, location_name: 'versionQualifier'))
    ListSimulationApplicationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListSimulationApplicationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    ListSimulationApplicationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'filters'))
    ListSimulationApplicationsRequest.type = Types::ListSimulationApplicationsRequest
    ListSimulationApplicationsResponse.add_member(:simulation_application_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationApplicationSummaries, location_name: 'simulationApplicationSummaries'))
    ListSimulationApplicationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListSimulationApplicationsResponse.type = Types::ListSimulationApplicationsResponse
    ListSimulationJobBatchesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListSimulationJobBatchesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    ListSimulationJobBatchesRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'filters'))
    ListSimulationJobBatchesRequest.type = Types::ListSimulationJobBatchesRequest
    ListSimulationJobBatchesResponse.add_member(:simulation_job_batch_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobBatchSummaries, location_name: 'simulationJobBatchSummaries'))
    ListSimulationJobBatchesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListSimulationJobBatchesResponse.type = Types::ListSimulationJobBatchesResponse
    ListSimulationJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListSimulationJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    ListSimulationJobsRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'filters'))
    ListSimulationJobsRequest.type = Types::ListSimulationJobsRequest
    ListSimulationJobsResponse.add_member(:simulation_job_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobSummaries, location_name: 'simulationJobSummaries', traits: {"smithy.api#required" => {}}))
    ListSimulationJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListSimulationJobsResponse.type = Types::ListSimulationJobsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListWorldExportJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListWorldExportJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    ListWorldExportJobsRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'filters'))
    ListWorldExportJobsRequest.type = Types::ListWorldExportJobsRequest
    ListWorldExportJobsResponse.add_member(:world_export_job_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorldExportJobSummaries, location_name: 'worldExportJobSummaries', traits: {"smithy.api#required" => {}}))
    ListWorldExportJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListWorldExportJobsResponse.type = Types::ListWorldExportJobsResponse
    ListWorldGenerationJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListWorldGenerationJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    ListWorldGenerationJobsRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'filters'))
    ListWorldGenerationJobsRequest.type = Types::ListWorldGenerationJobsRequest
    ListWorldGenerationJobsResponse.add_member(:world_generation_job_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorldGenerationJobSummaries, location_name: 'worldGenerationJobSummaries', traits: {"smithy.api#required" => {}}))
    ListWorldGenerationJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListWorldGenerationJobsResponse.type = Types::ListWorldGenerationJobsResponse
    ListWorldTemplatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListWorldTemplatesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    ListWorldTemplatesRequest.type = Types::ListWorldTemplatesRequest
    ListWorldTemplatesResponse.add_member(:template_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateSummaries, location_name: 'templateSummaries'))
    ListWorldTemplatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListWorldTemplatesResponse.type = Types::ListWorldTemplatesResponse
    ListWorldsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListWorldsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    ListWorldsRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'filters'))
    ListWorldsRequest.type = Types::ListWorldsRequest
    ListWorldsResponse.add_member(:world_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorldSummaries, location_name: 'worldSummaries'))
    ListWorldsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListWorldsResponse.type = Types::ListWorldsResponse
    LoggingConfig.add_member(:record_all_ros_topics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'recordAllRosTopics', traits: {"smithy.api#deprecated" => {"message" => "AWS RoboMaker is ending support for ROS software suite. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/software-support-policy.html."}}))
    LoggingConfig.type = Types::LoggingConfig
    NetworkInterface.add_member(:network_interface_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'networkInterfaceId'))
    NetworkInterface.add_member(:private_ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'privateIpAddress'))
    NetworkInterface.add_member(:public_ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'publicIpAddress'))
    NetworkInterface.type = Types::NetworkInterface
    OutputLocation.add_member(:s3_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 's3Bucket'))
    OutputLocation.add_member(:s3_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: 's3Prefix'))
    OutputLocation.type = Types::OutputLocation
    PortForwardingConfig.add_member(:port_mappings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortMappingList, location_name: 'portMappings'))
    PortForwardingConfig.type = Types::PortForwardingConfig
    PortMapping.add_member(:job_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: 'jobPort', traits: {"smithy.api#required" => {}}))
    PortMapping.add_member(:application_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonSystemPort, location_name: 'applicationPort', traits: {"smithy.api#required" => {}}))
    PortMapping.add_member(:enable_on_public_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'enableOnPublicIp', traits: {"smithy.api#default" => false}))
    PortMapping.type = Types::PortMapping
    PortMappingList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortMapping)
    ProgressDetail.add_member(:current_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RobotDeploymentStep, location_name: 'currentProgress'))
    ProgressDetail.add_member(:percent_done, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PercentDone, location_name: 'percentDone'))
    ProgressDetail.add_member(:estimated_time_remaining_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericInteger, location_name: 'estimatedTimeRemainingSeconds'))
    ProgressDetail.add_member(:target_resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'targetResource'))
    ProgressDetail.type = Types::ProgressDetail
    RegisterRobotRequest.add_member(:fleet, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'fleet', traits: {"smithy.api#required" => {}}))
    RegisterRobotRequest.add_member(:robot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'robot', traits: {"smithy.api#required" => {}}))
    RegisterRobotRequest.type = Types::RegisterRobotRequest
    RegisterRobotResponse.add_member(:fleet, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'fleet'))
    RegisterRobotResponse.add_member(:robot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'robot'))
    RegisterRobotResponse.type = Types::RegisterRobotResponse
    RenderingEngine.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RenderingEngineType, location_name: 'name'))
    RenderingEngine.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RenderingEngineVersionType, location_name: 'version'))
    RenderingEngine.type = Types::RenderingEngine
    RenderingEngineType.add_member(:ogre, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OGRE', traits: {"smithy.api#enumValue" => "OGRE"}))
    ResourceAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RestartSimulationJobRequest.add_member(:job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'job', traits: {"smithy.api#required" => {}}))
    RestartSimulationJobRequest.type = Types::RestartSimulationJobRequest
    RestartSimulationJobResponse.type = Types::RestartSimulationJobResponse
    Robot.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    Robot.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    Robot.add_member(:fleet_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'fleetArn'))
    Robot.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RobotStatus, location_name: 'status'))
    Robot.add_member(:green_grass_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'greenGrassGroupId'))
    Robot.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt'))
    Robot.add_member(:architecture, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Architecture, location_name: 'architecture'))
    Robot.add_member(:last_deployment_job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'lastDeploymentJob'))
    Robot.add_member(:last_deployment_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'lastDeploymentTime'))
    Robot.type = Types::Robot
    RobotApplicationConfig.add_member(:application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'application', traits: {"smithy.api#required" => {}}))
    RobotApplicationConfig.add_member(:application_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'applicationVersion'))
    RobotApplicationConfig.add_member(:launch_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchConfig, location_name: 'launchConfig', traits: {"smithy.api#required" => {}}))
    RobotApplicationConfig.add_member(:upload_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadConfigurations, location_name: 'uploadConfigurations'))
    RobotApplicationConfig.add_member(:use_default_upload_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'useDefaultUploadConfigurations', traits: {"smithy.api#deprecated" => {"message" => "AWS RoboMaker is ending support for ROS software suite. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/software-support-policy.html."}}))
    RobotApplicationConfig.add_member(:tools, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tools, location_name: 'tools'))
    RobotApplicationConfig.add_member(:use_default_tools, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'useDefaultTools', traits: {"smithy.api#deprecated" => {"message" => "AWS RoboMaker is ending support for ROS software suite. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/software-support-policy.html."}}))
    RobotApplicationConfig.type = Types::RobotApplicationConfig
    RobotApplicationConfigs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RobotApplicationConfig)
    RobotApplicationNames.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name)
    RobotApplicationSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RobotApplicationSummary)
    RobotApplicationSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    RobotApplicationSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    RobotApplicationSummary.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version'))
    RobotApplicationSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt'))
    RobotApplicationSummary.add_member(:robot_software_suite, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RobotSoftwareSuite, location_name: 'robotSoftwareSuite'))
    RobotApplicationSummary.type = Types::RobotApplicationSummary
    RobotDeployment.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    RobotDeployment.add_member(:deployment_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'deploymentStartTime'))
    RobotDeployment.add_member(:deployment_finish_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'deploymentFinishTime'))
    RobotDeployment.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RobotStatus, location_name: 'status'))
    RobotDeployment.add_member(:progress_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProgressDetail, location_name: 'progressDetail'))
    RobotDeployment.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'failureReason'))
    RobotDeployment.add_member(:failure_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentJobErrorCode, location_name: 'failureCode'))
    RobotDeployment.type = Types::RobotDeployment
    RobotDeploymentStep.add_member(:validating_step, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ValidatingStep', traits: {"smithy.api#enumValue" => "Validating"}))
    RobotDeploymentStep.add_member(:downloading_extracting_step, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DownloadingExtractingStep', traits: {"smithy.api#enumValue" => "DownloadingExtracting"}))
    RobotDeploymentStep.add_member(:executing_download_condition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ExecutingDownloadCondition', traits: {"smithy.api#enumValue" => "ExecutingDownloadCondition"}))
    RobotDeploymentStep.add_member(:pre_launch_step, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PreLaunchStep', traits: {"smithy.api#enumValue" => "ExecutingPreLaunch"}))
    RobotDeploymentStep.add_member(:launching_step, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LaunchingStep', traits: {"smithy.api#enumValue" => "Launching"}))
    RobotDeploymentStep.add_member(:post_launch_step, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PostLaunchStep', traits: {"smithy.api#enumValue" => "ExecutingPostLaunch"}))
    RobotDeploymentStep.add_member(:finished_step, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FinishedStep', traits: {"smithy.api#enumValue" => "Finished"}))
    RobotDeploymentSummary.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RobotDeployment)
    RobotSoftwareSuite.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RobotSoftwareSuiteType, location_name: 'name'))
    RobotSoftwareSuite.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RobotSoftwareSuiteVersionType, location_name: 'version'))
    RobotSoftwareSuite.type = Types::RobotSoftwareSuite
    RobotSoftwareSuiteType.add_member(:ros, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROS', traits: {"smithy.api#enumValue" => "ROS"}))
    RobotSoftwareSuiteType.add_member(:ros2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROS2', traits: {"smithy.api#enumValue" => "ROS2"}))
    RobotSoftwareSuiteType.add_member(:general, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'General', traits: {"smithy.api#enumValue" => "General"}))
    RobotSoftwareSuiteVersionType.add_member(:kinetic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Kinetic', traits: {"smithy.api#enumValue" => "Kinetic"}))
    RobotSoftwareSuiteVersionType.add_member(:melodic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Melodic', traits: {"smithy.api#enumValue" => "Melodic"}))
    RobotSoftwareSuiteVersionType.add_member(:dashing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Dashing', traits: {"smithy.api#enumValue" => "Dashing"}))
    RobotSoftwareSuiteVersionType.add_member(:foxy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Foxy', traits: {"smithy.api#enumValue" => "Foxy"}))
    RobotStatus.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Available', traits: {"smithy.api#enumValue" => "Available"}))
    RobotStatus.add_member(:registered, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Registered', traits: {"smithy.api#enumValue" => "Registered"}))
    RobotStatus.add_member(:pending_new_deployment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PendingNewDeployment', traits: {"smithy.api#enumValue" => "PendingNewDeployment"}))
    RobotStatus.add_member(:deploying, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Deploying', traits: {"smithy.api#enumValue" => "Deploying"}))
    RobotStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "Failed"}))
    RobotStatus.add_member(:in_sync, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InSync', traits: {"smithy.api#enumValue" => "InSync"}))
    RobotStatus.add_member(:no_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NoResponse', traits: {"smithy.api#enumValue" => "NoResponse"}))
    Robots.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Robot)
    S3Etags.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Etag)
    S3KeyOutput.add_member(:s3_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3KeyOrPrefix, location_name: 's3Key'))
    S3KeyOutput.add_member(:etag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Etag, location_name: 'etag'))
    S3KeyOutput.type = Types::S3KeyOutput
    S3KeyOutputs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3KeyOutput)
    S3KeysOrPrefixes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3KeyOrPrefix)
    S3Object.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 'bucket', traits: {"smithy.api#required" => {}}))
    S3Object.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: 'key', traits: {"smithy.api#required" => {}}))
    S3Object.add_member(:etag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Etag, location_name: 'etag'))
    S3Object.type = Types::S3Object
    SecurityGroups.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SimulationApplicationConfig.add_member(:application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'application', traits: {"smithy.api#required" => {}}))
    SimulationApplicationConfig.add_member(:application_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'applicationVersion'))
    SimulationApplicationConfig.add_member(:launch_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchConfig, location_name: 'launchConfig', traits: {"smithy.api#required" => {}}))
    SimulationApplicationConfig.add_member(:upload_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadConfigurations, location_name: 'uploadConfigurations'))
    SimulationApplicationConfig.add_member(:world_configs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorldConfigs, location_name: 'worldConfigs'))
    SimulationApplicationConfig.add_member(:use_default_upload_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'useDefaultUploadConfigurations', traits: {"smithy.api#deprecated" => {"message" => "AWS RoboMaker is ending support for ROS software suite. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/software-support-policy.html."}}))
    SimulationApplicationConfig.add_member(:tools, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tools, location_name: 'tools'))
    SimulationApplicationConfig.add_member(:use_default_tools, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'useDefaultTools', traits: {"smithy.api#deprecated" => {"message" => "AWS RoboMaker is ending support for ROS software suite. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/software-support-policy.html."}}))
    SimulationApplicationConfig.type = Types::SimulationApplicationConfig
    SimulationApplicationConfigs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationApplicationConfig)
    SimulationApplicationNames.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name)
    SimulationApplicationSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationApplicationSummary)
    SimulationApplicationSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    SimulationApplicationSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    SimulationApplicationSummary.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version'))
    SimulationApplicationSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt'))
    SimulationApplicationSummary.add_member(:robot_software_suite, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RobotSoftwareSuite, location_name: 'robotSoftwareSuite'))
    SimulationApplicationSummary.add_member(:simulation_software_suite, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationSoftwareSuite, location_name: 'simulationSoftwareSuite'))
    SimulationApplicationSummary.type = Types::SimulationApplicationSummary
    SimulationJob.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    SimulationJob.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    SimulationJob.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobStatus, location_name: 'status'))
    SimulationJob.add_member(:last_started_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastStartedAt, location_name: 'lastStartedAt'))
    SimulationJob.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt'))
    SimulationJob.add_member(:failure_behavior, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureBehavior, location_name: 'failureBehavior'))
    SimulationJob.add_member(:failure_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobErrorCode, location_name: 'failureCode'))
    SimulationJob.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'failureReason'))
    SimulationJob.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken'))
    SimulationJob.add_member(:output_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputLocation, location_name: 'outputLocation'))
    SimulationJob.add_member(:logging_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfig, location_name: 'loggingConfig'))
    SimulationJob.add_member(:max_job_duration_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobDuration, location_name: 'maxJobDurationInSeconds', traits: {"smithy.api#default" => 0}))
    SimulationJob.add_member(:simulation_time_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationTimeMillis, location_name: 'simulationTimeMillis', traits: {"smithy.api#default" => 0}))
    SimulationJob.add_member(:iam_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRole, location_name: 'iamRole'))
    SimulationJob.add_member(:robot_applications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RobotApplicationConfigs, location_name: 'robotApplications'))
    SimulationJob.add_member(:simulation_applications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationApplicationConfigs, location_name: 'simulationApplications'))
    SimulationJob.add_member(:data_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSources, location_name: 'dataSources'))
    SimulationJob.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    SimulationJob.add_member(:vpc_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCConfigResponse, location_name: 'vpcConfig'))
    SimulationJob.add_member(:network_interface, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterface, location_name: 'networkInterface'))
    SimulationJob.add_member(:compute, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeResponse, location_name: 'compute'))
    SimulationJob.type = Types::SimulationJob
    SimulationJobBatchErrorCode.add_member(:internal_service_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InternalServiceError', traits: {"smithy.api#enumValue" => "InternalServiceError"}))
    SimulationJobBatchStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Pending', traits: {"smithy.api#enumValue" => "Pending"}))
    SimulationJobBatchStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InProgress', traits: {"smithy.api#enumValue" => "InProgress"}))
    SimulationJobBatchStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "Failed"}))
    SimulationJobBatchStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Completed', traits: {"smithy.api#enumValue" => "Completed"}))
    SimulationJobBatchStatus.add_member(:canceled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Canceled', traits: {"smithy.api#enumValue" => "Canceled"}))
    SimulationJobBatchStatus.add_member(:canceling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Canceling', traits: {"smithy.api#enumValue" => "Canceling"}))
    SimulationJobBatchStatus.add_member(:completing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Completing', traits: {"smithy.api#enumValue" => "Completing"}))
    SimulationJobBatchStatus.add_member(:timing_out, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TimingOut', traits: {"smithy.api#enumValue" => "TimingOut"}))
    SimulationJobBatchStatus.add_member(:timed_out, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TimedOut', traits: {"smithy.api#enumValue" => "TimedOut"}))
    SimulationJobBatchSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobBatchSummary)
    SimulationJobBatchSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    SimulationJobBatchSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt'))
    SimulationJobBatchSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt'))
    SimulationJobBatchSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobBatchStatus, location_name: 'status'))
    SimulationJobBatchSummary.add_member(:failed_request_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'failedRequestCount', traits: {"smithy.api#default" => 0}))
    SimulationJobBatchSummary.add_member(:pending_request_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'pendingRequestCount', traits: {"smithy.api#default" => 0}))
    SimulationJobBatchSummary.add_member(:created_request_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'createdRequestCount', traits: {"smithy.api#default" => 0}))
    SimulationJobBatchSummary.type = Types::SimulationJobBatchSummary
    SimulationJobErrorCode.add_member(:internal_service_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InternalServiceError', traits: {"smithy.api#enumValue" => "InternalServiceError"}))
    SimulationJobErrorCode.add_member(:robot_application_crash, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RobotApplicationCrash', traits: {"smithy.api#enumValue" => "RobotApplicationCrash"}))
    SimulationJobErrorCode.add_member(:simulation_application_crash, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SimulationApplicationCrash', traits: {"smithy.api#enumValue" => "SimulationApplicationCrash"}))
    SimulationJobErrorCode.add_member(:robot_application_health_check_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RobotApplicationHealthCheckFailure', traits: {"smithy.api#enumValue" => "RobotApplicationHealthCheckFailure"}))
    SimulationJobErrorCode.add_member(:simulation_application_health_check_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SimulationApplicationHealthCheckFailure', traits: {"smithy.api#enumValue" => "SimulationApplicationHealthCheckFailure"}))
    SimulationJobErrorCode.add_member(:bad_permissions_robot_application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BadPermissionsRobotApplication', traits: {"smithy.api#enumValue" => "BadPermissionsRobotApplication"}))
    SimulationJobErrorCode.add_member(:bad_permissions_simulation_application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BadPermissionsSimulationApplication', traits: {"smithy.api#enumValue" => "BadPermissionsSimulationApplication"}))
    SimulationJobErrorCode.add_member(:bad_permissions_s3_object, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BadPermissionsS3Object', traits: {"smithy.api#enumValue" => "BadPermissionsS3Object"}))
    SimulationJobErrorCode.add_member(:bad_permissions_s3_output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BadPermissionsS3Output', traits: {"smithy.api#enumValue" => "BadPermissionsS3Output"}))
    SimulationJobErrorCode.add_member(:bad_permissions_cloudwatch_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BadPermissionsCloudwatchLogs', traits: {"smithy.api#enumValue" => "BadPermissionsCloudwatchLogs"}))
    SimulationJobErrorCode.add_member(:subnet_ip_limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SubnetIpLimitExceeded', traits: {"smithy.api#enumValue" => "SubnetIpLimitExceeded"}))
    SimulationJobErrorCode.add_member(:eni_limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENILimitExceeded', traits: {"smithy.api#enumValue" => "ENILimitExceeded"}))
    SimulationJobErrorCode.add_member(:bad_permissions_user_credentials, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BadPermissionsUserCredentials', traits: {"smithy.api#enumValue" => "BadPermissionsUserCredentials"}))
    SimulationJobErrorCode.add_member(:invalid_bundle_robot_application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InvalidBundleRobotApplication', traits: {"smithy.api#enumValue" => "InvalidBundleRobotApplication"}))
    SimulationJobErrorCode.add_member(:invalid_bundle_simulation_application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InvalidBundleSimulationApplication', traits: {"smithy.api#enumValue" => "InvalidBundleSimulationApplication"}))
    SimulationJobErrorCode.add_member(:invalid_s3_resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InvalidS3Resource', traits: {"smithy.api#enumValue" => "InvalidS3Resource"}))
    SimulationJobErrorCode.add_member(:throttling_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ThrottlingError', traits: {"smithy.api#enumValue" => "ThrottlingError"}))
    SimulationJobErrorCode.add_member(:limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LimitExceeded', traits: {"smithy.api#enumValue" => "LimitExceeded"}))
    SimulationJobErrorCode.add_member(:mismatched_etag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MismatchedEtag', traits: {"smithy.api#enumValue" => "MismatchedEtag"}))
    SimulationJobErrorCode.add_member(:robot_application_version_mismatched_etag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RobotApplicationVersionMismatchedEtag', traits: {"smithy.api#enumValue" => "RobotApplicationVersionMismatchedEtag"}))
    SimulationJobErrorCode.add_member(:simulation_application_version_mismatched_etag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SimulationApplicationVersionMismatchedEtag', traits: {"smithy.api#enumValue" => "SimulationApplicationVersionMismatchedEtag"}))
    SimulationJobErrorCode.add_member(:resource_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ResourceNotFound', traits: {"smithy.api#enumValue" => "ResourceNotFound"}))
    SimulationJobErrorCode.add_member(:request_throttled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RequestThrottled', traits: {"smithy.api#enumValue" => "RequestThrottled"}))
    SimulationJobErrorCode.add_member(:batch_timed_out, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BatchTimedOut', traits: {"smithy.api#enumValue" => "BatchTimedOut"}))
    SimulationJobErrorCode.add_member(:batch_canceled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BatchCanceled', traits: {"smithy.api#enumValue" => "BatchCanceled"}))
    SimulationJobErrorCode.add_member(:invalid_input, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InvalidInput', traits: {"smithy.api#enumValue" => "InvalidInput"}))
    SimulationJobErrorCode.add_member(:wrong_region_s3_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WrongRegionS3Bucket', traits: {"smithy.api#enumValue" => "WrongRegionS3Bucket"}))
    SimulationJobErrorCode.add_member(:wrong_region_s3_output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WrongRegionS3Output', traits: {"smithy.api#enumValue" => "WrongRegionS3Output"}))
    SimulationJobErrorCode.add_member(:wrong_region_robot_application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WrongRegionRobotApplication', traits: {"smithy.api#enumValue" => "WrongRegionRobotApplication"}))
    SimulationJobErrorCode.add_member(:wrong_region_simulation_application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WrongRegionSimulationApplication', traits: {"smithy.api#enumValue" => "WrongRegionSimulationApplication"}))
    SimulationJobErrorCode.add_member(:upload_content_mismatch_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UploadContentMismatchError', traits: {"smithy.api#enumValue" => "UploadContentMismatchError"}))
    SimulationJobRequest.add_member(:output_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputLocation, location_name: 'outputLocation'))
    SimulationJobRequest.add_member(:logging_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfig, location_name: 'loggingConfig'))
    SimulationJobRequest.add_member(:max_job_duration_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobDuration, location_name: 'maxJobDurationInSeconds', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    SimulationJobRequest.add_member(:iam_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRole, location_name: 'iamRole'))
    SimulationJobRequest.add_member(:failure_behavior, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureBehavior, location_name: 'failureBehavior'))
    SimulationJobRequest.add_member(:use_default_applications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'useDefaultApplications'))
    SimulationJobRequest.add_member(:robot_applications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RobotApplicationConfigs, location_name: 'robotApplications'))
    SimulationJobRequest.add_member(:simulation_applications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationApplicationConfigs, location_name: 'simulationApplications'))
    SimulationJobRequest.add_member(:data_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceConfigs, location_name: 'dataSources'))
    SimulationJobRequest.add_member(:vpc_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCConfig, location_name: 'vpcConfig'))
    SimulationJobRequest.add_member(:compute, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Compute, location_name: 'compute'))
    SimulationJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    SimulationJobRequest.type = Types::SimulationJobRequest
    SimulationJobStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Pending', traits: {"smithy.api#enumValue" => "Pending"}))
    SimulationJobStatus.add_member(:preparing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Preparing', traits: {"smithy.api#enumValue" => "Preparing"}))
    SimulationJobStatus.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Running', traits: {"smithy.api#enumValue" => "Running"}))
    SimulationJobStatus.add_member(:restarting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Restarting', traits: {"smithy.api#enumValue" => "Restarting"}))
    SimulationJobStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Completed', traits: {"smithy.api#enumValue" => "Completed"}))
    SimulationJobStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "Failed"}))
    SimulationJobStatus.add_member(:running_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RunningFailed', traits: {"smithy.api#enumValue" => "RunningFailed"}))
    SimulationJobStatus.add_member(:terminating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Terminating', traits: {"smithy.api#enumValue" => "Terminating"}))
    SimulationJobStatus.add_member(:terminated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Terminated', traits: {"smithy.api#enumValue" => "Terminated"}))
    SimulationJobStatus.add_member(:canceled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Canceled', traits: {"smithy.api#enumValue" => "Canceled"}))
    SimulationJobSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobSummary)
    SimulationJobSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    SimulationJobSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt'))
    SimulationJobSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    SimulationJobSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobStatus, location_name: 'status'))
    SimulationJobSummary.add_member(:simulation_application_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationApplicationNames, location_name: 'simulationApplicationNames'))
    SimulationJobSummary.add_member(:robot_application_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RobotApplicationNames, location_name: 'robotApplicationNames'))
    SimulationJobSummary.add_member(:data_source_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceNames, location_name: 'dataSourceNames'))
    SimulationJobSummary.add_member(:compute_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeType, location_name: 'computeType'))
    SimulationJobSummary.type = Types::SimulationJobSummary
    SimulationJobs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJob)
    SimulationSoftwareSuite.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationSoftwareSuiteType, location_name: 'name'))
    SimulationSoftwareSuite.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationSoftwareSuiteVersionType, location_name: 'version'))
    SimulationSoftwareSuite.type = Types::SimulationSoftwareSuite
    SimulationSoftwareSuiteType.add_member(:gazebo, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Gazebo', traits: {"smithy.api#enumValue" => "Gazebo"}))
    SimulationSoftwareSuiteType.add_member(:rosbag_play, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RosbagPlay', traits: {"smithy.api#enumValue" => "RosbagPlay"}))
    SimulationSoftwareSuiteType.add_member(:simulation_runtime, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SimulationRuntime', traits: {"smithy.api#enumValue" => "SimulationRuntime"}))
    Source.add_member(:s3_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 's3Bucket'))
    Source.add_member(:s3_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: 's3Key'))
    Source.add_member(:etag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Etag, location_name: 'etag'))
    Source.add_member(:architecture, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Architecture, location_name: 'architecture'))
    Source.type = Types::Source
    SourceConfig.add_member(:s3_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 's3Bucket'))
    SourceConfig.add_member(:s3_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: 's3Key'))
    SourceConfig.add_member(:architecture, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Architecture, location_name: 'architecture'))
    SourceConfig.type = Types::SourceConfig
    SourceConfigs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceConfig)
    Sources.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Source)
    StartSimulationJobBatchRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken', traits: {"smithy.api#idempotencyToken" => {}}))
    StartSimulationJobBatchRequest.add_member(:batch_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPolicy, location_name: 'batchPolicy'))
    StartSimulationJobBatchRequest.add_member(:create_simulation_job_requests, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSimulationJobRequests, location_name: 'createSimulationJobRequests', traits: {"smithy.api#required" => {}}))
    StartSimulationJobBatchRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    StartSimulationJobBatchRequest.type = Types::StartSimulationJobBatchRequest
    StartSimulationJobBatchResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    StartSimulationJobBatchResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobBatchStatus, location_name: 'status'))
    StartSimulationJobBatchResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt'))
    StartSimulationJobBatchResponse.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken'))
    StartSimulationJobBatchResponse.add_member(:batch_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPolicy, location_name: 'batchPolicy'))
    StartSimulationJobBatchResponse.add_member(:failure_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobBatchErrorCode, location_name: 'failureCode'))
    StartSimulationJobBatchResponse.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'failureReason'))
    StartSimulationJobBatchResponse.add_member(:failed_requests, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedCreateSimulationJobRequests, location_name: 'failedRequests'))
    StartSimulationJobBatchResponse.add_member(:pending_requests, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSimulationJobRequests, location_name: 'pendingRequests'))
    StartSimulationJobBatchResponse.add_member(:created_requests, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobSummaries, location_name: 'createdRequests'))
    StartSimulationJobBatchResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    StartSimulationJobBatchResponse.type = Types::StartSimulationJobBatchResponse
    Subnets.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    SyncDeploymentJobRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken', traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    SyncDeploymentJobRequest.add_member(:fleet, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'fleet', traits: {"smithy.api#required" => {}}))
    SyncDeploymentJobRequest.type = Types::SyncDeploymentJobRequest
    SyncDeploymentJobResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    SyncDeploymentJobResponse.add_member(:fleet, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'fleet'))
    SyncDeploymentJobResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: 'status'))
    SyncDeploymentJobResponse.add_member(:deployment_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentConfig, location_name: 'deploymentConfig'))
    SyncDeploymentJobResponse.add_member(:deployment_application_configs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentApplicationConfigs, location_name: 'deploymentApplicationConfigs'))
    SyncDeploymentJobResponse.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'failureReason'))
    SyncDeploymentJobResponse.add_member(:failure_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentJobErrorCode, location_name: 'failureCode'))
    SyncDeploymentJobResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt'))
    SyncDeploymentJobResponse.type = Types::SyncDeploymentJobResponse
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TemplateLocation.add_member(:s3_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 's3Bucket', traits: {"smithy.api#required" => {}}))
    TemplateLocation.add_member(:s3_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: 's3Key', traits: {"smithy.api#required" => {}}))
    TemplateLocation.type = Types::TemplateLocation
    TemplateSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateSummary)
    TemplateSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    TemplateSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt'))
    TemplateSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt'))
    TemplateSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'name'))
    TemplateSummary.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'version'))
    TemplateSummary.type = Types::TemplateSummary
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ThrottlingException.type = Types::ThrottlingException
    Tool.add_member(:stream_ui, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'streamUI'))
    Tool.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    Tool.add_member(:command, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnrestrictedCommand, location_name: 'command', traits: {"smithy.api#required" => {}}))
    Tool.add_member(:stream_output_to_cloud_watch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'streamOutputToCloudWatch'))
    Tool.add_member(:exit_behavior, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExitBehavior, location_name: 'exitBehavior'))
    Tool.type = Types::Tool
    Tools.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tool)
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateRobotApplicationRequest.add_member(:application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'application', traits: {"smithy.api#required" => {}}))
    UpdateRobotApplicationRequest.add_member(:sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceConfigs, location_name: 'sources'))
    UpdateRobotApplicationRequest.add_member(:robot_software_suite, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RobotSoftwareSuite, location_name: 'robotSoftwareSuite', traits: {"smithy.api#required" => {}}))
    UpdateRobotApplicationRequest.add_member(:current_revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionId, location_name: 'currentRevisionId'))
    UpdateRobotApplicationRequest.add_member(:environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment'))
    UpdateRobotApplicationRequest.type = Types::UpdateRobotApplicationRequest
    UpdateRobotApplicationResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    UpdateRobotApplicationResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    UpdateRobotApplicationResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version'))
    UpdateRobotApplicationResponse.add_member(:sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Sources, location_name: 'sources'))
    UpdateRobotApplicationResponse.add_member(:robot_software_suite, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RobotSoftwareSuite, location_name: 'robotSoftwareSuite'))
    UpdateRobotApplicationResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt'))
    UpdateRobotApplicationResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionId, location_name: 'revisionId'))
    UpdateRobotApplicationResponse.add_member(:environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment'))
    UpdateRobotApplicationResponse.type = Types::UpdateRobotApplicationResponse
    UpdateSimulationApplicationRequest.add_member(:application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'application', traits: {"smithy.api#required" => {}}))
    UpdateSimulationApplicationRequest.add_member(:sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceConfigs, location_name: 'sources'))
    UpdateSimulationApplicationRequest.add_member(:simulation_software_suite, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationSoftwareSuite, location_name: 'simulationSoftwareSuite', traits: {"smithy.api#required" => {}}))
    UpdateSimulationApplicationRequest.add_member(:robot_software_suite, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RobotSoftwareSuite, location_name: 'robotSoftwareSuite', traits: {"smithy.api#required" => {}}))
    UpdateSimulationApplicationRequest.add_member(:rendering_engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RenderingEngine, location_name: 'renderingEngine'))
    UpdateSimulationApplicationRequest.add_member(:current_revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionId, location_name: 'currentRevisionId'))
    UpdateSimulationApplicationRequest.add_member(:environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment'))
    UpdateSimulationApplicationRequest.type = Types::UpdateSimulationApplicationRequest
    UpdateSimulationApplicationResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    UpdateSimulationApplicationResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    UpdateSimulationApplicationResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version'))
    UpdateSimulationApplicationResponse.add_member(:sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Sources, location_name: 'sources'))
    UpdateSimulationApplicationResponse.add_member(:simulation_software_suite, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationSoftwareSuite, location_name: 'simulationSoftwareSuite'))
    UpdateSimulationApplicationResponse.add_member(:robot_software_suite, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RobotSoftwareSuite, location_name: 'robotSoftwareSuite'))
    UpdateSimulationApplicationResponse.add_member(:rendering_engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RenderingEngine, location_name: 'renderingEngine'))
    UpdateSimulationApplicationResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt'))
    UpdateSimulationApplicationResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionId, location_name: 'revisionId'))
    UpdateSimulationApplicationResponse.add_member(:environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment'))
    UpdateSimulationApplicationResponse.type = Types::UpdateSimulationApplicationResponse
    UpdateWorldTemplateRequest.add_member(:template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'template', traits: {"smithy.api#required" => {}}))
    UpdateWorldTemplateRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'name'))
    UpdateWorldTemplateRequest.add_member(:template_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Json, location_name: 'templateBody'))
    UpdateWorldTemplateRequest.add_member(:template_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateLocation, location_name: 'templateLocation'))
    UpdateWorldTemplateRequest.type = Types::UpdateWorldTemplateRequest
    UpdateWorldTemplateResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    UpdateWorldTemplateResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'name'))
    UpdateWorldTemplateResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt'))
    UpdateWorldTemplateResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt'))
    UpdateWorldTemplateResponse.type = Types::UpdateWorldTemplateResponse
    UploadBehavior.add_member(:upload_on_terminate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPLOAD_ON_TERMINATE', traits: {"smithy.api#enumValue" => "UPLOAD_ON_TERMINATE"}))
    UploadBehavior.add_member(:upload_rolling_auto_remove, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPLOAD_ROLLING_AUTO_REMOVE', traits: {"smithy.api#enumValue" => "UPLOAD_ROLLING_AUTO_REMOVE"}))
    UploadConfiguration.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    UploadConfiguration.add_member(:path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'path', traits: {"smithy.api#required" => {}}))
    UploadConfiguration.add_member(:upload_behavior, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadBehavior, location_name: 'uploadBehavior', traits: {"smithy.api#required" => {}}))
    UploadConfiguration.type = Types::UploadConfiguration
    UploadConfigurations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadConfiguration)
    VPCConfig.add_member(:subnets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Subnets, location_name: 'subnets', traits: {"smithy.api#required" => {}}))
    VPCConfig.add_member(:security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroups, location_name: 'securityGroups'))
    VPCConfig.add_member(:assign_public_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'assignPublicIp', traits: {"smithy.api#default" => false}))
    VPCConfig.type = Types::VPCConfig
    VPCConfigResponse.add_member(:subnets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Subnets, location_name: 'subnets'))
    VPCConfigResponse.add_member(:security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroups, location_name: 'securityGroups'))
    VPCConfigResponse.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'vpcId'))
    VPCConfigResponse.add_member(:assign_public_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'assignPublicIp', traits: {"smithy.api#default" => false}))
    VPCConfigResponse.type = Types::VPCConfigResponse
    WorldConfig.add_member(:world, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'world'))
    WorldConfig.type = Types::WorldConfig
    WorldConfigs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorldConfig)
    WorldCount.add_member(:floorplan_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FloorplanCount, location_name: 'floorplanCount'))
    WorldCount.add_member(:interior_count_per_floorplan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InteriorCountPerFloorplan, location_name: 'interiorCountPerFloorplan'))
    WorldCount.type = Types::WorldCount
    WorldExportJobErrorCode.add_member(:internal_service_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InternalServiceError', traits: {"smithy.api#enumValue" => "InternalServiceError"}))
    WorldExportJobErrorCode.add_member(:limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LimitExceeded', traits: {"smithy.api#enumValue" => "LimitExceeded"}))
    WorldExportJobErrorCode.add_member(:resource_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ResourceNotFound', traits: {"smithy.api#enumValue" => "ResourceNotFound"}))
    WorldExportJobErrorCode.add_member(:request_throttled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RequestThrottled', traits: {"smithy.api#enumValue" => "RequestThrottled"}))
    WorldExportJobErrorCode.add_member(:invalid_input, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InvalidInput', traits: {"smithy.api#enumValue" => "InvalidInput"}))
    WorldExportJobErrorCode.add_member(:access_denied, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AccessDenied', traits: {"smithy.api#enumValue" => "AccessDenied"}))
    WorldExportJobStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Pending', traits: {"smithy.api#enumValue" => "Pending"}))
    WorldExportJobStatus.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Running', traits: {"smithy.api#enumValue" => "Running"}))
    WorldExportJobStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Completed', traits: {"smithy.api#enumValue" => "Completed"}))
    WorldExportJobStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "Failed"}))
    WorldExportJobStatus.add_member(:canceling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Canceling', traits: {"smithy.api#enumValue" => "Canceling"}))
    WorldExportJobStatus.add_member(:canceled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Canceled', traits: {"smithy.api#enumValue" => "Canceled"}))
    WorldExportJobSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorldExportJobSummary)
    WorldExportJobSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    WorldExportJobSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorldExportJobStatus, location_name: 'status'))
    WorldExportJobSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt'))
    WorldExportJobSummary.add_member(:worlds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arns, location_name: 'worlds'))
    WorldExportJobSummary.add_member(:output_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputLocation, location_name: 'outputLocation'))
    WorldExportJobSummary.type = Types::WorldExportJobSummary
    WorldFailure.add_member(:failure_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorldGenerationJobErrorCode, location_name: 'failureCode'))
    WorldFailure.add_member(:sample_failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'sampleFailureReason'))
    WorldFailure.add_member(:failure_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'failureCount', traits: {"smithy.api#default" => 0}))
    WorldFailure.type = Types::WorldFailure
    WorldFailures.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorldFailure)
    WorldGenerationJobErrorCode.add_member(:internal_service_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InternalServiceError', traits: {"smithy.api#enumValue" => "InternalServiceError"}))
    WorldGenerationJobErrorCode.add_member(:limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LimitExceeded', traits: {"smithy.api#enumValue" => "LimitExceeded"}))
    WorldGenerationJobErrorCode.add_member(:resource_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ResourceNotFound', traits: {"smithy.api#enumValue" => "ResourceNotFound"}))
    WorldGenerationJobErrorCode.add_member(:request_throttled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RequestThrottled', traits: {"smithy.api#enumValue" => "RequestThrottled"}))
    WorldGenerationJobErrorCode.add_member(:invalid_input, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InvalidInput', traits: {"smithy.api#enumValue" => "InvalidInput"}))
    WorldGenerationJobErrorCode.add_member(:all_world_generation_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AllWorldGenerationFailed', traits: {"smithy.api#enumValue" => "AllWorldGenerationFailed"}))
    WorldGenerationJobStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Pending', traits: {"smithy.api#enumValue" => "Pending"}))
    WorldGenerationJobStatus.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Running', traits: {"smithy.api#enumValue" => "Running"}))
    WorldGenerationJobStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Completed', traits: {"smithy.api#enumValue" => "Completed"}))
    WorldGenerationJobStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "Failed"}))
    WorldGenerationJobStatus.add_member(:partial_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PartialFailed', traits: {"smithy.api#enumValue" => "PartialFailed"}))
    WorldGenerationJobStatus.add_member(:canceling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Canceling', traits: {"smithy.api#enumValue" => "Canceling"}))
    WorldGenerationJobStatus.add_member(:canceled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Canceled', traits: {"smithy.api#enumValue" => "Canceled"}))
    WorldGenerationJobSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorldGenerationJobSummary)
    WorldGenerationJobSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    WorldGenerationJobSummary.add_member(:template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'template'))
    WorldGenerationJobSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt'))
    WorldGenerationJobSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorldGenerationJobStatus, location_name: 'status'))
    WorldGenerationJobSummary.add_member(:world_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorldCount, location_name: 'worldCount'))
    WorldGenerationJobSummary.add_member(:succeeded_world_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'succeededWorldCount', traits: {"smithy.api#default" => 0}))
    WorldGenerationJobSummary.add_member(:failed_world_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'failedWorldCount', traits: {"smithy.api#default" => 0}))
    WorldGenerationJobSummary.type = Types::WorldGenerationJobSummary
    WorldSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorldSummary)
    WorldSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn'))
    WorldSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt'))
    WorldSummary.add_member(:generation_job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'generationJob'))
    WorldSummary.add_member(:template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'template'))
    WorldSummary.type = Types::WorldSummary

    Robomaker = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.robomaker#robomaker"
      service.name = "Robomaker"
      service.version = "2018-06-29"
      service.traits = {"aws.api#service" => {"sdkId" => "RoboMaker", "arnNamespace" => "robomaker", "cloudFormationName" => "RoboMaker", "cloudTrailEventSource" => "robomaker.amazonaws.com", "endpointPrefix" => "robomaker"}, "aws.auth#sigv4" => {"name" => "robomaker"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS RoboMaker"}
      service.add_operation(:batch_delete_worlds, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#BatchDeleteWorlds"
        operation.name = "BatchDeleteWorlds"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteWorldsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteWorldsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/batchDeleteWorlds", "code" => 200}}
      end)
      service.add_operation(:batch_describe_simulation_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#BatchDescribeSimulationJob"
        operation.name = "BatchDescribeSimulationJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDescribeSimulationJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDescribeSimulationJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/batchDescribeSimulationJob", "code" => 200}}
      end)
      service.add_operation(:cancel_deployment_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#CancelDeploymentJob"
        operation.name = "CancelDeploymentJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelDeploymentJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelDeploymentJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}, "smithy.api#http" => {"method" => "POST", "uri" => "/cancelDeploymentJob", "code" => 200}}
      end)
      service.add_operation(:cancel_simulation_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#CancelSimulationJob"
        operation.name = "CancelSimulationJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelSimulationJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelSimulationJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/cancelSimulationJob", "code" => 200}}
      end)
      service.add_operation(:cancel_simulation_job_batch, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#CancelSimulationJobBatch"
        operation.name = "CancelSimulationJobBatch"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelSimulationJobBatchRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelSimulationJobBatchResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/cancelSimulationJobBatch", "code" => 200}}
      end)
      service.add_operation(:cancel_world_export_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#CancelWorldExportJob"
        operation.name = "CancelWorldExportJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelWorldExportJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelWorldExportJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/cancelWorldExportJob", "code" => 200}}
      end)
      service.add_operation(:cancel_world_generation_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#CancelWorldGenerationJob"
        operation.name = "CancelWorldGenerationJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelWorldGenerationJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelWorldGenerationJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/cancelWorldGenerationJob", "code" => 200}}
      end)
      service.add_operation(:create_deployment_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#CreateDeploymentJob"
        operation.name = "CreateDeploymentJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDeploymentJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDeploymentJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentDeploymentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}, "smithy.api#http" => {"method" => "POST", "uri" => "/createDeploymentJob", "code" => 200}}
      end)
      service.add_operation(:create_fleet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#CreateFleet"
        operation.name = "CreateFleet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFleetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFleetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}, "smithy.api#http" => {"method" => "POST", "uri" => "/createFleet", "code" => 200}}
      end)
      service.add_operation(:create_robot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#CreateRobot"
        operation.name = "CreateRobot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRobotRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRobotResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}, "smithy.api#http" => {"method" => "POST", "uri" => "/createRobot", "code" => 200}}
      end)
      service.add_operation(:create_robot_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#CreateRobotApplication"
        operation.name = "CreateRobotApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRobotApplicationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRobotApplicationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/createRobotApplication", "code" => 200}}
      end)
      service.add_operation(:create_robot_application_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#CreateRobotApplicationVersion"
        operation.name = "CreateRobotApplicationVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRobotApplicationVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRobotApplicationVersionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/createRobotApplicationVersion", "code" => 200}}
      end)
      service.add_operation(:create_simulation_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#CreateSimulationApplication"
        operation.name = "CreateSimulationApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSimulationApplicationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSimulationApplicationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/createSimulationApplication", "code" => 200}}
      end)
      service.add_operation(:create_simulation_application_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#CreateSimulationApplicationVersion"
        operation.name = "CreateSimulationApplicationVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSimulationApplicationVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSimulationApplicationVersionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/createSimulationApplicationVersion", "code" => 200}}
      end)
      service.add_operation(:create_simulation_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#CreateSimulationJob"
        operation.name = "CreateSimulationJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSimulationJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSimulationJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/createSimulationJob", "code" => 200}}
      end)
      service.add_operation(:create_world_export_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#CreateWorldExportJob"
        operation.name = "CreateWorldExportJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorldExportJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorldExportJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/createWorldExportJob", "code" => 200}}
      end)
      service.add_operation(:create_world_generation_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#CreateWorldGenerationJob"
        operation.name = "CreateWorldGenerationJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorldGenerationJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorldGenerationJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/createWorldGenerationJob", "code" => 200}}
      end)
      service.add_operation(:create_world_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#CreateWorldTemplate"
        operation.name = "CreateWorldTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorldTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorldTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/createWorldTemplate", "code" => 200}}
      end)
      service.add_operation(:delete_fleet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#DeleteFleet"
        operation.name = "DeleteFleet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFleetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFleetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}, "smithy.api#http" => {"method" => "POST", "uri" => "/deleteFleet", "code" => 200}}
      end)
      service.add_operation(:delete_robot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#DeleteRobot"
        operation.name = "DeleteRobot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRobotRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRobotResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}, "smithy.api#http" => {"method" => "POST", "uri" => "/deleteRobot", "code" => 200}}
      end)
      service.add_operation(:delete_robot_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#DeleteRobotApplication"
        operation.name = "DeleteRobotApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRobotApplicationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRobotApplicationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/deleteRobotApplication", "code" => 200}}
      end)
      service.add_operation(:delete_simulation_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#DeleteSimulationApplication"
        operation.name = "DeleteSimulationApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSimulationApplicationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSimulationApplicationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/deleteSimulationApplication", "code" => 200}}
      end)
      service.add_operation(:delete_world_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#DeleteWorldTemplate"
        operation.name = "DeleteWorldTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorldTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorldTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/deleteWorldTemplate", "code" => 200}}
      end)
      service.add_operation(:deregister_robot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#DeregisterRobot"
        operation.name = "DeregisterRobot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterRobotRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterRobotResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}, "smithy.api#http" => {"method" => "POST", "uri" => "/deregisterRobot", "code" => 200}}
      end)
      service.add_operation(:describe_deployment_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#DescribeDeploymentJob"
        operation.name = "DescribeDeploymentJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDeploymentJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDeploymentJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}, "smithy.api#http" => {"method" => "POST", "uri" => "/describeDeploymentJob", "code" => 200}}
      end)
      service.add_operation(:describe_fleet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#DescribeFleet"
        operation.name = "DescribeFleet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFleetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFleetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}, "smithy.api#http" => {"method" => "POST", "uri" => "/describeFleet", "code" => 200}}
      end)
      service.add_operation(:describe_robot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#DescribeRobot"
        operation.name = "DescribeRobot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRobotRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRobotResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}, "smithy.api#http" => {"method" => "POST", "uri" => "/describeRobot", "code" => 200}}
      end)
      service.add_operation(:describe_robot_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#DescribeRobotApplication"
        operation.name = "DescribeRobotApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRobotApplicationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRobotApplicationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describeRobotApplication", "code" => 200}}
      end)
      service.add_operation(:describe_simulation_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#DescribeSimulationApplication"
        operation.name = "DescribeSimulationApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSimulationApplicationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSimulationApplicationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describeSimulationApplication", "code" => 200}}
      end)
      service.add_operation(:describe_simulation_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#DescribeSimulationJob"
        operation.name = "DescribeSimulationJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSimulationJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSimulationJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describeSimulationJob", "code" => 200}}
      end)
      service.add_operation(:describe_simulation_job_batch, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#DescribeSimulationJobBatch"
        operation.name = "DescribeSimulationJobBatch"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSimulationJobBatchRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSimulationJobBatchResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describeSimulationJobBatch", "code" => 200}}
      end)
      service.add_operation(:describe_world, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#DescribeWorld"
        operation.name = "DescribeWorld"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorldRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorldResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describeWorld", "code" => 200}}
      end)
      service.add_operation(:describe_world_export_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#DescribeWorldExportJob"
        operation.name = "DescribeWorldExportJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorldExportJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorldExportJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describeWorldExportJob", "code" => 200}}
      end)
      service.add_operation(:describe_world_generation_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#DescribeWorldGenerationJob"
        operation.name = "DescribeWorldGenerationJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorldGenerationJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorldGenerationJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describeWorldGenerationJob", "code" => 200}}
      end)
      service.add_operation(:describe_world_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#DescribeWorldTemplate"
        operation.name = "DescribeWorldTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorldTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorldTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describeWorldTemplate", "code" => 200}}
      end)
      service.add_operation(:get_world_template_body, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#GetWorldTemplateBody"
        operation.name = "GetWorldTemplateBody"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorldTemplateBodyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorldTemplateBodyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/getWorldTemplateBody", "code" => 200}}
      end)
      service.add_operation(:list_deployment_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#ListDeploymentJobs"
        operation.name = "ListDeploymentJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeploymentJobsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeploymentJobsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}, "smithy.api#http" => {"method" => "POST", "uri" => "/listDeploymentJobs", "code" => 200}}
        operation[:paginator] = Paginators::ListDeploymentJobs.new
      end)
      service.add_operation(:list_fleets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#ListFleets"
        operation.name = "ListFleets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFleetsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFleetsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}, "smithy.api#http" => {"method" => "POST", "uri" => "/listFleets", "code" => 200}}
        operation[:paginator] = Paginators::ListFleets.new
      end)
      service.add_operation(:list_robot_applications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#ListRobotApplications"
        operation.name = "ListRobotApplications"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRobotApplicationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRobotApplicationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listRobotApplications", "code" => 200}}
        operation[:paginator] = Paginators::ListRobotApplications.new
      end)
      service.add_operation(:list_robots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#ListRobots"
        operation.name = "ListRobots"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRobotsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRobotsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}, "smithy.api#http" => {"method" => "POST", "uri" => "/listRobots", "code" => 200}}
        operation[:paginator] = Paginators::ListRobots.new
      end)
      service.add_operation(:list_simulation_applications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#ListSimulationApplications"
        operation.name = "ListSimulationApplications"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSimulationApplicationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSimulationApplicationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listSimulationApplications", "code" => 200}}
        operation[:paginator] = Paginators::ListSimulationApplications.new
      end)
      service.add_operation(:list_simulation_job_batches, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#ListSimulationJobBatches"
        operation.name = "ListSimulationJobBatches"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSimulationJobBatchesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSimulationJobBatchesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listSimulationJobBatches", "code" => 200}}
        operation[:paginator] = Paginators::ListSimulationJobBatches.new
      end)
      service.add_operation(:list_simulation_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#ListSimulationJobs"
        operation.name = "ListSimulationJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSimulationJobsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSimulationJobsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listSimulationJobs", "code" => 200}}
        operation[:paginator] = Paginators::ListSimulationJobs.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:list_world_export_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#ListWorldExportJobs"
        operation.name = "ListWorldExportJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorldExportJobsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorldExportJobsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listWorldExportJobs", "code" => 200}}
        operation[:paginator] = Paginators::ListWorldExportJobs.new
      end)
      service.add_operation(:list_world_generation_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#ListWorldGenerationJobs"
        operation.name = "ListWorldGenerationJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorldGenerationJobsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorldGenerationJobsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listWorldGenerationJobs", "code" => 200}}
        operation[:paginator] = Paginators::ListWorldGenerationJobs.new
      end)
      service.add_operation(:list_world_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#ListWorldTemplates"
        operation.name = "ListWorldTemplates"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorldTemplatesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorldTemplatesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listWorldTemplates", "code" => 200}}
        operation[:paginator] = Paginators::ListWorldTemplates.new
      end)
      service.add_operation(:list_worlds, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#ListWorlds"
        operation.name = "ListWorlds"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorldsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorldsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listWorlds", "code" => 200}}
        operation[:paginator] = Paginators::ListWorlds.new
      end)
      service.add_operation(:register_robot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#RegisterRobot"
        operation.name = "RegisterRobot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterRobotRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterRobotResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}, "smithy.api#http" => {"method" => "POST", "uri" => "/registerRobot", "code" => 200}}
      end)
      service.add_operation(:restart_simulation_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#RestartSimulationJob"
        operation.name = "RestartSimulationJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestartSimulationJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestartSimulationJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/restartSimulationJob", "code" => 200}}
      end)
      service.add_operation(:start_simulation_job_batch, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#StartSimulationJobBatch"
        operation.name = "StartSimulationJobBatch"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartSimulationJobBatchRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartSimulationJobBatchResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/startSimulationJobBatch", "code" => 200}}
      end)
      service.add_operation(:sync_deployment_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#SyncDeploymentJob"
        operation.name = "SyncDeploymentJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncDeploymentJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncDeploymentJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentDeploymentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}, "smithy.api#http" => {"method" => "POST", "uri" => "/syncDeploymentJob", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_robot_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#UpdateRobotApplication"
        operation.name = "UpdateRobotApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRobotApplicationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRobotApplicationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/updateRobotApplication", "code" => 200}}
      end)
      service.add_operation(:update_simulation_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#UpdateSimulationApplication"
        operation.name = "UpdateSimulationApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSimulationApplicationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSimulationApplicationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/updateSimulationApplication", "code" => 200}}
      end)
      service.add_operation(:update_world_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#UpdateWorldTemplate"
        operation.name = "UpdateWorldTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorldTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorldTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/updateWorldTemplate", "code" => 200}}
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
