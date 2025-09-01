# frozen_string_literal: true

# This is generated code!

module Aws::RoboMaker
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Architecture = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#Architecture', name: 'Architecture')
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1224}, "smithy.api#pattern" => "^arn:"})
    Arns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#Arns', name: 'Arns', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    BatchDeleteWorldsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#BatchDeleteWorldsRequest', name: 'BatchDeleteWorldsRequest')
    BatchDeleteWorldsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#BatchDeleteWorldsResponse', name: 'BatchDeleteWorldsResponse')
    BatchDescribeSimulationJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#BatchDescribeSimulationJobRequest', name: 'BatchDescribeSimulationJobRequest')
    BatchDescribeSimulationJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#BatchDescribeSimulationJobResponse', name: 'BatchDescribeSimulationJobResponse')
    BatchPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#BatchPolicy', name: 'BatchPolicy')
    BatchTimeoutInSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.robomaker#BatchTimeoutInSeconds', name: 'BatchTimeoutInSeconds')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.robomaker#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    BoxedBoolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.robomaker#BoxedBoolean', name: 'BoxedBoolean')
    CancelDeploymentJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CancelDeploymentJobRequest', name: 'CancelDeploymentJobRequest', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    CancelDeploymentJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CancelDeploymentJobResponse', name: 'CancelDeploymentJobResponse', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    CancelSimulationJobBatchRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CancelSimulationJobBatchRequest', name: 'CancelSimulationJobBatchRequest')
    CancelSimulationJobBatchResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CancelSimulationJobBatchResponse', name: 'CancelSimulationJobBatchResponse')
    CancelSimulationJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CancelSimulationJobRequest', name: 'CancelSimulationJobRequest')
    CancelSimulationJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CancelSimulationJobResponse', name: 'CancelSimulationJobResponse')
    CancelWorldExportJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CancelWorldExportJobRequest', name: 'CancelWorldExportJobRequest')
    CancelWorldExportJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CancelWorldExportJobResponse', name: 'CancelWorldExportJobResponse')
    CancelWorldGenerationJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CancelWorldGenerationJobRequest', name: 'CancelWorldGenerationJobRequest')
    CancelWorldGenerationJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CancelWorldGenerationJobResponse', name: 'CancelWorldGenerationJobResponse')
    ClientRequestToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#ClientRequestToken', name: 'ClientRequestToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-=]*$"})
    Command = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#Command', name: 'Command', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[a-zA-Z0-9_.\\-]*$"})
    CommandList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#CommandList', name: 'CommandList')
    Compute = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#Compute', name: 'Compute')
    ComputeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ComputeResponse', name: 'ComputeResponse')
    ComputeType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#ComputeType', name: 'ComputeType')
    ConcurrentDeploymentException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ConcurrentDeploymentException', name: 'ConcurrentDeploymentException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CreateDeploymentJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateDeploymentJobRequest', name: 'CreateDeploymentJobRequest', traits: {"smithy.api#deprecated" => {"message" => "AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    CreateDeploymentJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateDeploymentJobResponse', name: 'CreateDeploymentJobResponse', traits: {"smithy.api#deprecated" => {"message" => "AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    CreateFleetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateFleetRequest', name: 'CreateFleetRequest', traits: {"smithy.api#deprecated" => {"message" => "AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    CreateFleetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateFleetResponse', name: 'CreateFleetResponse', traits: {"smithy.api#deprecated" => {"message" => "AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    CreateRobotApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateRobotApplicationRequest', name: 'CreateRobotApplicationRequest')
    CreateRobotApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateRobotApplicationResponse', name: 'CreateRobotApplicationResponse')
    CreateRobotApplicationVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateRobotApplicationVersionRequest', name: 'CreateRobotApplicationVersionRequest')
    CreateRobotApplicationVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateRobotApplicationVersionResponse', name: 'CreateRobotApplicationVersionResponse')
    CreateRobotRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateRobotRequest', name: 'CreateRobotRequest', traits: {"smithy.api#deprecated" => {"message" => "AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    CreateRobotResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateRobotResponse', name: 'CreateRobotResponse', traits: {"smithy.api#deprecated" => {"message" => "AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    CreateSimulationApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateSimulationApplicationRequest', name: 'CreateSimulationApplicationRequest')
    CreateSimulationApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateSimulationApplicationResponse', name: 'CreateSimulationApplicationResponse')
    CreateSimulationApplicationVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateSimulationApplicationVersionRequest', name: 'CreateSimulationApplicationVersionRequest')
    CreateSimulationApplicationVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateSimulationApplicationVersionResponse', name: 'CreateSimulationApplicationVersionResponse')
    CreateSimulationJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateSimulationJobRequest', name: 'CreateSimulationJobRequest')
    CreateSimulationJobRequests = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#CreateSimulationJobRequests', name: 'CreateSimulationJobRequests', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    CreateSimulationJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateSimulationJobResponse', name: 'CreateSimulationJobResponse')
    CreateWorldExportJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateWorldExportJobRequest', name: 'CreateWorldExportJobRequest')
    CreateWorldExportJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateWorldExportJobResponse', name: 'CreateWorldExportJobResponse')
    CreateWorldGenerationJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateWorldGenerationJobRequest', name: 'CreateWorldGenerationJobRequest')
    CreateWorldGenerationJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateWorldGenerationJobResponse', name: 'CreateWorldGenerationJobResponse')
    CreateWorldTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateWorldTemplateRequest', name: 'CreateWorldTemplateRequest')
    CreateWorldTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#CreateWorldTemplateResponse', name: 'CreateWorldTemplateResponse')
    CreatedAt = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.robomaker#CreatedAt', name: 'CreatedAt')
    DataSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DataSource', name: 'DataSource')
    DataSourceConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DataSourceConfig', name: 'DataSourceConfig')
    DataSourceConfigs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#DataSourceConfigs', name: 'DataSourceConfigs', traits: {"smithy.api#length" => {"min" => 1, "max" => 6}})
    DataSourceNames = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#DataSourceNames', name: 'DataSourceNames')
    DataSourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#DataSourceType', name: 'DataSourceType')
    DataSources = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#DataSources', name: 'DataSources')
    DeleteFleetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DeleteFleetRequest', name: 'DeleteFleetRequest', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    DeleteFleetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DeleteFleetResponse', name: 'DeleteFleetResponse', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    DeleteRobotApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DeleteRobotApplicationRequest', name: 'DeleteRobotApplicationRequest')
    DeleteRobotApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DeleteRobotApplicationResponse', name: 'DeleteRobotApplicationResponse')
    DeleteRobotRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DeleteRobotRequest', name: 'DeleteRobotRequest', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    DeleteRobotResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DeleteRobotResponse', name: 'DeleteRobotResponse', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    DeleteSimulationApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DeleteSimulationApplicationRequest', name: 'DeleteSimulationApplicationRequest')
    DeleteSimulationApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DeleteSimulationApplicationResponse', name: 'DeleteSimulationApplicationResponse')
    DeleteWorldTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DeleteWorldTemplateRequest', name: 'DeleteWorldTemplateRequest')
    DeleteWorldTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DeleteWorldTemplateResponse', name: 'DeleteWorldTemplateResponse')
    DeploymentApplicationConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DeploymentApplicationConfig', name: 'DeploymentApplicationConfig')
    DeploymentApplicationConfigs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#DeploymentApplicationConfigs', name: 'DeploymentApplicationConfigs', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    DeploymentConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DeploymentConfig', name: 'DeploymentConfig')
    DeploymentJob = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DeploymentJob', name: 'DeploymentJob')
    DeploymentJobErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#DeploymentJobErrorCode', name: 'DeploymentJobErrorCode')
    DeploymentJobs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#DeploymentJobs', name: 'DeploymentJobs', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    DeploymentLaunchConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DeploymentLaunchConfig', name: 'DeploymentLaunchConfig')
    DeploymentStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#DeploymentStatus', name: 'DeploymentStatus')
    DeploymentTimeout = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.robomaker#DeploymentTimeout', name: 'DeploymentTimeout')
    DeploymentVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#DeploymentVersion', name: 'DeploymentVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[0-9]*$"})
    DeregisterRobotRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DeregisterRobotRequest', name: 'DeregisterRobotRequest', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    DeregisterRobotResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DeregisterRobotResponse', name: 'DeregisterRobotResponse', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    DescribeDeploymentJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeDeploymentJobRequest', name: 'DescribeDeploymentJobRequest', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    DescribeDeploymentJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeDeploymentJobResponse', name: 'DescribeDeploymentJobResponse', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    DescribeFleetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeFleetRequest', name: 'DescribeFleetRequest', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    DescribeFleetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeFleetResponse', name: 'DescribeFleetResponse', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    DescribeRobotApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeRobotApplicationRequest', name: 'DescribeRobotApplicationRequest')
    DescribeRobotApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeRobotApplicationResponse', name: 'DescribeRobotApplicationResponse')
    DescribeRobotRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeRobotRequest', name: 'DescribeRobotRequest', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    DescribeRobotResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeRobotResponse', name: 'DescribeRobotResponse', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    DescribeSimulationApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeSimulationApplicationRequest', name: 'DescribeSimulationApplicationRequest')
    DescribeSimulationApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeSimulationApplicationResponse', name: 'DescribeSimulationApplicationResponse')
    DescribeSimulationJobBatchRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeSimulationJobBatchRequest', name: 'DescribeSimulationJobBatchRequest')
    DescribeSimulationJobBatchResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeSimulationJobBatchResponse', name: 'DescribeSimulationJobBatchResponse')
    DescribeSimulationJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeSimulationJobRequest', name: 'DescribeSimulationJobRequest')
    DescribeSimulationJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeSimulationJobResponse', name: 'DescribeSimulationJobResponse')
    DescribeWorldExportJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeWorldExportJobRequest', name: 'DescribeWorldExportJobRequest')
    DescribeWorldExportJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeWorldExportJobResponse', name: 'DescribeWorldExportJobResponse')
    DescribeWorldGenerationJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeWorldGenerationJobRequest', name: 'DescribeWorldGenerationJobRequest')
    DescribeWorldGenerationJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeWorldGenerationJobResponse', name: 'DescribeWorldGenerationJobResponse')
    DescribeWorldRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeWorldRequest', name: 'DescribeWorldRequest')
    DescribeWorldResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeWorldResponse', name: 'DescribeWorldResponse')
    DescribeWorldTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeWorldTemplateRequest', name: 'DescribeWorldTemplateRequest')
    DescribeWorldTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#DescribeWorldTemplateResponse', name: 'DescribeWorldTemplateResponse')
    Environment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#Environment', name: 'Environment')
    EnvironmentVariableKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#EnvironmentVariableKey', name: 'EnvironmentVariableKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[A-Z_][A-Z0-9_]*$"})
    EnvironmentVariableMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.robomaker#EnvironmentVariableMap', name: 'EnvironmentVariableMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    EnvironmentVariableValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#EnvironmentVariableValue', name: 'EnvironmentVariableValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => ".*"})
    ExitBehavior = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#ExitBehavior', name: 'ExitBehavior')
    FailedAt = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.robomaker#FailedAt', name: 'FailedAt')
    FailedCreateSimulationJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#FailedCreateSimulationJobRequest', name: 'FailedCreateSimulationJobRequest')
    FailedCreateSimulationJobRequests = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#FailedCreateSimulationJobRequests', name: 'FailedCreateSimulationJobRequests')
    FailureBehavior = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#FailureBehavior', name: 'FailureBehavior')
    FailureSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#FailureSummary', name: 'FailureSummary')
    Filter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#Filter', name: 'Filter')
    FilterValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#FilterValues', name: 'FilterValues', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    Filters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#Filters', name: 'Filters', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    FinishedWorldsSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#FinishedWorldsSummary', name: 'FinishedWorldsSummary')
    Fleet = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#Fleet', name: 'Fleet')
    Fleets = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#Fleets', name: 'Fleets', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    FloorplanCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.robomaker#FloorplanCount', name: 'FloorplanCount')
    GPUUnit = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.robomaker#GPUUnit', name: 'GPUUnit', traits: {"smithy.api#range" => {"min" => 0, "max" => 1}})
    GenericInteger = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.robomaker#GenericInteger', name: 'GenericInteger')
    GenericString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#GenericString', name: 'GenericString', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => ".*"})
    GetWorldTemplateBodyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#GetWorldTemplateBodyRequest', name: 'GetWorldTemplateBodyRequest')
    GetWorldTemplateBodyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#GetWorldTemplateBodyResponse', name: 'GetWorldTemplateBodyResponse')
    IamRole = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#IamRole', name: 'IamRole', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^arn:aws:iam::\\w+:role/"})
    Id = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#Id', name: 'Id', traits: {"smithy.api#length" => {"min" => 1, "max" => 1224}, "smithy.api#pattern" => ".*"})
    IdempotentParameterMismatchException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#IdempotentParameterMismatchException', name: 'IdempotentParameterMismatchException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ImageDigest = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#ImageDigest', name: 'ImageDigest', traits: {"smithy.api#length" => {"min" => 0, "max" => 72}, "smithy.api#pattern" => "^[Ss][Hh][Aa]256:[0-9a-fA-F]{64}$"})
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.robomaker#Integer', name: 'Integer', traits: {"smithy.api#default" => 0})
    InteriorCountPerFloorplan = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.robomaker#InteriorCountPerFloorplan', name: 'InteriorCountPerFloorplan')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidParameterException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#InvalidParameterException', name: 'InvalidParameterException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    JobDuration = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.robomaker#JobDuration', name: 'JobDuration', traits: {"smithy.api#default" => 0})
    Json = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#Json', name: 'Json', traits: {"smithy.api#length" => {"min" => 1, "max" => 262144}, "smithy.api#pattern" => "^[\\S\\s]+$"})
    LastStartedAt = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.robomaker#LastStartedAt', name: 'LastStartedAt')
    LastUpdatedAt = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.robomaker#LastUpdatedAt', name: 'LastUpdatedAt')
    LaunchConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#LaunchConfig', name: 'LaunchConfig')
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListDeploymentJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListDeploymentJobsRequest', name: 'ListDeploymentJobsRequest', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    ListDeploymentJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListDeploymentJobsResponse', name: 'ListDeploymentJobsResponse', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    ListFleetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListFleetsRequest', name: 'ListFleetsRequest', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    ListFleetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListFleetsResponse', name: 'ListFleetsResponse', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    ListRobotApplicationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListRobotApplicationsRequest', name: 'ListRobotApplicationsRequest')
    ListRobotApplicationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListRobotApplicationsResponse', name: 'ListRobotApplicationsResponse')
    ListRobotsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListRobotsRequest', name: 'ListRobotsRequest', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    ListRobotsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListRobotsResponse', name: 'ListRobotsResponse', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    ListSimulationApplicationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListSimulationApplicationsRequest', name: 'ListSimulationApplicationsRequest')
    ListSimulationApplicationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListSimulationApplicationsResponse', name: 'ListSimulationApplicationsResponse')
    ListSimulationJobBatchesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListSimulationJobBatchesRequest', name: 'ListSimulationJobBatchesRequest')
    ListSimulationJobBatchesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListSimulationJobBatchesResponse', name: 'ListSimulationJobBatchesResponse')
    ListSimulationJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListSimulationJobsRequest', name: 'ListSimulationJobsRequest')
    ListSimulationJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListSimulationJobsResponse', name: 'ListSimulationJobsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListWorldExportJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListWorldExportJobsRequest', name: 'ListWorldExportJobsRequest')
    ListWorldExportJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListWorldExportJobsResponse', name: 'ListWorldExportJobsResponse')
    ListWorldGenerationJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListWorldGenerationJobsRequest', name: 'ListWorldGenerationJobsRequest')
    ListWorldGenerationJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListWorldGenerationJobsResponse', name: 'ListWorldGenerationJobsResponse')
    ListWorldTemplatesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListWorldTemplatesRequest', name: 'ListWorldTemplatesRequest')
    ListWorldTemplatesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListWorldTemplatesResponse', name: 'ListWorldTemplatesResponse')
    ListWorldsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListWorldsRequest', name: 'ListWorldsRequest')
    ListWorldsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ListWorldsResponse', name: 'ListWorldsResponse')
    LoggingConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#LoggingConfig', name: 'LoggingConfig')
    MaxConcurrency = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.robomaker#MaxConcurrency', name: 'MaxConcurrency')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.robomaker#MaxResults', name: 'MaxResults')
    Name = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#Name', name: 'Name', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-]*$"})
    NetworkInterface = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#NetworkInterface', name: 'NetworkInterface')
    NonEmptyString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#NonEmptyString', name: 'NonEmptyString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^.+$"})
    NonSystemPort = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.robomaker#NonSystemPort', name: 'NonSystemPort', traits: {"smithy.api#range" => {"min" => 1024, "max" => 65535}})
    OutputLocation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#OutputLocation', name: 'OutputLocation')
    PaginationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9_.\\-\\/+=]*$"})
    Path = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#Path', name: 'Path', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => ".*"})
    PercentDone = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.robomaker#PercentDone', name: 'PercentDone', traits: {"smithy.api#range" => {"min" => 0.0, "max" => 100.0}})
    Percentage = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.robomaker#Percentage', name: 'Percentage', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    Port = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.robomaker#Port', name: 'Port', traits: {"smithy.api#range" => {"min" => 1, "max" => 65535}})
    PortForwardingConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#PortForwardingConfig', name: 'PortForwardingConfig')
    PortMapping = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#PortMapping', name: 'PortMapping')
    PortMappingList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#PortMappingList', name: 'PortMappingList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ProgressDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ProgressDetail', name: 'ProgressDetail')
    RegisterRobotRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#RegisterRobotRequest', name: 'RegisterRobotRequest', traits: {"smithy.api#deprecated" => {"message" => "AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    RegisterRobotResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#RegisterRobotResponse', name: 'RegisterRobotResponse', traits: {"smithy.api#deprecated" => {"message" => "AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    RenderingEngine = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#RenderingEngine', name: 'RenderingEngine')
    RenderingEngineType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#RenderingEngineType', name: 'RenderingEngineType')
    RenderingEngineVersionType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#RenderingEngineVersionType', name: 'RenderingEngineVersionType', traits: {"smithy.api#length" => {"min" => 1, "max" => 4}, "smithy.api#pattern" => "^1.x$"})
    RepositoryUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#RepositoryUrl', name: 'RepositoryUrl', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^.+$"})
    ResourceAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ResourceAlreadyExistsException', name: 'ResourceAlreadyExistsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    RestartSimulationJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#RestartSimulationJobRequest', name: 'RestartSimulationJobRequest')
    RestartSimulationJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#RestartSimulationJobResponse', name: 'RestartSimulationJobResponse')
    RevisionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#RevisionId', name: 'RevisionId', traits: {"smithy.api#length" => {"min" => 1, "max" => 40}, "smithy.api#pattern" => "^[a-zA-Z0-9_.\\-]*$"})
    Robot = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#Robot', name: 'Robot')
    RobotApplicationConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#RobotApplicationConfig', name: 'RobotApplicationConfig')
    RobotApplicationConfigs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#RobotApplicationConfigs', name: 'RobotApplicationConfigs', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    RobotApplicationNames = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#RobotApplicationNames', name: 'RobotApplicationNames')
    RobotApplicationSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#RobotApplicationSummaries', name: 'RobotApplicationSummaries', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    RobotApplicationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#RobotApplicationSummary', name: 'RobotApplicationSummary')
    RobotDeployment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#RobotDeployment', name: 'RobotDeployment')
    RobotDeploymentStep = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#RobotDeploymentStep', name: 'RobotDeploymentStep')
    RobotDeploymentSummary = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#RobotDeploymentSummary', name: 'RobotDeploymentSummary')
    RobotSoftwareSuite = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#RobotSoftwareSuite', name: 'RobotSoftwareSuite')
    RobotSoftwareSuiteType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#RobotSoftwareSuiteType', name: 'RobotSoftwareSuiteType')
    RobotSoftwareSuiteVersionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#RobotSoftwareSuiteVersionType', name: 'RobotSoftwareSuiteVersionType')
    RobotStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#RobotStatus', name: 'RobotStatus')
    Robots = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#Robots', name: 'Robots', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    S3Bucket = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#S3Bucket', name: 'S3Bucket', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9][a-z0-9.\\-]*[a-z0-9]$"})
    S3Etag = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#S3Etag', name: 'S3Etag')
    S3Etags = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#S3Etags', name: 'S3Etags')
    S3Key = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#S3Key', name: 'S3Key', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => ".*"})
    S3KeyOrPrefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#S3KeyOrPrefix', name: 'S3KeyOrPrefix', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => ".*"})
    S3KeyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#S3KeyOutput', name: 'S3KeyOutput')
    S3KeyOutputs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#S3KeyOutputs', name: 'S3KeyOutputs')
    S3KeysOrPrefixes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#S3KeysOrPrefixes', name: 'S3KeysOrPrefixes', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    S3Object = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#S3Object', name: 'S3Object')
    SecurityGroups = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#SecurityGroups', name: 'SecurityGroups', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ServiceUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ServiceUnavailableException', name: 'ServiceUnavailableException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SimulationApplicationConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#SimulationApplicationConfig', name: 'SimulationApplicationConfig')
    SimulationApplicationConfigs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#SimulationApplicationConfigs', name: 'SimulationApplicationConfigs', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    SimulationApplicationNames = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#SimulationApplicationNames', name: 'SimulationApplicationNames')
    SimulationApplicationSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#SimulationApplicationSummaries', name: 'SimulationApplicationSummaries', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    SimulationApplicationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#SimulationApplicationSummary', name: 'SimulationApplicationSummary')
    SimulationJob = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#SimulationJob', name: 'SimulationJob')
    SimulationJobBatchErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#SimulationJobBatchErrorCode', name: 'SimulationJobBatchErrorCode')
    SimulationJobBatchStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#SimulationJobBatchStatus', name: 'SimulationJobBatchStatus')
    SimulationJobBatchSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#SimulationJobBatchSummaries', name: 'SimulationJobBatchSummaries')
    SimulationJobBatchSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#SimulationJobBatchSummary', name: 'SimulationJobBatchSummary')
    SimulationJobErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#SimulationJobErrorCode', name: 'SimulationJobErrorCode')
    SimulationJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#SimulationJobRequest', name: 'SimulationJobRequest')
    SimulationJobStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#SimulationJobStatus', name: 'SimulationJobStatus')
    SimulationJobSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#SimulationJobSummaries', name: 'SimulationJobSummaries', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    SimulationJobSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#SimulationJobSummary', name: 'SimulationJobSummary')
    SimulationJobs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#SimulationJobs', name: 'SimulationJobs')
    SimulationSoftwareSuite = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#SimulationSoftwareSuite', name: 'SimulationSoftwareSuite')
    SimulationSoftwareSuiteType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#SimulationSoftwareSuiteType', name: 'SimulationSoftwareSuiteType')
    SimulationSoftwareSuiteVersionType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#SimulationSoftwareSuiteVersionType', name: 'SimulationSoftwareSuiteVersionType', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^7|9|11|Kinetic|Melodic|Dashing|Foxy$"})
    SimulationTimeMillis = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.robomaker#SimulationTimeMillis', name: 'SimulationTimeMillis', traits: {"smithy.api#default" => 0})
    SimulationUnit = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.robomaker#SimulationUnit', name: 'SimulationUnit', traits: {"smithy.api#range" => {"min" => 1, "max" => 15}})
    Source = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#Source', name: 'Source')
    SourceConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#SourceConfig', name: 'SourceConfig')
    SourceConfigs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#SourceConfigs', name: 'SourceConfigs')
    Sources = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#Sources', name: 'Sources')
    StartSimulationJobBatchRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#StartSimulationJobBatchRequest', name: 'StartSimulationJobBatchRequest')
    StartSimulationJobBatchResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#StartSimulationJobBatchResponse', name: 'StartSimulationJobBatchResponse')
    Subnets = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#Subnets', name: 'Subnets', traits: {"smithy.api#length" => {"min" => 1, "max" => 16}})
    SyncDeploymentJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#SyncDeploymentJobRequest', name: 'SyncDeploymentJobRequest', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    SyncDeploymentJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#SyncDeploymentJobResponse', name: 'SyncDeploymentJobResponse', traits: {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}})
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9 _.\\-\\/+=:]*$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#TagKeyList', name: 'TagKeyList')
    TagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.robomaker#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9 _.\\-\\/+=:]*$"})
    TemplateLocation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#TemplateLocation', name: 'TemplateLocation')
    TemplateName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#TemplateName', name: 'TemplateName', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => ".*"})
    TemplateSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#TemplateSummaries', name: 'TemplateSummaries')
    TemplateSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#TemplateSummary', name: 'TemplateSummary')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Tool = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#Tool', name: 'Tool')
    Tools = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#Tools', name: 'Tools', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    UnrestrictedCommand = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#UnrestrictedCommand', name: 'UnrestrictedCommand', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => ".*"})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateRobotApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#UpdateRobotApplicationRequest', name: 'UpdateRobotApplicationRequest')
    UpdateRobotApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#UpdateRobotApplicationResponse', name: 'UpdateRobotApplicationResponse')
    UpdateSimulationApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#UpdateSimulationApplicationRequest', name: 'UpdateSimulationApplicationRequest')
    UpdateSimulationApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#UpdateSimulationApplicationResponse', name: 'UpdateSimulationApplicationResponse')
    UpdateWorldTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#UpdateWorldTemplateRequest', name: 'UpdateWorldTemplateRequest')
    UpdateWorldTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#UpdateWorldTemplateResponse', name: 'UpdateWorldTemplateResponse')
    UploadBehavior = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#UploadBehavior', name: 'UploadBehavior')
    UploadConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#UploadConfiguration', name: 'UploadConfiguration')
    UploadConfigurations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#UploadConfigurations', name: 'UploadConfigurations', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    VPCConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#VPCConfig', name: 'VPCConfig')
    VPCConfigResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#VPCConfigResponse', name: 'VPCConfigResponse')
    Version = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#Version', name: 'Version', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(\\$LATEST)|[0-9]*$"})
    VersionQualifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#VersionQualifier', name: 'VersionQualifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^ALL$"})
    WorldConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#WorldConfig', name: 'WorldConfig')
    WorldConfigs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#WorldConfigs', name: 'WorldConfigs', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    WorldCount = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#WorldCount', name: 'WorldCount')
    WorldExportJobErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#WorldExportJobErrorCode', name: 'WorldExportJobErrorCode')
    WorldExportJobStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#WorldExportJobStatus', name: 'WorldExportJobStatus')
    WorldExportJobSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#WorldExportJobSummaries', name: 'WorldExportJobSummaries', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    WorldExportJobSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#WorldExportJobSummary', name: 'WorldExportJobSummary')
    WorldFailure = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#WorldFailure', name: 'WorldFailure')
    WorldFailures = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#WorldFailures', name: 'WorldFailures', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    WorldGenerationJobErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#WorldGenerationJobErrorCode', name: 'WorldGenerationJobErrorCode')
    WorldGenerationJobStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.robomaker#WorldGenerationJobStatus', name: 'WorldGenerationJobStatus')
    WorldGenerationJobSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#WorldGenerationJobSummaries', name: 'WorldGenerationJobSummaries', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    WorldGenerationJobSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#WorldGenerationJobSummary', name: 'WorldGenerationJobSummary')
    WorldSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.robomaker#WorldSummaries', name: 'WorldSummaries')
    WorldSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.robomaker#WorldSummary', name: 'WorldSummary')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.robomaker#errorMessage', name: 'ErrorMessage')

    Architecture.add_member(:x86_64, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'X86_64', traits: {"smithy.api#enumValue" => "X86_64"}))
    Architecture.add_member(:arm64, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ARM64', traits: {"smithy.api#enumValue" => "ARM64"}))
    Architecture.add_member(:armhf, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ARMHF', traits: {"smithy.api#enumValue" => "ARMHF"}))
    Arns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    BatchDeleteWorldsRequest.add_member(:worlds, Smithy::Schema::Shapes::ShapeRef.new(shape: Arns, location_name: 'worlds', traits: {"smithy.api#documentation" => "<p>A list of Amazon Resource Names (arns) that correspond to worlds to delete.</p>", "smithy.api#required" => {}}))
    BatchDeleteWorldsRequest.type = Types::BatchDeleteWorldsRequest
    BatchDeleteWorldsResponse.add_member(:unprocessed_worlds, Smithy::Schema::Shapes::ShapeRef.new(shape: Arns, location_name: 'unprocessedWorlds', traits: {"smithy.api#documentation" => "<p>A list of unprocessed worlds associated with the call. These worlds were not\n         deleted.</p>"}))
    BatchDeleteWorldsResponse.type = Types::BatchDeleteWorldsResponse
    BatchDescribeSimulationJobRequest.add_member(:jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: Arns, location_name: 'jobs', traits: {"smithy.api#documentation" => "<p>A list of Amazon Resource Names (ARNs) of simulation jobs to describe.</p>", "smithy.api#required" => {}}))
    BatchDescribeSimulationJobRequest.type = Types::BatchDescribeSimulationJobRequest
    BatchDescribeSimulationJobResponse.add_member(:jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobs, location_name: 'jobs', traits: {"smithy.api#documentation" => "<p>A list of simulation jobs.</p>"}))
    BatchDescribeSimulationJobResponse.add_member(:unprocessed_jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: Arns, location_name: 'unprocessedJobs', traits: {"smithy.api#documentation" => "<p>A list of unprocessed simulation job Amazon Resource Names (ARNs).</p>"}))
    BatchDescribeSimulationJobResponse.type = Types::BatchDescribeSimulationJobResponse
    BatchPolicy.add_member(:timeout_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchTimeoutInSeconds, location_name: 'timeoutInSeconds', traits: {"smithy.api#documentation" => "<p>The amount of time, in seconds, to wait for the batch to complete.\n         \n      </p>\n         <p>If a batch times out, and there are pending requests that were failing due to an\n         internal failure (like <code>InternalServiceError</code>), they will be moved to the failed\n         list and the batch status will be <code>Failed</code>. If the pending requests were failing\n         for any other reason, the failed pending requests will be moved to the failed list and the\n         batch status will be <code>TimedOut</code>. </p>"}))
    BatchPolicy.add_member(:max_concurrency, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxConcurrency, location_name: 'maxConcurrency', traits: {"smithy.api#documentation" => "<p>The number of active simulation jobs create as part of the batch that can be in an\n         active state at the same time. </p>\n         <p>Active states include: <code>Pending</code>,<code>Preparing</code>,\n         <code>Running</code>, <code>Restarting</code>, <code>RunningFailed</code> and\n            <code>Terminating</code>. All other states are terminal states. </p>"}))
    BatchPolicy.type = Types::BatchPolicy
    CancelDeploymentJobRequest.add_member(:job, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'job', traits: {"smithy.api#documentation" => "<p>The deployment job ARN to cancel.</p>", "smithy.api#required" => {}}))
    CancelDeploymentJobRequest.type = Types::CancelDeploymentJobRequest
    CancelDeploymentJobResponse.type = Types::CancelDeploymentJobResponse
    CancelSimulationJobBatchRequest.add_member(:batch, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'batch', traits: {"smithy.api#documentation" => "<p>The id of the batch to cancel.</p>", "smithy.api#required" => {}}))
    CancelSimulationJobBatchRequest.type = Types::CancelSimulationJobBatchRequest
    CancelSimulationJobBatchResponse.type = Types::CancelSimulationJobBatchResponse
    CancelSimulationJobRequest.add_member(:job, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'job', traits: {"smithy.api#documentation" => "<p>The simulation job ARN to cancel.</p>", "smithy.api#required" => {}}))
    CancelSimulationJobRequest.type = Types::CancelSimulationJobRequest
    CancelSimulationJobResponse.type = Types::CancelSimulationJobResponse
    CancelWorldExportJobRequest.add_member(:job, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'job', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (arn) of the world export job to cancel.</p>", "smithy.api#required" => {}}))
    CancelWorldExportJobRequest.type = Types::CancelWorldExportJobRequest
    CancelWorldExportJobResponse.type = Types::CancelWorldExportJobResponse
    CancelWorldGenerationJobRequest.add_member(:job, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'job', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (arn) of the world generator job to cancel.</p>", "smithy.api#required" => {}}))
    CancelWorldGenerationJobRequest.type = Types::CancelWorldGenerationJobRequest
    CancelWorldGenerationJobResponse.type = Types::CancelWorldGenerationJobResponse
    CommandList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    Compute.add_member(:simulation_unit_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationUnit, location_name: 'simulationUnitLimit', traits: {"smithy.api#documentation" => "<p>The simulation unit limit. Your simulation is allocated CPU and memory proportional to\n         the supplied simulation unit limit. A simulation unit is 1 vcpu and 2GB of memory. You are\n        only billed for the SU utilization you consume up to the maximum value provided. The\n         default is 15. </p>"}))
    Compute.add_member(:compute_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeType, location_name: 'computeType', traits: {"smithy.api#documentation" => "<p>Compute type information for the simulation job.</p>"}))
    Compute.add_member(:gpu_unit_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: GPUUnit, location_name: 'gpuUnitLimit', traits: {"smithy.api#documentation" => "<p>Compute GPU unit limit for the simulation job. It is the same as the number of GPUs\n        allocated to the SimulationJob.</p>"}))
    Compute.type = Types::Compute
    ComputeResponse.add_member(:simulation_unit_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationUnit, location_name: 'simulationUnitLimit', traits: {"smithy.api#documentation" => "<p>The simulation unit limit. Your simulation is allocated CPU and memory proportional to\n         the supplied simulation unit limit. A simulation unit is 1 vcpu and 2GB of memory. You are\n         only billed for the SU utilization you consume up to the maximum value provided. The\n         default is 15. </p>"}))
    ComputeResponse.add_member(:compute_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeType, location_name: 'computeType', traits: {"smithy.api#documentation" => "<p>Compute type response information for the simulation job.</p>"}))
    ComputeResponse.add_member(:gpu_unit_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: GPUUnit, location_name: 'gpuUnitLimit', traits: {"smithy.api#documentation" => "<p>Compute GPU unit limit for the simulation job. It is the same as the number of GPUs\n         allocated to the SimulationJob.</p>"}))
    ComputeResponse.type = Types::ComputeResponse
    ComputeType.add_member(:cpu, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CPU', traits: {"smithy.api#enumValue" => "CPU"}))
    ComputeType.add_member(:gpu_and_cpu, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GPU_AND_CPU', traits: {"smithy.api#enumValue" => "GPU_AND_CPU"}))
    ConcurrentDeploymentException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ConcurrentDeploymentException.type = Types::ConcurrentDeploymentException
    CreateDeploymentJobRequest.add_member(:deployment_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentConfig, location_name: 'deploymentConfig', traits: {"smithy.api#documentation" => "<p>The requested deployment configuration.</p>"}))
    CreateDeploymentJobRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the\n         request.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateDeploymentJobRequest.add_member(:fleet, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'fleet', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the fleet to deploy.</p>", "smithy.api#required" => {}}))
    CreateDeploymentJobRequest.add_member(:deployment_application_configs, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentApplicationConfigs, location_name: 'deploymentApplicationConfigs', traits: {"smithy.api#documentation" => "<p>The deployment application configuration.</p>", "smithy.api#required" => {}}))
    CreateDeploymentJobRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map that contains tag keys and tag values that are attached to the deployment\n         job.</p>"}))
    CreateDeploymentJobRequest.type = Types::CreateDeploymentJobRequest
    CreateDeploymentJobResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the deployment job.</p>"}))
    CreateDeploymentJobResponse.add_member(:fleet, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'fleet', traits: {"smithy.api#documentation" => "<p>The target fleet for the deployment job.</p>"}))
    CreateDeploymentJobResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the deployment job.</p>"}))
    CreateDeploymentJobResponse.add_member(:deployment_application_configs, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentApplicationConfigs, location_name: 'deploymentApplicationConfigs', traits: {"smithy.api#documentation" => "<p>The deployment application configuration.</p>"}))
    CreateDeploymentJobResponse.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>The failure reason of the deployment job if it failed.</p>"}))
    CreateDeploymentJobResponse.add_member(:failure_code, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentJobErrorCode, location_name: 'failureCode', traits: {"smithy.api#documentation" => "<p>The failure code of the simulation job if it failed:</p>\n         <dl>\n            <dt>BadPermissionError</dt>\n            <dd>\n               <p>AWS Greengrass requires a service-level role permission to access other\n                  services. The role must include the <a href=\"https://console.aws.amazon.com/iam/home?#/policies/arn:aws:iam::aws:policy/service-role/AWSGreengrassResourceAccessRolePolicy$jsonEditor\">\n                     <code>AWSGreengrassResourceAccessRolePolicy</code> managed policy</a>.\n               </p>\n            </dd>\n            <dt>ExtractingBundleFailure</dt>\n            <dd>\n               <p>The robot application could not be extracted from the bundle.</p>\n            </dd>\n            <dt>FailureThresholdBreached</dt>\n            <dd>\n               <p>The percentage of robots that could not be updated exceeded the percentage set\n                  for the deployment.</p>\n            </dd>\n            <dt>GreengrassDeploymentFailed</dt>\n            <dd>\n               <p>The robot application could not be deployed to the robot.</p>\n            </dd>\n            <dt>GreengrassGroupVersionDoesNotExist</dt>\n            <dd>\n               <p>The AWS Greengrass group or version associated with a robot is missing.</p>\n            </dd>\n            <dt>InternalServerError</dt>\n            <dd>\n               <p>An internal error has occurred. Retry your request, but if the problem\n                  persists, contact us with details.</p>\n            </dd>\n            <dt>MissingRobotApplicationArchitecture</dt>\n            <dd>\n               <p>The robot application does not have a source that matches the architecture of\n                  the robot.</p>\n            </dd>\n            <dt>MissingRobotDeploymentResource</dt>\n            <dd>\n               <p>One or more of the resources specified for the robot application are missing.\n                  For example, does the robot application have the correct launch package and launch\n                  file?</p>\n            </dd>\n            <dt>PostLaunchFileFailure</dt>\n            <dd>\n               <p>The post-launch script failed.</p>\n            </dd>\n            <dt>PreLaunchFileFailure</dt>\n            <dd>\n               <p>The pre-launch script failed.</p>\n            </dd>\n            <dt>ResourceNotFound</dt>\n            <dd>\n               <p>One or more deployment resources are missing. For example, do robot application\n                  source bundles still exist? </p>\n            </dd>\n            <dt>RobotDeploymentNoResponse</dt>\n            <dd>\n               <p>There is no response from the robot. It might not be powered on or connected to\n                  the internet.</p>\n            </dd>\n         </dl>"}))
    CreateDeploymentJobResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the fleet was created.</p>"}))
    CreateDeploymentJobResponse.add_member(:deployment_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentConfig, location_name: 'deploymentConfig', traits: {"smithy.api#documentation" => "<p>The deployment configuration.</p>"}))
    CreateDeploymentJobResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of all tags added to the deployment job.</p>"}))
    CreateDeploymentJobResponse.type = Types::CreateDeploymentJobResponse
    CreateFleetRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the fleet.</p>", "smithy.api#required" => {}}))
    CreateFleetRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map that contains tag keys and tag values that are attached to the fleet.</p>"}))
    CreateFleetRequest.type = Types::CreateFleetRequest
    CreateFleetResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the fleet.</p>"}))
    CreateFleetResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the fleet.</p>"}))
    CreateFleetResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the fleet was created.</p>"}))
    CreateFleetResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of all tags added to the fleet.</p>"}))
    CreateFleetResponse.type = Types::CreateFleetResponse
    CreateRobotApplicationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the robot application.</p>", "smithy.api#required" => {}}))
    CreateRobotApplicationRequest.add_member(:sources, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceConfigs, location_name: 'sources', traits: {"smithy.api#documentation" => "<p>The sources of the robot application.</p>"}))
    CreateRobotApplicationRequest.add_member(:robot_software_suite, Smithy::Schema::Shapes::ShapeRef.new(shape: RobotSoftwareSuite, location_name: 'robotSoftwareSuite', traits: {"smithy.api#documentation" => "<p>The robot software suite used by the robot application.</p>", "smithy.api#required" => {}}))
    CreateRobotApplicationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map that contains tag keys and tag values that are attached to the robot\n         application.</p>"}))
    CreateRobotApplicationRequest.add_member(:environment, Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment', traits: {"smithy.api#documentation" => "<p>The object that contains that URI of the Docker image that you use for your robot\n         application.</p>"}))
    CreateRobotApplicationRequest.type = Types::CreateRobotApplicationRequest
    CreateRobotApplicationResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the robot application.</p>"}))
    CreateRobotApplicationResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the robot application.</p>"}))
    CreateRobotApplicationResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the robot application.</p>"}))
    CreateRobotApplicationResponse.add_member(:sources, Smithy::Schema::Shapes::ShapeRef.new(shape: Sources, location_name: 'sources', traits: {"smithy.api#documentation" => "<p>The sources of the robot application.</p>"}))
    CreateRobotApplicationResponse.add_member(:robot_software_suite, Smithy::Schema::Shapes::ShapeRef.new(shape: RobotSoftwareSuite, location_name: 'robotSoftwareSuite', traits: {"smithy.api#documentation" => "<p>The robot software suite used by the robot application.</p>"}))
    CreateRobotApplicationResponse.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the robot application was last\n         updated.</p>"}))
    CreateRobotApplicationResponse.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionId, location_name: 'revisionId', traits: {"smithy.api#documentation" => "<p>The revision id of the robot application.</p>"}))
    CreateRobotApplicationResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of all tags added to the robot application.</p>"}))
    CreateRobotApplicationResponse.add_member(:environment, Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment', traits: {"smithy.api#documentation" => "<p>An object that contains the Docker image URI used to a create your robot\n         application.</p>"}))
    CreateRobotApplicationResponse.type = Types::CreateRobotApplicationResponse
    CreateRobotApplicationVersionRequest.add_member(:application, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'application', traits: {"smithy.api#documentation" => "<p>The application information for the robot application.</p>", "smithy.api#required" => {}}))
    CreateRobotApplicationVersionRequest.add_member(:current_revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionId, location_name: 'currentRevisionId', traits: {"smithy.api#documentation" => "<p>The current revision id for the robot application. If you provide a value and it matches\n         the latest revision ID, a new version will be created.</p>"}))
    CreateRobotApplicationVersionRequest.add_member(:s3_etags, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Etags, location_name: 's3Etags', traits: {"smithy.api#documentation" => "<p>The Amazon S3 identifier for the zip file bundle that you use for your robot\n         application.</p>"}))
    CreateRobotApplicationVersionRequest.add_member(:image_digest, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageDigest, location_name: 'imageDigest', traits: {"smithy.api#documentation" => "<p>A SHA256 identifier for the Docker image that you use for your robot application.</p>"}))
    CreateRobotApplicationVersionRequest.type = Types::CreateRobotApplicationVersionRequest
    CreateRobotApplicationVersionResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the robot application.</p>"}))
    CreateRobotApplicationVersionResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the robot application.</p>"}))
    CreateRobotApplicationVersionResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the robot application.</p>"}))
    CreateRobotApplicationVersionResponse.add_member(:sources, Smithy::Schema::Shapes::ShapeRef.new(shape: Sources, location_name: 'sources', traits: {"smithy.api#documentation" => "<p>The sources of the robot application.</p>"}))
    CreateRobotApplicationVersionResponse.add_member(:robot_software_suite, Smithy::Schema::Shapes::ShapeRef.new(shape: RobotSoftwareSuite, location_name: 'robotSoftwareSuite', traits: {"smithy.api#documentation" => "<p>The robot software suite used by the robot application.</p>"}))
    CreateRobotApplicationVersionResponse.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the robot application was last\n         updated.</p>"}))
    CreateRobotApplicationVersionResponse.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionId, location_name: 'revisionId', traits: {"smithy.api#documentation" => "<p>The revision id of the robot application.</p>"}))
    CreateRobotApplicationVersionResponse.add_member(:environment, Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment', traits: {"smithy.api#documentation" => "<p>The object that contains the Docker image URI used to create your robot\n         application.</p>"}))
    CreateRobotApplicationVersionResponse.type = Types::CreateRobotApplicationVersionResponse
    CreateRobotRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name for the robot.</p>", "smithy.api#required" => {}}))
    CreateRobotRequest.add_member(:architecture, Smithy::Schema::Shapes::ShapeRef.new(shape: Architecture, location_name: 'architecture', traits: {"smithy.api#documentation" => "<p>The target architecture of the robot.</p>", "smithy.api#required" => {}}))
    CreateRobotRequest.add_member(:greengrass_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'greengrassGroupId', traits: {"smithy.api#documentation" => "<p>The Greengrass group id.</p>", "smithy.api#required" => {}}))
    CreateRobotRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map that contains tag keys and tag values that are attached to the robot.</p>"}))
    CreateRobotRequest.type = Types::CreateRobotRequest
    CreateRobotResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the robot.</p>"}))
    CreateRobotResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the robot.</p>"}))
    CreateRobotResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the robot was created.</p>"}))
    CreateRobotResponse.add_member(:greengrass_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'greengrassGroupId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Greengrass group associated with the robot.</p>"}))
    CreateRobotResponse.add_member(:architecture, Smithy::Schema::Shapes::ShapeRef.new(shape: Architecture, location_name: 'architecture', traits: {"smithy.api#documentation" => "<p>The target architecture of the robot.</p>"}))
    CreateRobotResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of all tags added to the robot.</p>"}))
    CreateRobotResponse.type = Types::CreateRobotResponse
    CreateSimulationApplicationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the simulation application.</p>", "smithy.api#required" => {}}))
    CreateSimulationApplicationRequest.add_member(:sources, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceConfigs, location_name: 'sources', traits: {"smithy.api#documentation" => "<p>The sources of the simulation application.</p>"}))
    CreateSimulationApplicationRequest.add_member(:simulation_software_suite, Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationSoftwareSuite, location_name: 'simulationSoftwareSuite', traits: {"smithy.api#documentation" => "<p>The simulation software suite used by the simulation application.</p>", "smithy.api#required" => {}}))
    CreateSimulationApplicationRequest.add_member(:robot_software_suite, Smithy::Schema::Shapes::ShapeRef.new(shape: RobotSoftwareSuite, location_name: 'robotSoftwareSuite', traits: {"smithy.api#documentation" => "<p>The robot software suite used by the simulation application.</p>", "smithy.api#required" => {}}))
    CreateSimulationApplicationRequest.add_member(:rendering_engine, Smithy::Schema::Shapes::ShapeRef.new(shape: RenderingEngine, location_name: 'renderingEngine', traits: {"smithy.api#documentation" => "<p>The rendering engine for the simulation application.</p>"}))
    CreateSimulationApplicationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map that contains tag keys and tag values that are attached to the simulation\n         application.</p>"}))
    CreateSimulationApplicationRequest.add_member(:environment, Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment', traits: {"smithy.api#documentation" => "<p>The object that contains the Docker image URI used to create your simulation\n         application.</p>"}))
    CreateSimulationApplicationRequest.type = Types::CreateSimulationApplicationRequest
    CreateSimulationApplicationResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the simulation application.</p>"}))
    CreateSimulationApplicationResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the simulation application.</p>"}))
    CreateSimulationApplicationResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the simulation application.</p>"}))
    CreateSimulationApplicationResponse.add_member(:sources, Smithy::Schema::Shapes::ShapeRef.new(shape: Sources, location_name: 'sources', traits: {"smithy.api#documentation" => "<p>The sources of the simulation application.</p>"}))
    CreateSimulationApplicationResponse.add_member(:simulation_software_suite, Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationSoftwareSuite, location_name: 'simulationSoftwareSuite', traits: {"smithy.api#documentation" => "<p>The simulation software suite used by the simulation application.</p>"}))
    CreateSimulationApplicationResponse.add_member(:robot_software_suite, Smithy::Schema::Shapes::ShapeRef.new(shape: RobotSoftwareSuite, location_name: 'robotSoftwareSuite', traits: {"smithy.api#documentation" => "<p>Information about the robot software suite.</p>"}))
    CreateSimulationApplicationResponse.add_member(:rendering_engine, Smithy::Schema::Shapes::ShapeRef.new(shape: RenderingEngine, location_name: 'renderingEngine', traits: {"smithy.api#documentation" => "<p>The rendering engine for the simulation application.</p>"}))
    CreateSimulationApplicationResponse.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the simulation application was last\n         updated.</p>"}))
    CreateSimulationApplicationResponse.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionId, location_name: 'revisionId', traits: {"smithy.api#documentation" => "<p>The revision id of the simulation application.</p>"}))
    CreateSimulationApplicationResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of all tags added to the simulation application.</p>"}))
    CreateSimulationApplicationResponse.add_member(:environment, Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment', traits: {"smithy.api#documentation" => "<p>The object that contains the Docker image URI that you used to create your simulation\n         application.</p>"}))
    CreateSimulationApplicationResponse.type = Types::CreateSimulationApplicationResponse
    CreateSimulationApplicationVersionRequest.add_member(:application, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'application', traits: {"smithy.api#documentation" => "<p>The application information for the simulation application.</p>", "smithy.api#required" => {}}))
    CreateSimulationApplicationVersionRequest.add_member(:current_revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionId, location_name: 'currentRevisionId', traits: {"smithy.api#documentation" => "<p>The current revision id for the simulation application. If you provide a value and it\n         matches the latest revision ID, a new version will be created.</p>"}))
    CreateSimulationApplicationVersionRequest.add_member(:s3_etags, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Etags, location_name: 's3Etags', traits: {"smithy.api#documentation" => "<p>The Amazon S3 eTag identifier for the zip file bundle that you use to create the\n         simulation application.</p>"}))
    CreateSimulationApplicationVersionRequest.add_member(:image_digest, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageDigest, location_name: 'imageDigest', traits: {"smithy.api#documentation" => "<p>The SHA256 digest used to identify the Docker image URI used to created the simulation\n         application.</p>"}))
    CreateSimulationApplicationVersionRequest.type = Types::CreateSimulationApplicationVersionRequest
    CreateSimulationApplicationVersionResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the simulation application.</p>"}))
    CreateSimulationApplicationVersionResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the simulation application.</p>"}))
    CreateSimulationApplicationVersionResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the simulation application.</p>"}))
    CreateSimulationApplicationVersionResponse.add_member(:sources, Smithy::Schema::Shapes::ShapeRef.new(shape: Sources, location_name: 'sources', traits: {"smithy.api#documentation" => "<p>The sources of the simulation application.</p>"}))
    CreateSimulationApplicationVersionResponse.add_member(:simulation_software_suite, Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationSoftwareSuite, location_name: 'simulationSoftwareSuite', traits: {"smithy.api#documentation" => "<p>The simulation software suite used by the simulation application.</p>"}))
    CreateSimulationApplicationVersionResponse.add_member(:robot_software_suite, Smithy::Schema::Shapes::ShapeRef.new(shape: RobotSoftwareSuite, location_name: 'robotSoftwareSuite', traits: {"smithy.api#documentation" => "<p>Information about the robot software suite.</p>"}))
    CreateSimulationApplicationVersionResponse.add_member(:rendering_engine, Smithy::Schema::Shapes::ShapeRef.new(shape: RenderingEngine, location_name: 'renderingEngine', traits: {"smithy.api#documentation" => "<p>The rendering engine for the simulation application.</p>"}))
    CreateSimulationApplicationVersionResponse.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the simulation application was last\n         updated.</p>"}))
    CreateSimulationApplicationVersionResponse.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionId, location_name: 'revisionId', traits: {"smithy.api#documentation" => "<p>The revision ID of the simulation application.</p>"}))
    CreateSimulationApplicationVersionResponse.add_member(:environment, Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment', traits: {"smithy.api#documentation" => "<p>The object that contains the Docker image URI used to create the simulation\n         application.</p>"}))
    CreateSimulationApplicationVersionResponse.type = Types::CreateSimulationApplicationVersionResponse
    CreateSimulationJobRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the\n         request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateSimulationJobRequest.add_member(:output_location, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputLocation, location_name: 'outputLocation', traits: {"smithy.api#documentation" => "<p>Location for output files generated by the simulation job.</p>"}))
    CreateSimulationJobRequest.add_member(:logging_config, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfig, location_name: 'loggingConfig', traits: {"smithy.api#documentation" => "<p>The logging configuration.</p>"}))
    CreateSimulationJobRequest.add_member(:max_job_duration_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: JobDuration, location_name: 'maxJobDurationInSeconds', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum simulation job duration in seconds (up to 14 days or 1,209,600 seconds. When\n            <code>maxJobDurationInSeconds</code> is reached, the simulation job will status will\n         transition to <code>Completed</code>.</p>", "smithy.api#required" => {}}))
    CreateSimulationJobRequest.add_member(:iam_role, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRole, location_name: 'iamRole', traits: {"smithy.api#documentation" => "<p>The IAM role name that allows the simulation instance to call the AWS APIs that are\n         specified in its associated policies on your behalf. This is how credentials are passed in\n         to your simulation job. </p>", "smithy.api#required" => {}}))
    CreateSimulationJobRequest.add_member(:failure_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureBehavior, location_name: 'failureBehavior', traits: {"smithy.api#documentation" => "<p>The failure behavior the simulation job.</p>\n         <dl>\n            <dt>Continue</dt>\n            <dd>\n               <p>Leaves the instance running for its maximum timeout duration after a\n                     <code>4XX</code> error code.</p>\n            </dd>\n            <dt>Fail</dt>\n            <dd>\n               <p>Stop the simulation job and terminate the instance.</p>\n            </dd>\n         </dl>"}))
    CreateSimulationJobRequest.add_member(:robot_applications, Smithy::Schema::Shapes::ShapeRef.new(shape: RobotApplicationConfigs, location_name: 'robotApplications', traits: {"smithy.api#documentation" => "<p>The robot application to use in the simulation job.</p>"}))
    CreateSimulationJobRequest.add_member(:simulation_applications, Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationApplicationConfigs, location_name: 'simulationApplications', traits: {"smithy.api#documentation" => "<p>The simulation application to use in the simulation job.</p>"}))
    CreateSimulationJobRequest.add_member(:data_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceConfigs, location_name: 'dataSources', traits: {"smithy.api#documentation" => "<p>Specify data sources to mount read-only files from S3 into your simulation. These files\n         are available under <code>/opt/robomaker/datasources/data_source_name</code>. </p>\n         <note>\n            <p>There is a limit of 100 files and a combined size of 25GB for all\n               <code>DataSourceConfig</code> objects. </p>\n         </note>"}))
    CreateSimulationJobRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map that contains tag keys and tag values that are attached to the simulation\n         job.</p>"}))
    CreateSimulationJobRequest.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VPCConfig, location_name: 'vpcConfig', traits: {"smithy.api#documentation" => "<p>If your simulation job accesses resources in a VPC, you provide this parameter\n         identifying the list of security group IDs and subnet IDs. These must belong to the same\n         VPC. You must provide at least one security group and one subnet ID. </p>"}))
    CreateSimulationJobRequest.add_member(:compute, Smithy::Schema::Shapes::ShapeRef.new(shape: Compute, location_name: 'compute', traits: {"smithy.api#documentation" => "<p>Compute information for the simulation job.</p>"}))
    CreateSimulationJobRequest.type = Types::CreateSimulationJobRequest
    CreateSimulationJobRequests.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobRequest)
    CreateSimulationJobResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the simulation job.</p>"}))
    CreateSimulationJobResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the simulation job.</p>"}))
    CreateSimulationJobResponse.add_member(:last_started_at, Smithy::Schema::Shapes::ShapeRef.new(shape: LastStartedAt, location_name: 'lastStartedAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the simulation job was last\n         started.</p>"}))
    CreateSimulationJobResponse.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the simulation job was last\n         updated.</p>"}))
    CreateSimulationJobResponse.add_member(:failure_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureBehavior, location_name: 'failureBehavior', traits: {"smithy.api#documentation" => "<p>the failure behavior for the simulation job.</p>"}))
    CreateSimulationJobResponse.add_member(:failure_code, Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobErrorCode, location_name: 'failureCode', traits: {"smithy.api#documentation" => "<p>The failure code of the simulation job if it failed:</p>\n         <dl>\n            <dt>InternalServiceError</dt>\n            <dd>\n               <p>Internal service error.</p>\n            </dd>\n            <dt>RobotApplicationCrash</dt>\n            <dd>\n               <p>Robot application exited abnormally.</p>\n            </dd>\n            <dt>SimulationApplicationCrash</dt>\n            <dd>\n               <p> Simulation application exited abnormally.</p>\n            </dd>\n            <dt>BadPermissionsRobotApplication</dt>\n            <dd>\n               <p>Robot application bundle could not be downloaded.</p>\n            </dd>\n            <dt>BadPermissionsSimulationApplication</dt>\n            <dd>\n               <p>Simulation application bundle could not be downloaded.</p>\n            </dd>\n            <dt>BadPermissionsS3Output</dt>\n            <dd>\n               <p>Unable to publish outputs to customer-provided S3 bucket.</p>\n            </dd>\n            <dt>BadPermissionsCloudwatchLogs</dt>\n            <dd>\n               <p>Unable to publish logs to customer-provided CloudWatch Logs resource.</p>\n            </dd>\n            <dt>SubnetIpLimitExceeded</dt>\n            <dd>\n               <p>Subnet IP limit exceeded.</p>\n            </dd>\n            <dt>ENILimitExceeded</dt>\n            <dd>\n               <p>ENI limit exceeded.</p>\n            </dd>\n            <dt>BadPermissionsUserCredentials</dt>\n            <dd>\n               <p>Unable to use the Role provided.</p>\n            </dd>\n            <dt>InvalidBundleRobotApplication</dt>\n            <dd>\n               <p>Robot bundle cannot be extracted (invalid format, bundling error, or other\n                  issue).</p>\n            </dd>\n            <dt>InvalidBundleSimulationApplication</dt>\n            <dd>\n               <p>Simulation bundle cannot be extracted (invalid format, bundling error, or other\n                  issue).</p>\n            </dd>\n            <dt>RobotApplicationVersionMismatchedEtag</dt>\n            <dd>\n               <p>Etag for RobotApplication does not match value during version creation.</p>\n            </dd>\n            <dt>SimulationApplicationVersionMismatchedEtag</dt>\n            <dd>\n               <p>Etag for SimulationApplication does not match value during version\n                  creation.</p>\n            </dd>\n         </dl>"}))
    CreateSimulationJobResponse.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the\n         request.</p>"}))
    CreateSimulationJobResponse.add_member(:output_location, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputLocation, location_name: 'outputLocation', traits: {"smithy.api#documentation" => "<p>Simulation job output files location.</p>"}))
    CreateSimulationJobResponse.add_member(:logging_config, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfig, location_name: 'loggingConfig', traits: {"smithy.api#documentation" => "<p>The logging configuration.</p>"}))
    CreateSimulationJobResponse.add_member(:max_job_duration_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: JobDuration, location_name: 'maxJobDurationInSeconds', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum simulation job duration in seconds. </p>"}))
    CreateSimulationJobResponse.add_member(:simulation_time_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationTimeMillis, location_name: 'simulationTimeMillis', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The simulation job execution duration in milliseconds.</p>"}))
    CreateSimulationJobResponse.add_member(:iam_role, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRole, location_name: 'iamRole', traits: {"smithy.api#documentation" => "<p>The IAM role that allows the simulation job to call the AWS APIs that are specified in\n         its associated policies on your behalf.</p>"}))
    CreateSimulationJobResponse.add_member(:robot_applications, Smithy::Schema::Shapes::ShapeRef.new(shape: RobotApplicationConfigs, location_name: 'robotApplications', traits: {"smithy.api#documentation" => "<p>The robot application used by the simulation job.</p>"}))
    CreateSimulationJobResponse.add_member(:simulation_applications, Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationApplicationConfigs, location_name: 'simulationApplications', traits: {"smithy.api#documentation" => "<p>The simulation application used by the simulation job.</p>"}))
    CreateSimulationJobResponse.add_member(:data_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSources, location_name: 'dataSources', traits: {"smithy.api#documentation" => "<p>The data sources for the simulation job.</p>"}))
    CreateSimulationJobResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of all tags added to the simulation job.</p>"}))
    CreateSimulationJobResponse.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VPCConfigResponse, location_name: 'vpcConfig', traits: {"smithy.api#documentation" => "<p>Information about the vpc configuration.</p>"}))
    CreateSimulationJobResponse.add_member(:compute, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeResponse, location_name: 'compute', traits: {"smithy.api#documentation" => "<p>Compute information for the simulation job.</p>"}))
    CreateSimulationJobResponse.type = Types::CreateSimulationJobResponse
    CreateWorldExportJobRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the\n         request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateWorldExportJobRequest.add_member(:worlds, Smithy::Schema::Shapes::ShapeRef.new(shape: Arns, location_name: 'worlds', traits: {"smithy.api#documentation" => "<p>A list of Amazon Resource Names (arns) that correspond to worlds to export.</p>", "smithy.api#required" => {}}))
    CreateWorldExportJobRequest.add_member(:output_location, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputLocation, location_name: 'outputLocation', traits: {"smithy.api#required" => {}}))
    CreateWorldExportJobRequest.add_member(:iam_role, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRole, location_name: 'iamRole', traits: {"smithy.api#documentation" => "<p>The IAM role that the world export process uses to access the Amazon S3 bucket and put\n         the export.</p>", "smithy.api#required" => {}}))
    CreateWorldExportJobRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map that contains tag keys and tag values that are attached to the world export\n         job.</p>"}))
    CreateWorldExportJobRequest.type = Types::CreateWorldExportJobRequest
    CreateWorldExportJobResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the world export job.</p>"}))
    CreateWorldExportJobResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: WorldExportJobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the world export job.</p>\n         <dl>\n            <dt>Pending</dt>\n            <dd>\n               <p>The world export job request is pending.</p>\n            </dd>\n            <dt>Running</dt>\n            <dd>\n               <p>The world export job is running. </p>\n            </dd>\n            <dt>Completed</dt>\n            <dd>\n               <p>The world export job completed. </p>\n            </dd>\n            <dt>Failed</dt>\n            <dd>\n               <p>The world export job failed. See <code>failureCode</code> for more information.\n               </p>\n            </dd>\n            <dt>Canceled</dt>\n            <dd>\n               <p>The world export job was cancelled.</p>\n            </dd>\n            <dt>Canceling</dt>\n            <dd>\n               <p>The world export job is being cancelled.</p>\n            </dd>\n         </dl>"}))
    CreateWorldExportJobResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the world export job was created.</p>"}))
    CreateWorldExportJobResponse.add_member(:failure_code, Smithy::Schema::Shapes::ShapeRef.new(shape: WorldExportJobErrorCode, location_name: 'failureCode', traits: {"smithy.api#documentation" => "<p>The failure code of the world export job if it failed:</p>\n         <dl>\n            <dt>InternalServiceError</dt>\n            <dd>\n               <p>Internal service error.</p>\n            </dd>\n            <dt>LimitExceeded</dt>\n            <dd>\n               <p>The requested resource exceeds the maximum number allowed, or the number of\n                  concurrent stream requests exceeds the maximum number allowed. </p>\n            </dd>\n            <dt>ResourceNotFound</dt>\n            <dd>\n               <p>The specified resource could not be found. </p>\n            </dd>\n            <dt>RequestThrottled</dt>\n            <dd>\n               <p>The request was throttled.</p>\n            </dd>\n            <dt>InvalidInput</dt>\n            <dd>\n               <p>An input parameter in the request is not valid.</p>\n            </dd>\n            <dt>AllWorldGenerationFailed</dt>\n            <dd>\n               <p>All of the worlds in the world generation job failed. This can happen if your\n                     <code>worldCount</code> is greater than 50 or less than 1. </p>\n            </dd>\n         </dl>\n         <p>For more information about troubleshooting WorldForge, see <a href=\"https://docs.aws.amazon.com/robomaker/latest/dg/troubleshooting-worldforge.html\">Troubleshooting Simulation WorldForge</a>. </p>"}))
    CreateWorldExportJobResponse.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the\n         request.</p>"}))
    CreateWorldExportJobResponse.add_member(:output_location, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputLocation, location_name: 'outputLocation'))
    CreateWorldExportJobResponse.add_member(:iam_role, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRole, location_name: 'iamRole', traits: {"smithy.api#documentation" => "<p>The IAM role that the world export process uses to access the Amazon S3 bucket and put\n         the export. </p>"}))
    CreateWorldExportJobResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map that contains tag keys and tag values that are attached to the world export\n         job.</p>"}))
    CreateWorldExportJobResponse.type = Types::CreateWorldExportJobResponse
    CreateWorldGenerationJobRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the\n         request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateWorldGenerationJobRequest.add_member(:template, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'template', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (arn) of the world template describing the worlds you want to\n         create.</p>", "smithy.api#required" => {}}))
    CreateWorldGenerationJobRequest.add_member(:world_count, Smithy::Schema::Shapes::ShapeRef.new(shape: WorldCount, location_name: 'worldCount', traits: {"smithy.api#documentation" => "<p>Information about the world count.</p>", "smithy.api#required" => {}}))
    CreateWorldGenerationJobRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map that contains tag keys and tag values that are attached to the world generator\n         job.</p>"}))
    CreateWorldGenerationJobRequest.add_member(:world_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'worldTags', traits: {"smithy.api#documentation" => "<p>A map that contains tag keys and tag values that are attached to the generated\n         worlds.</p>"}))
    CreateWorldGenerationJobRequest.type = Types::CreateWorldGenerationJobRequest
    CreateWorldGenerationJobResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the world generator job.</p>"}))
    CreateWorldGenerationJobResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: WorldGenerationJobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the world generator job.</p>\n         <dl>\n            <dt>Pending</dt>\n            <dd>\n               <p>The world generator job request is pending.</p>\n            </dd>\n            <dt>Running</dt>\n            <dd>\n               <p>The world generator job is running. </p>\n            </dd>\n            <dt>Completed</dt>\n            <dd>\n               <p>The world generator job completed. </p>\n            </dd>\n            <dt>Failed</dt>\n            <dd>\n               <p>The world generator job failed. See <code>failureCode</code> for more\n                  information. </p>\n            </dd>\n            <dt>PartialFailed</dt>\n            <dd>\n               <p>Some worlds did not generate.</p>\n            </dd>\n            <dt>Canceled</dt>\n            <dd>\n               <p>The world generator job was cancelled.</p>\n            </dd>\n            <dt>Canceling</dt>\n            <dd>\n               <p>The world generator job is being cancelled.</p>\n            </dd>\n         </dl>"}))
    CreateWorldGenerationJobResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the world generator job was\n         created.</p>"}))
    CreateWorldGenerationJobResponse.add_member(:failure_code, Smithy::Schema::Shapes::ShapeRef.new(shape: WorldGenerationJobErrorCode, location_name: 'failureCode', traits: {"smithy.api#documentation" => "<p>The failure code of the world generator job if it failed:</p>\n         <dl>\n            <dt>InternalServiceError</dt>\n            <dd>\n               <p>Internal service error.</p>\n            </dd>\n            <dt>LimitExceeded</dt>\n            <dd>\n               <p>The requested resource exceeds the maximum number allowed, or the number of\n                  concurrent stream requests exceeds the maximum number allowed. </p>\n            </dd>\n            <dt>ResourceNotFound</dt>\n            <dd>\n               <p>The specified resource could not be found. </p>\n            </dd>\n            <dt>RequestThrottled</dt>\n            <dd>\n               <p>The request was throttled.</p>\n            </dd>\n            <dt>InvalidInput</dt>\n            <dd>\n               <p>An input parameter in the request is not valid.</p>\n            </dd>\n         </dl>"}))
    CreateWorldGenerationJobResponse.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the\n         request.</p>"}))
    CreateWorldGenerationJobResponse.add_member(:template, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'template', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (arn) of the world template.</p>"}))
    CreateWorldGenerationJobResponse.add_member(:world_count, Smithy::Schema::Shapes::ShapeRef.new(shape: WorldCount, location_name: 'worldCount', traits: {"smithy.api#documentation" => "<p>Information about the world count. </p>"}))
    CreateWorldGenerationJobResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map that contains tag keys and tag values that are attached to the world generator\n         job.</p>"}))
    CreateWorldGenerationJobResponse.add_member(:world_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'worldTags', traits: {"smithy.api#documentation" => "<p>A map that contains tag keys and tag values that are attached to the generated\n         worlds.</p>"}))
    CreateWorldGenerationJobResponse.type = Types::CreateWorldGenerationJobResponse
    CreateWorldTemplateRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the\n         request.</p>"}))
    CreateWorldTemplateRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the world template.</p>"}))
    CreateWorldTemplateRequest.add_member(:template_body, Smithy::Schema::Shapes::ShapeRef.new(shape: Json, location_name: 'templateBody', traits: {"smithy.api#documentation" => "<p>The world template body.</p>"}))
    CreateWorldTemplateRequest.add_member(:template_location, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateLocation, location_name: 'templateLocation', traits: {"smithy.api#documentation" => "<p>The location of the world template.</p>"}))
    CreateWorldTemplateRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map that contains tag keys and tag values that are attached to the world\n         template.</p>"}))
    CreateWorldTemplateRequest.type = Types::CreateWorldTemplateRequest
    CreateWorldTemplateResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the world template.</p>"}))
    CreateWorldTemplateResponse.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the\n         request.</p>"}))
    CreateWorldTemplateResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the world template was created.</p>"}))
    CreateWorldTemplateResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the world template.</p>"}))
    CreateWorldTemplateResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map that contains tag keys and tag values that are attached to the world\n         template.</p>"}))
    CreateWorldTemplateResponse.type = Types::CreateWorldTemplateResponse
    DataSource.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the data source.</p>"}))
    DataSource.add_member(:s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 's3Bucket', traits: {"smithy.api#documentation" => "<p>The S3 bucket where the data files are located.</p>"}))
    DataSource.add_member(:s3_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: S3KeyOutputs, location_name: 's3Keys', traits: {"smithy.api#documentation" => "<p>The list of S3 keys identifying the data source files.</p>"}))
    DataSource.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The data type for the data source that you're using for your container image or\n         simulation job. You can use this field to specify whether your data source is an Archive,\n         an Amazon S3 prefix, or a file.</p>\n         <p>If you don't specify a field, the default value is <code>File</code>.</p>"}))
    DataSource.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'destination', traits: {"smithy.api#documentation" => "<p>The location where your files are mounted in the container image.</p>\n         <p>If you've specified the <code>type</code> of the data source as an <code>Archive</code>,\n         you must provide an Amazon S3 object key to your archive. The object key must point to\n         either a <code>.zip</code> or <code>.tar.gz</code> file.</p>\n         <p>If you've specified the <code>type</code> of the data source as a <code>Prefix</code>,\n         you provide the Amazon S3 prefix that points to the files that you are using for your data\n         source.</p>\n         <p>If you've specified the <code>type</code> of the data source as a <code>File</code>, you\n         provide the Amazon S3 path to the file that you're using as your data source.</p>"}))
    DataSource.type = Types::DataSource
    DataSourceConfig.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the data source.</p>", "smithy.api#required" => {}}))
    DataSourceConfig.add_member(:s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 's3Bucket', traits: {"smithy.api#documentation" => "<p>The S3 bucket where the data files are located.</p>", "smithy.api#required" => {}}))
    DataSourceConfig.add_member(:s3_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: S3KeysOrPrefixes, location_name: 's3Keys', traits: {"smithy.api#documentation" => "<p>The list of S3 keys identifying the data source files.</p>", "smithy.api#required" => {}}))
    DataSourceConfig.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The data type for the data source that you're using for your container image or\n         simulation job. You can use this field to specify whether your data source is an Archive,\n         an Amazon S3 prefix, or a file.</p>\n         <p>If you don't specify a field, the default value is <code>File</code>.</p>"}))
    DataSourceConfig.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'destination', traits: {"smithy.api#documentation" => "<p>The location where your files are mounted in the container image.</p>\n         <p>If you've specified the <code>type</code> of the data source as an <code>Archive</code>,\n         you must provide an Amazon S3 object key to your archive. The object key must point to\n         either a <code>.zip</code> or <code>.tar.gz</code> file.</p>\n         <p>If you've specified the <code>type</code> of the data source as a <code>Prefix</code>,\n         you provide the Amazon S3 prefix that points to the files that you are using for your data\n         source.</p>\n         <p>If you've specified the <code>type</code> of the data source as a <code>File</code>, you\n         provide the Amazon S3 path to the file that you're using as your data source.</p>"}))
    DataSourceConfig.type = Types::DataSourceConfig
    DataSourceConfigs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceConfig)
    DataSourceNames.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Name)
    DataSourceType.add_member(:prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Prefix', traits: {"smithy.api#enumValue" => "Prefix"}))
    DataSourceType.add_member(:archive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Archive', traits: {"smithy.api#enumValue" => "Archive"}))
    DataSourceType.add_member(:file, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'File', traits: {"smithy.api#enumValue" => "File"}))
    DataSources.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataSource)
    DeleteFleetRequest.add_member(:fleet, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'fleet', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the fleet.</p>", "smithy.api#required" => {}}))
    DeleteFleetRequest.type = Types::DeleteFleetRequest
    DeleteFleetResponse.type = Types::DeleteFleetResponse
    DeleteRobotApplicationRequest.add_member(:application, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'application', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the the robot application.</p>", "smithy.api#required" => {}}))
    DeleteRobotApplicationRequest.add_member(:application_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'applicationVersion', traits: {"smithy.api#documentation" => "<p>The version of the robot application to delete.</p>"}))
    DeleteRobotApplicationRequest.type = Types::DeleteRobotApplicationRequest
    DeleteRobotApplicationResponse.type = Types::DeleteRobotApplicationResponse
    DeleteRobotRequest.add_member(:robot, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'robot', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the robot.</p>", "smithy.api#required" => {}}))
    DeleteRobotRequest.type = Types::DeleteRobotRequest
    DeleteRobotResponse.type = Types::DeleteRobotResponse
    DeleteSimulationApplicationRequest.add_member(:application, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'application', traits: {"smithy.api#documentation" => "<p>The application information for the simulation application to delete.</p>", "smithy.api#required" => {}}))
    DeleteSimulationApplicationRequest.add_member(:application_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'applicationVersion', traits: {"smithy.api#documentation" => "<p>The version of the simulation application to delete.</p>"}))
    DeleteSimulationApplicationRequest.type = Types::DeleteSimulationApplicationRequest
    DeleteSimulationApplicationResponse.type = Types::DeleteSimulationApplicationResponse
    DeleteWorldTemplateRequest.add_member(:template, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'template', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (arn) of the world template you want to delete.</p>", "smithy.api#required" => {}}))
    DeleteWorldTemplateRequest.type = Types::DeleteWorldTemplateRequest
    DeleteWorldTemplateResponse.type = Types::DeleteWorldTemplateResponse
    DeploymentApplicationConfig.add_member(:application, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'application', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the robot application.</p>", "smithy.api#required" => {}}))
    DeploymentApplicationConfig.add_member(:application_version, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentVersion, location_name: 'applicationVersion', traits: {"smithy.api#documentation" => "<p>The version of the application.</p>", "smithy.api#required" => {}}))
    DeploymentApplicationConfig.add_member(:launch_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentLaunchConfig, location_name: 'launchConfig', traits: {"smithy.api#documentation" => "<p>The launch configuration.</p>", "smithy.api#required" => {}}))
    DeploymentApplicationConfig.type = Types::DeploymentApplicationConfig
    DeploymentApplicationConfigs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentApplicationConfig)
    DeploymentConfig.add_member(:concurrent_deployment_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'concurrentDeploymentPercentage', traits: {"smithy.api#documentation" => "<p>The percentage of robots receiving the deployment at the same time.</p>"}))
    DeploymentConfig.add_member(:failure_threshold_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'failureThresholdPercentage', traits: {"smithy.api#documentation" => "<p>The percentage of deployments that need to fail before stopping deployment.</p>"}))
    DeploymentConfig.add_member(:robot_deployment_timeout_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentTimeout, location_name: 'robotDeploymentTimeoutInSeconds', traits: {"smithy.api#documentation" => "<p>The amount of time, in seconds, to wait for deployment to a single robot to complete.\n         Choose a time between 1 minute and 7 days. The default is 5 hours.</p>"}))
    DeploymentConfig.add_member(:download_condition_file, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Object, location_name: 'downloadConditionFile', traits: {"smithy.api#documentation" => "<p>The download condition file.</p>"}))
    DeploymentConfig.type = Types::DeploymentConfig
    DeploymentJob.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the deployment job.</p>"}))
    DeploymentJob.add_member(:fleet, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'fleet', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the fleet.</p>"}))
    DeploymentJob.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the deployment job.</p>"}))
    DeploymentJob.add_member(:deployment_application_configs, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentApplicationConfigs, location_name: 'deploymentApplicationConfigs', traits: {"smithy.api#documentation" => "<p>The deployment application configuration.</p>"}))
    DeploymentJob.add_member(:deployment_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentConfig, location_name: 'deploymentConfig', traits: {"smithy.api#documentation" => "<p>The deployment configuration.</p>"}))
    DeploymentJob.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>A short description of the reason why the deployment job failed.</p>"}))
    DeploymentJob.add_member(:failure_code, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentJobErrorCode, location_name: 'failureCode', traits: {"smithy.api#documentation" => "<p>The deployment job failure code.</p>"}))
    DeploymentJob.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the deployment job was created.</p>"}))
    DeploymentJob.type = Types::DeploymentJob
    DeploymentJobErrorCode.add_member(:resource_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ResourceNotFound', traits: {"smithy.api#enumValue" => "ResourceNotFound"}))
    DeploymentJobErrorCode.add_member(:environment_setup_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EnvironmentSetupError', traits: {"smithy.api#enumValue" => "EnvironmentSetupError"}))
    DeploymentJobErrorCode.add_member(:etag_mismatch, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EtagMismatch', traits: {"smithy.api#enumValue" => "EtagMismatch"}))
    DeploymentJobErrorCode.add_member(:failure_threshold_breached, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FailureThresholdBreached', traits: {"smithy.api#enumValue" => "FailureThresholdBreached"}))
    DeploymentJobErrorCode.add_member(:robot_deployment_aborted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RobotDeploymentAborted', traits: {"smithy.api#enumValue" => "RobotDeploymentAborted"}))
    DeploymentJobErrorCode.add_member(:robot_deployment_no_response, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RobotDeploymentNoResponse', traits: {"smithy.api#enumValue" => "RobotDeploymentNoResponse"}))
    DeploymentJobErrorCode.add_member(:robot_agent_connection_timeout, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RobotAgentConnectionTimeout', traits: {"smithy.api#enumValue" => "RobotAgentConnectionTimeout"}))
    DeploymentJobErrorCode.add_member(:greengrass_deployment_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GreengrassDeploymentFailed', traits: {"smithy.api#enumValue" => "GreengrassDeploymentFailed"}))
    DeploymentJobErrorCode.add_member(:invalid_greengrass_group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InvalidGreengrassGroup', traits: {"smithy.api#enumValue" => "InvalidGreengrassGroup"}))
    DeploymentJobErrorCode.add_member(:missing_robot_architecture, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MissingRobotArchitecture', traits: {"smithy.api#enumValue" => "MissingRobotArchitecture"}))
    DeploymentJobErrorCode.add_member(:missing_robot_application_architecture, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MissingRobotApplicationArchitecture', traits: {"smithy.api#enumValue" => "MissingRobotApplicationArchitecture"}))
    DeploymentJobErrorCode.add_member(:missing_robot_deployment_resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MissingRobotDeploymentResource', traits: {"smithy.api#enumValue" => "MissingRobotDeploymentResource"}))
    DeploymentJobErrorCode.add_member(:greengrass_group_version_does_not_exist, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GreengrassGroupVersionDoesNotExist', traits: {"smithy.api#enumValue" => "GreengrassGroupVersionDoesNotExist"}))
    DeploymentJobErrorCode.add_member(:lambda_deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LambdaDeleted', traits: {"smithy.api#enumValue" => "LambdaDeleted"}))
    DeploymentJobErrorCode.add_member(:extracting_bundle_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ExtractingBundleFailure', traits: {"smithy.api#enumValue" => "ExtractingBundleFailure"}))
    DeploymentJobErrorCode.add_member(:pre_launch_file_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PreLaunchFileFailure', traits: {"smithy.api#enumValue" => "PreLaunchFileFailure"}))
    DeploymentJobErrorCode.add_member(:post_launch_file_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PostLaunchFileFailure', traits: {"smithy.api#enumValue" => "PostLaunchFileFailure"}))
    DeploymentJobErrorCode.add_member(:bad_permission_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BadPermissionError', traits: {"smithy.api#enumValue" => "BadPermissionError"}))
    DeploymentJobErrorCode.add_member(:download_condition_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DownloadConditionFailed', traits: {"smithy.api#enumValue" => "DownloadConditionFailed"}))
    DeploymentJobErrorCode.add_member(:bad_lambda_associated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BadLambdaAssociated', traits: {"smithy.api#enumValue" => "BadLambdaAssociated"}))
    DeploymentJobErrorCode.add_member(:internal_server_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InternalServerError', traits: {"smithy.api#enumValue" => "InternalServerError"}))
    DeploymentJobErrorCode.add_member(:robot_application_does_not_exist, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RobotApplicationDoesNotExist', traits: {"smithy.api#enumValue" => "RobotApplicationDoesNotExist"}))
    DeploymentJobErrorCode.add_member(:deployment_fleet_does_not_exist, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DeploymentFleetDoesNotExist', traits: {"smithy.api#enumValue" => "DeploymentFleetDoesNotExist"}))
    DeploymentJobErrorCode.add_member(:fleet_deployment_timeout, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FleetDeploymentTimeout', traits: {"smithy.api#enumValue" => "FleetDeploymentTimeout"}))
    DeploymentJobs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentJob)
    DeploymentLaunchConfig.add_member(:package_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Command, location_name: 'packageName', traits: {"smithy.api#documentation" => "<p>The package name.</p>", "smithy.api#required" => {}}))
    DeploymentLaunchConfig.add_member(:pre_launch_file, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'preLaunchFile', traits: {"smithy.api#documentation" => "<p>The deployment pre-launch file. This file will be executed prior to the launch\n         file.</p>"}))
    DeploymentLaunchConfig.add_member(:launch_file, Smithy::Schema::Shapes::ShapeRef.new(shape: Command, location_name: 'launchFile', traits: {"smithy.api#documentation" => "<p>The launch file name.</p>", "smithy.api#required" => {}}))
    DeploymentLaunchConfig.add_member(:post_launch_file, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'postLaunchFile', traits: {"smithy.api#documentation" => "<p>The deployment post-launch file. This file will be executed after the launch\n         file.</p>"}))
    DeploymentLaunchConfig.add_member(:environment_variables, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariableMap, location_name: 'environmentVariables', traits: {"smithy.api#documentation" => "<p>An array of key/value pairs specifying environment variables for the robot\n         application</p>"}))
    DeploymentLaunchConfig.type = Types::DeploymentLaunchConfig
    DeploymentStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Pending', traits: {"smithy.api#enumValue" => "Pending"}))
    DeploymentStatus.add_member(:preparing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Preparing', traits: {"smithy.api#enumValue" => "Preparing"}))
    DeploymentStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InProgress', traits: {"smithy.api#enumValue" => "InProgress"}))
    DeploymentStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "Failed"}))
    DeploymentStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Succeeded', traits: {"smithy.api#enumValue" => "Succeeded"}))
    DeploymentStatus.add_member(:canceled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Canceled', traits: {"smithy.api#enumValue" => "Canceled"}))
    DeregisterRobotRequest.add_member(:fleet, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'fleet', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the fleet.</p>", "smithy.api#required" => {}}))
    DeregisterRobotRequest.add_member(:robot, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'robot', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the robot.</p>", "smithy.api#required" => {}}))
    DeregisterRobotRequest.type = Types::DeregisterRobotRequest
    DeregisterRobotResponse.add_member(:fleet, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'fleet', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the fleet.</p>"}))
    DeregisterRobotResponse.add_member(:robot, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'robot', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the robot.</p>"}))
    DeregisterRobotResponse.type = Types::DeregisterRobotResponse
    DescribeDeploymentJobRequest.add_member(:job, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'job', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the deployment job.</p>", "smithy.api#required" => {}}))
    DescribeDeploymentJobRequest.type = Types::DescribeDeploymentJobRequest
    DescribeDeploymentJobResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the deployment job.</p>"}))
    DescribeDeploymentJobResponse.add_member(:fleet, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'fleet', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the fleet.</p>"}))
    DescribeDeploymentJobResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the deployment job.</p>"}))
    DescribeDeploymentJobResponse.add_member(:deployment_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentConfig, location_name: 'deploymentConfig', traits: {"smithy.api#documentation" => "<p>The deployment configuration.</p>"}))
    DescribeDeploymentJobResponse.add_member(:deployment_application_configs, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentApplicationConfigs, location_name: 'deploymentApplicationConfigs', traits: {"smithy.api#documentation" => "<p>The deployment application configuration.</p>"}))
    DescribeDeploymentJobResponse.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>A short description of the reason why the deployment job failed.</p>"}))
    DescribeDeploymentJobResponse.add_member(:failure_code, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentJobErrorCode, location_name: 'failureCode', traits: {"smithy.api#documentation" => "<p>The deployment job failure code.</p>"}))
    DescribeDeploymentJobResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the deployment job was created.</p>"}))
    DescribeDeploymentJobResponse.add_member(:robot_deployment_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: RobotDeploymentSummary, location_name: 'robotDeploymentSummary', traits: {"smithy.api#documentation" => "<p>A list of robot deployment summaries.</p>"}))
    DescribeDeploymentJobResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of all tags added to the specified deployment job.</p>"}))
    DescribeDeploymentJobResponse.type = Types::DescribeDeploymentJobResponse
    DescribeFleetRequest.add_member(:fleet, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'fleet', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the fleet.</p>", "smithy.api#required" => {}}))
    DescribeFleetRequest.type = Types::DescribeFleetRequest
    DescribeFleetResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the fleet.</p>"}))
    DescribeFleetResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the fleet.</p>"}))
    DescribeFleetResponse.add_member(:robots, Smithy::Schema::Shapes::ShapeRef.new(shape: Robots, location_name: 'robots', traits: {"smithy.api#documentation" => "<p>A list of robots.</p>"}))
    DescribeFleetResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the fleet was created.</p>"}))
    DescribeFleetResponse.add_member(:last_deployment_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: 'lastDeploymentStatus', traits: {"smithy.api#documentation" => "<p>The status of the last deployment.</p>"}))
    DescribeFleetResponse.add_member(:last_deployment_job, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'lastDeploymentJob', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the last deployment job.</p>"}))
    DescribeFleetResponse.add_member(:last_deployment_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'lastDeploymentTime', traits: {"smithy.api#documentation" => "<p>The time of the last deployment.</p>"}))
    DescribeFleetResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of all tags added to the specified fleet.</p>"}))
    DescribeFleetResponse.type = Types::DescribeFleetResponse
    DescribeRobotApplicationRequest.add_member(:application, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'application', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the robot application.</p>", "smithy.api#required" => {}}))
    DescribeRobotApplicationRequest.add_member(:application_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'applicationVersion', traits: {"smithy.api#documentation" => "<p>The version of the robot application to describe.</p>"}))
    DescribeRobotApplicationRequest.type = Types::DescribeRobotApplicationRequest
    DescribeRobotApplicationResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the robot application.</p>"}))
    DescribeRobotApplicationResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the robot application.</p>"}))
    DescribeRobotApplicationResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the robot application.</p>"}))
    DescribeRobotApplicationResponse.add_member(:sources, Smithy::Schema::Shapes::ShapeRef.new(shape: Sources, location_name: 'sources', traits: {"smithy.api#documentation" => "<p>The sources of the robot application.</p>"}))
    DescribeRobotApplicationResponse.add_member(:robot_software_suite, Smithy::Schema::Shapes::ShapeRef.new(shape: RobotSoftwareSuite, location_name: 'robotSoftwareSuite', traits: {"smithy.api#documentation" => "<p>The robot software suite used by the robot application.</p>"}))
    DescribeRobotApplicationResponse.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionId, location_name: 'revisionId', traits: {"smithy.api#documentation" => "<p>The revision id of the robot application.</p>"}))
    DescribeRobotApplicationResponse.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the robot application was last\n         updated.</p>"}))
    DescribeRobotApplicationResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of all tags added to the specified robot application.</p>"}))
    DescribeRobotApplicationResponse.add_member(:environment, Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment', traits: {"smithy.api#documentation" => "<p>The object that contains the Docker image URI used to create the robot\n         application.</p>"}))
    DescribeRobotApplicationResponse.add_member(:image_digest, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageDigest, location_name: 'imageDigest', traits: {"smithy.api#documentation" => "<p>A SHA256 identifier for the Docker image that you use for your robot application.</p>"}))
    DescribeRobotApplicationResponse.type = Types::DescribeRobotApplicationResponse
    DescribeRobotRequest.add_member(:robot, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'robot', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the robot to be described.</p>", "smithy.api#required" => {}}))
    DescribeRobotRequest.type = Types::DescribeRobotRequest
    DescribeRobotResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the robot.</p>"}))
    DescribeRobotResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the robot.</p>"}))
    DescribeRobotResponse.add_member(:fleet_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'fleetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the fleet.</p>"}))
    DescribeRobotResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RobotStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the fleet.</p>"}))
    DescribeRobotResponse.add_member(:greengrass_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'greengrassGroupId', traits: {"smithy.api#documentation" => "<p>The Greengrass group id.</p>"}))
    DescribeRobotResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the robot was created.</p>"}))
    DescribeRobotResponse.add_member(:architecture, Smithy::Schema::Shapes::ShapeRef.new(shape: Architecture, location_name: 'architecture', traits: {"smithy.api#documentation" => "<p>The target architecture of the robot application.</p>"}))
    DescribeRobotResponse.add_member(:last_deployment_job, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'lastDeploymentJob', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the last deployment job.</p>"}))
    DescribeRobotResponse.add_member(:last_deployment_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'lastDeploymentTime', traits: {"smithy.api#documentation" => "<p>The time of the last deployment job.</p>"}))
    DescribeRobotResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of all tags added to the specified robot.</p>"}))
    DescribeRobotResponse.type = Types::DescribeRobotResponse
    DescribeSimulationApplicationRequest.add_member(:application, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'application', traits: {"smithy.api#documentation" => "<p>The application information for the simulation application.</p>", "smithy.api#required" => {}}))
    DescribeSimulationApplicationRequest.add_member(:application_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'applicationVersion', traits: {"smithy.api#documentation" => "<p>The version of the simulation application to describe.</p>"}))
    DescribeSimulationApplicationRequest.type = Types::DescribeSimulationApplicationRequest
    DescribeSimulationApplicationResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the robot simulation application.</p>"}))
    DescribeSimulationApplicationResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the simulation application.</p>"}))
    DescribeSimulationApplicationResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the simulation application.</p>"}))
    DescribeSimulationApplicationResponse.add_member(:sources, Smithy::Schema::Shapes::ShapeRef.new(shape: Sources, location_name: 'sources', traits: {"smithy.api#documentation" => "<p>The sources of the simulation application.</p>"}))
    DescribeSimulationApplicationResponse.add_member(:simulation_software_suite, Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationSoftwareSuite, location_name: 'simulationSoftwareSuite', traits: {"smithy.api#documentation" => "<p>The simulation software suite used by the simulation application.</p>"}))
    DescribeSimulationApplicationResponse.add_member(:robot_software_suite, Smithy::Schema::Shapes::ShapeRef.new(shape: RobotSoftwareSuite, location_name: 'robotSoftwareSuite', traits: {"smithy.api#documentation" => "<p>Information about the robot software suite.</p>"}))
    DescribeSimulationApplicationResponse.add_member(:rendering_engine, Smithy::Schema::Shapes::ShapeRef.new(shape: RenderingEngine, location_name: 'renderingEngine', traits: {"smithy.api#documentation" => "<p>The rendering engine for the simulation application.</p>"}))
    DescribeSimulationApplicationResponse.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionId, location_name: 'revisionId', traits: {"smithy.api#documentation" => "<p>The revision id of the simulation application.</p>"}))
    DescribeSimulationApplicationResponse.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the simulation application was last\n         updated.</p>"}))
    DescribeSimulationApplicationResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of all tags added to the specified simulation application.</p>"}))
    DescribeSimulationApplicationResponse.add_member(:environment, Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment', traits: {"smithy.api#documentation" => "<p>The object that contains the Docker image URI used to create the simulation\n         application.</p>"}))
    DescribeSimulationApplicationResponse.add_member(:image_digest, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageDigest, location_name: 'imageDigest', traits: {"smithy.api#documentation" => "<p>A SHA256 identifier for the Docker image that you use for your simulation\n         application.</p>"}))
    DescribeSimulationApplicationResponse.type = Types::DescribeSimulationApplicationResponse
    DescribeSimulationJobBatchRequest.add_member(:batch, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'batch', traits: {"smithy.api#documentation" => "<p>The id of the batch to describe.</p>", "smithy.api#required" => {}}))
    DescribeSimulationJobBatchRequest.type = Types::DescribeSimulationJobBatchRequest
    DescribeSimulationJobBatchResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the batch.</p>"}))
    DescribeSimulationJobBatchResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobBatchStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the batch.</p>\n         <dl>\n            <dt>Pending</dt>\n            <dd>\n               <p>The simulation job batch request is pending.</p>\n            </dd>\n            <dt>InProgress</dt>\n            <dd>\n               <p>The simulation job batch is in progress. </p>\n            </dd>\n            <dt>Failed</dt>\n            <dd>\n               <p>The simulation job batch failed. One or more simulation job requests could not\n                  be completed due to an internal failure (like <code>InternalServiceError</code>).\n                  See <code>failureCode</code> and <code>failureReason</code> for more\n                  information.</p>\n            </dd>\n            <dt>Completed</dt>\n            <dd>\n               <p>The simulation batch job completed. A batch is complete when (1) there are no\n                  pending simulation job requests in the batch and none of the failed simulation job\n                  requests are due to <code>InternalServiceError</code> and (2) when all created\n                  simulation jobs have reached a terminal state (for example, <code>Completed</code>\n                  or <code>Failed</code>). </p>\n            </dd>\n            <dt>Canceled</dt>\n            <dd>\n               <p>The simulation batch job was cancelled.</p>\n            </dd>\n            <dt>Canceling</dt>\n            <dd>\n               <p>The simulation batch job is being cancelled.</p>\n            </dd>\n            <dt>Completing</dt>\n            <dd>\n               <p>The simulation batch job is completing.</p>\n            </dd>\n            <dt>TimingOut</dt>\n            <dd>\n               <p>The simulation job batch is timing out.</p>\n               <p>If a batch timing out, and there are pending requests that were failing due to\n                  an internal failure (like <code>InternalServiceError</code>), the batch status\n                  will be <code>Failed</code>. If there are no such failing request, the batch\n                  status will be <code>TimedOut</code>. </p>\n            </dd>\n            <dt>TimedOut</dt>\n            <dd>\n               <p>The simulation batch job timed out.</p>\n            </dd>\n         </dl>"}))
    DescribeSimulationJobBatchResponse.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the simulation job batch was last\n         updated.</p>"}))
    DescribeSimulationJobBatchResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the simulation job batch was\n         created.</p>"}))
    DescribeSimulationJobBatchResponse.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the\n         request.</p>"}))
    DescribeSimulationJobBatchResponse.add_member(:batch_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPolicy, location_name: 'batchPolicy', traits: {"smithy.api#documentation" => "<p>The batch policy.</p>"}))
    DescribeSimulationJobBatchResponse.add_member(:failure_code, Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobBatchErrorCode, location_name: 'failureCode', traits: {"smithy.api#documentation" => "<p>The failure code of the simulation job batch.</p>"}))
    DescribeSimulationJobBatchResponse.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>The reason the simulation job batch failed.</p>"}))
    DescribeSimulationJobBatchResponse.add_member(:failed_requests, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedCreateSimulationJobRequests, location_name: 'failedRequests', traits: {"smithy.api#documentation" => "<p>A list of failed create simulation job requests. The request failed to be created into a\n         simulation job. Failed requests do not have a simulation job ID. </p>"}))
    DescribeSimulationJobBatchResponse.add_member(:pending_requests, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSimulationJobRequests, location_name: 'pendingRequests', traits: {"smithy.api#documentation" => "<p>A list of pending simulation job requests. These requests have not yet been created into\n         simulation jobs.</p>"}))
    DescribeSimulationJobBatchResponse.add_member(:created_requests, Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobSummaries, location_name: 'createdRequests', traits: {"smithy.api#documentation" => "<p>A list of created simulation job summaries.</p>"}))
    DescribeSimulationJobBatchResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map that contains tag keys and tag values that are attached to the simulation job\n         batch.</p>"}))
    DescribeSimulationJobBatchResponse.type = Types::DescribeSimulationJobBatchResponse
    DescribeSimulationJobRequest.add_member(:job, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'job', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the simulation job to be described.</p>", "smithy.api#required" => {}}))
    DescribeSimulationJobRequest.type = Types::DescribeSimulationJobRequest
    DescribeSimulationJobResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the simulation job.</p>"}))
    DescribeSimulationJobResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the simulation job.</p>"}))
    DescribeSimulationJobResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the simulation job.</p>"}))
    DescribeSimulationJobResponse.add_member(:last_started_at, Smithy::Schema::Shapes::ShapeRef.new(shape: LastStartedAt, location_name: 'lastStartedAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the simulation job was last\n         started.</p>"}))
    DescribeSimulationJobResponse.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the simulation job was last\n         updated.</p>"}))
    DescribeSimulationJobResponse.add_member(:failure_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureBehavior, location_name: 'failureBehavior', traits: {"smithy.api#documentation" => "<p>The failure behavior for the simulation job.</p>"}))
    DescribeSimulationJobResponse.add_member(:failure_code, Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobErrorCode, location_name: 'failureCode', traits: {"smithy.api#documentation" => "<p>The failure code of the simulation job if it failed:</p>\n         <dl>\n            <dt>InternalServiceError</dt>\n            <dd>\n               <p>Internal service error.</p>\n            </dd>\n            <dt>RobotApplicationCrash</dt>\n            <dd>\n               <p>Robot application exited abnormally.</p>\n            </dd>\n            <dt>SimulationApplicationCrash</dt>\n            <dd>\n               <p> Simulation application exited abnormally.</p>\n            </dd>\n            <dt>BadPermissionsRobotApplication</dt>\n            <dd>\n               <p>Robot application bundle could not be downloaded.</p>\n            </dd>\n            <dt>BadPermissionsSimulationApplication</dt>\n            <dd>\n               <p>Simulation application bundle could not be downloaded.</p>\n            </dd>\n            <dt>BadPermissionsS3Output</dt>\n            <dd>\n               <p>Unable to publish outputs to customer-provided S3 bucket.</p>\n            </dd>\n            <dt>BadPermissionsCloudwatchLogs</dt>\n            <dd>\n               <p>Unable to publish logs to customer-provided CloudWatch Logs resource.</p>\n            </dd>\n            <dt>SubnetIpLimitExceeded</dt>\n            <dd>\n               <p>Subnet IP limit exceeded.</p>\n            </dd>\n            <dt>ENILimitExceeded</dt>\n            <dd>\n               <p>ENI limit exceeded.</p>\n            </dd>\n            <dt>BadPermissionsUserCredentials</dt>\n            <dd>\n               <p>Unable to use the Role provided.</p>\n            </dd>\n            <dt>InvalidBundleRobotApplication</dt>\n            <dd>\n               <p>Robot bundle cannot be extracted (invalid format, bundling error, or other\n                  issue).</p>\n            </dd>\n            <dt>InvalidBundleSimulationApplication</dt>\n            <dd>\n               <p>Simulation bundle cannot be extracted (invalid format, bundling error, or other\n                  issue).</p>\n            </dd>\n            <dt>RobotApplicationVersionMismatchedEtag</dt>\n            <dd>\n               <p>Etag for RobotApplication does not match value during version creation.</p>\n            </dd>\n            <dt>SimulationApplicationVersionMismatchedEtag</dt>\n            <dd>\n               <p>Etag for SimulationApplication does not match value during version\n                  creation.</p>\n            </dd>\n         </dl>"}))
    DescribeSimulationJobResponse.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>Details about why the simulation job failed. For more information about troubleshooting,\n         see <a href=\"https://docs.aws.amazon.com/robomaker/latest/dg/troubleshooting.html\">Troubleshooting</a>.</p>"}))
    DescribeSimulationJobResponse.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the\n         request.</p>"}))
    DescribeSimulationJobResponse.add_member(:output_location, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputLocation, location_name: 'outputLocation', traits: {"smithy.api#documentation" => "<p>Location for output files generated by the simulation job.</p>"}))
    DescribeSimulationJobResponse.add_member(:logging_config, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfig, location_name: 'loggingConfig', traits: {"smithy.api#documentation" => "<p>The logging configuration.</p>"}))
    DescribeSimulationJobResponse.add_member(:max_job_duration_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: JobDuration, location_name: 'maxJobDurationInSeconds', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum job duration in seconds. The value must be 8 days (691,200 seconds) or\n         less.</p>"}))
    DescribeSimulationJobResponse.add_member(:simulation_time_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationTimeMillis, location_name: 'simulationTimeMillis', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The simulation job execution duration in milliseconds.</p>"}))
    DescribeSimulationJobResponse.add_member(:iam_role, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRole, location_name: 'iamRole', traits: {"smithy.api#documentation" => "<p>The IAM role that allows the simulation instance to call the AWS APIs that are specified\n         in its associated policies on your behalf.</p>"}))
    DescribeSimulationJobResponse.add_member(:robot_applications, Smithy::Schema::Shapes::ShapeRef.new(shape: RobotApplicationConfigs, location_name: 'robotApplications', traits: {"smithy.api#documentation" => "<p>A list of robot applications.</p>"}))
    DescribeSimulationJobResponse.add_member(:simulation_applications, Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationApplicationConfigs, location_name: 'simulationApplications', traits: {"smithy.api#documentation" => "<p>A list of simulation applications.</p>"}))
    DescribeSimulationJobResponse.add_member(:data_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSources, location_name: 'dataSources', traits: {"smithy.api#documentation" => "<p>The data sources for the simulation job.</p>"}))
    DescribeSimulationJobResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of all tags added to the specified simulation job.</p>"}))
    DescribeSimulationJobResponse.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VPCConfigResponse, location_name: 'vpcConfig', traits: {"smithy.api#documentation" => "<p>The VPC configuration.</p>"}))
    DescribeSimulationJobResponse.add_member(:network_interface, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterface, location_name: 'networkInterface', traits: {"smithy.api#documentation" => "<p>The network interface information for the simulation job.</p>"}))
    DescribeSimulationJobResponse.add_member(:compute, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeResponse, location_name: 'compute', traits: {"smithy.api#documentation" => "<p>Compute information for the simulation job.</p>"}))
    DescribeSimulationJobResponse.type = Types::DescribeSimulationJobResponse
    DescribeWorldExportJobRequest.add_member(:job, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'job', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (arn) of the world export job to describe.</p>", "smithy.api#required" => {}}))
    DescribeWorldExportJobRequest.type = Types::DescribeWorldExportJobRequest
    DescribeWorldExportJobResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the world export job.</p>"}))
    DescribeWorldExportJobResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: WorldExportJobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the world export job.</p>\n         <dl>\n            <dt>Pending</dt>\n            <dd>\n               <p>The world export job request is pending.</p>\n            </dd>\n            <dt>Running</dt>\n            <dd>\n               <p>The world export job is running. </p>\n            </dd>\n            <dt>Completed</dt>\n            <dd>\n               <p>The world export job completed. </p>\n            </dd>\n            <dt>Failed</dt>\n            <dd>\n               <p>The world export job failed. See <code>failureCode</code> and\n                     <code>failureReason</code> for more information. </p>\n            </dd>\n            <dt>Canceled</dt>\n            <dd>\n               <p>The world export job was cancelled.</p>\n            </dd>\n            <dt>Canceling</dt>\n            <dd>\n               <p>The world export job is being cancelled.</p>\n            </dd>\n         </dl>"}))
    DescribeWorldExportJobResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the world export job was created.</p>"}))
    DescribeWorldExportJobResponse.add_member(:failure_code, Smithy::Schema::Shapes::ShapeRef.new(shape: WorldExportJobErrorCode, location_name: 'failureCode', traits: {"smithy.api#documentation" => "<p>The failure code of the world export job if it failed:</p>\n         <dl>\n            <dt>InternalServiceError</dt>\n            <dd>\n               <p>Internal service error.</p>\n            </dd>\n            <dt>LimitExceeded</dt>\n            <dd>\n               <p>The requested resource exceeds the maximum number allowed, or the number of\n                  concurrent stream requests exceeds the maximum number allowed. </p>\n            </dd>\n            <dt>ResourceNotFound</dt>\n            <dd>\n               <p>The specified resource could not be found. </p>\n            </dd>\n            <dt>RequestThrottled</dt>\n            <dd>\n               <p>The request was throttled.</p>\n            </dd>\n            <dt>InvalidInput</dt>\n            <dd>\n               <p>An input parameter in the request is not valid.</p>\n            </dd>\n         </dl>"}))
    DescribeWorldExportJobResponse.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>The reason why the world export job failed.</p>"}))
    DescribeWorldExportJobResponse.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the\n         request.</p>"}))
    DescribeWorldExportJobResponse.add_member(:worlds, Smithy::Schema::Shapes::ShapeRef.new(shape: Arns, location_name: 'worlds', traits: {"smithy.api#documentation" => "<p>A list of Amazon Resource Names (arns) that correspond to worlds to be exported.</p>"}))
    DescribeWorldExportJobResponse.add_member(:output_location, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputLocation, location_name: 'outputLocation'))
    DescribeWorldExportJobResponse.add_member(:iam_role, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRole, location_name: 'iamRole', traits: {"smithy.api#documentation" => "<p>The IAM role that the world export process uses to access the Amazon S3 bucket and put\n         the export.</p>"}))
    DescribeWorldExportJobResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map that contains tag keys and tag values that are attached to the world export\n         job.</p>"}))
    DescribeWorldExportJobResponse.type = Types::DescribeWorldExportJobResponse
    DescribeWorldGenerationJobRequest.add_member(:job, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'job', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (arn) of the world generation job to describe.</p>", "smithy.api#required" => {}}))
    DescribeWorldGenerationJobRequest.type = Types::DescribeWorldGenerationJobRequest
    DescribeWorldGenerationJobResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the world generation job.</p>"}))
    DescribeWorldGenerationJobResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: WorldGenerationJobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the world generation job:</p>\n         <dl>\n            <dt>Pending</dt>\n            <dd>\n               <p>The world generation job request is pending.</p>\n            </dd>\n            <dt>Running</dt>\n            <dd>\n               <p>The world generation job is running. </p>\n            </dd>\n            <dt>Completed</dt>\n            <dd>\n               <p>The world generation job completed. </p>\n            </dd>\n            <dt>Failed</dt>\n            <dd>\n               <p>The world generation job failed. See <code>failureCode</code> for more\n                  information. </p>\n            </dd>\n            <dt>PartialFailed</dt>\n            <dd>\n               <p>Some worlds did not generate.</p>\n            </dd>\n            <dt>Canceled</dt>\n            <dd>\n               <p>The world generation job was cancelled.</p>\n            </dd>\n            <dt>Canceling</dt>\n            <dd>\n               <p>The world generation job is being cancelled.</p>\n            </dd>\n         </dl>"}))
    DescribeWorldGenerationJobResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the world generation job was\n         created.</p>"}))
    DescribeWorldGenerationJobResponse.add_member(:failure_code, Smithy::Schema::Shapes::ShapeRef.new(shape: WorldGenerationJobErrorCode, location_name: 'failureCode', traits: {"smithy.api#documentation" => "<p>The failure code of the world generation job if it failed:</p>\n         <dl>\n            <dt>InternalServiceError</dt>\n            <dd>\n               <p>Internal service error.</p>\n            </dd>\n            <dt>LimitExceeded</dt>\n            <dd>\n               <p>The requested resource exceeds the maximum number allowed, or the number of\n                  concurrent stream requests exceeds the maximum number allowed. </p>\n            </dd>\n            <dt>ResourceNotFound</dt>\n            <dd>\n               <p>The specified resource could not be found. </p>\n            </dd>\n            <dt>RequestThrottled</dt>\n            <dd>\n               <p>The request was throttled.</p>\n            </dd>\n            <dt>InvalidInput</dt>\n            <dd>\n               <p>An input parameter in the request is not valid.</p>\n            </dd>\n         </dl>"}))
    DescribeWorldGenerationJobResponse.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>The reason why the world generation job failed.</p>"}))
    DescribeWorldGenerationJobResponse.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the\n         request.</p>"}))
    DescribeWorldGenerationJobResponse.add_member(:template, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'template', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (arn) of the world template.</p>"}))
    DescribeWorldGenerationJobResponse.add_member(:world_count, Smithy::Schema::Shapes::ShapeRef.new(shape: WorldCount, location_name: 'worldCount', traits: {"smithy.api#documentation" => "<p>Information about the world count.</p>"}))
    DescribeWorldGenerationJobResponse.add_member(:finished_worlds_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: FinishedWorldsSummary, location_name: 'finishedWorldsSummary', traits: {"smithy.api#documentation" => "<p>Summary information about finished worlds.</p>"}))
    DescribeWorldGenerationJobResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map that contains tag keys and tag values that are attached to the world generation\n         job.</p>"}))
    DescribeWorldGenerationJobResponse.add_member(:world_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'worldTags', traits: {"smithy.api#documentation" => "<p>A map that contains tag keys and tag values that are attached to the generated\n         worlds.</p>"}))
    DescribeWorldGenerationJobResponse.type = Types::DescribeWorldGenerationJobResponse
    DescribeWorldRequest.add_member(:world, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'world', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (arn) of the world you want to describe.</p>", "smithy.api#required" => {}}))
    DescribeWorldRequest.type = Types::DescribeWorldRequest
    DescribeWorldResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (arn) of the world.</p>"}))
    DescribeWorldResponse.add_member(:generation_job, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'generationJob', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (arn) of the world generation job that generated the\n         world.</p>"}))
    DescribeWorldResponse.add_member(:template, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'template', traits: {"smithy.api#documentation" => "<p>The world template.</p>"}))
    DescribeWorldResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the world was created.</p>"}))
    DescribeWorldResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map that contains tag keys and tag values that are attached to the world.</p>"}))
    DescribeWorldResponse.add_member(:world_description_body, Smithy::Schema::Shapes::ShapeRef.new(shape: Json, location_name: 'worldDescriptionBody', traits: {"smithy.api#documentation" => "<p>Returns the JSON formatted string that describes the contents of your world.</p>"}))
    DescribeWorldResponse.type = Types::DescribeWorldResponse
    DescribeWorldTemplateRequest.add_member(:template, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'template', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (arn) of the world template you want to describe.</p>", "smithy.api#required" => {}}))
    DescribeWorldTemplateRequest.type = Types::DescribeWorldTemplateRequest
    DescribeWorldTemplateResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the world template.</p>"}))
    DescribeWorldTemplateResponse.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the\n         request.</p>"}))
    DescribeWorldTemplateResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the world template.</p>"}))
    DescribeWorldTemplateResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the world template was created.</p>"}))
    DescribeWorldTemplateResponse.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the world template was last\n         updated.</p>"}))
    DescribeWorldTemplateResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map that contains tag keys and tag values that are attached to the world\n         template.</p>"}))
    DescribeWorldTemplateResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the world template that you're using.</p>"}))
    DescribeWorldTemplateResponse.type = Types::DescribeWorldTemplateResponse
    Environment.add_member(:uri, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryUrl, location_name: 'uri', traits: {"smithy.api#documentation" => "<p>The Docker image URI for either your robot or simulation applications.</p>"}))
    Environment.type = Types::Environment
    EnvironmentVariableMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariableKey)
    EnvironmentVariableMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariableValue)
    ExitBehavior.add_member(:fail, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAIL', traits: {"smithy.api#enumValue" => "FAIL"}))
    ExitBehavior.add_member(:restart, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESTART', traits: {"smithy.api#enumValue" => "RESTART"}))
    FailedCreateSimulationJobRequest.add_member(:request, Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobRequest, location_name: 'request', traits: {"smithy.api#documentation" => "<p>The simulation job request.</p>"}))
    FailedCreateSimulationJobRequest.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>The failure reason of the simulation job request.</p>"}))
    FailedCreateSimulationJobRequest.add_member(:failure_code, Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobErrorCode, location_name: 'failureCode', traits: {"smithy.api#documentation" => "<p>The failure code.</p>"}))
    FailedCreateSimulationJobRequest.add_member(:failed_at, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedAt, location_name: 'failedAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the simulation job batch failed.</p>"}))
    FailedCreateSimulationJobRequest.type = Types::FailedCreateSimulationJobRequest
    FailedCreateSimulationJobRequests.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FailedCreateSimulationJobRequest)
    FailureBehavior.add_member(:fail, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Fail', traits: {"smithy.api#enumValue" => "Fail"}))
    FailureBehavior.add_member(:continue, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Continue', traits: {"smithy.api#enumValue" => "Continue"}))
    FailureSummary.add_member(:total_failure_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'totalFailureCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of failures.</p>"}))
    FailureSummary.add_member(:failures, Smithy::Schema::Shapes::ShapeRef.new(shape: WorldFailures, location_name: 'failures', traits: {"smithy.api#documentation" => "<p>The worlds that failed.</p>"}))
    FailureSummary.type = Types::FailureSummary
    Filter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the filter.</p>"}))
    Filter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValues, location_name: 'values', traits: {"smithy.api#documentation" => "<p>A list of values.</p>"}))
    Filter.type = Types::Filter
    FilterValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Name)
    Filters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Filter)
    FinishedWorldsSummary.add_member(:finished_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'finishedCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of finished worlds.</p>"}))
    FinishedWorldsSummary.add_member(:succeeded_worlds, Smithy::Schema::Shapes::ShapeRef.new(shape: Arns, location_name: 'succeededWorlds', traits: {"smithy.api#documentation" => "<p>A list of worlds that succeeded.</p>"}))
    FinishedWorldsSummary.add_member(:failure_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureSummary, location_name: 'failureSummary', traits: {"smithy.api#documentation" => "<p>Information about worlds that failed.</p>"}))
    FinishedWorldsSummary.type = Types::FinishedWorldsSummary
    Fleet.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the fleet.</p>"}))
    Fleet.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the fleet.</p>"}))
    Fleet.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the fleet was created.</p>"}))
    Fleet.add_member(:last_deployment_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: 'lastDeploymentStatus', traits: {"smithy.api#documentation" => "<p>The status of the last fleet deployment.</p>"}))
    Fleet.add_member(:last_deployment_job, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'lastDeploymentJob', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the last deployment job.</p>"}))
    Fleet.add_member(:last_deployment_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'lastDeploymentTime', traits: {"smithy.api#documentation" => "<p>The time of the last deployment.</p>"}))
    Fleet.type = Types::Fleet
    Fleets.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Fleet)
    GetWorldTemplateBodyRequest.add_member(:template, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'template', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (arn) of the world template.</p>"}))
    GetWorldTemplateBodyRequest.add_member(:generation_job, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'generationJob', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (arn) of the world generator job.</p>"}))
    GetWorldTemplateBodyRequest.type = Types::GetWorldTemplateBodyRequest
    GetWorldTemplateBodyResponse.add_member(:template_body, Smithy::Schema::Shapes::ShapeRef.new(shape: Json, location_name: 'templateBody', traits: {"smithy.api#documentation" => "<p>The world template body.</p>"}))
    GetWorldTemplateBodyResponse.type = Types::GetWorldTemplateBodyResponse
    IdempotentParameterMismatchException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    IdempotentParameterMismatchException.type = Types::IdempotentParameterMismatchException
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InternalServerException.type = Types::InternalServerException
    InvalidParameterException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidParameterException.type = Types::InvalidParameterException
    LaunchConfig.add_member(:package_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Command, location_name: 'packageName', traits: {"smithy.api#documentation" => "<p>The package name.</p>"}))
    LaunchConfig.add_member(:launch_file, Smithy::Schema::Shapes::ShapeRef.new(shape: Command, location_name: 'launchFile', traits: {"smithy.api#documentation" => "<p>The launch file name.</p>"}))
    LaunchConfig.add_member(:environment_variables, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariableMap, location_name: 'environmentVariables', traits: {"smithy.api#documentation" => "<p>The environment variables for the application launch.</p>"}))
    LaunchConfig.add_member(:port_forwarding_config, Smithy::Schema::Shapes::ShapeRef.new(shape: PortForwardingConfig, location_name: 'portForwardingConfig', traits: {"smithy.api#documentation" => "<p>The port forwarding configuration.</p>"}))
    LaunchConfig.add_member(:stream_ui, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'streamUI', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Boolean indicating whether a streaming session will be configured for the application.\n         If <code>True</code>, AWS RoboMaker will configure a connection so you can interact with\n         your application as it is running in the simulation. You must configure and launch the\n         component. It must have a graphical user interface. </p>"}))
    LaunchConfig.add_member(:command, Smithy::Schema::Shapes::ShapeRef.new(shape: CommandList, location_name: 'command', traits: {"smithy.api#documentation" => "<p>If you've specified <code>General</code> as the value for your <code>RobotSoftwareSuite</code>, you can use this field to specify a list of commands for your container image.</p>\n         <p>If you've specified <code>SimulationRuntime</code> as the value for your <code>SimulationSoftwareSuite</code>, you can use this field to specify a list of commands for your container image.</p>"}))
    LaunchConfig.type = Types::LaunchConfig
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    LimitExceededException.type = Types::LimitExceededException
    ListDeploymentJobsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>Optional filters to limit results.</p>\n         <p>The filter names <code>status</code> and <code>fleetName</code> are supported. When\n         filtering, you must use the complete value of the filtered item. You can use up to three\n         filters, but they must be for the same named item. For example, if you are looking for\n         items with the status <code>InProgress</code> or the status <code>Pending</code>.</p>"}))
    ListDeploymentJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the previous paginated request did not return all of the remaining results, the\n         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the\n         next set of results, call <code>ListDeploymentJobs</code> again and assign that token to\n         the request object's <code>nextToken</code> parameter. If there are no remaining results,\n         the previous response object's NextToken parameter is set to null. </p>"}))
    ListDeploymentJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>When this parameter is used, <code>ListDeploymentJobs</code> only returns\n            <code>maxResults</code> results in a single page along with a <code>nextToken</code>\n         response element. The remaining results of the initial request can be seen by sending\n         another <code>ListDeploymentJobs</code> request with the returned <code>nextToken</code>\n         value. This value can be between 1 and 200. If this parameter is not used, then\n            <code>ListDeploymentJobs</code> returns up to 200 results and a <code>nextToken</code>\n         value if applicable. </p>"}))
    ListDeploymentJobsRequest.type = Types::ListDeploymentJobsRequest
    ListDeploymentJobsResponse.add_member(:deployment_jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentJobs, location_name: 'deploymentJobs', traits: {"smithy.api#documentation" => "<p>A list of deployment jobs that meet the criteria of the request.</p>"}))
    ListDeploymentJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the previous paginated request did not return all of the remaining results, the\n         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the\n         next set of results, call <code>ListDeploymentJobs</code> again and assign that token to\n         the request object's <code>nextToken</code> parameter. If there are no remaining results,\n         the previous response object's NextToken parameter is set to null. </p>"}))
    ListDeploymentJobsResponse.type = Types::ListDeploymentJobsResponse
    ListFleetsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the previous paginated request did not return all of the remaining results, the\n         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the\n         next set of results, call <code>ListFleets</code> again and assign that token to the\n         request object's <code>nextToken</code> parameter. If there are no remaining results, the\n         previous response object's NextToken parameter is set to null. </p>\n         <note>\n            <p>This token should be treated as an opaque identifier that is only used to retrieve\n            the next items in a list and not for other programmatic purposes.</p>\n         </note>"}))
    ListFleetsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>When this parameter is used, <code>ListFleets</code> only returns\n            <code>maxResults</code> results in a single page along with a <code>nextToken</code>\n         response element. The remaining results of the initial request can be seen by sending\n         another <code>ListFleets</code> request with the returned <code>nextToken</code> value.\n         This value can be between 1 and 200. If this parameter is not used, then\n            <code>ListFleets</code> returns up to 200 results and a <code>nextToken</code> value if\n         applicable. </p>"}))
    ListFleetsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>Optional filters to limit results.</p>\n         <p>The filter name <code>name</code> is supported. When filtering, you must use the\n         complete value of the filtered item. You can use up to three filters.</p>"}))
    ListFleetsRequest.type = Types::ListFleetsRequest
    ListFleetsResponse.add_member(:fleet_details, Smithy::Schema::Shapes::ShapeRef.new(shape: Fleets, location_name: 'fleetDetails', traits: {"smithy.api#documentation" => "<p>A list of fleet details meeting the request criteria.</p>"}))
    ListFleetsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the previous paginated request did not return all of the remaining results, the\n         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the\n         next set of results, call <code>ListFleets</code> again and assign that token to the\n         request object's <code>nextToken</code> parameter. If there are no remaining results, the\n         previous response object's NextToken parameter is set to null. </p>"}))
    ListFleetsResponse.type = Types::ListFleetsResponse
    ListRobotApplicationsRequest.add_member(:version_qualifier, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionQualifier, location_name: 'versionQualifier', traits: {"smithy.api#documentation" => "<p>The version qualifier of the robot application.</p>"}))
    ListRobotApplicationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the previous paginated request did not return all of the remaining results, the\n         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the\n         next set of results, call <code>ListRobotApplications</code> again and assign that token to\n         the request object's <code>nextToken</code> parameter. If there are no remaining results,\n         the previous response object's NextToken parameter is set to null. </p>"}))
    ListRobotApplicationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>When this parameter is used, <code>ListRobotApplications</code> only returns\n            <code>maxResults</code> results in a single page along with a <code>nextToken</code>\n         response element. The remaining results of the initial request can be seen by sending\n         another <code>ListRobotApplications</code> request with the returned <code>nextToken</code>\n         value. This value can be between 1 and 100. If this parameter is not used, then\n            <code>ListRobotApplications</code> returns up to 100 results and a\n            <code>nextToken</code> value if applicable. </p>"}))
    ListRobotApplicationsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>Optional filters to limit results.</p>\n         <p>The filter name <code>name</code> is supported. When filtering, you must use the\n         complete value of the filtered item. You can use up to three filters.</p>"}))
    ListRobotApplicationsRequest.type = Types::ListRobotApplicationsRequest
    ListRobotApplicationsResponse.add_member(:robot_application_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: RobotApplicationSummaries, location_name: 'robotApplicationSummaries', traits: {"smithy.api#documentation" => "<p>A list of robot application summaries that meet the criteria of the request.</p>"}))
    ListRobotApplicationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the previous paginated request did not return all of the remaining results, the\n         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the\n         next set of results, call <code>ListRobotApplications</code> again and assign that token to\n         the request object's <code>nextToken</code> parameter. If there are no remaining results,\n         the previous response object's NextToken parameter is set to null. </p>"}))
    ListRobotApplicationsResponse.type = Types::ListRobotApplicationsResponse
    ListRobotsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the previous paginated request did not return all of the remaining results, the\n         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the\n         next set of results, call <code>ListRobots</code> again and assign that token to the\n         request object's <code>nextToken</code> parameter. If there are no remaining results, the\n         previous response object's NextToken parameter is set to null. </p>"}))
    ListRobotsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>When this parameter is used, <code>ListRobots</code> only returns\n            <code>maxResults</code> results in a single page along with a <code>nextToken</code>\n         response element. The remaining results of the initial request can be seen by sending\n         another <code>ListRobots</code> request with the returned <code>nextToken</code> value.\n         This value can be between 1 and 200. If this parameter is not used, then\n            <code>ListRobots</code> returns up to 200 results and a <code>nextToken</code> value if\n         applicable. </p>"}))
    ListRobotsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>Optional filters to limit results.</p>\n         <p>The filter names <code>status</code> and <code>fleetName</code> are supported. When\n         filtering, you must use the complete value of the filtered item. You can use up to three\n         filters, but they must be for the same named item. For example, if you are looking for\n         items with the status <code>Registered</code> or the status <code>Available</code>.</p>"}))
    ListRobotsRequest.type = Types::ListRobotsRequest
    ListRobotsResponse.add_member(:robots, Smithy::Schema::Shapes::ShapeRef.new(shape: Robots, location_name: 'robots', traits: {"smithy.api#documentation" => "<p>A list of robots that meet the criteria of the request.</p>"}))
    ListRobotsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the previous paginated request did not return all of the remaining results, the\n         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the\n         next set of results, call <code>ListRobots</code> again and assign that token to the\n         request object's <code>nextToken</code> parameter. If there are no remaining results, the\n         previous response object's NextToken parameter is set to null. </p>"}))
    ListRobotsResponse.type = Types::ListRobotsResponse
    ListSimulationApplicationsRequest.add_member(:version_qualifier, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionQualifier, location_name: 'versionQualifier', traits: {"smithy.api#documentation" => "<p>The version qualifier of the simulation application.</p>"}))
    ListSimulationApplicationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the previous paginated request did not return all of the remaining results, the\n         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the\n         next set of results, call <code>ListSimulationApplications</code> again and assign that\n         token to the request object's <code>nextToken</code> parameter. If there are no remaining\n         results, the previous response object's NextToken parameter is set to null. </p>"}))
    ListSimulationApplicationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>When this parameter is used, <code>ListSimulationApplications</code> only returns\n            <code>maxResults</code> results in a single page along with a <code>nextToken</code>\n         response element. The remaining results of the initial request can be seen by sending\n         another <code>ListSimulationApplications</code> request with the returned\n            <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is\n         not used, then <code>ListSimulationApplications</code> returns up to 100 results and a\n            <code>nextToken</code> value if applicable. </p>"}))
    ListSimulationApplicationsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>Optional list of filters to limit results.</p>\n         <p>The filter name <code>name</code> is supported. When filtering, you must use the\n         complete value of the filtered item. You can use up to three filters.</p>"}))
    ListSimulationApplicationsRequest.type = Types::ListSimulationApplicationsRequest
    ListSimulationApplicationsResponse.add_member(:simulation_application_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationApplicationSummaries, location_name: 'simulationApplicationSummaries', traits: {"smithy.api#documentation" => "<p>A list of simulation application summaries that meet the criteria of the request.</p>"}))
    ListSimulationApplicationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the previous paginated request did not return all of the remaining results, the\n         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the\n         next set of results, call <code>ListSimulationApplications</code> again and assign that\n         token to the request object's <code>nextToken</code> parameter. If there are no remaining\n         results, the previous response object's NextToken parameter is set to null. </p>"}))
    ListSimulationApplicationsResponse.type = Types::ListSimulationApplicationsResponse
    ListSimulationJobBatchesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the previous paginated request did not return all of the remaining results, the\n         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the\n         next set of results, call <code>ListSimulationJobBatches</code> again and assign that token\n         to the request object's <code>nextToken</code> parameter. If there are no remaining\n         results, the previous response object's NextToken parameter is set to null. </p>"}))
    ListSimulationJobBatchesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>When this parameter is used, <code>ListSimulationJobBatches</code> only returns\n            <code>maxResults</code> results in a single page along with a <code>nextToken</code>\n         response element. The remaining results of the initial request can be seen by sending\n         another <code>ListSimulationJobBatches</code> request with the returned\n            <code>nextToken</code> value. </p>"}))
    ListSimulationJobBatchesRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>Optional filters to limit results.</p>"}))
    ListSimulationJobBatchesRequest.type = Types::ListSimulationJobBatchesRequest
    ListSimulationJobBatchesResponse.add_member(:simulation_job_batch_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobBatchSummaries, location_name: 'simulationJobBatchSummaries', traits: {"smithy.api#documentation" => "<p>A list of simulation job batch summaries.</p>"}))
    ListSimulationJobBatchesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the previous paginated request did not return all of the remaining results, the\n         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the\n         next set of results, call <code>ListSimulationJobBatches</code> again and assign that token\n         to the request object's <code>nextToken</code> parameter. If there are no remaining\n         results, the previous response object's NextToken parameter is set to null. </p>"}))
    ListSimulationJobBatchesResponse.type = Types::ListSimulationJobBatchesResponse
    ListSimulationJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the previous paginated request did not return all of the remaining results, the\n         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the\n         next set of results, call <code>ListSimulationJobs</code> again and assign that token to\n         the request object's <code>nextToken</code> parameter. If there are no remaining results,\n         the previous response object's NextToken parameter is set to null. </p>"}))
    ListSimulationJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>When this parameter is used, <code>ListSimulationJobs</code> only returns\n            <code>maxResults</code> results in a single page along with a <code>nextToken</code>\n         response element. The remaining results of the initial request can be seen by sending\n         another <code>ListSimulationJobs</code> request with the returned <code>nextToken</code>\n         value. This value can be between 1 and 1000. If this parameter is not used, then\n            <code>ListSimulationJobs</code> returns up to 1000 results and a <code>nextToken</code>\n         value if applicable. </p>"}))
    ListSimulationJobsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>Optional filters to limit results.</p>\n         <p>The filter names <code>status</code> and <code>simulationApplicationName</code> and\n            <code>robotApplicationName</code> are supported. When filtering, you must use the\n         complete value of the filtered item. You can use up to three filters, but they must be for\n         the same named item. For example, if you are looking for items with the status\n            <code>Preparing</code> or the status <code>Running</code>.</p>"}))
    ListSimulationJobsRequest.type = Types::ListSimulationJobsRequest
    ListSimulationJobsResponse.add_member(:simulation_job_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobSummaries, location_name: 'simulationJobSummaries', traits: {"smithy.api#documentation" => "<p>A list of simulation job summaries that meet the criteria of the request.</p>", "smithy.api#required" => {}}))
    ListSimulationJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the previous paginated request did not return all of the remaining results, the\n         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the\n         next set of results, call <code>ListSimulationJobs</code> again and assign that token to\n         the request object's <code>nextToken</code> parameter. If there are no remaining results,\n         the previous response object's NextToken parameter is set to null. </p>"}))
    ListSimulationJobsResponse.type = Types::ListSimulationJobsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The AWS RoboMaker Amazon Resource Name (ARN) with tags to be listed.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of all tags added to the specified resource.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListWorldExportJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the previous paginated request did not return all of the remaining results, the\n         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the\n         next set of results, call <code>ListWorldExportJobs</code> again and assign that token to\n         the request object's <code>nextToken</code> parameter. If there are no remaining results,\n         the previous response object's NextToken parameter is set to null. </p>"}))
    ListWorldExportJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>When this parameter is used, <code>ListWorldExportJobs</code> only returns\n            <code>maxResults</code> results in a single page along with a <code>nextToken</code>\n         response element. The remaining results of the initial request can be seen by sending\n         another <code>ListWorldExportJobs</code> request with the returned <code>nextToken</code>\n         value. This value can be between 1 and 100. If this parameter is not used, then\n            <code>ListWorldExportJobs</code> returns up to 100 results and a <code>nextToken</code>\n         value if applicable. </p>"}))
    ListWorldExportJobsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>Optional filters to limit results. You can use <code>generationJobId</code> and\n            <code>templateId</code>.</p>"}))
    ListWorldExportJobsRequest.type = Types::ListWorldExportJobsRequest
    ListWorldExportJobsResponse.add_member(:world_export_job_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: WorldExportJobSummaries, location_name: 'worldExportJobSummaries', traits: {"smithy.api#documentation" => "<p>Summary information for world export jobs.</p>", "smithy.api#required" => {}}))
    ListWorldExportJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the previous paginated request did not return all of the remaining results, the\n         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the\n         next set of results, call <code>ListWorldExportJobsRequest</code> again and assign that\n         token to the request object's <code>nextToken</code> parameter. If there are no remaining\n         results, the previous response object's NextToken parameter is set to null. </p>"}))
    ListWorldExportJobsResponse.type = Types::ListWorldExportJobsResponse
    ListWorldGenerationJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the previous paginated request did not return all of the remaining results, the\n         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the\n         next set of results, call <code>ListWorldGenerationJobsRequest</code> again and assign that\n         token to the request object's <code>nextToken</code> parameter. If there are no remaining\n         results, the previous response object's NextToken parameter is set to null. </p>"}))
    ListWorldGenerationJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>When this parameter is used, <code>ListWorldGeneratorJobs</code> only returns\n            <code>maxResults</code> results in a single page along with a <code>nextToken</code>\n         response element. The remaining results of the initial request can be seen by sending\n         another <code>ListWorldGeneratorJobs</code> request with the returned\n            <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is\n         not used, then <code>ListWorldGeneratorJobs</code> returns up to 100 results and a\n            <code>nextToken</code> value if applicable. </p>"}))
    ListWorldGenerationJobsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>Optional filters to limit results. You can use <code>status</code> and\n            <code>templateId</code>.</p>"}))
    ListWorldGenerationJobsRequest.type = Types::ListWorldGenerationJobsRequest
    ListWorldGenerationJobsResponse.add_member(:world_generation_job_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: WorldGenerationJobSummaries, location_name: 'worldGenerationJobSummaries', traits: {"smithy.api#documentation" => "<p>Summary information for world generator jobs.</p>", "smithy.api#required" => {}}))
    ListWorldGenerationJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the previous paginated request did not return all of the remaining results, the\n         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the\n         next set of results, call <code>ListWorldGeneratorJobsRequest</code> again and assign that\n         token to the request object's <code>nextToken</code> parameter. If there are no remaining\n         results, the previous response object's NextToken parameter is set to null. </p>"}))
    ListWorldGenerationJobsResponse.type = Types::ListWorldGenerationJobsResponse
    ListWorldTemplatesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the previous paginated request did not return all of the remaining results, the\n         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the\n         next set of results, call <code>ListWorldTemplates</code> again and assign that token to\n         the request object's <code>nextToken</code> parameter. If there are no remaining results,\n         the previous response object's NextToken parameter is set to null. </p>"}))
    ListWorldTemplatesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>When this parameter is used, <code>ListWorldTemplates</code> only returns\n            <code>maxResults</code> results in a single page along with a <code>nextToken</code>\n         response element. The remaining results of the initial request can be seen by sending\n         another <code>ListWorldTemplates</code> request with the returned <code>nextToken</code>\n         value. This value can be between 1 and 100. If this parameter is not used, then\n            <code>ListWorldTemplates</code> returns up to 100 results and a <code>nextToken</code>\n         value if applicable. </p>"}))
    ListWorldTemplatesRequest.type = Types::ListWorldTemplatesRequest
    ListWorldTemplatesResponse.add_member(:template_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateSummaries, location_name: 'templateSummaries', traits: {"smithy.api#documentation" => "<p>Summary information for templates.</p>"}))
    ListWorldTemplatesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the previous paginated request did not return all of the remaining results, the\n         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the\n         next set of results, call <code>ListWorldTemplates</code> again and assign that token to\n         the request object's <code>nextToken</code> parameter. If there are no remaining results,\n         the previous response object's NextToken parameter is set to null. </p>"}))
    ListWorldTemplatesResponse.type = Types::ListWorldTemplatesResponse
    ListWorldsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the previous paginated request did not return all of the remaining results, the\n         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the\n         next set of results, call <code>ListWorlds</code> again and assign that token to the\n         request object's <code>nextToken</code> parameter. If there are no remaining results, the\n         previous response object's NextToken parameter is set to null. </p>"}))
    ListWorldsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>When this parameter is used, <code>ListWorlds</code> only returns\n            <code>maxResults</code> results in a single page along with a <code>nextToken</code>\n         response element. The remaining results of the initial request can be seen by sending\n         another <code>ListWorlds</code> request with the returned <code>nextToken</code> value.\n         This value can be between 1 and 100. If this parameter is not used, then\n            <code>ListWorlds</code> returns up to 100 results and a <code>nextToken</code> value if\n         applicable. </p>"}))
    ListWorldsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>Optional filters to limit results. You can use <code>status</code>.</p>"}))
    ListWorldsRequest.type = Types::ListWorldsRequest
    ListWorldsResponse.add_member(:world_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: WorldSummaries, location_name: 'worldSummaries', traits: {"smithy.api#documentation" => "<p>Summary information for worlds.</p>"}))
    ListWorldsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the previous paginated request did not return all of the remaining results, the\n         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the\n         next set of results, call <code>ListWorlds</code> again and assign that token to the\n         request object's <code>nextToken</code> parameter. If there are no remaining results, the\n         previous response object's NextToken parameter is set to null. </p>"}))
    ListWorldsResponse.type = Types::ListWorldsResponse
    LoggingConfig.add_member(:record_all_ros_topics, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'recordAllRosTopics', traits: {"smithy.api#deprecated" => {"message" => "AWS RoboMaker is ending support for ROS software suite. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/software-support-policy.html."}, "smithy.api#documentation" => "<p>A boolean indicating whether to record all ROS topics.</p>\n         <important>\n            <p>This API is no longer supported and will throw an error if used.</p>\n         </important>"}))
    LoggingConfig.type = Types::LoggingConfig
    NetworkInterface.add_member(:network_interface_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'networkInterfaceId', traits: {"smithy.api#documentation" => "<p>The ID of the network interface.</p>"}))
    NetworkInterface.add_member(:private_ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'privateIpAddress', traits: {"smithy.api#documentation" => "<p>The IPv4 address of the network interface within the subnet.</p>"}))
    NetworkInterface.add_member(:public_ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'publicIpAddress', traits: {"smithy.api#documentation" => "<p>The IPv4 public address of the network interface.</p>"}))
    NetworkInterface.type = Types::NetworkInterface
    OutputLocation.add_member(:s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 's3Bucket', traits: {"smithy.api#documentation" => "<p>The S3 bucket for output.</p>"}))
    OutputLocation.add_member(:s3_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: 's3Prefix', traits: {"smithy.api#documentation" => "<p>The S3 folder in the <code>s3Bucket</code> where output files will be placed.</p>"}))
    OutputLocation.type = Types::OutputLocation
    PortForwardingConfig.add_member(:port_mappings, Smithy::Schema::Shapes::ShapeRef.new(shape: PortMappingList, location_name: 'portMappings', traits: {"smithy.api#documentation" => "<p>The port mappings for the configuration.</p>"}))
    PortForwardingConfig.type = Types::PortForwardingConfig
    PortMapping.add_member(:job_port, Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: 'jobPort', traits: {"smithy.api#documentation" => "<p>The port number on the simulation job instance to use as a remote connection point.\n         </p>", "smithy.api#required" => {}}))
    PortMapping.add_member(:application_port, Smithy::Schema::Shapes::ShapeRef.new(shape: NonSystemPort, location_name: 'applicationPort', traits: {"smithy.api#documentation" => "<p>The port number on the application.</p>", "smithy.api#required" => {}}))
    PortMapping.add_member(:enable_on_public_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'enableOnPublicIp', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A Boolean indicating whether to enable this port mapping on public IP.</p>"}))
    PortMapping.type = Types::PortMapping
    PortMappingList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PortMapping)
    ProgressDetail.add_member(:current_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: RobotDeploymentStep, location_name: 'currentProgress', traits: {"smithy.api#documentation" => "<p>The current progress status.</p>\n         <dl>\n            <dt>Validating</dt>\n            <dd>\n               <p>Validating the deployment.</p>\n            </dd>\n            <dt>DownloadingExtracting</dt>\n            <dd>\n               <p>Downloading and extracting the bundle on the robot.</p>\n            </dd>\n            <dt>ExecutingPreLaunch</dt>\n            <dd>\n               <p>Executing pre-launch script(s) if provided.</p>\n            </dd>\n            <dt>Launching</dt>\n            <dd>\n               <p>Launching the robot application.</p>\n            </dd>\n            <dt>ExecutingPostLaunch</dt>\n            <dd>\n               <p>Executing post-launch script(s) if provided.</p>\n            </dd>\n            <dt>Finished</dt>\n            <dd>\n               <p>Deployment is complete.</p>\n            </dd>\n         </dl>"}))
    ProgressDetail.add_member(:percent_done, Smithy::Schema::Shapes::ShapeRef.new(shape: PercentDone, location_name: 'percentDone', traits: {"smithy.api#documentation" => "<p>Precentage of the step that is done. This currently only applies to the\n            <code>Downloading/Extracting</code> step of the deployment. It is empty for other\n         steps.</p>"}))
    ProgressDetail.add_member(:estimated_time_remaining_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericInteger, location_name: 'estimatedTimeRemainingSeconds', traits: {"smithy.api#documentation" => "<p>Estimated amount of time in seconds remaining in the step. This currently only applies\n         to the <code>Downloading/Extracting</code> step of the deployment. It is empty for other\n         steps.</p>"}))
    ProgressDetail.add_member(:target_resource, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'targetResource', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the deployment job.</p>"}))
    ProgressDetail.type = Types::ProgressDetail
    RegisterRobotRequest.add_member(:fleet, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'fleet', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the fleet.</p>", "smithy.api#required" => {}}))
    RegisterRobotRequest.add_member(:robot, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'robot', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the robot.</p>", "smithy.api#required" => {}}))
    RegisterRobotRequest.type = Types::RegisterRobotRequest
    RegisterRobotResponse.add_member(:fleet, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'fleet', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the fleet that the robot will join.</p>"}))
    RegisterRobotResponse.add_member(:robot, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'robot', traits: {"smithy.api#documentation" => "<p>Information about the robot registration.</p>"}))
    RegisterRobotResponse.type = Types::RegisterRobotResponse
    RenderingEngine.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RenderingEngineType, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the rendering engine.</p>"}))
    RenderingEngine.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: RenderingEngineVersionType, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the rendering engine.</p>"}))
    RenderingEngine.type = Types::RenderingEngine
    RenderingEngineType.add_member(:ogre, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OGRE', traits: {"smithy.api#enumValue" => "OGRE"}))
    ResourceAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RestartSimulationJobRequest.add_member(:job, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'job', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the simulation job.</p>", "smithy.api#required" => {}}))
    RestartSimulationJobRequest.type = Types::RestartSimulationJobRequest
    RestartSimulationJobResponse.type = Types::RestartSimulationJobResponse
    Robot.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the robot.</p>"}))
    Robot.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the robot.</p>"}))
    Robot.add_member(:fleet_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'fleetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the fleet.</p>"}))
    Robot.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RobotStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the robot.</p>"}))
    Robot.add_member(:green_grass_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'greenGrassGroupId', traits: {"smithy.api#documentation" => "<p>The Greengrass group associated with the robot.</p>"}))
    Robot.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the robot was created.</p>"}))
    Robot.add_member(:architecture, Smithy::Schema::Shapes::ShapeRef.new(shape: Architecture, location_name: 'architecture', traits: {"smithy.api#documentation" => "<p>The architecture of the robot.</p>"}))
    Robot.add_member(:last_deployment_job, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'lastDeploymentJob', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the last deployment job.</p>"}))
    Robot.add_member(:last_deployment_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'lastDeploymentTime', traits: {"smithy.api#documentation" => "<p>The time of the last deployment.</p>"}))
    Robot.type = Types::Robot
    RobotApplicationConfig.add_member(:application, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'application', traits: {"smithy.api#documentation" => "<p>The application information for the robot application.</p>", "smithy.api#required" => {}}))
    RobotApplicationConfig.add_member(:application_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'applicationVersion', traits: {"smithy.api#documentation" => "<p>The version of the robot application.</p>"}))
    RobotApplicationConfig.add_member(:launch_config, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchConfig, location_name: 'launchConfig', traits: {"smithy.api#documentation" => "<p>The launch configuration for the robot application.</p>", "smithy.api#required" => {}}))
    RobotApplicationConfig.add_member(:upload_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: UploadConfigurations, location_name: 'uploadConfigurations', traits: {"smithy.api#documentation" => "<p>The upload configurations for the robot application.</p>"}))
    RobotApplicationConfig.add_member(:use_default_upload_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'useDefaultUploadConfigurations', traits: {"smithy.api#deprecated" => {"message" => "AWS RoboMaker is ending support for ROS software suite. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/software-support-policy.html."}, "smithy.api#documentation" => "<p>A Boolean indicating whether to use default upload configurations. By default,\n            <code>.ros</code> and <code>.gazebo</code> files are uploaded when the application\n         terminates and all ROS topics will be recorded.</p>\n         <p>If you set this value, you must specify an <code>outputLocation</code>.</p>\n         <important>\n            <p>This API is no longer supported and will throw an error if used.</p>\n         </important>"}))
    RobotApplicationConfig.add_member(:tools, Smithy::Schema::Shapes::ShapeRef.new(shape: Tools, location_name: 'tools', traits: {"smithy.api#documentation" => "<p>Information about tools configured for the robot application.</p>"}))
    RobotApplicationConfig.add_member(:use_default_tools, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'useDefaultTools', traits: {"smithy.api#deprecated" => {"message" => "AWS RoboMaker is ending support for ROS software suite. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/software-support-policy.html."}, "smithy.api#documentation" => "<p>A Boolean indicating whether to use default robot application tools. The default tools\n         are rviz, rqt, terminal and rosbag record. The default is <code>False</code>.</p>\n         <important>\n            <p>This API is no longer supported and will throw an error if used.</p>\n         </important>"}))
    RobotApplicationConfig.type = Types::RobotApplicationConfig
    RobotApplicationConfigs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RobotApplicationConfig)
    RobotApplicationNames.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Name)
    RobotApplicationSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RobotApplicationSummary)
    RobotApplicationSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the robot application.</p>"}))
    RobotApplicationSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the robot.</p>"}))
    RobotApplicationSummary.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the robot application.</p>"}))
    RobotApplicationSummary.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the robot application was last\n         updated.</p>"}))
    RobotApplicationSummary.add_member(:robot_software_suite, Smithy::Schema::Shapes::ShapeRef.new(shape: RobotSoftwareSuite, location_name: 'robotSoftwareSuite', traits: {"smithy.api#documentation" => "<p>Information about a robot software suite.</p>"}))
    RobotApplicationSummary.type = Types::RobotApplicationSummary
    RobotDeployment.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The robot deployment Amazon Resource Name (ARN).</p>"}))
    RobotDeployment.add_member(:deployment_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'deploymentStartTime', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the deployment was started.</p>"}))
    RobotDeployment.add_member(:deployment_finish_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'deploymentFinishTime', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the deployment finished.</p>"}))
    RobotDeployment.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RobotStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the robot deployment.</p>"}))
    RobotDeployment.add_member(:progress_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: ProgressDetail, location_name: 'progressDetail', traits: {"smithy.api#documentation" => "<p>Information about how the deployment is progressing.</p>"}))
    RobotDeployment.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>A short description of the reason why the robot deployment failed.</p>"}))
    RobotDeployment.add_member(:failure_code, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentJobErrorCode, location_name: 'failureCode', traits: {"smithy.api#documentation" => "<p>The robot deployment failure code.</p>"}))
    RobotDeployment.type = Types::RobotDeployment
    RobotDeploymentStep.add_member(:validating_step, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ValidatingStep', traits: {"smithy.api#enumValue" => "Validating"}))
    RobotDeploymentStep.add_member(:downloading_extracting_step, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DownloadingExtractingStep', traits: {"smithy.api#enumValue" => "DownloadingExtracting"}))
    RobotDeploymentStep.add_member(:executing_download_condition, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ExecutingDownloadCondition', traits: {"smithy.api#enumValue" => "ExecutingDownloadCondition"}))
    RobotDeploymentStep.add_member(:pre_launch_step, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PreLaunchStep', traits: {"smithy.api#enumValue" => "ExecutingPreLaunch"}))
    RobotDeploymentStep.add_member(:launching_step, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LaunchingStep', traits: {"smithy.api#enumValue" => "Launching"}))
    RobotDeploymentStep.add_member(:post_launch_step, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PostLaunchStep', traits: {"smithy.api#enumValue" => "ExecutingPostLaunch"}))
    RobotDeploymentStep.add_member(:finished_step, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FinishedStep', traits: {"smithy.api#enumValue" => "Finished"}))
    RobotDeploymentSummary.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RobotDeployment)
    RobotSoftwareSuite.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RobotSoftwareSuiteType, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the robot software suite. <code>General</code> is the only supported value.</p>"}))
    RobotSoftwareSuite.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: RobotSoftwareSuiteVersionType, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the robot software suite. Not applicable for General software suite.</p>"}))
    RobotSoftwareSuite.type = Types::RobotSoftwareSuite
    RobotSoftwareSuiteType.add_member(:ros, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROS', traits: {"smithy.api#enumValue" => "ROS"}))
    RobotSoftwareSuiteType.add_member(:ros2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROS2', traits: {"smithy.api#enumValue" => "ROS2"}))
    RobotSoftwareSuiteType.add_member(:general, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'General', traits: {"smithy.api#enumValue" => "General"}))
    RobotSoftwareSuiteVersionType.add_member(:kinetic, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Kinetic', traits: {"smithy.api#enumValue" => "Kinetic"}))
    RobotSoftwareSuiteVersionType.add_member(:melodic, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Melodic', traits: {"smithy.api#enumValue" => "Melodic"}))
    RobotSoftwareSuiteVersionType.add_member(:dashing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Dashing', traits: {"smithy.api#enumValue" => "Dashing"}))
    RobotSoftwareSuiteVersionType.add_member(:foxy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Foxy', traits: {"smithy.api#enumValue" => "Foxy"}))
    RobotStatus.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Available', traits: {"smithy.api#enumValue" => "Available"}))
    RobotStatus.add_member(:registered, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Registered', traits: {"smithy.api#enumValue" => "Registered"}))
    RobotStatus.add_member(:pending_new_deployment, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PendingNewDeployment', traits: {"smithy.api#enumValue" => "PendingNewDeployment"}))
    RobotStatus.add_member(:deploying, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Deploying', traits: {"smithy.api#enumValue" => "Deploying"}))
    RobotStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "Failed"}))
    RobotStatus.add_member(:in_sync, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InSync', traits: {"smithy.api#enumValue" => "InSync"}))
    RobotStatus.add_member(:no_response, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NoResponse', traits: {"smithy.api#enumValue" => "NoResponse"}))
    Robots.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Robot)
    S3Etags.member = Smithy::Schema::Shapes::ShapeRef.new(shape: S3Etag)
    S3KeyOutput.add_member(:s3_key, Smithy::Schema::Shapes::ShapeRef.new(shape: S3KeyOrPrefix, location_name: 's3Key', traits: {"smithy.api#documentation" => "<p>The S3 key.</p>"}))
    S3KeyOutput.add_member(:etag, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Etag, location_name: 'etag', traits: {"smithy.api#documentation" => "<p>The etag for the object.</p>"}))
    S3KeyOutput.type = Types::S3KeyOutput
    S3KeyOutputs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: S3KeyOutput)
    S3KeysOrPrefixes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: S3KeyOrPrefix)
    S3Object.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 'bucket', traits: {"smithy.api#documentation" => "<p>The bucket containing the object.</p>", "smithy.api#required" => {}}))
    S3Object.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The key of the object.</p>", "smithy.api#required" => {}}))
    S3Object.add_member(:etag, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Etag, location_name: 'etag', traits: {"smithy.api#documentation" => "<p>The etag of the object.</p>"}))
    S3Object.type = Types::S3Object
    SecurityGroups.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    ServiceUnavailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SimulationApplicationConfig.add_member(:application, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'application', traits: {"smithy.api#documentation" => "<p>The application information for the simulation application.</p>", "smithy.api#required" => {}}))
    SimulationApplicationConfig.add_member(:application_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'applicationVersion', traits: {"smithy.api#documentation" => "<p>The version of the simulation application.</p>"}))
    SimulationApplicationConfig.add_member(:launch_config, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchConfig, location_name: 'launchConfig', traits: {"smithy.api#documentation" => "<p>The launch configuration for the simulation application.</p>", "smithy.api#required" => {}}))
    SimulationApplicationConfig.add_member(:upload_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: UploadConfigurations, location_name: 'uploadConfigurations', traits: {"smithy.api#documentation" => "<p>Information about upload configurations for the simulation application.</p>"}))
    SimulationApplicationConfig.add_member(:world_configs, Smithy::Schema::Shapes::ShapeRef.new(shape: WorldConfigs, location_name: 'worldConfigs', traits: {"smithy.api#documentation" => "<p>A list of world configurations.</p>\n         <important>\n            <p>This API is no longer supported and will throw an error if used.</p>\n         </important>"}))
    SimulationApplicationConfig.add_member(:use_default_upload_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'useDefaultUploadConfigurations', traits: {"smithy.api#deprecated" => {"message" => "AWS RoboMaker is ending support for ROS software suite. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/software-support-policy.html."}, "smithy.api#documentation" => "<p>A Boolean indicating whether to use default upload configurations. By default,\n            <code>.ros</code> and <code>.gazebo</code> files are uploaded when the application\n         terminates and all ROS topics will be recorded.</p>\n         <p>If you set this value, you must specify an <code>outputLocation</code>.</p>\n         <important>\n            <p>This API is no longer supported and will throw an error if used.</p>\n         </important>"}))
    SimulationApplicationConfig.add_member(:tools, Smithy::Schema::Shapes::ShapeRef.new(shape: Tools, location_name: 'tools', traits: {"smithy.api#documentation" => "<p>Information about tools configured for the simulation application.</p>"}))
    SimulationApplicationConfig.add_member(:use_default_tools, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'useDefaultTools', traits: {"smithy.api#deprecated" => {"message" => "AWS RoboMaker is ending support for ROS software suite. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/software-support-policy.html."}, "smithy.api#documentation" => "<p>A Boolean indicating whether to use default simulation application tools. The default\n         tools are rviz, rqt, terminal and rosbag record. The default is <code>False</code>.</p>\n         <important>\n            <p>This API is no longer supported and will throw an error if used.</p>\n         </important>"}))
    SimulationApplicationConfig.type = Types::SimulationApplicationConfig
    SimulationApplicationConfigs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationApplicationConfig)
    SimulationApplicationNames.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Name)
    SimulationApplicationSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationApplicationSummary)
    SimulationApplicationSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the simulation application.</p>"}))
    SimulationApplicationSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the simulation application.</p>"}))
    SimulationApplicationSummary.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the simulation application.</p>"}))
    SimulationApplicationSummary.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the simulation application was last\n         updated.</p>"}))
    SimulationApplicationSummary.add_member(:robot_software_suite, Smithy::Schema::Shapes::ShapeRef.new(shape: RobotSoftwareSuite, location_name: 'robotSoftwareSuite', traits: {"smithy.api#documentation" => "<p>Information about a robot software suite.</p>"}))
    SimulationApplicationSummary.add_member(:simulation_software_suite, Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationSoftwareSuite, location_name: 'simulationSoftwareSuite', traits: {"smithy.api#documentation" => "<p>Information about a simulation software suite.</p>"}))
    SimulationApplicationSummary.type = Types::SimulationApplicationSummary
    SimulationJob.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the simulation job.</p>"}))
    SimulationJob.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the simulation job.</p>"}))
    SimulationJob.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Status of the simulation job.</p>"}))
    SimulationJob.add_member(:last_started_at, Smithy::Schema::Shapes::ShapeRef.new(shape: LastStartedAt, location_name: 'lastStartedAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the simulation job was last\n         started.</p>"}))
    SimulationJob.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the simulation job was last\n         updated.</p>"}))
    SimulationJob.add_member(:failure_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureBehavior, location_name: 'failureBehavior', traits: {"smithy.api#documentation" => "<p>The failure behavior the simulation job.</p>\n         <dl>\n            <dt>Continue</dt>\n            <dd>\n               <p>Leaves the host running for its maximum timeout duration after a\n                     <code>4XX</code> error code.</p>\n            </dd>\n            <dt>Fail</dt>\n            <dd>\n               <p>Stop the simulation job and terminate the instance.</p>\n            </dd>\n         </dl>"}))
    SimulationJob.add_member(:failure_code, Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobErrorCode, location_name: 'failureCode', traits: {"smithy.api#documentation" => "<p>The failure code of the simulation job if it failed.</p>"}))
    SimulationJob.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>The reason why the simulation job failed.</p>"}))
    SimulationJob.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken', traits: {"smithy.api#documentation" => "<p>A unique identifier for this <code>SimulationJob</code> request.</p>"}))
    SimulationJob.add_member(:output_location, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputLocation, location_name: 'outputLocation', traits: {"smithy.api#documentation" => "<p>Location for output files generated by the simulation job.</p>"}))
    SimulationJob.add_member(:logging_config, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfig, location_name: 'loggingConfig', traits: {"smithy.api#documentation" => "<p>The logging configuration.</p>"}))
    SimulationJob.add_member(:max_job_duration_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: JobDuration, location_name: 'maxJobDurationInSeconds', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum simulation job duration in seconds. The value must be 8 days (691,200\n         seconds) or less.</p>"}))
    SimulationJob.add_member(:simulation_time_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationTimeMillis, location_name: 'simulationTimeMillis', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The simulation job execution duration in milliseconds.</p>"}))
    SimulationJob.add_member(:iam_role, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRole, location_name: 'iamRole', traits: {"smithy.api#documentation" => "<p>The IAM role that allows the simulation instance to call the AWS APIs that are specified\n         in its associated policies on your behalf. This is how credentials are passed in to your\n         simulation job. </p>"}))
    SimulationJob.add_member(:robot_applications, Smithy::Schema::Shapes::ShapeRef.new(shape: RobotApplicationConfigs, location_name: 'robotApplications', traits: {"smithy.api#documentation" => "<p>A list of robot applications.</p>"}))
    SimulationJob.add_member(:simulation_applications, Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationApplicationConfigs, location_name: 'simulationApplications', traits: {"smithy.api#documentation" => "<p>A list of simulation applications.</p>"}))
    SimulationJob.add_member(:data_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSources, location_name: 'dataSources', traits: {"smithy.api#documentation" => "<p>The data sources for the simulation job.</p>"}))
    SimulationJob.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map that contains tag keys and tag values that are attached to the simulation\n         job.</p>"}))
    SimulationJob.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VPCConfigResponse, location_name: 'vpcConfig', traits: {"smithy.api#documentation" => "<p>VPC configuration information.</p>"}))
    SimulationJob.add_member(:network_interface, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterface, location_name: 'networkInterface', traits: {"smithy.api#documentation" => "<p>Information about a network interface.</p>"}))
    SimulationJob.add_member(:compute, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeResponse, location_name: 'compute', traits: {"smithy.api#documentation" => "<p>Compute information for the simulation job</p>"}))
    SimulationJob.type = Types::SimulationJob
    SimulationJobBatchErrorCode.add_member(:internal_service_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InternalServiceError', traits: {"smithy.api#enumValue" => "InternalServiceError"}))
    SimulationJobBatchStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Pending', traits: {"smithy.api#enumValue" => "Pending"}))
    SimulationJobBatchStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InProgress', traits: {"smithy.api#enumValue" => "InProgress"}))
    SimulationJobBatchStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "Failed"}))
    SimulationJobBatchStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Completed', traits: {"smithy.api#enumValue" => "Completed"}))
    SimulationJobBatchStatus.add_member(:canceled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Canceled', traits: {"smithy.api#enumValue" => "Canceled"}))
    SimulationJobBatchStatus.add_member(:canceling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Canceling', traits: {"smithy.api#enumValue" => "Canceling"}))
    SimulationJobBatchStatus.add_member(:completing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Completing', traits: {"smithy.api#enumValue" => "Completing"}))
    SimulationJobBatchStatus.add_member(:timing_out, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TimingOut', traits: {"smithy.api#enumValue" => "TimingOut"}))
    SimulationJobBatchStatus.add_member(:timed_out, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TimedOut', traits: {"smithy.api#enumValue" => "TimedOut"}))
    SimulationJobBatchSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobBatchSummary)
    SimulationJobBatchSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the batch.</p>"}))
    SimulationJobBatchSummary.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the simulation job batch was last updated.\n      </p>"}))
    SimulationJobBatchSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the simulation job batch was\n         created.</p>"}))
    SimulationJobBatchSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobBatchStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the simulation job batch.</p>\n         <dl>\n            <dt>Pending</dt>\n            <dd>\n               <p>The simulation job batch request is pending.</p>\n            </dd>\n            <dt>InProgress</dt>\n            <dd>\n               <p>The simulation job batch is in progress. </p>\n            </dd>\n            <dt>Failed</dt>\n            <dd>\n               <p>The simulation job batch failed. One or more simulation job requests could not\n                  be completed due to an internal failure (like <code>InternalServiceError</code>).\n                  See <code>failureCode</code> and <code>failureReason</code> for more\n                  information.</p>\n            </dd>\n            <dt>Completed</dt>\n            <dd>\n               <p>The simulation batch job completed. A batch is complete when (1) there are no\n                  pending simulation job requests in the batch and none of the failed simulation job\n                  requests are due to <code>InternalServiceError</code> and (2) when all created\n                  simulation jobs have reached a terminal state (for example, <code>Completed</code>\n                  or <code>Failed</code>). </p>\n            </dd>\n            <dt>Canceled</dt>\n            <dd>\n               <p>The simulation batch job was cancelled.</p>\n            </dd>\n            <dt>Canceling</dt>\n            <dd>\n               <p>The simulation batch job is being cancelled.</p>\n            </dd>\n            <dt>Completing</dt>\n            <dd>\n               <p>The simulation batch job is completing.</p>\n            </dd>\n            <dt>TimingOut</dt>\n            <dd>\n               <p>The simulation job batch is timing out.</p>\n               <p>If a batch timing out, and there are pending requests that were failing due to\n                  an internal failure (like <code>InternalServiceError</code>), the batch status\n                  will be <code>Failed</code>. If there are no such failing request, the batch\n                  status will be <code>TimedOut</code>. </p>\n            </dd>\n            <dt>TimedOut</dt>\n            <dd>\n               <p>The simulation batch job timed out.</p>\n            </dd>\n         </dl>"}))
    SimulationJobBatchSummary.add_member(:failed_request_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'failedRequestCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of failed simulation job requests.</p>"}))
    SimulationJobBatchSummary.add_member(:pending_request_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'pendingRequestCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of pending simulation job requests.</p>"}))
    SimulationJobBatchSummary.add_member(:created_request_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'createdRequestCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of created simulation job requests.</p>"}))
    SimulationJobBatchSummary.type = Types::SimulationJobBatchSummary
    SimulationJobErrorCode.add_member(:internal_service_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InternalServiceError', traits: {"smithy.api#enumValue" => "InternalServiceError"}))
    SimulationJobErrorCode.add_member(:robot_application_crash, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RobotApplicationCrash', traits: {"smithy.api#enumValue" => "RobotApplicationCrash"}))
    SimulationJobErrorCode.add_member(:simulation_application_crash, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SimulationApplicationCrash', traits: {"smithy.api#enumValue" => "SimulationApplicationCrash"}))
    SimulationJobErrorCode.add_member(:robot_application_health_check_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RobotApplicationHealthCheckFailure', traits: {"smithy.api#enumValue" => "RobotApplicationHealthCheckFailure"}))
    SimulationJobErrorCode.add_member(:simulation_application_health_check_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SimulationApplicationHealthCheckFailure', traits: {"smithy.api#enumValue" => "SimulationApplicationHealthCheckFailure"}))
    SimulationJobErrorCode.add_member(:bad_permissions_robot_application, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BadPermissionsRobotApplication', traits: {"smithy.api#enumValue" => "BadPermissionsRobotApplication"}))
    SimulationJobErrorCode.add_member(:bad_permissions_simulation_application, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BadPermissionsSimulationApplication', traits: {"smithy.api#enumValue" => "BadPermissionsSimulationApplication"}))
    SimulationJobErrorCode.add_member(:bad_permissions_s3_object, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BadPermissionsS3Object', traits: {"smithy.api#enumValue" => "BadPermissionsS3Object"}))
    SimulationJobErrorCode.add_member(:bad_permissions_s3_output, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BadPermissionsS3Output', traits: {"smithy.api#enumValue" => "BadPermissionsS3Output"}))
    SimulationJobErrorCode.add_member(:bad_permissions_cloudwatch_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BadPermissionsCloudwatchLogs', traits: {"smithy.api#enumValue" => "BadPermissionsCloudwatchLogs"}))
    SimulationJobErrorCode.add_member(:subnet_ip_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SubnetIpLimitExceeded', traits: {"smithy.api#enumValue" => "SubnetIpLimitExceeded"}))
    SimulationJobErrorCode.add_member(:eni_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENILimitExceeded', traits: {"smithy.api#enumValue" => "ENILimitExceeded"}))
    SimulationJobErrorCode.add_member(:bad_permissions_user_credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BadPermissionsUserCredentials', traits: {"smithy.api#enumValue" => "BadPermissionsUserCredentials"}))
    SimulationJobErrorCode.add_member(:invalid_bundle_robot_application, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InvalidBundleRobotApplication', traits: {"smithy.api#enumValue" => "InvalidBundleRobotApplication"}))
    SimulationJobErrorCode.add_member(:invalid_bundle_simulation_application, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InvalidBundleSimulationApplication', traits: {"smithy.api#enumValue" => "InvalidBundleSimulationApplication"}))
    SimulationJobErrorCode.add_member(:invalid_s3_resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InvalidS3Resource', traits: {"smithy.api#enumValue" => "InvalidS3Resource"}))
    SimulationJobErrorCode.add_member(:throttling_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ThrottlingError', traits: {"smithy.api#enumValue" => "ThrottlingError"}))
    SimulationJobErrorCode.add_member(:limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LimitExceeded', traits: {"smithy.api#enumValue" => "LimitExceeded"}))
    SimulationJobErrorCode.add_member(:mismatched_etag, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MismatchedEtag', traits: {"smithy.api#enumValue" => "MismatchedEtag"}))
    SimulationJobErrorCode.add_member(:robot_application_version_mismatched_etag, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RobotApplicationVersionMismatchedEtag', traits: {"smithy.api#enumValue" => "RobotApplicationVersionMismatchedEtag"}))
    SimulationJobErrorCode.add_member(:simulation_application_version_mismatched_etag, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SimulationApplicationVersionMismatchedEtag', traits: {"smithy.api#enumValue" => "SimulationApplicationVersionMismatchedEtag"}))
    SimulationJobErrorCode.add_member(:resource_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ResourceNotFound', traits: {"smithy.api#enumValue" => "ResourceNotFound"}))
    SimulationJobErrorCode.add_member(:request_throttled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RequestThrottled', traits: {"smithy.api#enumValue" => "RequestThrottled"}))
    SimulationJobErrorCode.add_member(:batch_timed_out, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BatchTimedOut', traits: {"smithy.api#enumValue" => "BatchTimedOut"}))
    SimulationJobErrorCode.add_member(:batch_canceled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BatchCanceled', traits: {"smithy.api#enumValue" => "BatchCanceled"}))
    SimulationJobErrorCode.add_member(:invalid_input, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InvalidInput', traits: {"smithy.api#enumValue" => "InvalidInput"}))
    SimulationJobErrorCode.add_member(:wrong_region_s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WrongRegionS3Bucket', traits: {"smithy.api#enumValue" => "WrongRegionS3Bucket"}))
    SimulationJobErrorCode.add_member(:wrong_region_s3_output, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WrongRegionS3Output', traits: {"smithy.api#enumValue" => "WrongRegionS3Output"}))
    SimulationJobErrorCode.add_member(:wrong_region_robot_application, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WrongRegionRobotApplication', traits: {"smithy.api#enumValue" => "WrongRegionRobotApplication"}))
    SimulationJobErrorCode.add_member(:wrong_region_simulation_application, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WrongRegionSimulationApplication', traits: {"smithy.api#enumValue" => "WrongRegionSimulationApplication"}))
    SimulationJobErrorCode.add_member(:upload_content_mismatch_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UploadContentMismatchError', traits: {"smithy.api#enumValue" => "UploadContentMismatchError"}))
    SimulationJobRequest.add_member(:output_location, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputLocation, location_name: 'outputLocation'))
    SimulationJobRequest.add_member(:logging_config, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfig, location_name: 'loggingConfig'))
    SimulationJobRequest.add_member(:max_job_duration_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: JobDuration, location_name: 'maxJobDurationInSeconds', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum simulation job duration in seconds. The value must be 8 days (691,200\n         seconds) or less.</p>", "smithy.api#required" => {}}))
    SimulationJobRequest.add_member(:iam_role, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRole, location_name: 'iamRole', traits: {"smithy.api#documentation" => "<p>The IAM role name that allows the simulation instance to call the AWS APIs that are\n         specified in its associated policies on your behalf. This is how credentials are passed in\n         to your simulation job. </p>"}))
    SimulationJobRequest.add_member(:failure_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureBehavior, location_name: 'failureBehavior', traits: {"smithy.api#documentation" => "<p>The failure behavior the simulation job.</p>\n         <dl>\n            <dt>Continue</dt>\n            <dd>\n               <p>Leaves the host running for its maximum timeout duration after a\n                     <code>4XX</code> error code.</p>\n            </dd>\n            <dt>Fail</dt>\n            <dd>\n               <p>Stop the simulation job and terminate the instance.</p>\n            </dd>\n         </dl>"}))
    SimulationJobRequest.add_member(:use_default_applications, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'useDefaultApplications', traits: {"smithy.api#documentation" => "<p>A Boolean indicating whether to use default applications in the simulation job. Default\n         applications include Gazebo, rqt, rviz and terminal access. </p>"}))
    SimulationJobRequest.add_member(:robot_applications, Smithy::Schema::Shapes::ShapeRef.new(shape: RobotApplicationConfigs, location_name: 'robotApplications', traits: {"smithy.api#documentation" => "<p>The robot applications to use in the simulation job.</p>"}))
    SimulationJobRequest.add_member(:simulation_applications, Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationApplicationConfigs, location_name: 'simulationApplications', traits: {"smithy.api#documentation" => "<p>The simulation applications to use in the simulation job.</p>"}))
    SimulationJobRequest.add_member(:data_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceConfigs, location_name: 'dataSources', traits: {"smithy.api#documentation" => "<p>Specify data sources to mount read-only files from S3 into your simulation. These files\n         are available under <code>/opt/robomaker/datasources/data_source_name</code>. </p>\n         <note>\n            <p>There is a limit of 100 files and a combined size of 25GB for all\n               <code>DataSourceConfig</code> objects. </p>\n         </note>"}))
    SimulationJobRequest.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VPCConfig, location_name: 'vpcConfig'))
    SimulationJobRequest.add_member(:compute, Smithy::Schema::Shapes::ShapeRef.new(shape: Compute, location_name: 'compute', traits: {"smithy.api#documentation" => "<p>Compute information for the simulation job</p>"}))
    SimulationJobRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map that contains tag keys and tag values that are attached to the simulation job\n         request.</p>"}))
    SimulationJobRequest.type = Types::SimulationJobRequest
    SimulationJobStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Pending', traits: {"smithy.api#enumValue" => "Pending"}))
    SimulationJobStatus.add_member(:preparing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Preparing', traits: {"smithy.api#enumValue" => "Preparing"}))
    SimulationJobStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Running', traits: {"smithy.api#enumValue" => "Running"}))
    SimulationJobStatus.add_member(:restarting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Restarting', traits: {"smithy.api#enumValue" => "Restarting"}))
    SimulationJobStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Completed', traits: {"smithy.api#enumValue" => "Completed"}))
    SimulationJobStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "Failed"}))
    SimulationJobStatus.add_member(:running_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RunningFailed', traits: {"smithy.api#enumValue" => "RunningFailed"}))
    SimulationJobStatus.add_member(:terminating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Terminating', traits: {"smithy.api#enumValue" => "Terminating"}))
    SimulationJobStatus.add_member(:terminated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Terminated', traits: {"smithy.api#enumValue" => "Terminated"}))
    SimulationJobStatus.add_member(:canceled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Canceled', traits: {"smithy.api#enumValue" => "Canceled"}))
    SimulationJobSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobSummary)
    SimulationJobSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the simulation job.</p>"}))
    SimulationJobSummary.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the simulation job was last\n         updated.</p>"}))
    SimulationJobSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the simulation job.</p>"}))
    SimulationJobSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the simulation job.</p>"}))
    SimulationJobSummary.add_member(:simulation_application_names, Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationApplicationNames, location_name: 'simulationApplicationNames', traits: {"smithy.api#documentation" => "<p>A list of simulation job simulation application names.</p>"}))
    SimulationJobSummary.add_member(:robot_application_names, Smithy::Schema::Shapes::ShapeRef.new(shape: RobotApplicationNames, location_name: 'robotApplicationNames', traits: {"smithy.api#documentation" => "<p>A list of simulation job robot application names.</p>"}))
    SimulationJobSummary.add_member(:data_source_names, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceNames, location_name: 'dataSourceNames', traits: {"smithy.api#documentation" => "<p>The names of the data sources.</p>"}))
    SimulationJobSummary.add_member(:compute_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeType, location_name: 'computeType', traits: {"smithy.api#documentation" => "<p>The compute type for the simulation job summary.</p>"}))
    SimulationJobSummary.type = Types::SimulationJobSummary
    SimulationJobs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJob)
    SimulationSoftwareSuite.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationSoftwareSuiteType, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the simulation software suite. <code>SimulationRuntime</code> is the only supported value.</p>"}))
    SimulationSoftwareSuite.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationSoftwareSuiteVersionType, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the simulation software suite. Not applicable for <code>SimulationRuntime</code>.</p>"}))
    SimulationSoftwareSuite.type = Types::SimulationSoftwareSuite
    SimulationSoftwareSuiteType.add_member(:gazebo, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Gazebo', traits: {"smithy.api#enumValue" => "Gazebo"}))
    SimulationSoftwareSuiteType.add_member(:rosbag_play, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RosbagPlay', traits: {"smithy.api#enumValue" => "RosbagPlay"}))
    SimulationSoftwareSuiteType.add_member(:simulation_runtime, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SimulationRuntime', traits: {"smithy.api#enumValue" => "SimulationRuntime"}))
    Source.add_member(:s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 's3Bucket', traits: {"smithy.api#documentation" => "<p>The s3 bucket name.</p>"}))
    Source.add_member(:s3_key, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: 's3Key', traits: {"smithy.api#documentation" => "<p>The s3 object key.</p>"}))
    Source.add_member(:etag, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Etag, location_name: 'etag', traits: {"smithy.api#documentation" => "<p>A hash of the object specified by <code>s3Bucket</code> and <code>s3Key</code>.</p>"}))
    Source.add_member(:architecture, Smithy::Schema::Shapes::ShapeRef.new(shape: Architecture, location_name: 'architecture', traits: {"smithy.api#documentation" => "<p>The taget processor architecture for the application.</p>"}))
    Source.type = Types::Source
    SourceConfig.add_member(:s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 's3Bucket', traits: {"smithy.api#documentation" => "<p>The Amazon S3 bucket name.</p>"}))
    SourceConfig.add_member(:s3_key, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: 's3Key', traits: {"smithy.api#documentation" => "<p>The s3 object key.</p>"}))
    SourceConfig.add_member(:architecture, Smithy::Schema::Shapes::ShapeRef.new(shape: Architecture, location_name: 'architecture', traits: {"smithy.api#documentation" => "<p>The target processor architecture for the application.</p>"}))
    SourceConfig.type = Types::SourceConfig
    SourceConfigs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SourceConfig)
    Sources.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Source)
    StartSimulationJobBatchRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the\n         request.</p>", "smithy.api#idempotencyToken" => {}}))
    StartSimulationJobBatchRequest.add_member(:batch_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPolicy, location_name: 'batchPolicy', traits: {"smithy.api#documentation" => "<p>The batch policy.</p>"}))
    StartSimulationJobBatchRequest.add_member(:create_simulation_job_requests, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSimulationJobRequests, location_name: 'createSimulationJobRequests', traits: {"smithy.api#documentation" => "<p>A list of simulation job requests to create in the batch.</p>", "smithy.api#required" => {}}))
    StartSimulationJobBatchRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map that contains tag keys and tag values that are attached to the deployment job\n         batch.</p>"}))
    StartSimulationJobBatchRequest.type = Types::StartSimulationJobBatchRequest
    StartSimulationJobBatchResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (arn) of the batch.</p>"}))
    StartSimulationJobBatchResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobBatchStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the simulation job batch.</p>\n         <dl>\n            <dt>Pending</dt>\n            <dd>\n               <p>The simulation job batch request is pending.</p>\n            </dd>\n            <dt>InProgress</dt>\n            <dd>\n               <p>The simulation job batch is in progress. </p>\n            </dd>\n            <dt>Failed</dt>\n            <dd>\n               <p>The simulation job batch failed. One or more simulation job requests could not\n                  be completed due to an internal failure (like <code>InternalServiceError</code>).\n                  See <code>failureCode</code> and <code>failureReason</code> for more\n                  information.</p>\n            </dd>\n            <dt>Completed</dt>\n            <dd>\n               <p>The simulation batch job completed. A batch is complete when (1) there are no\n                  pending simulation job requests in the batch and none of the failed simulation job\n                  requests are due to <code>InternalServiceError</code> and (2) when all created\n                  simulation jobs have reached a terminal state (for example, <code>Completed</code>\n                  or <code>Failed</code>). </p>\n            </dd>\n            <dt>Canceled</dt>\n            <dd>\n               <p>The simulation batch job was cancelled.</p>\n            </dd>\n            <dt>Canceling</dt>\n            <dd>\n               <p>The simulation batch job is being cancelled.</p>\n            </dd>\n            <dt>Completing</dt>\n            <dd>\n               <p>The simulation batch job is completing.</p>\n            </dd>\n            <dt>TimingOut</dt>\n            <dd>\n               <p>The simulation job batch is timing out.</p>\n               <p>If a batch timing out, and there are pending requests that were failing due to\n                  an internal failure (like <code>InternalServiceError</code>), the batch status\n                  will be <code>Failed</code>. If there are no such failing request, the batch\n                  status will be <code>TimedOut</code>. </p>\n            </dd>\n            <dt>TimedOut</dt>\n            <dd>\n               <p>The simulation batch job timed out.</p>\n            </dd>\n         </dl>"}))
    StartSimulationJobBatchResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the simulation job batch was\n         created.</p>"}))
    StartSimulationJobBatchResponse.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the\n         request.</p>"}))
    StartSimulationJobBatchResponse.add_member(:batch_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPolicy, location_name: 'batchPolicy', traits: {"smithy.api#documentation" => "<p>The batch policy.</p>"}))
    StartSimulationJobBatchResponse.add_member(:failure_code, Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobBatchErrorCode, location_name: 'failureCode', traits: {"smithy.api#documentation" => "<p>The failure code if the simulation job batch failed.</p>"}))
    StartSimulationJobBatchResponse.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>The reason the simulation job batch failed.</p>"}))
    StartSimulationJobBatchResponse.add_member(:failed_requests, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedCreateSimulationJobRequests, location_name: 'failedRequests', traits: {"smithy.api#documentation" => "<p>A list of failed simulation job requests. The request failed to be created into a\n         simulation job. Failed requests do not have a simulation job ID. </p>"}))
    StartSimulationJobBatchResponse.add_member(:pending_requests, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSimulationJobRequests, location_name: 'pendingRequests', traits: {"smithy.api#documentation" => "<p>A list of pending simulation job requests. These requests have not yet been created into\n         simulation jobs.</p>"}))
    StartSimulationJobBatchResponse.add_member(:created_requests, Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationJobSummaries, location_name: 'createdRequests', traits: {"smithy.api#documentation" => "<p>A list of created simulation job request summaries.</p>"}))
    StartSimulationJobBatchResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map that contains tag keys and tag values that are attached to the deployment job\n         batch.</p>"}))
    StartSimulationJobBatchResponse.type = Types::StartSimulationJobBatchResponse
    Subnets.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    SyncDeploymentJobRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the\n         request.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    SyncDeploymentJobRequest.add_member(:fleet, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'fleet', traits: {"smithy.api#documentation" => "<p>The target fleet for the synchronization.</p>", "smithy.api#required" => {}}))
    SyncDeploymentJobRequest.type = Types::SyncDeploymentJobRequest
    SyncDeploymentJobResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the synchronization request.</p>"}))
    SyncDeploymentJobResponse.add_member(:fleet, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'fleet', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the fleet.</p>"}))
    SyncDeploymentJobResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the synchronization job.</p>"}))
    SyncDeploymentJobResponse.add_member(:deployment_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentConfig, location_name: 'deploymentConfig', traits: {"smithy.api#documentation" => "<p>Information about the deployment configuration.</p>"}))
    SyncDeploymentJobResponse.add_member(:deployment_application_configs, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentApplicationConfigs, location_name: 'deploymentApplicationConfigs', traits: {"smithy.api#documentation" => "<p>Information about the deployment application configurations.</p>"}))
    SyncDeploymentJobResponse.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>The failure reason if the job fails.</p>"}))
    SyncDeploymentJobResponse.add_member(:failure_code, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentJobErrorCode, location_name: 'failureCode', traits: {"smithy.api#documentation" => "<p>The failure code if the job fails:</p>\n         <dl>\n            <dt>InternalServiceError</dt>\n            <dd>\n               <p>Internal service error.</p>\n            </dd>\n            <dt>RobotApplicationCrash</dt>\n            <dd>\n               <p>Robot application exited abnormally.</p>\n            </dd>\n            <dt>SimulationApplicationCrash</dt>\n            <dd>\n               <p> Simulation application exited abnormally.</p>\n            </dd>\n            <dt>BadPermissionsRobotApplication</dt>\n            <dd>\n               <p>Robot application bundle could not be downloaded.</p>\n            </dd>\n            <dt>BadPermissionsSimulationApplication</dt>\n            <dd>\n               <p>Simulation application bundle could not be downloaded.</p>\n            </dd>\n            <dt>BadPermissionsS3Output</dt>\n            <dd>\n               <p>Unable to publish outputs to customer-provided S3 bucket.</p>\n            </dd>\n            <dt>BadPermissionsCloudwatchLogs</dt>\n            <dd>\n               <p>Unable to publish logs to customer-provided CloudWatch Logs resource.</p>\n            </dd>\n            <dt>SubnetIpLimitExceeded</dt>\n            <dd>\n               <p>Subnet IP limit exceeded.</p>\n            </dd>\n            <dt>ENILimitExceeded</dt>\n            <dd>\n               <p>ENI limit exceeded.</p>\n            </dd>\n            <dt>BadPermissionsUserCredentials</dt>\n            <dd>\n               <p>Unable to use the Role provided.</p>\n            </dd>\n            <dt>InvalidBundleRobotApplication</dt>\n            <dd>\n               <p>Robot bundle cannot be extracted (invalid format, bundling error, or other\n                  issue).</p>\n            </dd>\n            <dt>InvalidBundleSimulationApplication</dt>\n            <dd>\n               <p>Simulation bundle cannot be extracted (invalid format, bundling error, or other\n                  issue).</p>\n            </dd>\n            <dt>RobotApplicationVersionMismatchedEtag</dt>\n            <dd>\n               <p>Etag for RobotApplication does not match value during version creation.</p>\n            </dd>\n            <dt>SimulationApplicationVersionMismatchedEtag</dt>\n            <dd>\n               <p>Etag for SimulationApplication does not match value during version\n                  creation.</p>\n            </dd>\n         </dl>"}))
    SyncDeploymentJobResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the fleet was created.</p>"}))
    SyncDeploymentJobResponse.type = Types::SyncDeploymentJobResponse
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the AWS RoboMaker resource you are tagging.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map that contains tag keys and tag values that are attached to the resource.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TemplateLocation.add_member(:s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 's3Bucket', traits: {"smithy.api#documentation" => "<p>The Amazon S3 bucket name.</p>", "smithy.api#required" => {}}))
    TemplateLocation.add_member(:s3_key, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: 's3Key', traits: {"smithy.api#documentation" => "<p>The list of S3 keys identifying the data source files.</p>", "smithy.api#required" => {}}))
    TemplateLocation.type = Types::TemplateLocation
    TemplateSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateSummary)
    TemplateSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the template.</p>"}))
    TemplateSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the template was created.</p>"}))
    TemplateSummary.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the template was last updated.</p>"}))
    TemplateSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the template.</p>"}))
    TemplateSummary.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the template that you're using.</p>"}))
    TemplateSummary.type = Types::TemplateSummary
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ThrottlingException.type = Types::ThrottlingException
    Tool.add_member(:stream_ui, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'streamUI', traits: {"smithy.api#documentation" => "<p>Boolean indicating whether a streaming session will be configured for the tool. If\n            <code>True</code>, AWS RoboMaker will configure a connection so you can interact with\n         the tool as it is running in the simulation. It must have a graphical user interface. The\n         default is <code>False</code>. </p>"}))
    Tool.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the tool.</p>", "smithy.api#required" => {}}))
    Tool.add_member(:command, Smithy::Schema::Shapes::ShapeRef.new(shape: UnrestrictedCommand, location_name: 'command', traits: {"smithy.api#documentation" => "<p>Command-line arguments for the tool. It must include the tool executable name.</p>", "smithy.api#required" => {}}))
    Tool.add_member(:stream_output_to_cloud_watch, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'streamOutputToCloudWatch', traits: {"smithy.api#documentation" => "<p>Boolean indicating whether logs will be recorded in CloudWatch for the tool. The default\n         is <code>False</code>. </p>"}))
    Tool.add_member(:exit_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: ExitBehavior, location_name: 'exitBehavior', traits: {"smithy.api#documentation" => "<p>Exit behavior determines what happens when your tool quits running. <code>RESTART</code>\n         will cause your tool to be restarted. <code>FAIL</code> will cause your job to exit. The\n         default is <code>RESTART</code>. </p>"}))
    Tool.type = Types::Tool
    Tools.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tool)
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the AWS RoboMaker resource you are removing\n         tags.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>A map that contains tag keys and tag values that will be unattached from the\n         resource.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateRobotApplicationRequest.add_member(:application, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'application', traits: {"smithy.api#documentation" => "<p>The application information for the robot application.</p>", "smithy.api#required" => {}}))
    UpdateRobotApplicationRequest.add_member(:sources, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceConfigs, location_name: 'sources', traits: {"smithy.api#documentation" => "<p>The sources of the robot application.</p>"}))
    UpdateRobotApplicationRequest.add_member(:robot_software_suite, Smithy::Schema::Shapes::ShapeRef.new(shape: RobotSoftwareSuite, location_name: 'robotSoftwareSuite', traits: {"smithy.api#documentation" => "<p>The robot software suite used by the robot application.</p>", "smithy.api#required" => {}}))
    UpdateRobotApplicationRequest.add_member(:current_revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionId, location_name: 'currentRevisionId', traits: {"smithy.api#documentation" => "<p>The revision id for the robot application.</p>"}))
    UpdateRobotApplicationRequest.add_member(:environment, Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment', traits: {"smithy.api#documentation" => "<p>The object that contains the Docker image URI for your robot application.</p>"}))
    UpdateRobotApplicationRequest.type = Types::UpdateRobotApplicationRequest
    UpdateRobotApplicationResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the updated robot application.</p>"}))
    UpdateRobotApplicationResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the robot application.</p>"}))
    UpdateRobotApplicationResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the robot application.</p>"}))
    UpdateRobotApplicationResponse.add_member(:sources, Smithy::Schema::Shapes::ShapeRef.new(shape: Sources, location_name: 'sources', traits: {"smithy.api#documentation" => "<p>The sources of the robot application.</p>"}))
    UpdateRobotApplicationResponse.add_member(:robot_software_suite, Smithy::Schema::Shapes::ShapeRef.new(shape: RobotSoftwareSuite, location_name: 'robotSoftwareSuite', traits: {"smithy.api#documentation" => "<p>The robot software suite used by the robot application.</p>"}))
    UpdateRobotApplicationResponse.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the robot application was last\n         updated.</p>"}))
    UpdateRobotApplicationResponse.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionId, location_name: 'revisionId', traits: {"smithy.api#documentation" => "<p>The revision id of the robot application.</p>"}))
    UpdateRobotApplicationResponse.add_member(:environment, Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment', traits: {"smithy.api#documentation" => "<p>The object that contains the Docker image URI for your robot application.</p>"}))
    UpdateRobotApplicationResponse.type = Types::UpdateRobotApplicationResponse
    UpdateSimulationApplicationRequest.add_member(:application, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'application', traits: {"smithy.api#documentation" => "<p>The application information for the simulation application.</p>", "smithy.api#required" => {}}))
    UpdateSimulationApplicationRequest.add_member(:sources, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceConfigs, location_name: 'sources', traits: {"smithy.api#documentation" => "<p>The sources of the simulation application.</p>"}))
    UpdateSimulationApplicationRequest.add_member(:simulation_software_suite, Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationSoftwareSuite, location_name: 'simulationSoftwareSuite', traits: {"smithy.api#documentation" => "<p>The simulation software suite used by the simulation application.</p>", "smithy.api#required" => {}}))
    UpdateSimulationApplicationRequest.add_member(:robot_software_suite, Smithy::Schema::Shapes::ShapeRef.new(shape: RobotSoftwareSuite, location_name: 'robotSoftwareSuite', traits: {"smithy.api#documentation" => "<p>Information about the robot software suite.</p>", "smithy.api#required" => {}}))
    UpdateSimulationApplicationRequest.add_member(:rendering_engine, Smithy::Schema::Shapes::ShapeRef.new(shape: RenderingEngine, location_name: 'renderingEngine', traits: {"smithy.api#documentation" => "<p>The rendering engine for the simulation application.</p>"}))
    UpdateSimulationApplicationRequest.add_member(:current_revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionId, location_name: 'currentRevisionId', traits: {"smithy.api#documentation" => "<p>The revision id for the robot application.</p>"}))
    UpdateSimulationApplicationRequest.add_member(:environment, Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment', traits: {"smithy.api#documentation" => "<p>The object that contains the Docker image URI for your simulation application.</p>"}))
    UpdateSimulationApplicationRequest.type = Types::UpdateSimulationApplicationRequest
    UpdateSimulationApplicationResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the updated simulation application.</p>"}))
    UpdateSimulationApplicationResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the simulation application.</p>"}))
    UpdateSimulationApplicationResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the robot application.</p>"}))
    UpdateSimulationApplicationResponse.add_member(:sources, Smithy::Schema::Shapes::ShapeRef.new(shape: Sources, location_name: 'sources', traits: {"smithy.api#documentation" => "<p>The sources of the simulation application.</p>"}))
    UpdateSimulationApplicationResponse.add_member(:simulation_software_suite, Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationSoftwareSuite, location_name: 'simulationSoftwareSuite', traits: {"smithy.api#documentation" => "<p>The simulation software suite used by the simulation application.</p>"}))
    UpdateSimulationApplicationResponse.add_member(:robot_software_suite, Smithy::Schema::Shapes::ShapeRef.new(shape: RobotSoftwareSuite, location_name: 'robotSoftwareSuite', traits: {"smithy.api#documentation" => "<p>Information about the robot software suite.</p>"}))
    UpdateSimulationApplicationResponse.add_member(:rendering_engine, Smithy::Schema::Shapes::ShapeRef.new(shape: RenderingEngine, location_name: 'renderingEngine', traits: {"smithy.api#documentation" => "<p>The rendering engine for the simulation application.</p>"}))
    UpdateSimulationApplicationResponse.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the simulation application was last\n         updated.</p>"}))
    UpdateSimulationApplicationResponse.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionId, location_name: 'revisionId', traits: {"smithy.api#documentation" => "<p>The revision id of the simulation application.</p>"}))
    UpdateSimulationApplicationResponse.add_member(:environment, Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment', traits: {"smithy.api#documentation" => "<p>The object that contains the Docker image URI used for your simulation\n         application.</p>"}))
    UpdateSimulationApplicationResponse.type = Types::UpdateSimulationApplicationResponse
    UpdateWorldTemplateRequest.add_member(:template, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'template', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (arn) of the world template to update.</p>", "smithy.api#required" => {}}))
    UpdateWorldTemplateRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the template.</p>"}))
    UpdateWorldTemplateRequest.add_member(:template_body, Smithy::Schema::Shapes::ShapeRef.new(shape: Json, location_name: 'templateBody', traits: {"smithy.api#documentation" => "<p>The world template body.</p>"}))
    UpdateWorldTemplateRequest.add_member(:template_location, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateLocation, location_name: 'templateLocation', traits: {"smithy.api#documentation" => "<p>The location of the world template.</p>"}))
    UpdateWorldTemplateRequest.type = Types::UpdateWorldTemplateRequest
    UpdateWorldTemplateResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (arn) of the world template.</p>"}))
    UpdateWorldTemplateResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the world template.</p>"}))
    UpdateWorldTemplateResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the world template was created.</p>"}))
    UpdateWorldTemplateResponse.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the world template was last\n         updated.</p>"}))
    UpdateWorldTemplateResponse.type = Types::UpdateWorldTemplateResponse
    UploadBehavior.add_member(:upload_on_terminate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPLOAD_ON_TERMINATE', traits: {"smithy.api#enumValue" => "UPLOAD_ON_TERMINATE"}))
    UploadBehavior.add_member(:upload_rolling_auto_remove, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPLOAD_ROLLING_AUTO_REMOVE', traits: {"smithy.api#enumValue" => "UPLOAD_ROLLING_AUTO_REMOVE"}))
    UploadConfiguration.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A prefix that specifies where files will be uploaded in Amazon S3. It is appended to the\n         simulation output location to determine the final path. </p>\n         <p> For example, if your simulation output location is <code>s3://amzn-s3-demo-bucket</code> and your\n         upload configuration name is <code>robot-test</code>, your files will be uploaded to\n            <code>s3://amzn-s3-demo-bucket/<simid>/<runid>/robot-test</code>. </p>", "smithy.api#required" => {}}))
    UploadConfiguration.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'path', traits: {"smithy.api#documentation" => "<p> Specifies the path of the file(s) to upload. Standard Unix glob matching rules are\n         accepted, with the addition of <code>**</code> as a <i>super asterisk</i>.\n         For example, specifying <code>/var/log/**.log</code> causes all .log files in the\n            <code>/var/log</code> directory tree to be collected. For more examples, see <a href=\"https://github.com/gobwas/glob\">Glob Library</a>. </p>", "smithy.api#required" => {}}))
    UploadConfiguration.add_member(:upload_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: UploadBehavior, location_name: 'uploadBehavior', traits: {"smithy.api#documentation" => "<p>Specifies when to upload the files:</p>\n         <dl>\n            <dt>UPLOAD_ON_TERMINATE</dt>\n            <dd>\n               <p>Matching files are uploaded once the simulation enters the\n                     <code>TERMINATING</code> state. Matching files are not uploaded until all of\n                  your code (including tools) have stopped. </p>\n               <p>If there is a problem uploading a file, the upload is retried. If problems\n                  persist, no further upload attempts will be made.</p>\n            </dd>\n            <dt>UPLOAD_ROLLING_AUTO_REMOVE</dt>\n            <dd>\n               <p>Matching files are uploaded as they are created. They are deleted after they\n                  are uploaded. The specified path is checked every 5 seconds. A final check is made\n                  when all of your code (including tools) have stopped. </p>\n            </dd>\n         </dl>", "smithy.api#required" => {}}))
    UploadConfiguration.type = Types::UploadConfiguration
    UploadConfigurations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UploadConfiguration)
    VPCConfig.add_member(:subnets, Smithy::Schema::Shapes::ShapeRef.new(shape: Subnets, location_name: 'subnets', traits: {"smithy.api#documentation" => "<p>A list of one or more subnet IDs in your VPC.</p>", "smithy.api#required" => {}}))
    VPCConfig.add_member(:security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroups, location_name: 'securityGroups', traits: {"smithy.api#documentation" => "<p>A list of one or more security groups IDs in your VPC.</p>"}))
    VPCConfig.add_member(:assign_public_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'assignPublicIp', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A boolean indicating whether to assign a public IP address.</p>"}))
    VPCConfig.type = Types::VPCConfig
    VPCConfigResponse.add_member(:subnets, Smithy::Schema::Shapes::ShapeRef.new(shape: Subnets, location_name: 'subnets', traits: {"smithy.api#documentation" => "<p>A list of subnet IDs associated with the simulation job.</p>"}))
    VPCConfigResponse.add_member(:security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroups, location_name: 'securityGroups', traits: {"smithy.api#documentation" => "<p>A list of security group IDs associated with the simulation job.</p>"}))
    VPCConfigResponse.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'vpcId', traits: {"smithy.api#documentation" => "<p>The VPC ID associated with your simulation job.</p>"}))
    VPCConfigResponse.add_member(:assign_public_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'assignPublicIp', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A boolean indicating if a public IP was assigned.</p>"}))
    VPCConfigResponse.type = Types::VPCConfigResponse
    WorldConfig.add_member(:world, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'world', traits: {"smithy.api#documentation" => "<p>The world generated by Simulation WorldForge.</p>"}))
    WorldConfig.type = Types::WorldConfig
    WorldConfigs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorldConfig)
    WorldCount.add_member(:floorplan_count, Smithy::Schema::Shapes::ShapeRef.new(shape: FloorplanCount, location_name: 'floorplanCount', traits: {"smithy.api#documentation" => "<p>The number of unique floorplans.</p>"}))
    WorldCount.add_member(:interior_count_per_floorplan, Smithy::Schema::Shapes::ShapeRef.new(shape: InteriorCountPerFloorplan, location_name: 'interiorCountPerFloorplan', traits: {"smithy.api#documentation" => "<p>The number of unique interiors per floorplan.</p>"}))
    WorldCount.type = Types::WorldCount
    WorldExportJobErrorCode.add_member(:internal_service_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InternalServiceError', traits: {"smithy.api#enumValue" => "InternalServiceError"}))
    WorldExportJobErrorCode.add_member(:limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LimitExceeded', traits: {"smithy.api#enumValue" => "LimitExceeded"}))
    WorldExportJobErrorCode.add_member(:resource_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ResourceNotFound', traits: {"smithy.api#enumValue" => "ResourceNotFound"}))
    WorldExportJobErrorCode.add_member(:request_throttled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RequestThrottled', traits: {"smithy.api#enumValue" => "RequestThrottled"}))
    WorldExportJobErrorCode.add_member(:invalid_input, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InvalidInput', traits: {"smithy.api#enumValue" => "InvalidInput"}))
    WorldExportJobErrorCode.add_member(:access_denied, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AccessDenied', traits: {"smithy.api#enumValue" => "AccessDenied"}))
    WorldExportJobStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Pending', traits: {"smithy.api#enumValue" => "Pending"}))
    WorldExportJobStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Running', traits: {"smithy.api#enumValue" => "Running"}))
    WorldExportJobStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Completed', traits: {"smithy.api#enumValue" => "Completed"}))
    WorldExportJobStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "Failed"}))
    WorldExportJobStatus.add_member(:canceling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Canceling', traits: {"smithy.api#enumValue" => "Canceling"}))
    WorldExportJobStatus.add_member(:canceled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Canceled', traits: {"smithy.api#enumValue" => "Canceled"}))
    WorldExportJobSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorldExportJobSummary)
    WorldExportJobSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the world export job.</p>"}))
    WorldExportJobSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: WorldExportJobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the world export job.</p>\n         <dl>\n            <dt>Pending</dt>\n            <dd>\n               <p>The world export job request is pending.</p>\n            </dd>\n            <dt>Running</dt>\n            <dd>\n               <p>The world export job is running. </p>\n            </dd>\n            <dt>Completed</dt>\n            <dd>\n               <p>The world export job completed. </p>\n            </dd>\n            <dt>Failed</dt>\n            <dd>\n               <p>The world export job failed. See <code>failureCode</code> for more information.\n               </p>\n            </dd>\n            <dt>Canceled</dt>\n            <dd>\n               <p>The world export job was cancelled.</p>\n            </dd>\n            <dt>Canceling</dt>\n            <dd>\n               <p>The world export job is being cancelled.</p>\n            </dd>\n         </dl>"}))
    WorldExportJobSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the world export job was created.</p>"}))
    WorldExportJobSummary.add_member(:worlds, Smithy::Schema::Shapes::ShapeRef.new(shape: Arns, location_name: 'worlds', traits: {"smithy.api#documentation" => "<p>A list of worlds.</p>"}))
    WorldExportJobSummary.add_member(:output_location, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputLocation, location_name: 'outputLocation'))
    WorldExportJobSummary.type = Types::WorldExportJobSummary
    WorldFailure.add_member(:failure_code, Smithy::Schema::Shapes::ShapeRef.new(shape: WorldGenerationJobErrorCode, location_name: 'failureCode', traits: {"smithy.api#documentation" => "<p>The failure code of the world export job if it failed:</p>\n         <dl>\n            <dt>InternalServiceError</dt>\n            <dd>\n               <p>Internal service error.</p>\n            </dd>\n            <dt>LimitExceeded</dt>\n            <dd>\n               <p>The requested resource exceeds the maximum number allowed, or the number of\n                  concurrent stream requests exceeds the maximum number allowed. </p>\n            </dd>\n            <dt>ResourceNotFound</dt>\n            <dd>\n               <p>The specified resource could not be found. </p>\n            </dd>\n            <dt>RequestThrottled</dt>\n            <dd>\n               <p>The request was throttled.</p>\n            </dd>\n            <dt>InvalidInput</dt>\n            <dd>\n               <p>An input parameter in the request is not valid.</p>\n            </dd>\n         </dl>"}))
    WorldFailure.add_member(:sample_failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'sampleFailureReason', traits: {"smithy.api#documentation" => "<p>The sample reason why the world failed. World errors are aggregated. A sample is used as\n         the <code>sampleFailureReason</code>. </p>"}))
    WorldFailure.add_member(:failure_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'failureCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of failed worlds.</p>"}))
    WorldFailure.type = Types::WorldFailure
    WorldFailures.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorldFailure)
    WorldGenerationJobErrorCode.add_member(:internal_service_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InternalServiceError', traits: {"smithy.api#enumValue" => "InternalServiceError"}))
    WorldGenerationJobErrorCode.add_member(:limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LimitExceeded', traits: {"smithy.api#enumValue" => "LimitExceeded"}))
    WorldGenerationJobErrorCode.add_member(:resource_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ResourceNotFound', traits: {"smithy.api#enumValue" => "ResourceNotFound"}))
    WorldGenerationJobErrorCode.add_member(:request_throttled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RequestThrottled', traits: {"smithy.api#enumValue" => "RequestThrottled"}))
    WorldGenerationJobErrorCode.add_member(:invalid_input, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InvalidInput', traits: {"smithy.api#enumValue" => "InvalidInput"}))
    WorldGenerationJobErrorCode.add_member(:all_world_generation_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AllWorldGenerationFailed', traits: {"smithy.api#enumValue" => "AllWorldGenerationFailed"}))
    WorldGenerationJobStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Pending', traits: {"smithy.api#enumValue" => "Pending"}))
    WorldGenerationJobStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Running', traits: {"smithy.api#enumValue" => "Running"}))
    WorldGenerationJobStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Completed', traits: {"smithy.api#enumValue" => "Completed"}))
    WorldGenerationJobStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "Failed"}))
    WorldGenerationJobStatus.add_member(:partial_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PartialFailed', traits: {"smithy.api#enumValue" => "PartialFailed"}))
    WorldGenerationJobStatus.add_member(:canceling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Canceling', traits: {"smithy.api#enumValue" => "Canceling"}))
    WorldGenerationJobStatus.add_member(:canceled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Canceled', traits: {"smithy.api#enumValue" => "Canceled"}))
    WorldGenerationJobSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorldGenerationJobSummary)
    WorldGenerationJobSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the world generator job.</p>"}))
    WorldGenerationJobSummary.add_member(:template, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'template', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (arn) of the world template.</p>"}))
    WorldGenerationJobSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the world generator job was\n         created.</p>"}))
    WorldGenerationJobSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: WorldGenerationJobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the world generator job:</p>\n         <dl>\n            <dt>Pending</dt>\n            <dd>\n               <p>The world generator job request is pending.</p>\n            </dd>\n            <dt>Running</dt>\n            <dd>\n               <p>The world generator job is running. </p>\n            </dd>\n            <dt>Completed</dt>\n            <dd>\n               <p>The world generator job completed. </p>\n            </dd>\n            <dt>Failed</dt>\n            <dd>\n               <p>The world generator job failed. See <code>failureCode</code> for more\n                  information. </p>\n            </dd>\n            <dt>PartialFailed</dt>\n            <dd>\n               <p>Some worlds did not generate.</p>\n            </dd>\n            <dt>Canceled</dt>\n            <dd>\n               <p>The world generator job was cancelled.</p>\n            </dd>\n            <dt>Canceling</dt>\n            <dd>\n               <p>The world generator job is being cancelled.</p>\n            </dd>\n         </dl>"}))
    WorldGenerationJobSummary.add_member(:world_count, Smithy::Schema::Shapes::ShapeRef.new(shape: WorldCount, location_name: 'worldCount', traits: {"smithy.api#documentation" => "<p>Information about the world count.</p>"}))
    WorldGenerationJobSummary.add_member(:succeeded_world_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'succeededWorldCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of worlds that were generated.</p>"}))
    WorldGenerationJobSummary.add_member(:failed_world_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'failedWorldCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of worlds that failed.</p>"}))
    WorldGenerationJobSummary.type = Types::WorldGenerationJobSummary
    WorldSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorldSummary)
    WorldSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the world.</p>"}))
    WorldSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedAt, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds since the epoch, when the world was created.</p>"}))
    WorldSummary.add_member(:generation_job, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'generationJob', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (arn) of the world generation job.</p>"}))
    WorldSummary.add_member(:template, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'template', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (arn) of the world template.</p>"}))
    WorldSummary.type = Types::WorldSummary

    Robomaker = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.robomaker#robomaker"
      service.name = "Robomaker"
      service.version = "2018-06-29"
      service.traits = {"aws.api#service" => {"sdkId" => "RoboMaker", "arnNamespace" => "robomaker", "cloudFormationName" => "RoboMaker", "cloudTrailEventSource" => "robomaker.amazonaws.com", "endpointPrefix" => "robomaker"}, "aws.auth#sigv4" => {"name" => "robomaker"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS RoboMaker"}
      service.add_operation(:batch_delete_worlds, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#BatchDeleteWorlds"
        operation.name = "BatchDeleteWorlds"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteWorldsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteWorldsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/batchDeleteWorlds", "code" => 200}}
      end)
      service.add_operation(:batch_describe_simulation_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#BatchDescribeSimulationJob"
        operation.name = "BatchDescribeSimulationJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDescribeSimulationJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDescribeSimulationJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/batchDescribeSimulationJob", "code" => 200}}
      end)
      service.add_operation(:cancel_deployment_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#CancelDeploymentJob"
        operation.name = "CancelDeploymentJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelDeploymentJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelDeploymentJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}, "smithy.api#http" => {"method" => "POST", "uri" => "/cancelDeploymentJob", "code" => 200}}
      end)
      service.add_operation(:cancel_simulation_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#CancelSimulationJob"
        operation.name = "CancelSimulationJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelSimulationJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelSimulationJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/cancelSimulationJob", "code" => 200}}
      end)
      service.add_operation(:cancel_simulation_job_batch, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#CancelSimulationJobBatch"
        operation.name = "CancelSimulationJobBatch"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelSimulationJobBatchRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelSimulationJobBatchResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/cancelSimulationJobBatch", "code" => 200}}
      end)
      service.add_operation(:cancel_world_export_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#CancelWorldExportJob"
        operation.name = "CancelWorldExportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelWorldExportJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelWorldExportJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/cancelWorldExportJob", "code" => 200}}
      end)
      service.add_operation(:cancel_world_generation_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#CancelWorldGenerationJob"
        operation.name = "CancelWorldGenerationJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelWorldGenerationJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelWorldGenerationJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/cancelWorldGenerationJob", "code" => 200}}
      end)
      service.add_operation(:create_deployment_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#CreateDeploymentJob"
        operation.name = "CreateDeploymentJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDeploymentJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDeploymentJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentDeploymentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}, "smithy.api#http" => {"method" => "POST", "uri" => "/createDeploymentJob", "code" => 200}}
      end)
      service.add_operation(:create_fleet, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#CreateFleet"
        operation.name = "CreateFleet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFleetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFleetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}, "smithy.api#http" => {"method" => "POST", "uri" => "/createFleet", "code" => 200}}
      end)
      service.add_operation(:create_robot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#CreateRobot"
        operation.name = "CreateRobot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRobotRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRobotResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}, "smithy.api#http" => {"method" => "POST", "uri" => "/createRobot", "code" => 200}}
      end)
      service.add_operation(:create_robot_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#CreateRobotApplication"
        operation.name = "CreateRobotApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRobotApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRobotApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/createRobotApplication", "code" => 200}}
      end)
      service.add_operation(:create_robot_application_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#CreateRobotApplicationVersion"
        operation.name = "CreateRobotApplicationVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRobotApplicationVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRobotApplicationVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/createRobotApplicationVersion", "code" => 200}}
      end)
      service.add_operation(:create_simulation_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#CreateSimulationApplication"
        operation.name = "CreateSimulationApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSimulationApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSimulationApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/createSimulationApplication", "code" => 200}}
      end)
      service.add_operation(:create_simulation_application_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#CreateSimulationApplicationVersion"
        operation.name = "CreateSimulationApplicationVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSimulationApplicationVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSimulationApplicationVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/createSimulationApplicationVersion", "code" => 200}}
      end)
      service.add_operation(:create_simulation_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#CreateSimulationJob"
        operation.name = "CreateSimulationJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSimulationJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSimulationJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/createSimulationJob", "code" => 200}}
      end)
      service.add_operation(:create_world_export_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#CreateWorldExportJob"
        operation.name = "CreateWorldExportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorldExportJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorldExportJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/createWorldExportJob", "code" => 200}}
      end)
      service.add_operation(:create_world_generation_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#CreateWorldGenerationJob"
        operation.name = "CreateWorldGenerationJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorldGenerationJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorldGenerationJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/createWorldGenerationJob", "code" => 200}}
      end)
      service.add_operation(:create_world_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#CreateWorldTemplate"
        operation.name = "CreateWorldTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorldTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorldTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/createWorldTemplate", "code" => 200}}
      end)
      service.add_operation(:delete_fleet, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#DeleteFleet"
        operation.name = "DeleteFleet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFleetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFleetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}, "smithy.api#http" => {"method" => "POST", "uri" => "/deleteFleet", "code" => 200}}
      end)
      service.add_operation(:delete_robot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#DeleteRobot"
        operation.name = "DeleteRobot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRobotRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRobotResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}, "smithy.api#http" => {"method" => "POST", "uri" => "/deleteRobot", "code" => 200}}
      end)
      service.add_operation(:delete_robot_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#DeleteRobotApplication"
        operation.name = "DeleteRobotApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRobotApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRobotApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/deleteRobotApplication", "code" => 200}}
      end)
      service.add_operation(:delete_simulation_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#DeleteSimulationApplication"
        operation.name = "DeleteSimulationApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSimulationApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSimulationApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/deleteSimulationApplication", "code" => 200}}
      end)
      service.add_operation(:delete_world_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#DeleteWorldTemplate"
        operation.name = "DeleteWorldTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorldTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorldTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/deleteWorldTemplate", "code" => 200}}
      end)
      service.add_operation(:deregister_robot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#DeregisterRobot"
        operation.name = "DeregisterRobot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterRobotRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterRobotResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}, "smithy.api#http" => {"method" => "POST", "uri" => "/deregisterRobot", "code" => 200}}
      end)
      service.add_operation(:describe_deployment_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#DescribeDeploymentJob"
        operation.name = "DescribeDeploymentJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDeploymentJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDeploymentJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}, "smithy.api#http" => {"method" => "POST", "uri" => "/describeDeploymentJob", "code" => 200}}
      end)
      service.add_operation(:describe_fleet, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#DescribeFleet"
        operation.name = "DescribeFleet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFleetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFleetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}, "smithy.api#http" => {"method" => "POST", "uri" => "/describeFleet", "code" => 200}}
      end)
      service.add_operation(:describe_robot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#DescribeRobot"
        operation.name = "DescribeRobot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRobotRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRobotResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}, "smithy.api#http" => {"method" => "POST", "uri" => "/describeRobot", "code" => 200}}
      end)
      service.add_operation(:describe_robot_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#DescribeRobotApplication"
        operation.name = "DescribeRobotApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRobotApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRobotApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describeRobotApplication", "code" => 200}}
      end)
      service.add_operation(:describe_simulation_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#DescribeSimulationApplication"
        operation.name = "DescribeSimulationApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSimulationApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSimulationApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describeSimulationApplication", "code" => 200}}
      end)
      service.add_operation(:describe_simulation_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#DescribeSimulationJob"
        operation.name = "DescribeSimulationJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSimulationJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSimulationJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describeSimulationJob", "code" => 200}}
      end)
      service.add_operation(:describe_simulation_job_batch, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#DescribeSimulationJobBatch"
        operation.name = "DescribeSimulationJobBatch"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSimulationJobBatchRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSimulationJobBatchResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describeSimulationJobBatch", "code" => 200}}
      end)
      service.add_operation(:describe_world, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#DescribeWorld"
        operation.name = "DescribeWorld"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorldRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorldResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describeWorld", "code" => 200}}
      end)
      service.add_operation(:describe_world_export_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#DescribeWorldExportJob"
        operation.name = "DescribeWorldExportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorldExportJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorldExportJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describeWorldExportJob", "code" => 200}}
      end)
      service.add_operation(:describe_world_generation_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#DescribeWorldGenerationJob"
        operation.name = "DescribeWorldGenerationJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorldGenerationJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorldGenerationJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describeWorldGenerationJob", "code" => 200}}
      end)
      service.add_operation(:describe_world_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#DescribeWorldTemplate"
        operation.name = "DescribeWorldTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorldTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorldTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describeWorldTemplate", "code" => 200}}
      end)
      service.add_operation(:get_world_template_body, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#GetWorldTemplateBody"
        operation.name = "GetWorldTemplateBody"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorldTemplateBodyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorldTemplateBodyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/getWorldTemplateBody", "code" => 200}}
      end)
      service.add_operation(:list_deployment_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#ListDeploymentJobs"
        operation.name = "ListDeploymentJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeploymentJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeploymentJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}, "smithy.api#http" => {"method" => "POST", "uri" => "/listDeploymentJobs", "code" => 200}}
        operation[:paginator] = Paginators::ListDeploymentJobs.new
      end)
      service.add_operation(:list_fleets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#ListFleets"
        operation.name = "ListFleets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFleetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFleetsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}, "smithy.api#http" => {"method" => "POST", "uri" => "/listFleets", "code" => 200}}
        operation[:paginator] = Paginators::ListFleets.new
      end)
      service.add_operation(:list_robot_applications, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#ListRobotApplications"
        operation.name = "ListRobotApplications"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRobotApplicationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRobotApplicationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listRobotApplications", "code" => 200}}
        operation[:paginator] = Paginators::ListRobotApplications.new
      end)
      service.add_operation(:list_robots, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#ListRobots"
        operation.name = "ListRobots"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRobotsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRobotsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}, "smithy.api#http" => {"method" => "POST", "uri" => "/listRobots", "code" => 200}}
        operation[:paginator] = Paginators::ListRobots.new
      end)
      service.add_operation(:list_simulation_applications, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#ListSimulationApplications"
        operation.name = "ListSimulationApplications"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSimulationApplicationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSimulationApplicationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listSimulationApplications", "code" => 200}}
        operation[:paginator] = Paginators::ListSimulationApplications.new
      end)
      service.add_operation(:list_simulation_job_batches, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#ListSimulationJobBatches"
        operation.name = "ListSimulationJobBatches"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSimulationJobBatchesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSimulationJobBatchesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listSimulationJobBatches", "code" => 200}}
        operation[:paginator] = Paginators::ListSimulationJobBatches.new
      end)
      service.add_operation(:list_simulation_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#ListSimulationJobs"
        operation.name = "ListSimulationJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSimulationJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSimulationJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listSimulationJobs", "code" => 200}}
        operation[:paginator] = Paginators::ListSimulationJobs.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:list_world_export_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#ListWorldExportJobs"
        operation.name = "ListWorldExportJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorldExportJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorldExportJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listWorldExportJobs", "code" => 200}}
        operation[:paginator] = Paginators::ListWorldExportJobs.new
      end)
      service.add_operation(:list_world_generation_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#ListWorldGenerationJobs"
        operation.name = "ListWorldGenerationJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorldGenerationJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorldGenerationJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listWorldGenerationJobs", "code" => 200}}
        operation[:paginator] = Paginators::ListWorldGenerationJobs.new
      end)
      service.add_operation(:list_world_templates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#ListWorldTemplates"
        operation.name = "ListWorldTemplates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorldTemplatesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorldTemplatesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listWorldTemplates", "code" => 200}}
        operation[:paginator] = Paginators::ListWorldTemplates.new
      end)
      service.add_operation(:list_worlds, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#ListWorlds"
        operation.name = "ListWorlds"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorldsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorldsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listWorlds", "code" => 200}}
        operation[:paginator] = Paginators::ListWorlds.new
      end)
      service.add_operation(:register_robot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#RegisterRobot"
        operation.name = "RegisterRobot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterRobotRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterRobotResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}, "smithy.api#http" => {"method" => "POST", "uri" => "/registerRobot", "code" => 200}}
      end)
      service.add_operation(:restart_simulation_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#RestartSimulationJob"
        operation.name = "RestartSimulationJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RestartSimulationJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RestartSimulationJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/restartSimulationJob", "code" => 200}}
      end)
      service.add_operation(:start_simulation_job_batch, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#StartSimulationJobBatch"
        operation.name = "StartSimulationJobBatch"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartSimulationJobBatchRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartSimulationJobBatchResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/startSimulationJobBatch", "code" => 200}}
      end)
      service.add_operation(:sync_deployment_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#SyncDeploymentJob"
        operation.name = "SyncDeploymentJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SyncDeploymentJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SyncDeploymentJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentDeploymentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html."}, "smithy.api#http" => {"method" => "POST", "uri" => "/syncDeploymentJob", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_robot_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#UpdateRobotApplication"
        operation.name = "UpdateRobotApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRobotApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRobotApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/updateRobotApplication", "code" => 200}}
      end)
      service.add_operation(:update_simulation_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#UpdateSimulationApplication"
        operation.name = "UpdateSimulationApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSimulationApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSimulationApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/updateSimulationApplication", "code" => 200}}
      end)
      service.add_operation(:update_world_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.robomaker#UpdateWorldTemplate"
        operation.name = "UpdateWorldTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorldTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorldTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/updateWorldTemplate", "code" => 200}}
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
