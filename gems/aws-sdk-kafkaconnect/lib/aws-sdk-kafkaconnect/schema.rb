# frozen_string_literal: true

# This is generated code!

module Aws::KafkaConnect
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ApacheKafkaCluster = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#ApacheKafkaCluster', name: 'ApacheKafkaCluster')
    ApacheKafkaClusterDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#ApacheKafkaClusterDescription', name: 'ApacheKafkaClusterDescription')
    AutoScaling = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#AutoScaling', name: 'AutoScaling')
    AutoScalingDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#AutoScalingDescription', name: 'AutoScalingDescription')
    AutoScalingUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#AutoScalingUpdate', name: 'AutoScalingUpdate')
    BadRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#BadRequestException', name: 'BadRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Capacity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#Capacity', name: 'Capacity')
    CapacityDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#CapacityDescription', name: 'CapacityDescription')
    CapacityUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#CapacityUpdate', name: 'CapacityUpdate')
    CloudWatchLogsLogDelivery = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#CloudWatchLogsLogDelivery', name: 'CloudWatchLogsLogDelivery')
    CloudWatchLogsLogDeliveryDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#CloudWatchLogsLogDeliveryDescription', name: 'CloudWatchLogsLogDeliveryDescription')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectorConfiguration = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.kafkaconnect#ConnectorConfiguration', name: 'ConnectorConfiguration', traits: {"smithy.api#sensitive" => {}})
    ConnectorConfigurationUpdate = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.kafkaconnect#ConnectorConfigurationUpdate', name: 'ConnectorConfigurationUpdate', traits: {"smithy.api#sensitive" => {}})
    ConnectorOperationState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kafkaconnect#ConnectorOperationState', name: 'ConnectorOperationState', traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING"}, {"value" => "UPDATE_IN_PROGRESS", "name" => "UPDATE_IN_PROGRESS"}, {"value" => "UPDATE_COMPLETE", "name" => "UPDATE_COMPLETE"}, {"value" => "UPDATE_FAILED", "name" => "UPDATE_FAILED"}, {"value" => "ROLLBACK_IN_PROGRESS", "name" => "ROLLBACK_IN_PROGRESS"}, {"value" => "ROLLBACK_FAILED", "name" => "ROLLBACK_FAILED"}, {"value" => "ROLLBACK_COMPLETE", "name" => "ROLLBACK_COMPLETE"}]})
    ConnectorOperationStep = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#ConnectorOperationStep', name: 'ConnectorOperationStep')
    ConnectorOperationStepState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kafkaconnect#ConnectorOperationStepState', name: 'ConnectorOperationStepState', traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "COMPLETED", "name" => "COMPLETED"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "CANCELLED", "name" => "CANCELLED"}]})
    ConnectorOperationStepType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kafkaconnect#ConnectorOperationStepType', name: 'ConnectorOperationStepType', traits: {"smithy.api#enum" => [{"value" => "INITIALIZE_UPDATE", "name" => "INITIALIZE_UPDATE"}, {"value" => "FINALIZE_UPDATE", "name" => "FINALIZE_UPDATE"}, {"value" => "UPDATE_WORKER_SETTING", "name" => "UPDATE_WORKER_SETTING"}, {"value" => "UPDATE_CONNECTOR_CONFIGURATION", "name" => "UPDATE_CONNECTOR_CONFIGURATION"}, {"value" => "VALIDATE_UPDATE", "name" => "VALIDATE_UPDATE"}]})
    ConnectorOperationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#ConnectorOperationSummary', name: 'ConnectorOperationSummary')
    ConnectorOperationType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kafkaconnect#ConnectorOperationType', name: 'ConnectorOperationType', traits: {"smithy.api#enum" => [{"value" => "UPDATE_WORKER_SETTING", "name" => "UPDATE_WORKER_SETTING"}, {"value" => "UPDATE_CONNECTOR_CONFIGURATION", "name" => "UPDATE_CONNECTOR_CONFIGURATION"}, {"value" => "ISOLATE_CONNECTOR", "name" => "ISOLATE_CONNECTOR"}, {"value" => "RESTORE_CONNECTOR", "name" => "RESTORE_CONNECTOR"}]})
    ConnectorState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kafkaconnect#ConnectorState', name: 'ConnectorState', traits: {"smithy.api#enum" => [{"value" => "RUNNING", "name" => "RUNNING"}, {"value" => "CREATING", "name" => "CREATING"}, {"value" => "UPDATING", "name" => "UPDATING"}, {"value" => "DELETING", "name" => "DELETING"}, {"value" => "FAILED", "name" => "FAILED"}]})
    ConnectorSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#ConnectorSummary', name: 'ConnectorSummary')
    CreateConnectorOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#CreateConnectorOutput', name: 'CreateConnectorOutput')
    CreateConnectorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#CreateConnectorRequest', name: 'CreateConnectorRequest')
    CreateCustomPluginOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#CreateCustomPluginOutput', name: 'CreateCustomPluginOutput')
    CreateCustomPluginRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#CreateCustomPluginRequest', name: 'CreateCustomPluginRequest')
    CreateWorkerConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#CreateWorkerConfigurationOutput', name: 'CreateWorkerConfigurationOutput')
    CreateWorkerConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#CreateWorkerConfigurationRequest', name: 'CreateWorkerConfigurationRequest')
    CustomPlugin = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#CustomPlugin', name: 'CustomPlugin')
    CustomPluginContentType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kafkaconnect#CustomPluginContentType', name: 'CustomPluginContentType', traits: {"smithy.api#enum" => [{"value" => "JAR", "name" => "JAR"}, {"value" => "ZIP", "name" => "ZIP"}]})
    CustomPluginDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#CustomPluginDescription', name: 'CustomPluginDescription')
    CustomPluginFileDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#CustomPluginFileDescription', name: 'CustomPluginFileDescription')
    CustomPluginLocation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#CustomPluginLocation', name: 'CustomPluginLocation')
    CustomPluginLocationDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#CustomPluginLocationDescription', name: 'CustomPluginLocationDescription')
    CustomPluginRevisionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#CustomPluginRevisionSummary', name: 'CustomPluginRevisionSummary')
    CustomPluginState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kafkaconnect#CustomPluginState', name: 'CustomPluginState', traits: {"smithy.api#enum" => [{"value" => "CREATING", "name" => "CREATING"}, {"value" => "CREATE_FAILED", "name" => "CREATE_FAILED"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "UPDATING", "name" => "UPDATING"}, {"value" => "UPDATE_FAILED", "name" => "UPDATE_FAILED"}, {"value" => "DELETING", "name" => "DELETING"}]})
    CustomPluginSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#CustomPluginSummary', name: 'CustomPluginSummary')
    DeleteConnectorOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#DeleteConnectorOutput', name: 'DeleteConnectorOutput')
    DeleteConnectorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#DeleteConnectorRequest', name: 'DeleteConnectorRequest')
    DeleteCustomPluginOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#DeleteCustomPluginOutput', name: 'DeleteCustomPluginOutput')
    DeleteCustomPluginRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#DeleteCustomPluginRequest', name: 'DeleteCustomPluginRequest')
    DeleteWorkerConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#DeleteWorkerConfigurationOutput', name: 'DeleteWorkerConfigurationOutput')
    DeleteWorkerConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#DeleteWorkerConfigurationRequest', name: 'DeleteWorkerConfigurationRequest')
    DescribeConnectorOperationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#DescribeConnectorOperationRequest', name: 'DescribeConnectorOperationRequest')
    DescribeConnectorOperationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#DescribeConnectorOperationResponse', name: 'DescribeConnectorOperationResponse')
    DescribeConnectorOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#DescribeConnectorOutput', name: 'DescribeConnectorOutput')
    DescribeConnectorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#DescribeConnectorRequest', name: 'DescribeConnectorRequest')
    DescribeCustomPluginOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#DescribeCustomPluginOutput', name: 'DescribeCustomPluginOutput')
    DescribeCustomPluginRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#DescribeCustomPluginRequest', name: 'DescribeCustomPluginRequest')
    DescribeWorkerConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#DescribeWorkerConfigurationOutput', name: 'DescribeWorkerConfigurationOutput')
    DescribeWorkerConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#DescribeWorkerConfigurationRequest', name: 'DescribeWorkerConfigurationRequest')
    FirehoseLogDelivery = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#FirehoseLogDelivery', name: 'FirehoseLogDelivery')
    FirehoseLogDeliveryDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#FirehoseLogDeliveryDescription', name: 'FirehoseLogDeliveryDescription')
    ForbiddenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#ForbiddenException', name: 'ForbiddenException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    InternalServerErrorException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#InternalServerErrorException', name: 'InternalServerErrorException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    KafkaCluster = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#KafkaCluster', name: 'KafkaCluster')
    KafkaClusterClientAuthentication = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#KafkaClusterClientAuthentication', name: 'KafkaClusterClientAuthentication')
    KafkaClusterClientAuthenticationDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#KafkaClusterClientAuthenticationDescription', name: 'KafkaClusterClientAuthenticationDescription')
    KafkaClusterClientAuthenticationType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kafkaconnect#KafkaClusterClientAuthenticationType', name: 'KafkaClusterClientAuthenticationType', traits: {"smithy.api#enum" => [{"value" => "NONE", "name" => "NONE"}, {"value" => "IAM", "name" => "IAM"}]})
    KafkaClusterDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#KafkaClusterDescription', name: 'KafkaClusterDescription')
    KafkaClusterEncryptionInTransit = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#KafkaClusterEncryptionInTransit', name: 'KafkaClusterEncryptionInTransit')
    KafkaClusterEncryptionInTransitDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#KafkaClusterEncryptionInTransitDescription', name: 'KafkaClusterEncryptionInTransitDescription')
    KafkaClusterEncryptionInTransitType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kafkaconnect#KafkaClusterEncryptionInTransitType', name: 'KafkaClusterEncryptionInTransitType', traits: {"smithy.api#enum" => [{"value" => "PLAINTEXT", "name" => "PLAINTEXT"}, {"value" => "TLS", "name" => "TLS"}]})
    ListConnectorOperationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#ListConnectorOperationsRequest', name: 'ListConnectorOperationsRequest')
    ListConnectorOperationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#ListConnectorOperationsResponse', name: 'ListConnectorOperationsResponse')
    ListConnectorsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#ListConnectorsOutput', name: 'ListConnectorsOutput')
    ListConnectorsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#ListConnectorsRequest', name: 'ListConnectorsRequest')
    ListCustomPluginsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#ListCustomPluginsOutput', name: 'ListCustomPluginsOutput')
    ListCustomPluginsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#ListCustomPluginsRequest', name: 'ListCustomPluginsRequest')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListWorkerConfigurationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#ListWorkerConfigurationsOutput', name: 'ListWorkerConfigurationsOutput')
    ListWorkerConfigurationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#ListWorkerConfigurationsRequest', name: 'ListWorkerConfigurationsRequest')
    LogDelivery = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#LogDelivery', name: 'LogDelivery')
    LogDeliveryDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#LogDeliveryDescription', name: 'LogDeliveryDescription')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kafkaconnect#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    NotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#NotFoundException', name: 'NotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Plugin = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#Plugin', name: 'Plugin')
    PluginDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#PluginDescription', name: 'PluginDescription')
    ProvisionedCapacity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#ProvisionedCapacity', name: 'ProvisionedCapacity')
    ProvisionedCapacityDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#ProvisionedCapacityDescription', name: 'ProvisionedCapacityDescription')
    ProvisionedCapacityUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#ProvisionedCapacityUpdate', name: 'ProvisionedCapacityUpdate')
    S3Location = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#S3Location', name: 'S3Location')
    S3LocationDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#S3LocationDescription', name: 'S3LocationDescription')
    S3LogDelivery = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#S3LogDelivery', name: 'S3LogDelivery')
    S3LogDeliveryDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#S3LogDeliveryDescription', name: 'S3LogDeliveryDescription')
    ScaleInPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#ScaleInPolicy', name: 'ScaleInPolicy')
    ScaleInPolicyDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#ScaleInPolicyDescription', name: 'ScaleInPolicyDescription')
    ScaleInPolicyUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#ScaleInPolicyUpdate', name: 'ScaleInPolicyUpdate')
    ScaleOutPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#ScaleOutPolicy', name: 'ScaleOutPolicy')
    ScaleOutPolicyDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#ScaleOutPolicyDescription', name: 'ScaleOutPolicyDescription')
    ScaleOutPolicyUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#ScaleOutPolicyUpdate', name: 'ScaleOutPolicyUpdate')
    ServiceUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#ServiceUnavailableException', name: 'ServiceUnavailableException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    StateDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#StateDescription', name: 'StateDescription')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kafkaconnect#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kafkaconnect#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#TagResourceOutput', name: 'TagResourceOutput')
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#TagResourceRequest', name: 'TagResourceRequest')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kafkaconnect#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Tags = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.kafkaconnect#Tags', name: 'Tags', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TooManyRequestsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#TooManyRequestsException', name: 'TooManyRequestsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UnauthorizedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#UnauthorizedException', name: 'UnauthorizedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UntagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#UntagResourceOutput', name: 'UntagResourceOutput')
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#UntagResourceRequest', name: 'UntagResourceRequest')
    UpdateConnectorOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#UpdateConnectorOutput', name: 'UpdateConnectorOutput')
    UpdateConnectorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#UpdateConnectorRequest', name: 'UpdateConnectorRequest')
    Vpc = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#Vpc', name: 'Vpc')
    VpcDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#VpcDescription', name: 'VpcDescription')
    WorkerConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#WorkerConfiguration', name: 'WorkerConfiguration')
    WorkerConfigurationDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#WorkerConfigurationDescription', name: 'WorkerConfigurationDescription')
    WorkerConfigurationRevisionDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#WorkerConfigurationRevisionDescription', name: 'WorkerConfigurationRevisionDescription')
    WorkerConfigurationRevisionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#WorkerConfigurationRevisionSummary', name: 'WorkerConfigurationRevisionSummary')
    WorkerConfigurationState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kafkaconnect#WorkerConfigurationState', name: 'WorkerConfigurationState', traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "DELETING", "name" => "DELETING"}]})
    WorkerConfigurationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#WorkerConfigurationSummary', name: 'WorkerConfigurationSummary')
    WorkerLogDelivery = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#WorkerLogDelivery', name: 'WorkerLogDelivery')
    WorkerLogDeliveryDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#WorkerLogDeliveryDescription', name: 'WorkerLogDeliveryDescription')
    WorkerSetting = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafkaconnect#WorkerSetting', name: 'WorkerSetting')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.kafkaconnect#__boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kafkaconnect#__integer', name: 'Integer', traits: {"smithy.api#default" => 0})
    Integermin1max100 = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kafkaconnect#__integerMin1Max100', name: 'Integermin1max100', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 1, "max" => 100}})
    Integermin1max8 = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kafkaconnect#__integerMin1Max8', name: 'Integermin1max8', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 1, "max" => 8}})
    Listofconnectoroperationstep = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kafkaconnect#__listOfConnectorOperationStep', name: 'Listofconnectoroperationstep')
    Listofconnectoroperationsummary = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kafkaconnect#__listOfConnectorOperationSummary', name: 'Listofconnectoroperationsummary')
    Listofconnectorsummary = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kafkaconnect#__listOfConnectorSummary', name: 'Listofconnectorsummary')
    Listofcustompluginsummary = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kafkaconnect#__listOfCustomPluginSummary', name: 'Listofcustompluginsummary')
    Listofplugin = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kafkaconnect#__listOfPlugin', name: 'Listofplugin')
    Listofplugindescription = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kafkaconnect#__listOfPluginDescription', name: 'Listofplugindescription')
    Listofworkerconfigurationsummary = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kafkaconnect#__listOfWorkerConfigurationSummary', name: 'Listofworkerconfigurationsummary')
    ListofString = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kafkaconnect#__listOf__string', name: 'ListofString')
    Long = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kafkaconnect#__long', name: 'Long', traits: {"smithy.api#default" => 0})
    Longmin1 = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kafkaconnect#__longMin1', name: 'Longmin1', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 1, "max" => 9223372036854775807}})
    Sensitivestring = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kafkaconnect#__sensitiveString', name: 'Sensitivestring', traits: {"smithy.api#sensitive" => {}})
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kafkaconnect#__string', name: 'String')
    Stringmax1024 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kafkaconnect#__stringMax1024', name: 'Stringmax1024', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    Stringmin1max128 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kafkaconnect#__stringMin1Max128', name: 'Stringmin1max128', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    Timestampiso8601 = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.kafkaconnect#__timestampIso8601', name: 'Timestampiso8601', traits: {"smithy.api#timestampFormat" => "date-time"})

    ApacheKafkaCluster.add_member(:bootstrap_servers, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'bootstrapServers', traits: {"smithy.api#documentation" => "<p>The bootstrap servers of the cluster.</p>", "smithy.api#required" => {}}))
    ApacheKafkaCluster.add_member(:vpc, Smithy::Schema::Shapes::ShapeRef.new(shape: Vpc, location_name: 'vpc', traits: {"smithy.api#documentation" => "<p>Details of an Amazon VPC which has network connectivity to the Apache Kafka\n         cluster.</p>", "smithy.api#required" => {}}))
    ApacheKafkaCluster.type = Types::ApacheKafkaCluster
    ApacheKafkaClusterDescription.add_member(:bootstrap_servers, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'bootstrapServers', traits: {"smithy.api#documentation" => "<p>The bootstrap servers of the cluster.</p>"}))
    ApacheKafkaClusterDescription.add_member(:vpc, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcDescription, location_name: 'vpc', traits: {"smithy.api#documentation" => "<p>Details of an Amazon VPC which has network connectivity to the Apache Kafka\n         cluster.</p>"}))
    ApacheKafkaClusterDescription.type = Types::ApacheKafkaClusterDescription
    AutoScaling.add_member(:max_worker_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxWorkerCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of workers allocated to the connector.</p>", "smithy.api#required" => {}}))
    AutoScaling.add_member(:mcu_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integermin1max8, location_name: 'mcuCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of microcontroller units (MCUs) allocated to each connector worker. The valid\n         values are 1,2,4,8.</p>", "smithy.api#required" => {}}))
    AutoScaling.add_member(:min_worker_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'minWorkerCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The minimum number of workers allocated to the connector.</p>", "smithy.api#required" => {}}))
    AutoScaling.add_member(:scale_in_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ScaleInPolicy, location_name: 'scaleInPolicy', traits: {"smithy.api#documentation" => "<p>The sacle-in policy for the connector.</p>"}))
    AutoScaling.add_member(:scale_out_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ScaleOutPolicy, location_name: 'scaleOutPolicy', traits: {"smithy.api#documentation" => "<p>The sacle-out policy for the connector.</p>"}))
    AutoScaling.type = Types::AutoScaling
    AutoScalingDescription.add_member(:max_worker_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxWorkerCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of workers allocated to the connector.</p>"}))
    AutoScalingDescription.add_member(:mcu_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'mcuCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of microcontroller units (MCUs) allocated to each connector worker. The valid\n         values are 1,2,4,8.</p>"}))
    AutoScalingDescription.add_member(:min_worker_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'minWorkerCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The minimum number of workers allocated to the connector.</p>"}))
    AutoScalingDescription.add_member(:scale_in_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ScaleInPolicyDescription, location_name: 'scaleInPolicy', traits: {"smithy.api#documentation" => "<p>The sacle-in policy for the connector.</p>"}))
    AutoScalingDescription.add_member(:scale_out_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ScaleOutPolicyDescription, location_name: 'scaleOutPolicy', traits: {"smithy.api#documentation" => "<p>The sacle-out policy for the connector.&gt;</p>"}))
    AutoScalingDescription.type = Types::AutoScalingDescription
    AutoScalingUpdate.add_member(:max_worker_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxWorkerCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The target maximum number of workers allocated to the connector.</p>", "smithy.api#required" => {}}))
    AutoScalingUpdate.add_member(:mcu_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integermin1max8, location_name: 'mcuCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The target number of microcontroller units (MCUs) allocated to each connector worker.\n         The valid values are 1,2,4,8.</p>", "smithy.api#required" => {}}))
    AutoScalingUpdate.add_member(:min_worker_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'minWorkerCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The target minimum number of workers allocated to the connector.</p>", "smithy.api#required" => {}}))
    AutoScalingUpdate.add_member(:scale_in_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ScaleInPolicyUpdate, location_name: 'scaleInPolicy', traits: {"smithy.api#documentation" => "<p>The target sacle-in policy for the connector.</p>", "smithy.api#required" => {}}))
    AutoScalingUpdate.add_member(:scale_out_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ScaleOutPolicyUpdate, location_name: 'scaleOutPolicy', traits: {"smithy.api#documentation" => "<p>The target sacle-out policy for the connector.</p>", "smithy.api#required" => {}}))
    AutoScalingUpdate.type = Types::AutoScalingUpdate
    BadRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    BadRequestException.type = Types::BadRequestException
    Capacity.add_member(:auto_scaling, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScaling, location_name: 'autoScaling', traits: {"smithy.api#documentation" => "<p>Information about the auto scaling parameters for the connector.</p>"}))
    Capacity.add_member(:provisioned_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedCapacity, location_name: 'provisionedCapacity', traits: {"smithy.api#documentation" => "<p>Details about a fixed capacity allocated to a connector.</p>"}))
    Capacity.type = Types::Capacity
    CapacityDescription.add_member(:auto_scaling, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingDescription, location_name: 'autoScaling', traits: {"smithy.api#documentation" => "<p>Describes the connector's auto scaling capacity.</p>"}))
    CapacityDescription.add_member(:provisioned_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedCapacityDescription, location_name: 'provisionedCapacity', traits: {"smithy.api#documentation" => "<p>Describes a connector's provisioned capacity.</p>"}))
    CapacityDescription.type = Types::CapacityDescription
    CapacityUpdate.add_member(:auto_scaling, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingUpdate, location_name: 'autoScaling', traits: {"smithy.api#documentation" => "<p>The target auto scaling setting.</p>"}))
    CapacityUpdate.add_member(:provisioned_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedCapacityUpdate, location_name: 'provisionedCapacity', traits: {"smithy.api#documentation" => "<p>The target settings for provisioned capacity.</p>"}))
    CapacityUpdate.type = Types::CapacityUpdate
    CloudWatchLogsLogDelivery.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'enabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether log delivery to Amazon CloudWatch Logs is enabled.</p>", "smithy.api#required" => {}}))
    CloudWatchLogsLogDelivery.add_member(:log_group, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'logGroup', traits: {"smithy.api#documentation" => "<p>The name of the CloudWatch log group that is the destination for log delivery.</p>"}))
    CloudWatchLogsLogDelivery.type = Types::CloudWatchLogsLogDelivery
    CloudWatchLogsLogDeliveryDescription.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'enabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether log delivery to Amazon CloudWatch Logs is enabled.</p>"}))
    CloudWatchLogsLogDeliveryDescription.add_member(:log_group, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'logGroup', traits: {"smithy.api#documentation" => "<p>The name of the CloudWatch log group that is the destination for log delivery.</p>"}))
    CloudWatchLogsLogDeliveryDescription.type = Types::CloudWatchLogsLogDeliveryDescription
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ConflictException.type = Types::ConflictException
    ConnectorConfiguration.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ConnectorConfiguration.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ConnectorConfigurationUpdate.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ConnectorConfigurationUpdate.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ConnectorOperationStep.add_member(:step_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorOperationStepType, location_name: 'stepType', traits: {"smithy.api#documentation" => "<p>The step type of the operation.</p>"}))
    ConnectorOperationStep.add_member(:step_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorOperationStepState, location_name: 'stepState', traits: {"smithy.api#documentation" => "<p>The step state of the operation.</p>"}))
    ConnectorOperationStep.type = Types::ConnectorOperationStep
    ConnectorOperationSummary.add_member(:connector_operation_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'connectorOperationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the connector operation.</p>"}))
    ConnectorOperationSummary.add_member(:connector_operation_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorOperationType, location_name: 'connectorOperationType', traits: {"smithy.api#documentation" => "<p>The type of connector operation performed.</p>"}))
    ConnectorOperationSummary.add_member(:connector_operation_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorOperationState, location_name: 'connectorOperationState', traits: {"smithy.api#documentation" => "<p>The state of the connector operation.</p>"}))
    ConnectorOperationSummary.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time when operation was created.</p>"}))
    ConnectorOperationSummary.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>The time when operation ended.</p>"}))
    ConnectorOperationSummary.type = Types::ConnectorOperationSummary
    ConnectorSummary.add_member(:capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityDescription, location_name: 'capacity', traits: {"smithy.api#documentation" => "<p>The connector's compute capacity settings.</p>"}))
    ConnectorSummary.add_member(:connector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'connectorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the connector.</p>"}))
    ConnectorSummary.add_member(:connector_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'connectorDescription', traits: {"smithy.api#documentation" => "<p>The description of the connector.</p>"}))
    ConnectorSummary.add_member(:connector_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'connectorName', traits: {"smithy.api#documentation" => "<p>The name of the connector.</p>"}))
    ConnectorSummary.add_member(:connector_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorState, location_name: 'connectorState', traits: {"smithy.api#documentation" => "<p>The state of the connector.</p>"}))
    ConnectorSummary.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time that the connector was created.</p>"}))
    ConnectorSummary.add_member(:current_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'currentVersion', traits: {"smithy.api#documentation" => "<p>The current version of the connector.</p>"}))
    ConnectorSummary.add_member(:kafka_cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: KafkaClusterDescription, location_name: 'kafkaCluster', traits: {"smithy.api#documentation" => "<p>The details of the Apache Kafka cluster to which the connector is connected.</p>"}))
    ConnectorSummary.add_member(:kafka_cluster_client_authentication, Smithy::Schema::Shapes::ShapeRef.new(shape: KafkaClusterClientAuthenticationDescription, location_name: 'kafkaClusterClientAuthentication', traits: {"smithy.api#documentation" => "<p>The type of client authentication used to connect to the Apache Kafka cluster. The value\n         is NONE when no client authentication is used.</p>"}))
    ConnectorSummary.add_member(:kafka_cluster_encryption_in_transit, Smithy::Schema::Shapes::ShapeRef.new(shape: KafkaClusterEncryptionInTransitDescription, location_name: 'kafkaClusterEncryptionInTransit', traits: {"smithy.api#documentation" => "<p>Details of encryption in transit to the Apache Kafka cluster.</p>"}))
    ConnectorSummary.add_member(:kafka_connect_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'kafkaConnectVersion', traits: {"smithy.api#documentation" => "<p>The version of Kafka Connect. It has to be compatible with both the Apache Kafka\n         cluster's version and the plugins.</p>"}))
    ConnectorSummary.add_member(:log_delivery, Smithy::Schema::Shapes::ShapeRef.new(shape: LogDeliveryDescription, location_name: 'logDelivery', traits: {"smithy.api#documentation" => "<p>The settings for delivering connector logs to Amazon CloudWatch Logs.</p>"}))
    ConnectorSummary.add_member(:plugins, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofplugindescription, location_name: 'plugins', traits: {"smithy.api#documentation" => "<p>Specifies which plugins were used for this connector.</p>"}))
    ConnectorSummary.add_member(:service_execution_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceExecutionRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role used by the connector to access Amazon\n         Web Services resources.</p>"}))
    ConnectorSummary.add_member(:worker_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerConfigurationDescription, location_name: 'workerConfiguration', traits: {"smithy.api#documentation" => "<p>The worker configurations that are in use with the connector.</p>"}))
    ConnectorSummary.type = Types::ConnectorSummary
    CreateConnectorOutput.add_member(:connector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'connectorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that Amazon assigned to the connector.</p>"}))
    CreateConnectorOutput.add_member(:connector_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'connectorName', traits: {"smithy.api#documentation" => "<p>The name of the connector.</p>"}))
    CreateConnectorOutput.add_member(:connector_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorState, location_name: 'connectorState', traits: {"smithy.api#documentation" => "<p>The state of the connector.</p>"}))
    CreateConnectorOutput.type = Types::CreateConnectorOutput
    CreateConnectorRequest.add_member(:capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: Capacity, location_name: 'capacity', traits: {"smithy.api#documentation" => "<p>Information about the capacity allocated to the connector. Exactly one of the two\n         properties must be specified.</p>", "smithy.api#required" => {}}))
    CreateConnectorRequest.add_member(:connector_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorConfiguration, location_name: 'connectorConfiguration', traits: {"smithy.api#documentation" => "<p>A map of keys to values that represent the configuration for the connector.</p>", "smithy.api#required" => {}}))
    CreateConnectorRequest.add_member(:connector_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmax1024, location_name: 'connectorDescription', traits: {"smithy.api#documentation" => "<p>A summary description of the connector.</p>"}))
    CreateConnectorRequest.add_member(:connector_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max128, location_name: 'connectorName', traits: {"smithy.api#documentation" => "<p>The name of the connector.</p>", "smithy.api#required" => {}}))
    CreateConnectorRequest.add_member(:kafka_cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: KafkaCluster, location_name: 'kafkaCluster', traits: {"smithy.api#documentation" => "<p>Specifies which Apache Kafka cluster to connect to.</p>", "smithy.api#required" => {}}))
    CreateConnectorRequest.add_member(:kafka_cluster_client_authentication, Smithy::Schema::Shapes::ShapeRef.new(shape: KafkaClusterClientAuthentication, location_name: 'kafkaClusterClientAuthentication', traits: {"smithy.api#documentation" => "<p>Details of the client authentication used by the Apache Kafka cluster.</p>", "smithy.api#required" => {}}))
    CreateConnectorRequest.add_member(:kafka_cluster_encryption_in_transit, Smithy::Schema::Shapes::ShapeRef.new(shape: KafkaClusterEncryptionInTransit, location_name: 'kafkaClusterEncryptionInTransit', traits: {"smithy.api#documentation" => "<p>Details of encryption in transit to the Apache Kafka cluster.</p>", "smithy.api#required" => {}}))
    CreateConnectorRequest.add_member(:kafka_connect_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'kafkaConnectVersion', traits: {"smithy.api#documentation" => "<p>The version of Kafka Connect. It has to be compatible with both the Apache Kafka\n         cluster's version and the plugins.</p>", "smithy.api#required" => {}}))
    CreateConnectorRequest.add_member(:log_delivery, Smithy::Schema::Shapes::ShapeRef.new(shape: LogDelivery, location_name: 'logDelivery', traits: {"smithy.api#documentation" => "<p>Details about log delivery.</p>"}))
    CreateConnectorRequest.add_member(:plugins, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofplugin, location_name: 'plugins', traits: {"smithy.api#documentation" => "<important>\n            <p>Amazon MSK Connect does not currently support specifying multiple plugins as a list. To use more than one plugin for your connector, you can create a single custom plugin using a ZIP file that bundles multiple plugins together.</p>\n         </important>\n         <p>Specifies which plugin to use for the connector. You must specify a single-element list containing one <code>customPlugin</code> object.</p>", "smithy.api#required" => {}}))
    CreateConnectorRequest.add_member(:service_execution_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceExecutionRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role used by the connector to access the\n         Amazon Web Services resources that it needs. The types of resources depends on the logic of\n         the connector. For example, a connector that has Amazon S3 as a destination must have\n         permissions that allow it to write to the S3 destination bucket.</p>", "smithy.api#required" => {}}))
    CreateConnectorRequest.add_member(:worker_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerConfiguration, location_name: 'workerConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies which worker configuration to use with the connector.</p>"}))
    CreateConnectorRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags you want to attach to the connector.</p>"}))
    CreateConnectorRequest.type = Types::CreateConnectorRequest
    CreateCustomPluginOutput.add_member(:custom_plugin_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'customPluginArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that Amazon assigned to the custom plugin.</p>"}))
    CreateCustomPluginOutput.add_member(:custom_plugin_state, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomPluginState, location_name: 'customPluginState', traits: {"smithy.api#documentation" => "<p>The state of the custom plugin.</p>"}))
    CreateCustomPluginOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the custom plugin.</p>"}))
    CreateCustomPluginOutput.add_member(:revision, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'revision', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The revision of the custom plugin.</p>"}))
    CreateCustomPluginOutput.type = Types::CreateCustomPluginOutput
    CreateCustomPluginRequest.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomPluginContentType, location_name: 'contentType', traits: {"smithy.api#documentation" => "<p>The type of the plugin file.</p>", "smithy.api#required" => {}}))
    CreateCustomPluginRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmax1024, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A summary description of the custom plugin.</p>"}))
    CreateCustomPluginRequest.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomPluginLocation, location_name: 'location', traits: {"smithy.api#documentation" => "<p>Information about the location of a custom plugin.</p>", "smithy.api#required" => {}}))
    CreateCustomPluginRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max128, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the custom plugin.</p>", "smithy.api#required" => {}}))
    CreateCustomPluginRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags you want to attach to the custom plugin.</p>"}))
    CreateCustomPluginRequest.type = Types::CreateCustomPluginRequest
    CreateWorkerConfigurationOutput.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time that the worker configuration was created.</p>"}))
    CreateWorkerConfigurationOutput.add_member(:latest_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerConfigurationRevisionSummary, location_name: 'latestRevision', traits: {"smithy.api#documentation" => "<p>The latest revision of the worker configuration.</p>"}))
    CreateWorkerConfigurationOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the worker configuration.</p>"}))
    CreateWorkerConfigurationOutput.add_member(:worker_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'workerConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that Amazon assigned to the worker configuration.</p>"}))
    CreateWorkerConfigurationOutput.add_member(:worker_configuration_state, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerConfigurationState, location_name: 'workerConfigurationState', traits: {"smithy.api#documentation" => "<p>The state of the worker configuration.</p>"}))
    CreateWorkerConfigurationOutput.type = Types::CreateWorkerConfigurationOutput
    CreateWorkerConfigurationRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmax1024, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A summary description of the worker configuration.</p>"}))
    CreateWorkerConfigurationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max128, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the worker configuration.</p>", "smithy.api#required" => {}}))
    CreateWorkerConfigurationRequest.add_member(:properties_file_content, Smithy::Schema::Shapes::ShapeRef.new(shape: Sensitivestring, location_name: 'propertiesFileContent', traits: {"smithy.api#documentation" => "<p>Base64 encoded contents of connect-distributed.properties file.</p>", "smithy.api#required" => {}}))
    CreateWorkerConfigurationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags you want to attach to the worker configuration.</p>"}))
    CreateWorkerConfigurationRequest.type = Types::CreateWorkerConfigurationRequest
    CustomPlugin.add_member(:custom_plugin_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'customPluginArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the custom plugin.</p>", "smithy.api#required" => {}}))
    CustomPlugin.add_member(:revision, Smithy::Schema::Shapes::ShapeRef.new(shape: Longmin1, location_name: 'revision', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The revision of the custom plugin.</p>", "smithy.api#required" => {}}))
    CustomPlugin.type = Types::CustomPlugin
    CustomPluginDescription.add_member(:custom_plugin_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'customPluginArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the custom plugin.</p>"}))
    CustomPluginDescription.add_member(:revision, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'revision', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The revision of the custom plugin.</p>"}))
    CustomPluginDescription.type = Types::CustomPluginDescription
    CustomPluginFileDescription.add_member(:file_md5, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'fileMd5', traits: {"smithy.api#documentation" => "<p>The hex-encoded MD5 checksum of the custom plugin file. You can use it to validate the\n         file.</p>"}))
    CustomPluginFileDescription.add_member(:file_size, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'fileSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The size in bytes of the custom plugin file. You can use it to validate the file.</p>"}))
    CustomPluginFileDescription.type = Types::CustomPluginFileDescription
    CustomPluginLocation.add_member(:s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 's3Location', traits: {"smithy.api#documentation" => "<p>The S3 bucket Amazon Resource Name (ARN), file key, and object version of the plugin\n         file stored in Amazon S3.</p>", "smithy.api#required" => {}}))
    CustomPluginLocation.type = Types::CustomPluginLocation
    CustomPluginLocationDescription.add_member(:s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3LocationDescription, location_name: 's3Location', traits: {"smithy.api#documentation" => "<p>The S3 bucket Amazon Resource Name (ARN), file key, and object version of the plugin\n         file stored in Amazon S3.</p>"}))
    CustomPluginLocationDescription.type = Types::CustomPluginLocationDescription
    CustomPluginRevisionSummary.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomPluginContentType, location_name: 'contentType', traits: {"smithy.api#documentation" => "<p>The format of the plugin file.</p>"}))
    CustomPluginRevisionSummary.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time that the custom plugin was created.</p>"}))
    CustomPluginRevisionSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the custom plugin.</p>"}))
    CustomPluginRevisionSummary.add_member(:file_description, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomPluginFileDescription, location_name: 'fileDescription', traits: {"smithy.api#documentation" => "<p>Details about the custom plugin file.</p>"}))
    CustomPluginRevisionSummary.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomPluginLocationDescription, location_name: 'location', traits: {"smithy.api#documentation" => "<p>Information about the location of the custom plugin.</p>"}))
    CustomPluginRevisionSummary.add_member(:revision, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'revision', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The revision of the custom plugin.</p>"}))
    CustomPluginRevisionSummary.type = Types::CustomPluginRevisionSummary
    CustomPluginSummary.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time that the custom plugin was created.</p>"}))
    CustomPluginSummary.add_member(:custom_plugin_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'customPluginArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the custom plugin.</p>"}))
    CustomPluginSummary.add_member(:custom_plugin_state, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomPluginState, location_name: 'customPluginState', traits: {"smithy.api#documentation" => "<p>The state of the custom plugin.</p>"}))
    CustomPluginSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the custom plugin.</p>"}))
    CustomPluginSummary.add_member(:latest_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomPluginRevisionSummary, location_name: 'latestRevision', traits: {"smithy.api#documentation" => "<p>The latest revision of the custom plugin.</p>"}))
    CustomPluginSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the custom plugin.</p>"}))
    CustomPluginSummary.type = Types::CustomPluginSummary
    DeleteConnectorOutput.add_member(:connector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'connectorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the connector that you requested to delete.</p>"}))
    DeleteConnectorOutput.add_member(:connector_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorState, location_name: 'connectorState', traits: {"smithy.api#documentation" => "<p>The state of the connector that you requested to delete.</p>"}))
    DeleteConnectorOutput.type = Types::DeleteConnectorOutput
    DeleteConnectorRequest.add_member(:connector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'connectorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the connector that you want to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConnectorRequest.add_member(:current_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'currentVersion', traits: {"smithy.api#documentation" => "<p>The current version of the connector that you want to delete.</p>", "smithy.api#httpQuery" => "currentVersion"}))
    DeleteConnectorRequest.type = Types::DeleteConnectorRequest
    DeleteCustomPluginOutput.add_member(:custom_plugin_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'customPluginArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the custom plugin that you requested to delete.</p>"}))
    DeleteCustomPluginOutput.add_member(:custom_plugin_state, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomPluginState, location_name: 'customPluginState', traits: {"smithy.api#documentation" => "<p>The state of the custom plugin.</p>"}))
    DeleteCustomPluginOutput.type = Types::DeleteCustomPluginOutput
    DeleteCustomPluginRequest.add_member(:custom_plugin_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'customPluginArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the custom plugin that you want to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCustomPluginRequest.type = Types::DeleteCustomPluginRequest
    DeleteWorkerConfigurationOutput.add_member(:worker_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'workerConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the worker configuration that you requested to delete.</p>"}))
    DeleteWorkerConfigurationOutput.add_member(:worker_configuration_state, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerConfigurationState, location_name: 'workerConfigurationState', traits: {"smithy.api#documentation" => "<p>The state of the worker configuration.</p>"}))
    DeleteWorkerConfigurationOutput.type = Types::DeleteWorkerConfigurationOutput
    DeleteWorkerConfigurationRequest.add_member(:worker_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'workerConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the worker configuration that you want to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkerConfigurationRequest.type = Types::DeleteWorkerConfigurationRequest
    DescribeConnectorOperationRequest.add_member(:connector_operation_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'connectorOperationArn', traits: {"smithy.api#documentation" => "<p>ARN of the connector operation to be described.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeConnectorOperationRequest.type = Types::DescribeConnectorOperationRequest
    DescribeConnectorOperationResponse.add_member(:connector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'connectorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the connector.</p>"}))
    DescribeConnectorOperationResponse.add_member(:connector_operation_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'connectorOperationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the connector operation.</p>"}))
    DescribeConnectorOperationResponse.add_member(:connector_operation_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorOperationState, location_name: 'connectorOperationState', traits: {"smithy.api#documentation" => "<p>The state of the connector operation.</p>"}))
    DescribeConnectorOperationResponse.add_member(:connector_operation_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorOperationType, location_name: 'connectorOperationType', traits: {"smithy.api#documentation" => "<p>The type of connector operation performed.</p>"}))
    DescribeConnectorOperationResponse.add_member(:operation_steps, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofconnectoroperationstep, location_name: 'operationSteps', traits: {"smithy.api#documentation" => "<p>The array of operation steps taken.</p>"}))
    DescribeConnectorOperationResponse.add_member(:origin_worker_setting, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerSetting, location_name: 'originWorkerSetting', traits: {"smithy.api#documentation" => "<p>The origin worker setting.</p>"}))
    DescribeConnectorOperationResponse.add_member(:origin_connector_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorConfiguration, location_name: 'originConnectorConfiguration', traits: {"smithy.api#documentation" => "<p>The origin connector configuration.</p>"}))
    DescribeConnectorOperationResponse.add_member(:target_worker_setting, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerSetting, location_name: 'targetWorkerSetting', traits: {"smithy.api#documentation" => "<p>The target worker setting.</p>"}))
    DescribeConnectorOperationResponse.add_member(:target_connector_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorConfiguration, location_name: 'targetConnectorConfiguration', traits: {"smithy.api#documentation" => "<p>The target connector configuration.</p>"}))
    DescribeConnectorOperationResponse.add_member(:error_info, Smithy::Schema::Shapes::ShapeRef.new(shape: StateDescription, location_name: 'errorInfo'))
    DescribeConnectorOperationResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time when the operation was created.</p>"}))
    DescribeConnectorOperationResponse.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>The time when the operation ended.</p>"}))
    DescribeConnectorOperationResponse.type = Types::DescribeConnectorOperationResponse
    DescribeConnectorOutput.add_member(:capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityDescription, location_name: 'capacity', traits: {"smithy.api#documentation" => "<p>Information about the capacity of the connector, whether it is auto scaled or\n         provisioned.</p>"}))
    DescribeConnectorOutput.add_member(:connector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'connectorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the connector.</p>"}))
    DescribeConnectorOutput.add_member(:connector_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorConfiguration, location_name: 'connectorConfiguration', traits: {"smithy.api#documentation" => "<p>A map of keys to values that represent the configuration for the connector.</p>"}))
    DescribeConnectorOutput.add_member(:connector_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'connectorDescription', traits: {"smithy.api#documentation" => "<p>A summary description of the connector.</p>"}))
    DescribeConnectorOutput.add_member(:connector_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'connectorName', traits: {"smithy.api#documentation" => "<p>The name of the connector.</p>"}))
    DescribeConnectorOutput.add_member(:connector_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorState, location_name: 'connectorState', traits: {"smithy.api#documentation" => "<p>The state of the connector.</p>"}))
    DescribeConnectorOutput.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time the connector was created.</p>"}))
    DescribeConnectorOutput.add_member(:current_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'currentVersion', traits: {"smithy.api#documentation" => "<p>The current version of the connector.</p>"}))
    DescribeConnectorOutput.add_member(:kafka_cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: KafkaClusterDescription, location_name: 'kafkaCluster', traits: {"smithy.api#documentation" => "<p>The Apache Kafka cluster that the connector is connected to.</p>"}))
    DescribeConnectorOutput.add_member(:kafka_cluster_client_authentication, Smithy::Schema::Shapes::ShapeRef.new(shape: KafkaClusterClientAuthenticationDescription, location_name: 'kafkaClusterClientAuthentication', traits: {"smithy.api#documentation" => "<p>The type of client authentication used to connect to the Apache Kafka cluster. The value\n         is NONE when no client authentication is used.</p>"}))
    DescribeConnectorOutput.add_member(:kafka_cluster_encryption_in_transit, Smithy::Schema::Shapes::ShapeRef.new(shape: KafkaClusterEncryptionInTransitDescription, location_name: 'kafkaClusterEncryptionInTransit', traits: {"smithy.api#documentation" => "<p>Details of encryption in transit to the Apache Kafka cluster.</p>"}))
    DescribeConnectorOutput.add_member(:kafka_connect_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'kafkaConnectVersion', traits: {"smithy.api#documentation" => "<p>The version of Kafka Connect. It has to be compatible with both the Apache Kafka\n         cluster's version and the plugins.</p>"}))
    DescribeConnectorOutput.add_member(:log_delivery, Smithy::Schema::Shapes::ShapeRef.new(shape: LogDeliveryDescription, location_name: 'logDelivery', traits: {"smithy.api#documentation" => "<p>Details about delivering logs to Amazon CloudWatch Logs.</p>"}))
    DescribeConnectorOutput.add_member(:plugins, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofplugindescription, location_name: 'plugins', traits: {"smithy.api#documentation" => "<p>Specifies which plugins were used for this connector.</p>"}))
    DescribeConnectorOutput.add_member(:service_execution_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceExecutionRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role used by the connector to access Amazon\n         Web Services resources.</p>"}))
    DescribeConnectorOutput.add_member(:worker_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerConfigurationDescription, location_name: 'workerConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies which worker configuration was used for the connector.</p>"}))
    DescribeConnectorOutput.add_member(:state_description, Smithy::Schema::Shapes::ShapeRef.new(shape: StateDescription, location_name: 'stateDescription', traits: {"smithy.api#documentation" => "<p>Details about the state of a connector.</p>"}))
    DescribeConnectorOutput.type = Types::DescribeConnectorOutput
    DescribeConnectorRequest.add_member(:connector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'connectorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the connector that you want to describe.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeConnectorRequest.type = Types::DescribeConnectorRequest
    DescribeCustomPluginOutput.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time that the custom plugin was created.</p>"}))
    DescribeCustomPluginOutput.add_member(:custom_plugin_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'customPluginArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the custom plugin.</p>"}))
    DescribeCustomPluginOutput.add_member(:custom_plugin_state, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomPluginState, location_name: 'customPluginState', traits: {"smithy.api#documentation" => "<p>The state of the custom plugin.</p>"}))
    DescribeCustomPluginOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the custom plugin.</p>"}))
    DescribeCustomPluginOutput.add_member(:latest_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomPluginRevisionSummary, location_name: 'latestRevision', traits: {"smithy.api#documentation" => "<p>The latest successfully created revision of the custom plugin. If there are no\n         successfully created revisions, this field will be absent.</p>"}))
    DescribeCustomPluginOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the custom plugin.</p>"}))
    DescribeCustomPluginOutput.add_member(:state_description, Smithy::Schema::Shapes::ShapeRef.new(shape: StateDescription, location_name: 'stateDescription', traits: {"smithy.api#documentation" => "<p>Details about the state of a custom plugin.</p>"}))
    DescribeCustomPluginOutput.type = Types::DescribeCustomPluginOutput
    DescribeCustomPluginRequest.add_member(:custom_plugin_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'customPluginArn', traits: {"smithy.api#documentation" => "<p>Returns information about a custom plugin.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeCustomPluginRequest.type = Types::DescribeCustomPluginRequest
    DescribeWorkerConfigurationOutput.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time that the worker configuration was created.</p>"}))
    DescribeWorkerConfigurationOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the worker configuration.</p>"}))
    DescribeWorkerConfigurationOutput.add_member(:latest_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerConfigurationRevisionDescription, location_name: 'latestRevision', traits: {"smithy.api#documentation" => "<p>The latest revision of the custom configuration.</p>"}))
    DescribeWorkerConfigurationOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the worker configuration.</p>"}))
    DescribeWorkerConfigurationOutput.add_member(:worker_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'workerConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the custom configuration.</p>"}))
    DescribeWorkerConfigurationOutput.add_member(:worker_configuration_state, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerConfigurationState, location_name: 'workerConfigurationState', traits: {"smithy.api#documentation" => "<p>The state of the worker configuration.</p>"}))
    DescribeWorkerConfigurationOutput.type = Types::DescribeWorkerConfigurationOutput
    DescribeWorkerConfigurationRequest.add_member(:worker_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'workerConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the worker configuration that you want to get\n         information about.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeWorkerConfigurationRequest.type = Types::DescribeWorkerConfigurationRequest
    FirehoseLogDelivery.add_member(:delivery_stream, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'deliveryStream', traits: {"smithy.api#documentation" => "<p>The name of the Kinesis Data Firehose delivery stream that is the destination for log\n         delivery.</p>"}))
    FirehoseLogDelivery.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'enabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether connector logs get delivered to Amazon Kinesis Data Firehose.</p>", "smithy.api#required" => {}}))
    FirehoseLogDelivery.type = Types::FirehoseLogDelivery
    FirehoseLogDeliveryDescription.add_member(:delivery_stream, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'deliveryStream', traits: {"smithy.api#documentation" => "<p>The name of the Kinesis Data Firehose delivery stream that is the destination for log\n         delivery.</p>"}))
    FirehoseLogDeliveryDescription.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'enabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether connector logs get delivered to Amazon Kinesis Data Firehose.</p>"}))
    FirehoseLogDeliveryDescription.type = Types::FirehoseLogDeliveryDescription
    ForbiddenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ForbiddenException.type = Types::ForbiddenException
    InternalServerErrorException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    InternalServerErrorException.type = Types::InternalServerErrorException
    KafkaCluster.add_member(:apache_kafka_cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: ApacheKafkaCluster, location_name: 'apacheKafkaCluster', traits: {"smithy.api#documentation" => "<p>The Apache Kafka cluster to which the connector is connected.</p>", "smithy.api#required" => {}}))
    KafkaCluster.type = Types::KafkaCluster
    KafkaClusterClientAuthentication.add_member(:authentication_type, Smithy::Schema::Shapes::ShapeRef.new(shape: KafkaClusterClientAuthenticationType, location_name: 'authenticationType', traits: {"smithy.api#documentation" => "<p>The type of client authentication used to connect to the Apache Kafka cluster. Value\n         NONE means that no client authentication is used.</p>", "smithy.api#required" => {}}))
    KafkaClusterClientAuthentication.type = Types::KafkaClusterClientAuthentication
    KafkaClusterClientAuthenticationDescription.add_member(:authentication_type, Smithy::Schema::Shapes::ShapeRef.new(shape: KafkaClusterClientAuthenticationType, location_name: 'authenticationType', traits: {"smithy.api#documentation" => "<p>The type of client authentication used to connect to the Apache Kafka cluster. Value\n         NONE means that no client authentication is used.</p>"}))
    KafkaClusterClientAuthenticationDescription.type = Types::KafkaClusterClientAuthenticationDescription
    KafkaClusterDescription.add_member(:apache_kafka_cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: ApacheKafkaClusterDescription, location_name: 'apacheKafkaCluster', traits: {"smithy.api#documentation" => "<p>The Apache Kafka cluster to which the connector is connected.</p>"}))
    KafkaClusterDescription.type = Types::KafkaClusterDescription
    KafkaClusterEncryptionInTransit.add_member(:encryption_type, Smithy::Schema::Shapes::ShapeRef.new(shape: KafkaClusterEncryptionInTransitType, location_name: 'encryptionType', traits: {"smithy.api#documentation" => "<p>The type of encryption in transit to the Apache Kafka cluster.</p>", "smithy.api#required" => {}}))
    KafkaClusterEncryptionInTransit.type = Types::KafkaClusterEncryptionInTransit
    KafkaClusterEncryptionInTransitDescription.add_member(:encryption_type, Smithy::Schema::Shapes::ShapeRef.new(shape: KafkaClusterEncryptionInTransitType, location_name: 'encryptionType', traits: {"smithy.api#documentation" => "<p>The type of encryption in transit to the Apache Kafka cluster.</p>"}))
    KafkaClusterEncryptionInTransitDescription.type = Types::KafkaClusterEncryptionInTransitDescription
    ListConnectorOperationsRequest.add_member(:connector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'connectorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the connector for which to list operations.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListConnectorOperationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of connector operations to fetch in one get request.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListConnectorOperationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, it includes a NextToken. Send this NextToken in a subsequent request to continue listing from where it left off.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListConnectorOperationsRequest.type = Types::ListConnectorOperationsRequest
    ListConnectorOperationsResponse.add_member(:connector_operations, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofconnectoroperationsummary, location_name: 'connectorOperations', traits: {"smithy.api#documentation" => "<p>An array of connector operation descriptions.</p>"}))
    ListConnectorOperationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, it includes a NextToken. Send this NextToken in a subsequent request to continue listing from where it left off.</p>"}))
    ListConnectorOperationsResponse.type = Types::ListConnectorOperationsResponse
    ListConnectorsOutput.add_member(:connectors, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofconnectorsummary, location_name: 'connectors', traits: {"smithy.api#documentation" => "<p>An array of connector descriptions.</p>"}))
    ListConnectorsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the response of a ListConnectors operation is truncated, it will include a NextToken.\n         Send this NextToken in a subsequent request to continue listing from where it left\n         off.</p>"}))
    ListConnectorsOutput.type = Types::ListConnectorsOutput
    ListConnectorsRequest.add_member(:connector_name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'connectorNamePrefix', traits: {"smithy.api#documentation" => "<p>The name prefix that you want to use to search for and list connectors.</p>", "smithy.api#httpQuery" => "connectorNamePrefix"}))
    ListConnectorsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of connectors to list in one response.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListConnectorsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the response of a ListConnectors operation is truncated, it will include a NextToken.\n         Send this NextToken in a subsequent request to continue listing from where the previous\n         operation left off.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListConnectorsRequest.type = Types::ListConnectorsRequest
    ListCustomPluginsOutput.add_member(:custom_plugins, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofcustompluginsummary, location_name: 'customPlugins', traits: {"smithy.api#documentation" => "<p>An array of custom plugin descriptions.</p>"}))
    ListCustomPluginsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the response of a ListCustomPlugins operation is truncated, it will include a\n         NextToken. Send this NextToken in a subsequent request to continue listing from where the\n         previous operation left off.</p>"}))
    ListCustomPluginsOutput.type = Types::ListCustomPluginsOutput
    ListCustomPluginsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of custom plugins to list in one response.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListCustomPluginsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the response of a ListCustomPlugins operation is truncated, it will include a\n         NextToken. Send this NextToken in a subsequent request to continue listing from where the\n         previous operation left off.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListCustomPluginsRequest.add_member(:name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'namePrefix', traits: {"smithy.api#documentation" => "<p>Lists custom plugin names that start with the specified text string.</p>", "smithy.api#httpQuery" => "namePrefix"}))
    ListCustomPluginsRequest.type = Types::ListCustomPluginsRequest
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Lists the tags attached to the specified resource in the corresponding request.</p>"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource for which you want to list all attached tags.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListWorkerConfigurationsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the response of a ListWorkerConfigurations operation is truncated, it will include a\n         NextToken. Send this NextToken in a subsequent request to continue listing from where the\n         previous operation left off.</p>"}))
    ListWorkerConfigurationsOutput.add_member(:worker_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofworkerconfigurationsummary, location_name: 'workerConfigurations', traits: {"smithy.api#documentation" => "<p>An array of worker configuration descriptions.</p>"}))
    ListWorkerConfigurationsOutput.type = Types::ListWorkerConfigurationsOutput
    ListWorkerConfigurationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of worker configurations to list in one response.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListWorkerConfigurationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the response of a ListWorkerConfigurations operation is truncated, it will include a\n         NextToken. Send this NextToken in a subsequent request to continue listing from where the\n         previous operation left off.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListWorkerConfigurationsRequest.add_member(:name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'namePrefix', traits: {"smithy.api#documentation" => "<p>Lists worker configuration names that start with the specified text string.</p>", "smithy.api#httpQuery" => "namePrefix"}))
    ListWorkerConfigurationsRequest.type = Types::ListWorkerConfigurationsRequest
    LogDelivery.add_member(:worker_log_delivery, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerLogDelivery, location_name: 'workerLogDelivery', traits: {"smithy.api#documentation" => "<p>The workers can send worker logs to different destination types. This configuration\n         specifies the details of these destinations.</p>", "smithy.api#required" => {}}))
    LogDelivery.type = Types::LogDelivery
    LogDeliveryDescription.add_member(:worker_log_delivery, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerLogDeliveryDescription, location_name: 'workerLogDelivery', traits: {"smithy.api#documentation" => "<p>The workers can send worker logs to different destination types. This configuration\n         specifies the details of these destinations.</p>"}))
    LogDeliveryDescription.type = Types::LogDeliveryDescription
    NotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    NotFoundException.type = Types::NotFoundException
    Plugin.add_member(:custom_plugin, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomPlugin, location_name: 'customPlugin', traits: {"smithy.api#documentation" => "<p>Details about a custom plugin.</p>", "smithy.api#required" => {}}))
    Plugin.type = Types::Plugin
    PluginDescription.add_member(:custom_plugin, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomPluginDescription, location_name: 'customPlugin', traits: {"smithy.api#documentation" => "<p>Details about a custom plugin.</p>"}))
    PluginDescription.type = Types::PluginDescription
    ProvisionedCapacity.add_member(:mcu_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integermin1max8, location_name: 'mcuCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of microcontroller units (MCUs) allocated to each connector worker. The valid\n         values are 1,2,4,8.</p>", "smithy.api#required" => {}}))
    ProvisionedCapacity.add_member(:worker_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'workerCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of workers that are allocated to the connector.</p>", "smithy.api#required" => {}}))
    ProvisionedCapacity.type = Types::ProvisionedCapacity
    ProvisionedCapacityDescription.add_member(:mcu_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'mcuCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of microcontroller units (MCUs) allocated to each connector worker. The valid\n         values are 1,2,4,8.</p>"}))
    ProvisionedCapacityDescription.add_member(:worker_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'workerCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of workers that are allocated to the connector.</p>"}))
    ProvisionedCapacityDescription.type = Types::ProvisionedCapacityDescription
    ProvisionedCapacityUpdate.add_member(:mcu_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integermin1max8, location_name: 'mcuCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of microcontroller units (MCUs) allocated to each connector worker. The valid\n         values are 1,2,4,8.</p>", "smithy.api#required" => {}}))
    ProvisionedCapacityUpdate.add_member(:worker_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'workerCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of workers that are allocated to the connector.</p>", "smithy.api#required" => {}}))
    ProvisionedCapacityUpdate.type = Types::ProvisionedCapacityUpdate
    S3Location.add_member(:bucket_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'bucketArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an S3 bucket.</p>", "smithy.api#required" => {}}))
    S3Location.add_member(:file_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'fileKey', traits: {"smithy.api#documentation" => "<p>The file key for an object in an S3 bucket.</p>", "smithy.api#required" => {}}))
    S3Location.add_member(:object_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'objectVersion', traits: {"smithy.api#documentation" => "<p>The version of an object in an S3 bucket.</p>"}))
    S3Location.type = Types::S3Location
    S3LocationDescription.add_member(:bucket_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'bucketArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an S3 bucket.</p>"}))
    S3LocationDescription.add_member(:file_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'fileKey', traits: {"smithy.api#documentation" => "<p>The file key for an object in an S3 bucket.</p>"}))
    S3LocationDescription.add_member(:object_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'objectVersion', traits: {"smithy.api#documentation" => "<p>The version of an object in an S3 bucket.</p>"}))
    S3LocationDescription.type = Types::S3LocationDescription
    S3LogDelivery.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'bucket', traits: {"smithy.api#documentation" => "<p>The name of the S3 bucket that is the destination for log delivery.</p>"}))
    S3LogDelivery.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'enabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether connector logs get sent to the specified Amazon S3 destination.</p>", "smithy.api#required" => {}}))
    S3LogDelivery.add_member(:prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'prefix', traits: {"smithy.api#documentation" => "<p>The S3 prefix that is the destination for log delivery.</p>"}))
    S3LogDelivery.type = Types::S3LogDelivery
    S3LogDeliveryDescription.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'bucket', traits: {"smithy.api#documentation" => "<p>The name of the S3 bucket that is the destination for log delivery.</p>"}))
    S3LogDeliveryDescription.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'enabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether connector logs get sent to the specified Amazon S3 destination.</p>"}))
    S3LogDeliveryDescription.add_member(:prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'prefix', traits: {"smithy.api#documentation" => "<p>The S3 prefix that is the destination for log delivery.</p>"}))
    S3LogDeliveryDescription.type = Types::S3LogDeliveryDescription
    ScaleInPolicy.add_member(:cpu_utilization_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Integermin1max100, location_name: 'cpuUtilizationPercentage', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Specifies the CPU utilization percentage threshold at which you want connector scale in\n         to be triggered.</p>", "smithy.api#required" => {}}))
    ScaleInPolicy.type = Types::ScaleInPolicy
    ScaleInPolicyDescription.add_member(:cpu_utilization_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'cpuUtilizationPercentage', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Specifies the CPU utilization percentage threshold at which you want connector scale in\n         to be triggered.</p>"}))
    ScaleInPolicyDescription.type = Types::ScaleInPolicyDescription
    ScaleInPolicyUpdate.add_member(:cpu_utilization_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Integermin1max100, location_name: 'cpuUtilizationPercentage', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The target CPU utilization percentage threshold at which you want connector scale in to\n         be triggered.</p>", "smithy.api#required" => {}}))
    ScaleInPolicyUpdate.type = Types::ScaleInPolicyUpdate
    ScaleOutPolicy.add_member(:cpu_utilization_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Integermin1max100, location_name: 'cpuUtilizationPercentage', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The CPU utilization percentage threshold at which you want connector scale out to be\n         triggered.</p>", "smithy.api#required" => {}}))
    ScaleOutPolicy.type = Types::ScaleOutPolicy
    ScaleOutPolicyDescription.add_member(:cpu_utilization_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'cpuUtilizationPercentage', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The CPU utilization percentage threshold at which you want connector scale out to be\n         triggered.</p>"}))
    ScaleOutPolicyDescription.type = Types::ScaleOutPolicyDescription
    ScaleOutPolicyUpdate.add_member(:cpu_utilization_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Integermin1max100, location_name: 'cpuUtilizationPercentage', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The target CPU utilization percentage threshold at which you want connector scale out to\n         be triggered.</p>", "smithy.api#required" => {}}))
    ScaleOutPolicyUpdate.type = Types::ScaleOutPolicyUpdate
    ServiceUnavailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    StateDescription.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'code', traits: {"smithy.api#documentation" => "<p>A code that describes the state of a resource.</p>"}))
    StateDescription.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A message that describes the state of a resource.</p>"}))
    StateDescription.type = Types::StateDescription
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceOutput.type = Types::TagResourceOutput
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource to which you want to attach tags.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags that you want to attach to the resource.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    Tags.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TooManyRequestsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UnauthorizedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    UnauthorizedException.type = Types::UnauthorizedException
    UntagResourceOutput.type = Types::UntagResourceOutput
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource from which you want to remove tags.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>The keys of the tags that you want to remove from the resource.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateConnectorOutput.add_member(:connector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'connectorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the connector.</p>"}))
    UpdateConnectorOutput.add_member(:connector_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorState, location_name: 'connectorState', traits: {"smithy.api#documentation" => "<p>The state of the connector.</p>"}))
    UpdateConnectorOutput.add_member(:connector_operation_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'connectorOperationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the connector operation.</p>"}))
    UpdateConnectorOutput.type = Types::UpdateConnectorOutput
    UpdateConnectorRequest.add_member(:capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityUpdate, location_name: 'capacity', traits: {"smithy.api#documentation" => "<p>The target capacity.</p>"}))
    UpdateConnectorRequest.add_member(:connector_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorConfigurationUpdate, location_name: 'connectorConfiguration', traits: {"smithy.api#documentation" => "<p>A map of keys to values that represent the configuration for the connector.</p>"}))
    UpdateConnectorRequest.add_member(:connector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'connectorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the connector that you want to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConnectorRequest.add_member(:current_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'currentVersion', traits: {"smithy.api#documentation" => "<p>The current version of the connector that you want to update.</p>", "smithy.api#httpQuery" => "currentVersion", "smithy.api#required" => {}}))
    UpdateConnectorRequest.type = Types::UpdateConnectorRequest
    Vpc.add_member(:security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'securityGroups', traits: {"smithy.api#documentation" => "<p>The security groups for the connector.</p>"}))
    Vpc.add_member(:subnets, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'subnets', traits: {"smithy.api#documentation" => "<p>The subnets for the connector.</p>", "smithy.api#required" => {}}))
    Vpc.type = Types::Vpc
    VpcDescription.add_member(:security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'securityGroups', traits: {"smithy.api#documentation" => "<p>The security groups for the connector.</p>"}))
    VpcDescription.add_member(:subnets, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'subnets', traits: {"smithy.api#documentation" => "<p>The subnets for the connector.</p>"}))
    VpcDescription.type = Types::VpcDescription
    WorkerConfiguration.add_member(:revision, Smithy::Schema::Shapes::ShapeRef.new(shape: Longmin1, location_name: 'revision', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The revision of the worker configuration.</p>", "smithy.api#required" => {}}))
    WorkerConfiguration.add_member(:worker_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'workerConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the worker configuration.</p>", "smithy.api#required" => {}}))
    WorkerConfiguration.type = Types::WorkerConfiguration
    WorkerConfigurationDescription.add_member(:revision, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'revision', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The revision of the worker configuration.</p>"}))
    WorkerConfigurationDescription.add_member(:worker_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'workerConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the worker configuration.</p>"}))
    WorkerConfigurationDescription.type = Types::WorkerConfigurationDescription
    WorkerConfigurationRevisionDescription.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time that the worker configuration was created.</p>"}))
    WorkerConfigurationRevisionDescription.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the worker configuration revision.</p>"}))
    WorkerConfigurationRevisionDescription.add_member(:properties_file_content, Smithy::Schema::Shapes::ShapeRef.new(shape: Sensitivestring, location_name: 'propertiesFileContent', traits: {"smithy.api#documentation" => "<p>Base64 encoded contents of the connect-distributed.properties file.</p>"}))
    WorkerConfigurationRevisionDescription.add_member(:revision, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'revision', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The description of a revision of the worker configuration.</p>"}))
    WorkerConfigurationRevisionDescription.type = Types::WorkerConfigurationRevisionDescription
    WorkerConfigurationRevisionSummary.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time that a worker configuration revision was created.</p>"}))
    WorkerConfigurationRevisionSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of a worker configuration revision.</p>"}))
    WorkerConfigurationRevisionSummary.add_member(:revision, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'revision', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The revision of a worker configuration.</p>"}))
    WorkerConfigurationRevisionSummary.type = Types::WorkerConfigurationRevisionSummary
    WorkerConfigurationSummary.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time that a worker configuration was created.</p>"}))
    WorkerConfigurationSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of a worker configuration.</p>"}))
    WorkerConfigurationSummary.add_member(:latest_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerConfigurationRevisionSummary, location_name: 'latestRevision', traits: {"smithy.api#documentation" => "<p>The latest revision of a worker configuration.</p>"}))
    WorkerConfigurationSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the worker configuration.</p>"}))
    WorkerConfigurationSummary.add_member(:worker_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'workerConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the worker configuration.</p>"}))
    WorkerConfigurationSummary.add_member(:worker_configuration_state, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerConfigurationState, location_name: 'workerConfigurationState', traits: {"smithy.api#documentation" => "<p>The state of the worker configuration.</p>"}))
    WorkerConfigurationSummary.type = Types::WorkerConfigurationSummary
    WorkerLogDelivery.add_member(:cloud_watch_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsLogDelivery, location_name: 'cloudWatchLogs', traits: {"smithy.api#documentation" => "<p>Details about delivering logs to Amazon CloudWatch Logs.</p>"}))
    WorkerLogDelivery.add_member(:firehose, Smithy::Schema::Shapes::ShapeRef.new(shape: FirehoseLogDelivery, location_name: 'firehose', traits: {"smithy.api#documentation" => "<p>Details about delivering logs to Amazon Kinesis Data Firehose.</p>"}))
    WorkerLogDelivery.add_member(:s3, Smithy::Schema::Shapes::ShapeRef.new(shape: S3LogDelivery, location_name: 's3', traits: {"smithy.api#documentation" => "<p>Details about delivering logs to Amazon S3.</p>"}))
    WorkerLogDelivery.type = Types::WorkerLogDelivery
    WorkerLogDeliveryDescription.add_member(:cloud_watch_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsLogDeliveryDescription, location_name: 'cloudWatchLogs', traits: {"smithy.api#documentation" => "<p>Details about delivering logs to Amazon CloudWatch Logs.</p>"}))
    WorkerLogDeliveryDescription.add_member(:firehose, Smithy::Schema::Shapes::ShapeRef.new(shape: FirehoseLogDeliveryDescription, location_name: 'firehose', traits: {"smithy.api#documentation" => "<p>Details about delivering logs to Amazon Kinesis Data Firehose.</p>"}))
    WorkerLogDeliveryDescription.add_member(:s3, Smithy::Schema::Shapes::ShapeRef.new(shape: S3LogDeliveryDescription, location_name: 's3', traits: {"smithy.api#documentation" => "<p>Details about delivering logs to Amazon S3.</p>"}))
    WorkerLogDeliveryDescription.type = Types::WorkerLogDeliveryDescription
    WorkerSetting.add_member(:capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityDescription, location_name: 'capacity'))
    WorkerSetting.type = Types::WorkerSetting
    Listofconnectoroperationstep.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorOperationStep)
    Listofconnectoroperationsummary.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorOperationSummary)
    Listofconnectorsummary.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorSummary)
    Listofcustompluginsummary.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CustomPluginSummary)
    Listofplugin.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Plugin)
    Listofplugindescription.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PluginDescription)
    Listofworkerconfigurationsummary.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerConfigurationSummary)
    ListofString.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)

    KafkaConnect = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.kafkaconnect#KafkaConnect"
      service.name = "KafkaConnect"
      service.version = "2021-09-14"
      service.traits = {"aws.api#service" => {"sdkId" => "KafkaConnect", "name" => "kafkaconnect", "arnNamespace" => "kafkaconnect", "cloudFormationName" => "KafkaConnect", "cloudTrailEventSource" => "kafkaconnect.amazonaws.com", "endpointPrefix" => "kafkaconnect"}, "aws.auth#sigv4" => {"name" => "kafkaconnect"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "Date", "X-Amz-Target", "x-amzn-platform-id", "x-amzn-trace-id", "Authorization", "Content-Type", "Credentials", "X-Amz-Date", "X-Api-Key", "X-Amz-Security-Token", "x-amz-content-sha256", "X-Amz-User-Agent"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-errormessage", "x-amzn-trace-id", "x-amz-apigw-id", "date"], "origin" => "*", "maxAge" => 86400}, "smithy.api#title" => "Managed Streaming for Kafka Connect"}
      service.add_operation(:create_connector, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafkaconnect#CreateConnector"
        operation.name = "CreateConnector"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectorOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/connectors", "code" => 200}}
      end)
      service.add_operation(:create_custom_plugin, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafkaconnect#CreateCustomPlugin"
        operation.name = "CreateCustomPlugin"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomPluginRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomPluginOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/custom-plugins", "code" => 200}}
      end)
      service.add_operation(:create_worker_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafkaconnect#CreateWorkerConfiguration"
        operation.name = "CreateWorkerConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkerConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkerConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/worker-configurations", "code" => 200}}
      end)
      service.add_operation(:delete_connector, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafkaconnect#DeleteConnector"
        operation.name = "DeleteConnector"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConnectorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConnectorOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/connectors/{connectorArn}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_custom_plugin, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafkaconnect#DeleteCustomPlugin"
        operation.name = "DeleteCustomPlugin"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCustomPluginRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCustomPluginOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/custom-plugins/{customPluginArn}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_worker_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafkaconnect#DeleteWorkerConfiguration"
        operation.name = "DeleteWorkerConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkerConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkerConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/worker-configurations/{workerConfigurationArn}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_connector, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafkaconnect#DescribeConnector"
        operation.name = "DescribeConnector"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConnectorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConnectorOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/connectors/{connectorArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_connector_operation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafkaconnect#DescribeConnectorOperation"
        operation.name = "DescribeConnectorOperation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConnectorOperationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConnectorOperationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/connectorOperations/{connectorOperationArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_custom_plugin, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafkaconnect#DescribeCustomPlugin"
        operation.name = "DescribeCustomPlugin"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCustomPluginRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCustomPluginOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/custom-plugins/{customPluginArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_worker_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafkaconnect#DescribeWorkerConfiguration"
        operation.name = "DescribeWorkerConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkerConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkerConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/worker-configurations/{workerConfigurationArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_connector_operations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafkaconnect#ListConnectorOperations"
        operation.name = "ListConnectorOperations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConnectorOperationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConnectorOperationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/connectors/{connectorArn}/operations", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListConnectorOperations.new
      end)
      service.add_operation(:list_connectors, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafkaconnect#ListConnectors"
        operation.name = "ListConnectors"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConnectorsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConnectorsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/connectors", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListConnectors.new
      end)
      service.add_operation(:list_custom_plugins, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafkaconnect#ListCustomPlugins"
        operation.name = "ListCustomPlugins"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomPluginsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomPluginsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/custom-plugins", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCustomPlugins.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafkaconnect#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v1/tags/{resourceArn}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_worker_configurations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafkaconnect#ListWorkerConfigurations"
        operation.name = "ListWorkerConfigurations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkerConfigurationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkerConfigurationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/worker-configurations", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWorkerConfigurations.new
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafkaconnect#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v1/tags/{resourceArn}", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafkaconnect#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v1/tags/{resourceArn}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_connector, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafkaconnect#UpdateConnector"
        operation.name = "UpdateConnector"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConnectorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConnectorOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/connectors/{connectorArn}", "code" => 200}, "smithy.api#idempotent" => {}}
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
