# frozen_string_literal: true

# This is generated code!

module Aws::KafkaConnect
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ApacheKafkaCluster = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#ApacheKafkaCluster", name: "ApacheKafkaCluster")
    ApacheKafkaClusterDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#ApacheKafkaClusterDescription", name: "ApacheKafkaClusterDescription")
    AutoScaling = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#AutoScaling", name: "AutoScaling")
    AutoScalingDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#AutoScalingDescription", name: "AutoScalingDescription")
    AutoScalingUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#AutoScalingUpdate", name: "AutoScalingUpdate")
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#BadRequestException", name: "BadRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Capacity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#Capacity", name: "Capacity")
    CapacityDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#CapacityDescription", name: "CapacityDescription")
    CapacityUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#CapacityUpdate", name: "CapacityUpdate")
    CloudWatchLogsLogDelivery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#CloudWatchLogsLogDelivery", name: "CloudWatchLogsLogDelivery")
    CloudWatchLogsLogDeliveryDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#CloudWatchLogsLogDeliveryDescription", name: "CloudWatchLogsLogDeliveryDescription")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectorConfiguration = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.kafkaconnect#ConnectorConfiguration", name: "ConnectorConfiguration", traits: {"smithy.api#sensitive" => {}})
    ConnectorConfigurationUpdate = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.kafkaconnect#ConnectorConfigurationUpdate", name: "ConnectorConfigurationUpdate", traits: {"smithy.api#sensitive" => {}})
    ConnectorOperationState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kafkaconnect#ConnectorOperationState", name: "ConnectorOperationState", traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING"}, {"value" => "UPDATE_IN_PROGRESS", "name" => "UPDATE_IN_PROGRESS"}, {"value" => "UPDATE_COMPLETE", "name" => "UPDATE_COMPLETE"}, {"value" => "UPDATE_FAILED", "name" => "UPDATE_FAILED"}, {"value" => "ROLLBACK_IN_PROGRESS", "name" => "ROLLBACK_IN_PROGRESS"}, {"value" => "ROLLBACK_FAILED", "name" => "ROLLBACK_FAILED"}, {"value" => "ROLLBACK_COMPLETE", "name" => "ROLLBACK_COMPLETE"}]})
    ConnectorOperationStep = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#ConnectorOperationStep", name: "ConnectorOperationStep")
    ConnectorOperationStepState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kafkaconnect#ConnectorOperationStepState", name: "ConnectorOperationStepState", traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "COMPLETED", "name" => "COMPLETED"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "CANCELLED", "name" => "CANCELLED"}]})
    ConnectorOperationStepType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kafkaconnect#ConnectorOperationStepType", name: "ConnectorOperationStepType", traits: {"smithy.api#enum" => [{"value" => "INITIALIZE_UPDATE", "name" => "INITIALIZE_UPDATE"}, {"value" => "FINALIZE_UPDATE", "name" => "FINALIZE_UPDATE"}, {"value" => "UPDATE_WORKER_SETTING", "name" => "UPDATE_WORKER_SETTING"}, {"value" => "UPDATE_CONNECTOR_CONFIGURATION", "name" => "UPDATE_CONNECTOR_CONFIGURATION"}, {"value" => "VALIDATE_UPDATE", "name" => "VALIDATE_UPDATE"}]})
    ConnectorOperationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#ConnectorOperationSummary", name: "ConnectorOperationSummary")
    ConnectorOperationType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kafkaconnect#ConnectorOperationType", name: "ConnectorOperationType", traits: {"smithy.api#enum" => [{"value" => "UPDATE_WORKER_SETTING", "name" => "UPDATE_WORKER_SETTING"}, {"value" => "UPDATE_CONNECTOR_CONFIGURATION", "name" => "UPDATE_CONNECTOR_CONFIGURATION"}, {"value" => "ISOLATE_CONNECTOR", "name" => "ISOLATE_CONNECTOR"}, {"value" => "RESTORE_CONNECTOR", "name" => "RESTORE_CONNECTOR"}]})
    ConnectorState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kafkaconnect#ConnectorState", name: "ConnectorState", traits: {"smithy.api#enum" => [{"value" => "RUNNING", "name" => "RUNNING"}, {"value" => "CREATING", "name" => "CREATING"}, {"value" => "UPDATING", "name" => "UPDATING"}, {"value" => "DELETING", "name" => "DELETING"}, {"value" => "FAILED", "name" => "FAILED"}]})
    ConnectorSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#ConnectorSummary", name: "ConnectorSummary")
    CreateConnectorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#CreateConnectorOutput", name: "CreateConnectorOutput")
    CreateConnectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#CreateConnectorRequest", name: "CreateConnectorRequest")
    CreateCustomPluginOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#CreateCustomPluginOutput", name: "CreateCustomPluginOutput")
    CreateCustomPluginRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#CreateCustomPluginRequest", name: "CreateCustomPluginRequest")
    CreateWorkerConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#CreateWorkerConfigurationOutput", name: "CreateWorkerConfigurationOutput")
    CreateWorkerConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#CreateWorkerConfigurationRequest", name: "CreateWorkerConfigurationRequest")
    CustomPlugin = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#CustomPlugin", name: "CustomPlugin")
    CustomPluginContentType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kafkaconnect#CustomPluginContentType", name: "CustomPluginContentType", traits: {"smithy.api#enum" => [{"value" => "JAR", "name" => "JAR"}, {"value" => "ZIP", "name" => "ZIP"}]})
    CustomPluginDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#CustomPluginDescription", name: "CustomPluginDescription")
    CustomPluginFileDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#CustomPluginFileDescription", name: "CustomPluginFileDescription")
    CustomPluginLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#CustomPluginLocation", name: "CustomPluginLocation")
    CustomPluginLocationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#CustomPluginLocationDescription", name: "CustomPluginLocationDescription")
    CustomPluginRevisionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#CustomPluginRevisionSummary", name: "CustomPluginRevisionSummary")
    CustomPluginState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kafkaconnect#CustomPluginState", name: "CustomPluginState", traits: {"smithy.api#enum" => [{"value" => "CREATING", "name" => "CREATING"}, {"value" => "CREATE_FAILED", "name" => "CREATE_FAILED"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "UPDATING", "name" => "UPDATING"}, {"value" => "UPDATE_FAILED", "name" => "UPDATE_FAILED"}, {"value" => "DELETING", "name" => "DELETING"}]})
    CustomPluginSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#CustomPluginSummary", name: "CustomPluginSummary")
    DeleteConnectorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#DeleteConnectorOutput", name: "DeleteConnectorOutput")
    DeleteConnectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#DeleteConnectorRequest", name: "DeleteConnectorRequest")
    DeleteCustomPluginOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#DeleteCustomPluginOutput", name: "DeleteCustomPluginOutput")
    DeleteCustomPluginRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#DeleteCustomPluginRequest", name: "DeleteCustomPluginRequest")
    DeleteWorkerConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#DeleteWorkerConfigurationOutput", name: "DeleteWorkerConfigurationOutput")
    DeleteWorkerConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#DeleteWorkerConfigurationRequest", name: "DeleteWorkerConfigurationRequest")
    DescribeConnectorOperationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#DescribeConnectorOperationRequest", name: "DescribeConnectorOperationRequest")
    DescribeConnectorOperationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#DescribeConnectorOperationResponse", name: "DescribeConnectorOperationResponse")
    DescribeConnectorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#DescribeConnectorOutput", name: "DescribeConnectorOutput")
    DescribeConnectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#DescribeConnectorRequest", name: "DescribeConnectorRequest")
    DescribeCustomPluginOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#DescribeCustomPluginOutput", name: "DescribeCustomPluginOutput")
    DescribeCustomPluginRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#DescribeCustomPluginRequest", name: "DescribeCustomPluginRequest")
    DescribeWorkerConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#DescribeWorkerConfigurationOutput", name: "DescribeWorkerConfigurationOutput")
    DescribeWorkerConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#DescribeWorkerConfigurationRequest", name: "DescribeWorkerConfigurationRequest")
    FirehoseLogDelivery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#FirehoseLogDelivery", name: "FirehoseLogDelivery")
    FirehoseLogDeliveryDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#FirehoseLogDeliveryDescription", name: "FirehoseLogDeliveryDescription")
    ForbiddenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#ForbiddenException", name: "ForbiddenException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    InternalServerErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#InternalServerErrorException", name: "InternalServerErrorException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    KafkaCluster = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#KafkaCluster", name: "KafkaCluster")
    KafkaClusterClientAuthentication = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#KafkaClusterClientAuthentication", name: "KafkaClusterClientAuthentication")
    KafkaClusterClientAuthenticationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#KafkaClusterClientAuthenticationDescription", name: "KafkaClusterClientAuthenticationDescription")
    KafkaClusterClientAuthenticationType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kafkaconnect#KafkaClusterClientAuthenticationType", name: "KafkaClusterClientAuthenticationType", traits: {"smithy.api#enum" => [{"value" => "NONE", "name" => "NONE"}, {"value" => "IAM", "name" => "IAM"}]})
    KafkaClusterDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#KafkaClusterDescription", name: "KafkaClusterDescription")
    KafkaClusterEncryptionInTransit = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#KafkaClusterEncryptionInTransit", name: "KafkaClusterEncryptionInTransit")
    KafkaClusterEncryptionInTransitDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#KafkaClusterEncryptionInTransitDescription", name: "KafkaClusterEncryptionInTransitDescription")
    KafkaClusterEncryptionInTransitType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kafkaconnect#KafkaClusterEncryptionInTransitType", name: "KafkaClusterEncryptionInTransitType", traits: {"smithy.api#enum" => [{"value" => "PLAINTEXT", "name" => "PLAINTEXT"}, {"value" => "TLS", "name" => "TLS"}]})
    ListConnectorOperationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#ListConnectorOperationsRequest", name: "ListConnectorOperationsRequest")
    ListConnectorOperationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#ListConnectorOperationsResponse", name: "ListConnectorOperationsResponse")
    ListConnectorsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#ListConnectorsOutput", name: "ListConnectorsOutput")
    ListConnectorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#ListConnectorsRequest", name: "ListConnectorsRequest")
    ListCustomPluginsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#ListCustomPluginsOutput", name: "ListCustomPluginsOutput")
    ListCustomPluginsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#ListCustomPluginsRequest", name: "ListCustomPluginsRequest")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListWorkerConfigurationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#ListWorkerConfigurationsOutput", name: "ListWorkerConfigurationsOutput")
    ListWorkerConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#ListWorkerConfigurationsRequest", name: "ListWorkerConfigurationsRequest")
    LogDelivery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#LogDelivery", name: "LogDelivery")
    LogDeliveryDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#LogDeliveryDescription", name: "LogDeliveryDescription")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kafkaconnect#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#NotFoundException", name: "NotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Plugin = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#Plugin", name: "Plugin")
    PluginDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#PluginDescription", name: "PluginDescription")
    ProvisionedCapacity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#ProvisionedCapacity", name: "ProvisionedCapacity")
    ProvisionedCapacityDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#ProvisionedCapacityDescription", name: "ProvisionedCapacityDescription")
    ProvisionedCapacityUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#ProvisionedCapacityUpdate", name: "ProvisionedCapacityUpdate")
    S3Location = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#S3Location", name: "S3Location")
    S3LocationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#S3LocationDescription", name: "S3LocationDescription")
    S3LogDelivery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#S3LogDelivery", name: "S3LogDelivery")
    S3LogDeliveryDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#S3LogDeliveryDescription", name: "S3LogDeliveryDescription")
    ScaleInPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#ScaleInPolicy", name: "ScaleInPolicy")
    ScaleInPolicyDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#ScaleInPolicyDescription", name: "ScaleInPolicyDescription")
    ScaleInPolicyUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#ScaleInPolicyUpdate", name: "ScaleInPolicyUpdate")
    ScaleOutPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#ScaleOutPolicy", name: "ScaleOutPolicy")
    ScaleOutPolicyDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#ScaleOutPolicyDescription", name: "ScaleOutPolicyDescription")
    ScaleOutPolicyUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#ScaleOutPolicyUpdate", name: "ScaleOutPolicyUpdate")
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#ServiceUnavailableException", name: "ServiceUnavailableException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    StateDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#StateDescription", name: "StateDescription")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kafkaconnect#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafkaconnect#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#TagResourceOutput", name: "TagResourceOutput")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#TagResourceRequest", name: "TagResourceRequest")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kafkaconnect#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.kafkaconnect#Tags", name: "Tags", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#TooManyRequestsException", name: "TooManyRequestsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UnauthorizedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#UnauthorizedException", name: "UnauthorizedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#UntagResourceOutput", name: "UntagResourceOutput")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#UntagResourceRequest", name: "UntagResourceRequest")
    UpdateConnectorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#UpdateConnectorOutput", name: "UpdateConnectorOutput")
    UpdateConnectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#UpdateConnectorRequest", name: "UpdateConnectorRequest")
    Vpc = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#Vpc", name: "Vpc")
    VpcDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#VpcDescription", name: "VpcDescription")
    WorkerConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#WorkerConfiguration", name: "WorkerConfiguration")
    WorkerConfigurationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#WorkerConfigurationDescription", name: "WorkerConfigurationDescription")
    WorkerConfigurationRevisionDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#WorkerConfigurationRevisionDescription", name: "WorkerConfigurationRevisionDescription")
    WorkerConfigurationRevisionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#WorkerConfigurationRevisionSummary", name: "WorkerConfigurationRevisionSummary")
    WorkerConfigurationState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kafkaconnect#WorkerConfigurationState", name: "WorkerConfigurationState", traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "DELETING", "name" => "DELETING"}]})
    WorkerConfigurationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#WorkerConfigurationSummary", name: "WorkerConfigurationSummary")
    WorkerLogDelivery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#WorkerLogDelivery", name: "WorkerLogDelivery")
    WorkerLogDeliveryDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#WorkerLogDeliveryDescription", name: "WorkerLogDeliveryDescription")
    WorkerSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafkaconnect#WorkerSetting", name: "WorkerSetting")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.kafkaconnect#__boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kafkaconnect#__integer", name: "Integer", traits: {"smithy.api#default" => 0})
    Integermin1max100 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kafkaconnect#__integerMin1Max100", name: "Integermin1max100", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 1, "max" => 100}})
    Integermin1max8 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kafkaconnect#__integerMin1Max8", name: "Integermin1max8", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 1, "max" => 8}})
    Listofconnectoroperationstep = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafkaconnect#__listOfConnectorOperationStep", name: "Listofconnectoroperationstep")
    Listofconnectoroperationsummary = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafkaconnect#__listOfConnectorOperationSummary", name: "Listofconnectoroperationsummary")
    Listofconnectorsummary = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafkaconnect#__listOfConnectorSummary", name: "Listofconnectorsummary")
    Listofcustompluginsummary = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafkaconnect#__listOfCustomPluginSummary", name: "Listofcustompluginsummary")
    Listofplugin = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafkaconnect#__listOfPlugin", name: "Listofplugin")
    Listofplugindescription = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafkaconnect#__listOfPluginDescription", name: "Listofplugindescription")
    Listofworkerconfigurationsummary = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafkaconnect#__listOfWorkerConfigurationSummary", name: "Listofworkerconfigurationsummary")
    ListofString = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafkaconnect#__listOf__string", name: "ListofString")
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kafkaconnect#__long", name: "Long", traits: {"smithy.api#default" => 0})
    Longmin1 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kafkaconnect#__longMin1", name: "Longmin1", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 1, "max" => 9223372036854775807}})
    Sensitivestring = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kafkaconnect#__sensitiveString", name: "Sensitivestring", traits: {"smithy.api#sensitive" => {}})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kafkaconnect#__string", name: "String")
    Stringmax1024 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kafkaconnect#__stringMax1024", name: "Stringmax1024", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    Stringmin1max128 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kafkaconnect#__stringMin1Max128", name: "Stringmin1max128", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    Timestampiso8601 = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.kafkaconnect#__timestampIso8601", name: "Timestampiso8601", traits: {"smithy.api#timestampFormat" => "date-time"})

    ApacheKafkaCluster.add_member(:bootstrap_servers, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "bootstrapServers", traits: {"smithy.api#required" => {}}))
    ApacheKafkaCluster.add_member(:vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: Vpc, name: "vpc", traits: {"smithy.api#required" => {}}))
    ApacheKafkaCluster.type = Types::ApacheKafkaCluster
    ApacheKafkaClusterDescription.add_member(:bootstrap_servers, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "bootstrapServers"))
    ApacheKafkaClusterDescription.add_member(:vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcDescription, name: "vpc"))
    ApacheKafkaClusterDescription.type = Types::ApacheKafkaClusterDescription
    AutoScaling.add_member(:max_worker_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "maxWorkerCount", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    AutoScaling.add_member(:mcu_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integermin1max8, name: "mcuCount", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    AutoScaling.add_member(:min_worker_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "minWorkerCount", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    AutoScaling.add_member(:scale_in_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ScaleInPolicy, name: "scaleInPolicy"))
    AutoScaling.add_member(:scale_out_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ScaleOutPolicy, name: "scaleOutPolicy"))
    AutoScaling.type = Types::AutoScaling
    AutoScalingDescription.add_member(:max_worker_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "maxWorkerCount", traits: {"smithy.api#default" => 0}))
    AutoScalingDescription.add_member(:mcu_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "mcuCount", traits: {"smithy.api#default" => 0}))
    AutoScalingDescription.add_member(:min_worker_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "minWorkerCount", traits: {"smithy.api#default" => 0}))
    AutoScalingDescription.add_member(:scale_in_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ScaleInPolicyDescription, name: "scaleInPolicy"))
    AutoScalingDescription.add_member(:scale_out_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ScaleOutPolicyDescription, name: "scaleOutPolicy"))
    AutoScalingDescription.type = Types::AutoScalingDescription
    AutoScalingUpdate.add_member(:max_worker_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "maxWorkerCount", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    AutoScalingUpdate.add_member(:mcu_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integermin1max8, name: "mcuCount", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    AutoScalingUpdate.add_member(:min_worker_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "minWorkerCount", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    AutoScalingUpdate.add_member(:scale_in_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ScaleInPolicyUpdate, name: "scaleInPolicy", traits: {"smithy.api#required" => {}}))
    AutoScalingUpdate.add_member(:scale_out_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ScaleOutPolicyUpdate, name: "scaleOutPolicy", traits: {"smithy.api#required" => {}}))
    AutoScalingUpdate.type = Types::AutoScalingUpdate
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    BadRequestException.type = Types::BadRequestException
    Capacity.add_member(:auto_scaling, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScaling, name: "autoScaling"))
    Capacity.add_member(:provisioned_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedCapacity, name: "provisionedCapacity"))
    Capacity.type = Types::Capacity
    CapacityDescription.add_member(:auto_scaling, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingDescription, name: "autoScaling"))
    CapacityDescription.add_member(:provisioned_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedCapacityDescription, name: "provisionedCapacity"))
    CapacityDescription.type = Types::CapacityDescription
    CapacityUpdate.add_member(:auto_scaling, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingUpdate, name: "autoScaling"))
    CapacityUpdate.add_member(:provisioned_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedCapacityUpdate, name: "provisionedCapacity"))
    CapacityUpdate.type = Types::CapacityUpdate
    CloudWatchLogsLogDelivery.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    CloudWatchLogsLogDelivery.add_member(:log_group, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "logGroup"))
    CloudWatchLogsLogDelivery.type = Types::CloudWatchLogsLogDelivery
    CloudWatchLogsLogDeliveryDescription.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enabled", traits: {"smithy.api#default" => false}))
    CloudWatchLogsLogDeliveryDescription.add_member(:log_group, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "logGroup"))
    CloudWatchLogsLogDeliveryDescription.type = Types::CloudWatchLogsLogDeliveryDescription
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ConflictException.type = Types::ConflictException
    ConnectorConfiguration.key = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key")
    ConnectorConfiguration.value = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value")
    ConnectorConfigurationUpdate.key = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key")
    ConnectorConfigurationUpdate.value = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value")
    ConnectorOperationStep.add_member(:step_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorOperationStepType, name: "stepType"))
    ConnectorOperationStep.add_member(:step_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorOperationStepState, name: "stepState"))
    ConnectorOperationStep.type = Types::ConnectorOperationStep
    ConnectorOperationSummary.add_member(:connector_operation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "connectorOperationArn"))
    ConnectorOperationSummary.add_member(:connector_operation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorOperationType, name: "connectorOperationType"))
    ConnectorOperationSummary.add_member(:connector_operation_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorOperationState, name: "connectorOperationState"))
    ConnectorOperationSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "creationTime"))
    ConnectorOperationSummary.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "endTime"))
    ConnectorOperationSummary.type = Types::ConnectorOperationSummary
    ConnectorSummary.add_member(:capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityDescription, name: "capacity"))
    ConnectorSummary.add_member(:connector_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "connectorArn"))
    ConnectorSummary.add_member(:connector_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "connectorDescription"))
    ConnectorSummary.add_member(:connector_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "connectorName"))
    ConnectorSummary.add_member(:connector_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorState, name: "connectorState"))
    ConnectorSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "creationTime"))
    ConnectorSummary.add_member(:current_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "currentVersion"))
    ConnectorSummary.add_member(:kafka_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaClusterDescription, name: "kafkaCluster"))
    ConnectorSummary.add_member(:kafka_cluster_client_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaClusterClientAuthenticationDescription, name: "kafkaClusterClientAuthentication"))
    ConnectorSummary.add_member(:kafka_cluster_encryption_in_transit, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaClusterEncryptionInTransitDescription, name: "kafkaClusterEncryptionInTransit"))
    ConnectorSummary.add_member(:kafka_connect_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "kafkaConnectVersion"))
    ConnectorSummary.add_member(:log_delivery, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDeliveryDescription, name: "logDelivery"))
    ConnectorSummary.add_member(:plugins, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofplugindescription, name: "plugins"))
    ConnectorSummary.add_member(:service_execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceExecutionRoleArn"))
    ConnectorSummary.add_member(:worker_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerConfigurationDescription, name: "workerConfiguration"))
    ConnectorSummary.type = Types::ConnectorSummary
    CreateConnectorOutput.add_member(:connector_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "connectorArn"))
    CreateConnectorOutput.add_member(:connector_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "connectorName"))
    CreateConnectorOutput.add_member(:connector_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorState, name: "connectorState"))
    CreateConnectorOutput.type = Types::CreateConnectorOutput
    CreateConnectorRequest.add_member(:capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: Capacity, name: "capacity", traits: {"smithy.api#required" => {}}))
    CreateConnectorRequest.add_member(:connector_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorConfiguration, name: "connectorConfiguration", traits: {"smithy.api#required" => {}}))
    CreateConnectorRequest.add_member(:connector_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax1024, name: "connectorDescription"))
    CreateConnectorRequest.add_member(:connector_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max128, name: "connectorName", traits: {"smithy.api#required" => {}}))
    CreateConnectorRequest.add_member(:kafka_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaCluster, name: "kafkaCluster", traits: {"smithy.api#required" => {}}))
    CreateConnectorRequest.add_member(:kafka_cluster_client_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaClusterClientAuthentication, name: "kafkaClusterClientAuthentication", traits: {"smithy.api#required" => {}}))
    CreateConnectorRequest.add_member(:kafka_cluster_encryption_in_transit, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaClusterEncryptionInTransit, name: "kafkaClusterEncryptionInTransit", traits: {"smithy.api#required" => {}}))
    CreateConnectorRequest.add_member(:kafka_connect_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "kafkaConnectVersion", traits: {"smithy.api#required" => {}}))
    CreateConnectorRequest.add_member(:log_delivery, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDelivery, name: "logDelivery"))
    CreateConnectorRequest.add_member(:plugins, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofplugin, name: "plugins", traits: {"smithy.api#required" => {}}))
    CreateConnectorRequest.add_member(:service_execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceExecutionRoleArn", traits: {"smithy.api#required" => {}}))
    CreateConnectorRequest.add_member(:worker_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerConfiguration, name: "workerConfiguration"))
    CreateConnectorRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateConnectorRequest.type = Types::CreateConnectorRequest
    CreateCustomPluginOutput.add_member(:custom_plugin_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "customPluginArn"))
    CreateCustomPluginOutput.add_member(:custom_plugin_state, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomPluginState, name: "customPluginState"))
    CreateCustomPluginOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    CreateCustomPluginOutput.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "revision", traits: {"smithy.api#default" => 0}))
    CreateCustomPluginOutput.type = Types::CreateCustomPluginOutput
    CreateCustomPluginRequest.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomPluginContentType, name: "contentType", traits: {"smithy.api#required" => {}}))
    CreateCustomPluginRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax1024, name: "description"))
    CreateCustomPluginRequest.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomPluginLocation, name: "location", traits: {"smithy.api#required" => {}}))
    CreateCustomPluginRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max128, name: "name", traits: {"smithy.api#required" => {}}))
    CreateCustomPluginRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateCustomPluginRequest.type = Types::CreateCustomPluginRequest
    CreateWorkerConfigurationOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "creationTime"))
    CreateWorkerConfigurationOutput.add_member(:latest_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerConfigurationRevisionSummary, name: "latestRevision"))
    CreateWorkerConfigurationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    CreateWorkerConfigurationOutput.add_member(:worker_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "workerConfigurationArn"))
    CreateWorkerConfigurationOutput.add_member(:worker_configuration_state, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerConfigurationState, name: "workerConfigurationState"))
    CreateWorkerConfigurationOutput.type = Types::CreateWorkerConfigurationOutput
    CreateWorkerConfigurationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax1024, name: "description"))
    CreateWorkerConfigurationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max128, name: "name", traits: {"smithy.api#required" => {}}))
    CreateWorkerConfigurationRequest.add_member(:properties_file_content, ::Smithy::Schema::Shapes::MemberShape.new(target: Sensitivestring, name: "propertiesFileContent", traits: {"smithy.api#required" => {}}))
    CreateWorkerConfigurationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateWorkerConfigurationRequest.type = Types::CreateWorkerConfigurationRequest
    CustomPlugin.add_member(:custom_plugin_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "customPluginArn", traits: {"smithy.api#required" => {}}))
    CustomPlugin.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: Longmin1, name: "revision", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CustomPlugin.type = Types::CustomPlugin
    CustomPluginDescription.add_member(:custom_plugin_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "customPluginArn"))
    CustomPluginDescription.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "revision", traits: {"smithy.api#default" => 0}))
    CustomPluginDescription.type = Types::CustomPluginDescription
    CustomPluginFileDescription.add_member(:file_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "fileMd5"))
    CustomPluginFileDescription.add_member(:file_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "fileSize", traits: {"smithy.api#default" => 0}))
    CustomPluginFileDescription.type = Types::CustomPluginFileDescription
    CustomPluginLocation.add_member(:s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, name: "s3Location", traits: {"smithy.api#required" => {}}))
    CustomPluginLocation.type = Types::CustomPluginLocation
    CustomPluginLocationDescription.add_member(:s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3LocationDescription, name: "s3Location"))
    CustomPluginLocationDescription.type = Types::CustomPluginLocationDescription
    CustomPluginRevisionSummary.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomPluginContentType, name: "contentType"))
    CustomPluginRevisionSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "creationTime"))
    CustomPluginRevisionSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    CustomPluginRevisionSummary.add_member(:file_description, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomPluginFileDescription, name: "fileDescription"))
    CustomPluginRevisionSummary.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomPluginLocationDescription, name: "location"))
    CustomPluginRevisionSummary.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "revision", traits: {"smithy.api#default" => 0}))
    CustomPluginRevisionSummary.type = Types::CustomPluginRevisionSummary
    CustomPluginSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "creationTime"))
    CustomPluginSummary.add_member(:custom_plugin_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "customPluginArn"))
    CustomPluginSummary.add_member(:custom_plugin_state, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomPluginState, name: "customPluginState"))
    CustomPluginSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    CustomPluginSummary.add_member(:latest_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomPluginRevisionSummary, name: "latestRevision"))
    CustomPluginSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    CustomPluginSummary.type = Types::CustomPluginSummary
    DeleteConnectorOutput.add_member(:connector_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "connectorArn"))
    DeleteConnectorOutput.add_member(:connector_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorState, name: "connectorState"))
    DeleteConnectorOutput.type = Types::DeleteConnectorOutput
    DeleteConnectorRequest.add_member(:connector_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "connectorArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConnectorRequest.add_member(:current_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "currentVersion", traits: {"smithy.api#httpQuery" => "currentVersion"}))
    DeleteConnectorRequest.type = Types::DeleteConnectorRequest
    DeleteCustomPluginOutput.add_member(:custom_plugin_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "customPluginArn"))
    DeleteCustomPluginOutput.add_member(:custom_plugin_state, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomPluginState, name: "customPluginState"))
    DeleteCustomPluginOutput.type = Types::DeleteCustomPluginOutput
    DeleteCustomPluginRequest.add_member(:custom_plugin_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "customPluginArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCustomPluginRequest.type = Types::DeleteCustomPluginRequest
    DeleteWorkerConfigurationOutput.add_member(:worker_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "workerConfigurationArn"))
    DeleteWorkerConfigurationOutput.add_member(:worker_configuration_state, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerConfigurationState, name: "workerConfigurationState"))
    DeleteWorkerConfigurationOutput.type = Types::DeleteWorkerConfigurationOutput
    DeleteWorkerConfigurationRequest.add_member(:worker_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "workerConfigurationArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkerConfigurationRequest.type = Types::DeleteWorkerConfigurationRequest
    DescribeConnectorOperationRequest.add_member(:connector_operation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "connectorOperationArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeConnectorOperationRequest.type = Types::DescribeConnectorOperationRequest
    DescribeConnectorOperationResponse.add_member(:connector_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "connectorArn"))
    DescribeConnectorOperationResponse.add_member(:connector_operation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "connectorOperationArn"))
    DescribeConnectorOperationResponse.add_member(:connector_operation_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorOperationState, name: "connectorOperationState"))
    DescribeConnectorOperationResponse.add_member(:connector_operation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorOperationType, name: "connectorOperationType"))
    DescribeConnectorOperationResponse.add_member(:operation_steps, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofconnectoroperationstep, name: "operationSteps"))
    DescribeConnectorOperationResponse.add_member(:origin_worker_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerSetting, name: "originWorkerSetting"))
    DescribeConnectorOperationResponse.add_member(:origin_connector_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorConfiguration, name: "originConnectorConfiguration"))
    DescribeConnectorOperationResponse.add_member(:target_worker_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerSetting, name: "targetWorkerSetting"))
    DescribeConnectorOperationResponse.add_member(:target_connector_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorConfiguration, name: "targetConnectorConfiguration"))
    DescribeConnectorOperationResponse.add_member(:error_info, ::Smithy::Schema::Shapes::MemberShape.new(target: StateDescription, name: "errorInfo"))
    DescribeConnectorOperationResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "creationTime"))
    DescribeConnectorOperationResponse.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "endTime"))
    DescribeConnectorOperationResponse.type = Types::DescribeConnectorOperationResponse
    DescribeConnectorOutput.add_member(:capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityDescription, name: "capacity"))
    DescribeConnectorOutput.add_member(:connector_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "connectorArn"))
    DescribeConnectorOutput.add_member(:connector_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorConfiguration, name: "connectorConfiguration"))
    DescribeConnectorOutput.add_member(:connector_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "connectorDescription"))
    DescribeConnectorOutput.add_member(:connector_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "connectorName"))
    DescribeConnectorOutput.add_member(:connector_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorState, name: "connectorState"))
    DescribeConnectorOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "creationTime"))
    DescribeConnectorOutput.add_member(:current_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "currentVersion"))
    DescribeConnectorOutput.add_member(:kafka_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaClusterDescription, name: "kafkaCluster"))
    DescribeConnectorOutput.add_member(:kafka_cluster_client_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaClusterClientAuthenticationDescription, name: "kafkaClusterClientAuthentication"))
    DescribeConnectorOutput.add_member(:kafka_cluster_encryption_in_transit, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaClusterEncryptionInTransitDescription, name: "kafkaClusterEncryptionInTransit"))
    DescribeConnectorOutput.add_member(:kafka_connect_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "kafkaConnectVersion"))
    DescribeConnectorOutput.add_member(:log_delivery, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDeliveryDescription, name: "logDelivery"))
    DescribeConnectorOutput.add_member(:plugins, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofplugindescription, name: "plugins"))
    DescribeConnectorOutput.add_member(:service_execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceExecutionRoleArn"))
    DescribeConnectorOutput.add_member(:worker_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerConfigurationDescription, name: "workerConfiguration"))
    DescribeConnectorOutput.add_member(:state_description, ::Smithy::Schema::Shapes::MemberShape.new(target: StateDescription, name: "stateDescription"))
    DescribeConnectorOutput.type = Types::DescribeConnectorOutput
    DescribeConnectorRequest.add_member(:connector_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "connectorArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeConnectorRequest.type = Types::DescribeConnectorRequest
    DescribeCustomPluginOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "creationTime"))
    DescribeCustomPluginOutput.add_member(:custom_plugin_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "customPluginArn"))
    DescribeCustomPluginOutput.add_member(:custom_plugin_state, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomPluginState, name: "customPluginState"))
    DescribeCustomPluginOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    DescribeCustomPluginOutput.add_member(:latest_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomPluginRevisionSummary, name: "latestRevision"))
    DescribeCustomPluginOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    DescribeCustomPluginOutput.add_member(:state_description, ::Smithy::Schema::Shapes::MemberShape.new(target: StateDescription, name: "stateDescription"))
    DescribeCustomPluginOutput.type = Types::DescribeCustomPluginOutput
    DescribeCustomPluginRequest.add_member(:custom_plugin_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "customPluginArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeCustomPluginRequest.type = Types::DescribeCustomPluginRequest
    DescribeWorkerConfigurationOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "creationTime"))
    DescribeWorkerConfigurationOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    DescribeWorkerConfigurationOutput.add_member(:latest_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerConfigurationRevisionDescription, name: "latestRevision"))
    DescribeWorkerConfigurationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    DescribeWorkerConfigurationOutput.add_member(:worker_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "workerConfigurationArn"))
    DescribeWorkerConfigurationOutput.add_member(:worker_configuration_state, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerConfigurationState, name: "workerConfigurationState"))
    DescribeWorkerConfigurationOutput.type = Types::DescribeWorkerConfigurationOutput
    DescribeWorkerConfigurationRequest.add_member(:worker_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "workerConfigurationArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeWorkerConfigurationRequest.type = Types::DescribeWorkerConfigurationRequest
    FirehoseLogDelivery.add_member(:delivery_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "deliveryStream"))
    FirehoseLogDelivery.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    FirehoseLogDelivery.type = Types::FirehoseLogDelivery
    FirehoseLogDeliveryDescription.add_member(:delivery_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "deliveryStream"))
    FirehoseLogDeliveryDescription.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enabled", traits: {"smithy.api#default" => false}))
    FirehoseLogDeliveryDescription.type = Types::FirehoseLogDeliveryDescription
    ForbiddenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ForbiddenException.type = Types::ForbiddenException
    InternalServerErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InternalServerErrorException.type = Types::InternalServerErrorException
    KafkaCluster.add_member(:apache_kafka_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ApacheKafkaCluster, name: "apacheKafkaCluster", traits: {"smithy.api#required" => {}}))
    KafkaCluster.type = Types::KafkaCluster
    KafkaClusterClientAuthentication.add_member(:authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaClusterClientAuthenticationType, name: "authenticationType", traits: {"smithy.api#required" => {}}))
    KafkaClusterClientAuthentication.type = Types::KafkaClusterClientAuthentication
    KafkaClusterClientAuthenticationDescription.add_member(:authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaClusterClientAuthenticationType, name: "authenticationType"))
    KafkaClusterClientAuthenticationDescription.type = Types::KafkaClusterClientAuthenticationDescription
    KafkaClusterDescription.add_member(:apache_kafka_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ApacheKafkaClusterDescription, name: "apacheKafkaCluster"))
    KafkaClusterDescription.type = Types::KafkaClusterDescription
    KafkaClusterEncryptionInTransit.add_member(:encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaClusterEncryptionInTransitType, name: "encryptionType", traits: {"smithy.api#required" => {}}))
    KafkaClusterEncryptionInTransit.type = Types::KafkaClusterEncryptionInTransit
    KafkaClusterEncryptionInTransitDescription.add_member(:encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaClusterEncryptionInTransitType, name: "encryptionType"))
    KafkaClusterEncryptionInTransitDescription.type = Types::KafkaClusterEncryptionInTransitDescription
    ListConnectorOperationsRequest.add_member(:connector_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "connectorArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListConnectorOperationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListConnectorOperationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListConnectorOperationsRequest.type = Types::ListConnectorOperationsRequest
    ListConnectorOperationsResponse.add_member(:connector_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofconnectoroperationsummary, name: "connectorOperations"))
    ListConnectorOperationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListConnectorOperationsResponse.type = Types::ListConnectorOperationsResponse
    ListConnectorsOutput.add_member(:connectors, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofconnectorsummary, name: "connectors"))
    ListConnectorsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListConnectorsOutput.type = Types::ListConnectorsOutput
    ListConnectorsRequest.add_member(:connector_name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "connectorNamePrefix", traits: {"smithy.api#httpQuery" => "connectorNamePrefix"}))
    ListConnectorsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListConnectorsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListConnectorsRequest.type = Types::ListConnectorsRequest
    ListCustomPluginsOutput.add_member(:custom_plugins, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofcustompluginsummary, name: "customPlugins"))
    ListCustomPluginsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListCustomPluginsOutput.type = Types::ListCustomPluginsOutput
    ListCustomPluginsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListCustomPluginsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCustomPluginsRequest.add_member(:name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "namePrefix", traits: {"smithy.api#httpQuery" => "namePrefix"}))
    ListCustomPluginsRequest.type = Types::ListCustomPluginsRequest
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListWorkerConfigurationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListWorkerConfigurationsOutput.add_member(:worker_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofworkerconfigurationsummary, name: "workerConfigurations"))
    ListWorkerConfigurationsOutput.type = Types::ListWorkerConfigurationsOutput
    ListWorkerConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListWorkerConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListWorkerConfigurationsRequest.add_member(:name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "namePrefix", traits: {"smithy.api#httpQuery" => "namePrefix"}))
    ListWorkerConfigurationsRequest.type = Types::ListWorkerConfigurationsRequest
    LogDelivery.add_member(:worker_log_delivery, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerLogDelivery, name: "workerLogDelivery", traits: {"smithy.api#required" => {}}))
    LogDelivery.type = Types::LogDelivery
    LogDeliveryDescription.add_member(:worker_log_delivery, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerLogDeliveryDescription, name: "workerLogDelivery"))
    LogDeliveryDescription.type = Types::LogDeliveryDescription
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    NotFoundException.type = Types::NotFoundException
    Plugin.add_member(:custom_plugin, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomPlugin, name: "customPlugin", traits: {"smithy.api#required" => {}}))
    Plugin.type = Types::Plugin
    PluginDescription.add_member(:custom_plugin, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomPluginDescription, name: "customPlugin"))
    PluginDescription.type = Types::PluginDescription
    ProvisionedCapacity.add_member(:mcu_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integermin1max8, name: "mcuCount", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ProvisionedCapacity.add_member(:worker_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "workerCount", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ProvisionedCapacity.type = Types::ProvisionedCapacity
    ProvisionedCapacityDescription.add_member(:mcu_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "mcuCount", traits: {"smithy.api#default" => 0}))
    ProvisionedCapacityDescription.add_member(:worker_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "workerCount", traits: {"smithy.api#default" => 0}))
    ProvisionedCapacityDescription.type = Types::ProvisionedCapacityDescription
    ProvisionedCapacityUpdate.add_member(:mcu_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integermin1max8, name: "mcuCount", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ProvisionedCapacityUpdate.add_member(:worker_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "workerCount", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ProvisionedCapacityUpdate.type = Types::ProvisionedCapacityUpdate
    S3Location.add_member(:bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "bucketArn", traits: {"smithy.api#required" => {}}))
    S3Location.add_member(:file_key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "fileKey", traits: {"smithy.api#required" => {}}))
    S3Location.add_member(:object_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "objectVersion"))
    S3Location.type = Types::S3Location
    S3LocationDescription.add_member(:bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "bucketArn"))
    S3LocationDescription.add_member(:file_key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "fileKey"))
    S3LocationDescription.add_member(:object_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "objectVersion"))
    S3LocationDescription.type = Types::S3LocationDescription
    S3LogDelivery.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "bucket"))
    S3LogDelivery.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    S3LogDelivery.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "prefix"))
    S3LogDelivery.type = Types::S3LogDelivery
    S3LogDeliveryDescription.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "bucket"))
    S3LogDeliveryDescription.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enabled", traits: {"smithy.api#default" => false}))
    S3LogDeliveryDescription.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "prefix"))
    S3LogDeliveryDescription.type = Types::S3LogDeliveryDescription
    ScaleInPolicy.add_member(:cpu_utilization_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Integermin1max100, name: "cpuUtilizationPercentage", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ScaleInPolicy.type = Types::ScaleInPolicy
    ScaleInPolicyDescription.add_member(:cpu_utilization_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "cpuUtilizationPercentage", traits: {"smithy.api#default" => 0}))
    ScaleInPolicyDescription.type = Types::ScaleInPolicyDescription
    ScaleInPolicyUpdate.add_member(:cpu_utilization_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Integermin1max100, name: "cpuUtilizationPercentage", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ScaleInPolicyUpdate.type = Types::ScaleInPolicyUpdate
    ScaleOutPolicy.add_member(:cpu_utilization_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Integermin1max100, name: "cpuUtilizationPercentage", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ScaleOutPolicy.type = Types::ScaleOutPolicy
    ScaleOutPolicyDescription.add_member(:cpu_utilization_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "cpuUtilizationPercentage", traits: {"smithy.api#default" => 0}))
    ScaleOutPolicyDescription.type = Types::ScaleOutPolicyDescription
    ScaleOutPolicyUpdate.add_member(:cpu_utilization_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Integermin1max100, name: "cpuUtilizationPercentage", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ScaleOutPolicyUpdate.type = Types::ScaleOutPolicyUpdate
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    StateDescription.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "code"))
    StateDescription.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    StateDescription.type = Types::StateDescription
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member")
    TagResourceOutput.type = Types::TagResourceOutput
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    Tags.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key")
    Tags.value = ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value")
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UnauthorizedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    UnauthorizedException.type = Types::UnauthorizedException
    UntagResourceOutput.type = Types::UntagResourceOutput
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateConnectorOutput.add_member(:connector_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "connectorArn"))
    UpdateConnectorOutput.add_member(:connector_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorState, name: "connectorState"))
    UpdateConnectorOutput.add_member(:connector_operation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "connectorOperationArn"))
    UpdateConnectorOutput.type = Types::UpdateConnectorOutput
    UpdateConnectorRequest.add_member(:capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityUpdate, name: "capacity"))
    UpdateConnectorRequest.add_member(:connector_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorConfigurationUpdate, name: "connectorConfiguration"))
    UpdateConnectorRequest.add_member(:connector_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "connectorArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConnectorRequest.add_member(:current_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "currentVersion", traits: {"smithy.api#httpQuery" => "currentVersion", "smithy.api#required" => {}}))
    UpdateConnectorRequest.type = Types::UpdateConnectorRequest
    Vpc.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "securityGroups"))
    Vpc.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "subnets", traits: {"smithy.api#required" => {}}))
    Vpc.type = Types::Vpc
    VpcDescription.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "securityGroups"))
    VpcDescription.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "subnets"))
    VpcDescription.type = Types::VpcDescription
    WorkerConfiguration.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: Longmin1, name: "revision", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    WorkerConfiguration.add_member(:worker_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "workerConfigurationArn", traits: {"smithy.api#required" => {}}))
    WorkerConfiguration.type = Types::WorkerConfiguration
    WorkerConfigurationDescription.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "revision", traits: {"smithy.api#default" => 0}))
    WorkerConfigurationDescription.add_member(:worker_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "workerConfigurationArn"))
    WorkerConfigurationDescription.type = Types::WorkerConfigurationDescription
    WorkerConfigurationRevisionDescription.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "creationTime"))
    WorkerConfigurationRevisionDescription.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    WorkerConfigurationRevisionDescription.add_member(:properties_file_content, ::Smithy::Schema::Shapes::MemberShape.new(target: Sensitivestring, name: "propertiesFileContent"))
    WorkerConfigurationRevisionDescription.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "revision", traits: {"smithy.api#default" => 0}))
    WorkerConfigurationRevisionDescription.type = Types::WorkerConfigurationRevisionDescription
    WorkerConfigurationRevisionSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "creationTime"))
    WorkerConfigurationRevisionSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    WorkerConfigurationRevisionSummary.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "revision", traits: {"smithy.api#default" => 0}))
    WorkerConfigurationRevisionSummary.type = Types::WorkerConfigurationRevisionSummary
    WorkerConfigurationSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "creationTime"))
    WorkerConfigurationSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    WorkerConfigurationSummary.add_member(:latest_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerConfigurationRevisionSummary, name: "latestRevision"))
    WorkerConfigurationSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    WorkerConfigurationSummary.add_member(:worker_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "workerConfigurationArn"))
    WorkerConfigurationSummary.add_member(:worker_configuration_state, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerConfigurationState, name: "workerConfigurationState"))
    WorkerConfigurationSummary.type = Types::WorkerConfigurationSummary
    WorkerLogDelivery.add_member(:cloud_watch_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogsLogDelivery, name: "cloudWatchLogs"))
    WorkerLogDelivery.add_member(:firehose, ::Smithy::Schema::Shapes::MemberShape.new(target: FirehoseLogDelivery, name: "firehose"))
    WorkerLogDelivery.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3LogDelivery, name: "s3"))
    WorkerLogDelivery.type = Types::WorkerLogDelivery
    WorkerLogDeliveryDescription.add_member(:cloud_watch_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogsLogDeliveryDescription, name: "cloudWatchLogs"))
    WorkerLogDeliveryDescription.add_member(:firehose, ::Smithy::Schema::Shapes::MemberShape.new(target: FirehoseLogDeliveryDescription, name: "firehose"))
    WorkerLogDeliveryDescription.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3LogDeliveryDescription, name: "s3"))
    WorkerLogDeliveryDescription.type = Types::WorkerLogDeliveryDescription
    WorkerSetting.add_member(:capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityDescription, name: "capacity"))
    WorkerSetting.type = Types::WorkerSetting
    Listofconnectoroperationstep.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorOperationStep, name: "member")
    Listofconnectoroperationsummary.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorOperationSummary, name: "member")
    Listofconnectorsummary.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorSummary, name: "member")
    Listofcustompluginsummary.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CustomPluginSummary, name: "member")
    Listofplugin.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Plugin, name: "member")
    Listofplugindescription.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PluginDescription, name: "member")
    Listofworkerconfigurationsummary.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerConfigurationSummary, name: "member")
    ListofString.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member")

    KafkaConnect = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.kafkaconnect#KafkaConnect"
      service.name = "KafkaConnect"
      service.version = "2021-09-14"
      service.traits = {"aws.api#service" => {"sdkId" => "KafkaConnect", "name" => "kafkaconnect", "arnNamespace" => "kafkaconnect", "cloudFormationName" => "KafkaConnect", "cloudTrailEventSource" => "kafkaconnect.amazonaws.com", "endpointPrefix" => "kafkaconnect"}, "aws.auth#sigv4" => {"name" => "kafkaconnect"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "Date", "X-Amz-Target", "x-amzn-platform-id", "x-amzn-trace-id", "Authorization", "Content-Type", "Credentials", "X-Amz-Date", "X-Api-Key", "X-Amz-Security-Token", "x-amz-content-sha256", "X-Amz-User-Agent"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-errormessage", "x-amzn-trace-id", "x-amz-apigw-id", "date"], "origin" => "*", "maxAge" => 86400}, "smithy.api#title" => "Managed Streaming for Kafka Connect"}
      service.add_operation(:create_connector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafkaconnect#CreateConnector"
        operation.name = "CreateConnector"
        operation.input = CreateConnectorRequest
        operation.output = CreateConnectorOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/connectors", "code" => 200}}
      end)
      service.add_operation(:create_custom_plugin, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafkaconnect#CreateCustomPlugin"
        operation.name = "CreateCustomPlugin"
        operation.input = CreateCustomPluginRequest
        operation.output = CreateCustomPluginOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/custom-plugins", "code" => 200}}
      end)
      service.add_operation(:create_worker_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafkaconnect#CreateWorkerConfiguration"
        operation.name = "CreateWorkerConfiguration"
        operation.input = CreateWorkerConfigurationRequest
        operation.output = CreateWorkerConfigurationOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/worker-configurations", "code" => 200}}
      end)
      service.add_operation(:delete_connector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafkaconnect#DeleteConnector"
        operation.name = "DeleteConnector"
        operation.input = DeleteConnectorRequest
        operation.output = DeleteConnectorOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/connectors/{connectorArn}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_custom_plugin, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafkaconnect#DeleteCustomPlugin"
        operation.name = "DeleteCustomPlugin"
        operation.input = DeleteCustomPluginRequest
        operation.output = DeleteCustomPluginOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/custom-plugins/{customPluginArn}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_worker_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafkaconnect#DeleteWorkerConfiguration"
        operation.name = "DeleteWorkerConfiguration"
        operation.input = DeleteWorkerConfigurationRequest
        operation.output = DeleteWorkerConfigurationOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/worker-configurations/{workerConfigurationArn}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_connector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafkaconnect#DescribeConnector"
        operation.name = "DescribeConnector"
        operation.input = DescribeConnectorRequest
        operation.output = DescribeConnectorOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/connectors/{connectorArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_connector_operation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafkaconnect#DescribeConnectorOperation"
        operation.name = "DescribeConnectorOperation"
        operation.input = DescribeConnectorOperationRequest
        operation.output = DescribeConnectorOperationResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/connectorOperations/{connectorOperationArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_custom_plugin, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafkaconnect#DescribeCustomPlugin"
        operation.name = "DescribeCustomPlugin"
        operation.input = DescribeCustomPluginRequest
        operation.output = DescribeCustomPluginOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/custom-plugins/{customPluginArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_worker_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafkaconnect#DescribeWorkerConfiguration"
        operation.name = "DescribeWorkerConfiguration"
        operation.input = DescribeWorkerConfigurationRequest
        operation.output = DescribeWorkerConfigurationOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/worker-configurations/{workerConfigurationArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_connector_operations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafkaconnect#ListConnectorOperations"
        operation.name = "ListConnectorOperations"
        operation.input = ListConnectorOperationsRequest
        operation.output = ListConnectorOperationsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/connectors/{connectorArn}/operations", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListConnectorOperations.new
      end)
      service.add_operation(:list_connectors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafkaconnect#ListConnectors"
        operation.name = "ListConnectors"
        operation.input = ListConnectorsRequest
        operation.output = ListConnectorsOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/connectors", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListConnectors.new
      end)
      service.add_operation(:list_custom_plugins, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafkaconnect#ListCustomPlugins"
        operation.name = "ListCustomPlugins"
        operation.input = ListCustomPluginsRequest
        operation.output = ListCustomPluginsOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/custom-plugins", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCustomPlugins.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafkaconnect#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"uri" => "/v1/tags/{resourceArn}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_worker_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafkaconnect#ListWorkerConfigurations"
        operation.name = "ListWorkerConfigurations"
        operation.input = ListWorkerConfigurationsRequest
        operation.output = ListWorkerConfigurationsOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/worker-configurations", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWorkerConfigurations.new
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafkaconnect#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"uri" => "/v1/tags/{resourceArn}", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafkaconnect#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"uri" => "/v1/tags/{resourceArn}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_connector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafkaconnect#UpdateConnector"
        operation.name = "UpdateConnector"
        operation.input = UpdateConnectorRequest
        operation.output = UpdateConnectorOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/connectors/{connectorArn}", "code" => 200}, "smithy.api#idempotent" => {}}
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
