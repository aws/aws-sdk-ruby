# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MWAA
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AirflowConfigurationOptions = Shapes::MapShape.new(name: 'AirflowConfigurationOptions')
    AirflowVersion = Shapes::StringShape.new(name: 'AirflowVersion')
    CloudWatchLogGroupArn = Shapes::StringShape.new(name: 'CloudWatchLogGroupArn')
    ConfigKey = Shapes::StringShape.new(name: 'ConfigKey')
    ConfigValue = Shapes::StringShape.new(name: 'ConfigValue')
    CreateCliTokenRequest = Shapes::StructureShape.new(name: 'CreateCliTokenRequest')
    CreateCliTokenResponse = Shapes::StructureShape.new(name: 'CreateCliTokenResponse')
    CreateEnvironmentInput = Shapes::StructureShape.new(name: 'CreateEnvironmentInput')
    CreateEnvironmentOutput = Shapes::StructureShape.new(name: 'CreateEnvironmentOutput')
    CreateWebLoginTokenRequest = Shapes::StructureShape.new(name: 'CreateWebLoginTokenRequest')
    CreateWebLoginTokenResponse = Shapes::StructureShape.new(name: 'CreateWebLoginTokenResponse')
    CreatedAt = Shapes::TimestampShape.new(name: 'CreatedAt')
    DeleteEnvironmentInput = Shapes::StructureShape.new(name: 'DeleteEnvironmentInput')
    DeleteEnvironmentOutput = Shapes::StructureShape.new(name: 'DeleteEnvironmentOutput')
    Dimension = Shapes::StructureShape.new(name: 'Dimension')
    Dimensions = Shapes::ListShape.new(name: 'Dimensions')
    Double = Shapes::FloatShape.new(name: 'Double')
    Environment = Shapes::StructureShape.new(name: 'Environment')
    EnvironmentArn = Shapes::StringShape.new(name: 'EnvironmentArn')
    EnvironmentClass = Shapes::StringShape.new(name: 'EnvironmentClass')
    EnvironmentList = Shapes::ListShape.new(name: 'EnvironmentList')
    EnvironmentName = Shapes::StringShape.new(name: 'EnvironmentName')
    EnvironmentStatus = Shapes::StringShape.new(name: 'EnvironmentStatus')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    GetEnvironmentInput = Shapes::StructureShape.new(name: 'GetEnvironmentInput')
    GetEnvironmentOutput = Shapes::StructureShape.new(name: 'GetEnvironmentOutput')
    Hostname = Shapes::StringShape.new(name: 'Hostname')
    IamRoleArn = Shapes::StringShape.new(name: 'IamRoleArn')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    KmsKey = Shapes::StringShape.new(name: 'KmsKey')
    LastUpdate = Shapes::StructureShape.new(name: 'LastUpdate')
    ListEnvironmentsInput = Shapes::StructureShape.new(name: 'ListEnvironmentsInput')
    ListEnvironmentsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListEnvironmentsInputMaxResultsInteger')
    ListEnvironmentsOutput = Shapes::StructureShape.new(name: 'ListEnvironmentsOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    LoggingConfiguration = Shapes::StructureShape.new(name: 'LoggingConfiguration')
    LoggingConfigurationInput = Shapes::StructureShape.new(name: 'LoggingConfigurationInput')
    LoggingEnabled = Shapes::BooleanShape.new(name: 'LoggingEnabled')
    LoggingLevel = Shapes::StringShape.new(name: 'LoggingLevel')
    MaxWorkers = Shapes::IntegerShape.new(name: 'MaxWorkers')
    MetricData = Shapes::ListShape.new(name: 'MetricData')
    MetricDatum = Shapes::StructureShape.new(name: 'MetricDatum')
    MinWorkers = Shapes::IntegerShape.new(name: 'MinWorkers')
    ModuleLoggingConfiguration = Shapes::StructureShape.new(name: 'ModuleLoggingConfiguration')
    ModuleLoggingConfigurationInput = Shapes::StructureShape.new(name: 'ModuleLoggingConfigurationInput')
    NetworkConfiguration = Shapes::StructureShape.new(name: 'NetworkConfiguration')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    PublishMetricsInput = Shapes::StructureShape.new(name: 'PublishMetricsInput')
    PublishMetricsOutput = Shapes::StructureShape.new(name: 'PublishMetricsOutput')
    RelativePath = Shapes::StringShape.new(name: 'RelativePath')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    S3BucketArn = Shapes::StringShape.new(name: 'S3BucketArn')
    S3ObjectVersion = Shapes::StringShape.new(name: 'S3ObjectVersion')
    Schedulers = Shapes::IntegerShape.new(name: 'Schedulers')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroupList = Shapes::ListShape.new(name: 'SecurityGroupList')
    StatisticSet = Shapes::StructureShape.new(name: 'StatisticSet')
    String = Shapes::StringShape.new(name: 'String')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubnetList = Shapes::ListShape.new(name: 'SubnetList')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagResourceOutput = Shapes::StructureShape.new(name: 'TagResourceOutput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Token = Shapes::StringShape.new(name: 'Token')
    Unit = Shapes::StringShape.new(name: 'Unit')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UntagResourceOutput = Shapes::StructureShape.new(name: 'UntagResourceOutput')
    UpdateCreatedAt = Shapes::TimestampShape.new(name: 'UpdateCreatedAt')
    UpdateEnvironmentInput = Shapes::StructureShape.new(name: 'UpdateEnvironmentInput')
    UpdateEnvironmentOutput = Shapes::StructureShape.new(name: 'UpdateEnvironmentOutput')
    UpdateError = Shapes::StructureShape.new(name: 'UpdateError')
    UpdateNetworkConfigurationInput = Shapes::StructureShape.new(name: 'UpdateNetworkConfigurationInput')
    UpdateSource = Shapes::StringShape.new(name: 'UpdateSource')
    UpdateStatus = Shapes::StringShape.new(name: 'UpdateStatus')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    WebserverAccessMode = Shapes::StringShape.new(name: 'WebserverAccessMode')
    WebserverUrl = Shapes::StringShape.new(name: 'WebserverUrl')
    WeeklyMaintenanceWindowStart = Shapes::StringShape.new(name: 'WeeklyMaintenanceWindowStart')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AirflowConfigurationOptions.key = Shapes::ShapeRef.new(shape: ConfigKey)
    AirflowConfigurationOptions.value = Shapes::ShapeRef.new(shape: ConfigValue)

    CreateCliTokenRequest.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentName, required: true, location: "uri", location_name: "Name"))
    CreateCliTokenRequest.struct_class = Types::CreateCliTokenRequest

    CreateCliTokenResponse.add_member(:cli_token, Shapes::ShapeRef.new(shape: Token, location_name: "CliToken"))
    CreateCliTokenResponse.add_member(:web_server_hostname, Shapes::ShapeRef.new(shape: Hostname, location_name: "WebServerHostname"))
    CreateCliTokenResponse.struct_class = Types::CreateCliTokenResponse

    CreateEnvironmentInput.add_member(:airflow_configuration_options, Shapes::ShapeRef.new(shape: AirflowConfigurationOptions, location_name: "AirflowConfigurationOptions"))
    CreateEnvironmentInput.add_member(:airflow_version, Shapes::ShapeRef.new(shape: AirflowVersion, location_name: "AirflowVersion"))
    CreateEnvironmentInput.add_member(:dag_s3_path, Shapes::ShapeRef.new(shape: RelativePath, required: true, location_name: "DagS3Path"))
    CreateEnvironmentInput.add_member(:environment_class, Shapes::ShapeRef.new(shape: EnvironmentClass, location_name: "EnvironmentClass"))
    CreateEnvironmentInput.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "ExecutionRoleArn"))
    CreateEnvironmentInput.add_member(:kms_key, Shapes::ShapeRef.new(shape: KmsKey, location_name: "KmsKey"))
    CreateEnvironmentInput.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: LoggingConfigurationInput, location_name: "LoggingConfiguration"))
    CreateEnvironmentInput.add_member(:max_workers, Shapes::ShapeRef.new(shape: MaxWorkers, location_name: "MaxWorkers"))
    CreateEnvironmentInput.add_member(:min_workers, Shapes::ShapeRef.new(shape: MinWorkers, location_name: "MinWorkers"))
    CreateEnvironmentInput.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentName, required: true, location: "uri", location_name: "Name"))
    CreateEnvironmentInput.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, required: true, location_name: "NetworkConfiguration"))
    CreateEnvironmentInput.add_member(:plugins_s3_object_version, Shapes::ShapeRef.new(shape: S3ObjectVersion, location_name: "PluginsS3ObjectVersion"))
    CreateEnvironmentInput.add_member(:plugins_s3_path, Shapes::ShapeRef.new(shape: RelativePath, location_name: "PluginsS3Path"))
    CreateEnvironmentInput.add_member(:requirements_s3_object_version, Shapes::ShapeRef.new(shape: S3ObjectVersion, location_name: "RequirementsS3ObjectVersion"))
    CreateEnvironmentInput.add_member(:requirements_s3_path, Shapes::ShapeRef.new(shape: RelativePath, location_name: "RequirementsS3Path"))
    CreateEnvironmentInput.add_member(:schedulers, Shapes::ShapeRef.new(shape: Schedulers, location_name: "Schedulers"))
    CreateEnvironmentInput.add_member(:source_bucket_arn, Shapes::ShapeRef.new(shape: S3BucketArn, required: true, location_name: "SourceBucketArn"))
    CreateEnvironmentInput.add_member(:startup_script_s3_object_version, Shapes::ShapeRef.new(shape: S3ObjectVersion, location_name: "StartupScriptS3ObjectVersion"))
    CreateEnvironmentInput.add_member(:startup_script_s3_path, Shapes::ShapeRef.new(shape: RelativePath, location_name: "StartupScriptS3Path"))
    CreateEnvironmentInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateEnvironmentInput.add_member(:webserver_access_mode, Shapes::ShapeRef.new(shape: WebserverAccessMode, location_name: "WebserverAccessMode"))
    CreateEnvironmentInput.add_member(:weekly_maintenance_window_start, Shapes::ShapeRef.new(shape: WeeklyMaintenanceWindowStart, location_name: "WeeklyMaintenanceWindowStart"))
    CreateEnvironmentInput.struct_class = Types::CreateEnvironmentInput

    CreateEnvironmentOutput.add_member(:arn, Shapes::ShapeRef.new(shape: EnvironmentArn, location_name: "Arn"))
    CreateEnvironmentOutput.struct_class = Types::CreateEnvironmentOutput

    CreateWebLoginTokenRequest.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentName, required: true, location: "uri", location_name: "Name"))
    CreateWebLoginTokenRequest.struct_class = Types::CreateWebLoginTokenRequest

    CreateWebLoginTokenResponse.add_member(:web_server_hostname, Shapes::ShapeRef.new(shape: Hostname, location_name: "WebServerHostname"))
    CreateWebLoginTokenResponse.add_member(:web_token, Shapes::ShapeRef.new(shape: Token, location_name: "WebToken"))
    CreateWebLoginTokenResponse.struct_class = Types::CreateWebLoginTokenResponse

    DeleteEnvironmentInput.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentName, required: true, location: "uri", location_name: "Name"))
    DeleteEnvironmentInput.struct_class = Types::DeleteEnvironmentInput

    DeleteEnvironmentOutput.struct_class = Types::DeleteEnvironmentOutput

    Dimension.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    Dimension.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Value"))
    Dimension.struct_class = Types::Dimension

    Dimensions.member = Shapes::ShapeRef.new(shape: Dimension)

    Environment.add_member(:airflow_configuration_options, Shapes::ShapeRef.new(shape: AirflowConfigurationOptions, location_name: "AirflowConfigurationOptions"))
    Environment.add_member(:airflow_version, Shapes::ShapeRef.new(shape: AirflowVersion, location_name: "AirflowVersion"))
    Environment.add_member(:arn, Shapes::ShapeRef.new(shape: EnvironmentArn, location_name: "Arn"))
    Environment.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "CreatedAt"))
    Environment.add_member(:dag_s3_path, Shapes::ShapeRef.new(shape: RelativePath, location_name: "DagS3Path"))
    Environment.add_member(:environment_class, Shapes::ShapeRef.new(shape: EnvironmentClass, location_name: "EnvironmentClass"))
    Environment.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "ExecutionRoleArn"))
    Environment.add_member(:kms_key, Shapes::ShapeRef.new(shape: KmsKey, location_name: "KmsKey"))
    Environment.add_member(:last_update, Shapes::ShapeRef.new(shape: LastUpdate, location_name: "LastUpdate"))
    Environment.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: "LoggingConfiguration"))
    Environment.add_member(:max_workers, Shapes::ShapeRef.new(shape: MaxWorkers, location_name: "MaxWorkers"))
    Environment.add_member(:min_workers, Shapes::ShapeRef.new(shape: MinWorkers, location_name: "MinWorkers"))
    Environment.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "Name"))
    Environment.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: "NetworkConfiguration"))
    Environment.add_member(:plugins_s3_object_version, Shapes::ShapeRef.new(shape: S3ObjectVersion, location_name: "PluginsS3ObjectVersion"))
    Environment.add_member(:plugins_s3_path, Shapes::ShapeRef.new(shape: RelativePath, location_name: "PluginsS3Path"))
    Environment.add_member(:requirements_s3_object_version, Shapes::ShapeRef.new(shape: S3ObjectVersion, location_name: "RequirementsS3ObjectVersion"))
    Environment.add_member(:requirements_s3_path, Shapes::ShapeRef.new(shape: RelativePath, location_name: "RequirementsS3Path"))
    Environment.add_member(:schedulers, Shapes::ShapeRef.new(shape: Schedulers, location_name: "Schedulers"))
    Environment.add_member(:service_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "ServiceRoleArn"))
    Environment.add_member(:source_bucket_arn, Shapes::ShapeRef.new(shape: S3BucketArn, location_name: "SourceBucketArn"))
    Environment.add_member(:startup_script_s3_object_version, Shapes::ShapeRef.new(shape: String, location_name: "StartupScriptS3ObjectVersion"))
    Environment.add_member(:startup_script_s3_path, Shapes::ShapeRef.new(shape: String, location_name: "StartupScriptS3Path"))
    Environment.add_member(:status, Shapes::ShapeRef.new(shape: EnvironmentStatus, location_name: "Status"))
    Environment.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    Environment.add_member(:webserver_access_mode, Shapes::ShapeRef.new(shape: WebserverAccessMode, location_name: "WebserverAccessMode"))
    Environment.add_member(:webserver_url, Shapes::ShapeRef.new(shape: WebserverUrl, location_name: "WebserverUrl"))
    Environment.add_member(:weekly_maintenance_window_start, Shapes::ShapeRef.new(shape: WeeklyMaintenanceWindowStart, location_name: "WeeklyMaintenanceWindowStart"))
    Environment.struct_class = Types::Environment

    EnvironmentList.member = Shapes::ShapeRef.new(shape: EnvironmentName)

    GetEnvironmentInput.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentName, required: true, location: "uri", location_name: "Name"))
    GetEnvironmentInput.struct_class = Types::GetEnvironmentInput

    GetEnvironmentOutput.add_member(:environment, Shapes::ShapeRef.new(shape: Environment, location_name: "Environment"))
    GetEnvironmentOutput.struct_class = Types::GetEnvironmentOutput

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    LastUpdate.add_member(:created_at, Shapes::ShapeRef.new(shape: UpdateCreatedAt, location_name: "CreatedAt"))
    LastUpdate.add_member(:error, Shapes::ShapeRef.new(shape: UpdateError, location_name: "Error"))
    LastUpdate.add_member(:source, Shapes::ShapeRef.new(shape: UpdateSource, location_name: "Source"))
    LastUpdate.add_member(:status, Shapes::ShapeRef.new(shape: UpdateStatus, location_name: "Status"))
    LastUpdate.struct_class = Types::LastUpdate

    ListEnvironmentsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListEnvironmentsInputMaxResultsInteger, location: "querystring", location_name: "MaxResults"))
    ListEnvironmentsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListEnvironmentsInput.struct_class = Types::ListEnvironmentsInput

    ListEnvironmentsOutput.add_member(:environments, Shapes::ShapeRef.new(shape: EnvironmentList, required: true, location_name: "Environments"))
    ListEnvironmentsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEnvironmentsOutput.struct_class = Types::ListEnvironmentsOutput

    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: EnvironmentArn, required: true, location: "uri", location_name: "ResourceArn"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    LoggingConfiguration.add_member(:dag_processing_logs, Shapes::ShapeRef.new(shape: ModuleLoggingConfiguration, location_name: "DagProcessingLogs"))
    LoggingConfiguration.add_member(:scheduler_logs, Shapes::ShapeRef.new(shape: ModuleLoggingConfiguration, location_name: "SchedulerLogs"))
    LoggingConfiguration.add_member(:task_logs, Shapes::ShapeRef.new(shape: ModuleLoggingConfiguration, location_name: "TaskLogs"))
    LoggingConfiguration.add_member(:webserver_logs, Shapes::ShapeRef.new(shape: ModuleLoggingConfiguration, location_name: "WebserverLogs"))
    LoggingConfiguration.add_member(:worker_logs, Shapes::ShapeRef.new(shape: ModuleLoggingConfiguration, location_name: "WorkerLogs"))
    LoggingConfiguration.struct_class = Types::LoggingConfiguration

    LoggingConfigurationInput.add_member(:dag_processing_logs, Shapes::ShapeRef.new(shape: ModuleLoggingConfigurationInput, location_name: "DagProcessingLogs"))
    LoggingConfigurationInput.add_member(:scheduler_logs, Shapes::ShapeRef.new(shape: ModuleLoggingConfigurationInput, location_name: "SchedulerLogs"))
    LoggingConfigurationInput.add_member(:task_logs, Shapes::ShapeRef.new(shape: ModuleLoggingConfigurationInput, location_name: "TaskLogs"))
    LoggingConfigurationInput.add_member(:webserver_logs, Shapes::ShapeRef.new(shape: ModuleLoggingConfigurationInput, location_name: "WebserverLogs"))
    LoggingConfigurationInput.add_member(:worker_logs, Shapes::ShapeRef.new(shape: ModuleLoggingConfigurationInput, location_name: "WorkerLogs"))
    LoggingConfigurationInput.struct_class = Types::LoggingConfigurationInput

    MetricData.member = Shapes::ShapeRef.new(shape: MetricDatum)

    MetricDatum.add_member(:dimensions, Shapes::ShapeRef.new(shape: Dimensions, location_name: "Dimensions"))
    MetricDatum.add_member(:metric_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "MetricName"))
    MetricDatum.add_member(:statistic_values, Shapes::ShapeRef.new(shape: StatisticSet, location_name: "StatisticValues"))
    MetricDatum.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "Timestamp"))
    MetricDatum.add_member(:unit, Shapes::ShapeRef.new(shape: Unit, location_name: "Unit"))
    MetricDatum.add_member(:value, Shapes::ShapeRef.new(shape: Double, location_name: "Value"))
    MetricDatum.struct_class = Types::MetricDatum

    ModuleLoggingConfiguration.add_member(:cloud_watch_log_group_arn, Shapes::ShapeRef.new(shape: CloudWatchLogGroupArn, location_name: "CloudWatchLogGroupArn"))
    ModuleLoggingConfiguration.add_member(:enabled, Shapes::ShapeRef.new(shape: LoggingEnabled, location_name: "Enabled"))
    ModuleLoggingConfiguration.add_member(:log_level, Shapes::ShapeRef.new(shape: LoggingLevel, location_name: "LogLevel"))
    ModuleLoggingConfiguration.struct_class = Types::ModuleLoggingConfiguration

    ModuleLoggingConfigurationInput.add_member(:enabled, Shapes::ShapeRef.new(shape: LoggingEnabled, required: true, location_name: "Enabled"))
    ModuleLoggingConfigurationInput.add_member(:log_level, Shapes::ShapeRef.new(shape: LoggingLevel, required: true, location_name: "LogLevel"))
    ModuleLoggingConfigurationInput.struct_class = Types::ModuleLoggingConfigurationInput

    NetworkConfiguration.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupList, location_name: "SecurityGroupIds"))
    NetworkConfiguration.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetList, location_name: "SubnetIds"))
    NetworkConfiguration.struct_class = Types::NetworkConfiguration

    PublishMetricsInput.add_member(:environment_name, Shapes::ShapeRef.new(shape: EnvironmentName, required: true, location: "uri", location_name: "EnvironmentName"))
    PublishMetricsInput.add_member(:metric_data, Shapes::ShapeRef.new(shape: MetricData, required: true, location_name: "MetricData"))
    PublishMetricsInput.struct_class = Types::PublishMetricsInput

    PublishMetricsOutput.struct_class = Types::PublishMetricsOutput

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SecurityGroupList.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    StatisticSet.add_member(:maximum, Shapes::ShapeRef.new(shape: Double, location_name: "Maximum"))
    StatisticSet.add_member(:minimum, Shapes::ShapeRef.new(shape: Double, location_name: "Minimum"))
    StatisticSet.add_member(:sample_count, Shapes::ShapeRef.new(shape: Integer, location_name: "SampleCount"))
    StatisticSet.add_member(:sum, Shapes::ShapeRef.new(shape: Double, location_name: "Sum"))
    StatisticSet.struct_class = Types::StatisticSet

    SubnetList.member = Shapes::ShapeRef.new(shape: SubnetId)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: EnvironmentArn, required: true, location: "uri", location_name: "ResourceArn"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "Tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TagResourceOutput.struct_class = Types::TagResourceOutput

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: EnvironmentArn, required: true, location: "uri", location_name: "ResourceArn"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UntagResourceOutput.struct_class = Types::UntagResourceOutput

    UpdateEnvironmentInput.add_member(:airflow_configuration_options, Shapes::ShapeRef.new(shape: AirflowConfigurationOptions, location_name: "AirflowConfigurationOptions"))
    UpdateEnvironmentInput.add_member(:airflow_version, Shapes::ShapeRef.new(shape: AirflowVersion, location_name: "AirflowVersion"))
    UpdateEnvironmentInput.add_member(:dag_s3_path, Shapes::ShapeRef.new(shape: RelativePath, location_name: "DagS3Path"))
    UpdateEnvironmentInput.add_member(:environment_class, Shapes::ShapeRef.new(shape: EnvironmentClass, location_name: "EnvironmentClass"))
    UpdateEnvironmentInput.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "ExecutionRoleArn"))
    UpdateEnvironmentInput.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: LoggingConfigurationInput, location_name: "LoggingConfiguration"))
    UpdateEnvironmentInput.add_member(:max_workers, Shapes::ShapeRef.new(shape: MaxWorkers, location_name: "MaxWorkers"))
    UpdateEnvironmentInput.add_member(:min_workers, Shapes::ShapeRef.new(shape: MinWorkers, location_name: "MinWorkers"))
    UpdateEnvironmentInput.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentName, required: true, location: "uri", location_name: "Name"))
    UpdateEnvironmentInput.add_member(:network_configuration, Shapes::ShapeRef.new(shape: UpdateNetworkConfigurationInput, location_name: "NetworkConfiguration"))
    UpdateEnvironmentInput.add_member(:plugins_s3_object_version, Shapes::ShapeRef.new(shape: S3ObjectVersion, location_name: "PluginsS3ObjectVersion"))
    UpdateEnvironmentInput.add_member(:plugins_s3_path, Shapes::ShapeRef.new(shape: RelativePath, location_name: "PluginsS3Path"))
    UpdateEnvironmentInput.add_member(:requirements_s3_object_version, Shapes::ShapeRef.new(shape: S3ObjectVersion, location_name: "RequirementsS3ObjectVersion"))
    UpdateEnvironmentInput.add_member(:requirements_s3_path, Shapes::ShapeRef.new(shape: RelativePath, location_name: "RequirementsS3Path"))
    UpdateEnvironmentInput.add_member(:schedulers, Shapes::ShapeRef.new(shape: Schedulers, location_name: "Schedulers"))
    UpdateEnvironmentInput.add_member(:source_bucket_arn, Shapes::ShapeRef.new(shape: S3BucketArn, location_name: "SourceBucketArn"))
    UpdateEnvironmentInput.add_member(:startup_script_s3_object_version, Shapes::ShapeRef.new(shape: S3ObjectVersion, location_name: "StartupScriptS3ObjectVersion"))
    UpdateEnvironmentInput.add_member(:startup_script_s3_path, Shapes::ShapeRef.new(shape: RelativePath, location_name: "StartupScriptS3Path"))
    UpdateEnvironmentInput.add_member(:webserver_access_mode, Shapes::ShapeRef.new(shape: WebserverAccessMode, location_name: "WebserverAccessMode"))
    UpdateEnvironmentInput.add_member(:weekly_maintenance_window_start, Shapes::ShapeRef.new(shape: WeeklyMaintenanceWindowStart, location_name: "WeeklyMaintenanceWindowStart"))
    UpdateEnvironmentInput.struct_class = Types::UpdateEnvironmentInput

    UpdateEnvironmentOutput.add_member(:arn, Shapes::ShapeRef.new(shape: EnvironmentArn, location_name: "Arn"))
    UpdateEnvironmentOutput.struct_class = Types::UpdateEnvironmentOutput

    UpdateError.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    UpdateError.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    UpdateError.struct_class = Types::UpdateError

    UpdateNetworkConfigurationInput.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupList, required: true, location_name: "SecurityGroupIds"))
    UpdateNetworkConfigurationInput.struct_class = Types::UpdateNetworkConfigurationInput

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-07-01"

      api.metadata = {
        "apiVersion" => "2020-07-01",
        "endpointPrefix" => "airflow",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AmazonMWAA",
        "serviceId" => "MWAA",
        "signatureVersion" => "v4",
        "signingName" => "airflow",
        "uid" => "mwaa-2020-07-01",
      }

      api.add_operation(:create_cli_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCliToken"
        o.http_method = "POST"
        o.http_request_uri = "/clitoken/{Name}"
        o.endpoint_pattern = {
          "hostPrefix" => "env.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateCliTokenRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCliTokenResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEnvironment"
        o.http_method = "PUT"
        o.http_request_uri = "/environments/{Name}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateEnvironmentInput)
        o.output = Shapes::ShapeRef.new(shape: CreateEnvironmentOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_web_login_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWebLoginToken"
        o.http_method = "POST"
        o.http_request_uri = "/webtoken/{Name}"
        o.endpoint_pattern = {
          "hostPrefix" => "env.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateWebLoginTokenRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWebLoginTokenResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEnvironment"
        o.http_method = "DELETE"
        o.http_request_uri = "/environments/{Name}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteEnvironmentInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteEnvironmentOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEnvironment"
        o.http_method = "GET"
        o.http_request_uri = "/environments/{Name}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetEnvironmentInput)
        o.output = Shapes::ShapeRef.new(shape: GetEnvironmentOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_environments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEnvironments"
        o.http_method = "GET"
        o.http_request_uri = "/environments"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListEnvironmentsInput)
        o.output = Shapes::ShapeRef.new(shape: ListEnvironmentsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:publish_metrics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PublishMetrics"
        o.http_method = "POST"
        o.http_request_uri = "/metrics/environments/{EnvironmentName}"
        o.endpoint_pattern = {
          "hostPrefix" => "ops.",
        }
        o.input = Shapes::ShapeRef.new(shape: PublishMetricsInput)
        o.output = Shapes::ShapeRef.new(shape: PublishMetricsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: TagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEnvironment"
        o.http_method = "PATCH"
        o.http_request_uri = "/environments/{Name}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateEnvironmentInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateEnvironmentOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
