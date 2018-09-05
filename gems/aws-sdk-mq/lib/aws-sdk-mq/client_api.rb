# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MQ
  # @api private
  module ClientApi

    include Seahorse::Model

    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    BrokerInstance = Shapes::StructureShape.new(name: 'BrokerInstance')
    BrokerState = Shapes::StringShape.new(name: 'BrokerState')
    BrokerSummary = Shapes::StructureShape.new(name: 'BrokerSummary')
    ChangeType = Shapes::StringShape.new(name: 'ChangeType')
    Configuration = Shapes::StructureShape.new(name: 'Configuration')
    ConfigurationId = Shapes::StructureShape.new(name: 'ConfigurationId')
    ConfigurationRevision = Shapes::StructureShape.new(name: 'ConfigurationRevision')
    Configurations = Shapes::StructureShape.new(name: 'Configurations')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateBrokerInput = Shapes::StructureShape.new(name: 'CreateBrokerInput')
    CreateBrokerOutput = Shapes::StructureShape.new(name: 'CreateBrokerOutput')
    CreateBrokerRequest = Shapes::StructureShape.new(name: 'CreateBrokerRequest')
    CreateBrokerResponse = Shapes::StructureShape.new(name: 'CreateBrokerResponse')
    CreateConfigurationInput = Shapes::StructureShape.new(name: 'CreateConfigurationInput')
    CreateConfigurationOutput = Shapes::StructureShape.new(name: 'CreateConfigurationOutput')
    CreateConfigurationRequest = Shapes::StructureShape.new(name: 'CreateConfigurationRequest')
    CreateConfigurationResponse = Shapes::StructureShape.new(name: 'CreateConfigurationResponse')
    CreateUserInput = Shapes::StructureShape.new(name: 'CreateUserInput')
    CreateUserRequest = Shapes::StructureShape.new(name: 'CreateUserRequest')
    CreateUserResponse = Shapes::StructureShape.new(name: 'CreateUserResponse')
    DayOfWeek = Shapes::StringShape.new(name: 'DayOfWeek')
    DeleteBrokerOutput = Shapes::StructureShape.new(name: 'DeleteBrokerOutput')
    DeleteBrokerRequest = Shapes::StructureShape.new(name: 'DeleteBrokerRequest')
    DeleteBrokerResponse = Shapes::StructureShape.new(name: 'DeleteBrokerResponse')
    DeleteUserRequest = Shapes::StructureShape.new(name: 'DeleteUserRequest')
    DeleteUserResponse = Shapes::StructureShape.new(name: 'DeleteUserResponse')
    DeploymentMode = Shapes::StringShape.new(name: 'DeploymentMode')
    DescribeBrokerOutput = Shapes::StructureShape.new(name: 'DescribeBrokerOutput')
    DescribeBrokerRequest = Shapes::StructureShape.new(name: 'DescribeBrokerRequest')
    DescribeBrokerResponse = Shapes::StructureShape.new(name: 'DescribeBrokerResponse')
    DescribeConfigurationRequest = Shapes::StructureShape.new(name: 'DescribeConfigurationRequest')
    DescribeConfigurationResponse = Shapes::StructureShape.new(name: 'DescribeConfigurationResponse')
    DescribeConfigurationRevisionOutput = Shapes::StructureShape.new(name: 'DescribeConfigurationRevisionOutput')
    DescribeConfigurationRevisionRequest = Shapes::StructureShape.new(name: 'DescribeConfigurationRevisionRequest')
    DescribeConfigurationRevisionResponse = Shapes::StructureShape.new(name: 'DescribeConfigurationRevisionResponse')
    DescribeUserOutput = Shapes::StructureShape.new(name: 'DescribeUserOutput')
    DescribeUserRequest = Shapes::StructureShape.new(name: 'DescribeUserRequest')
    DescribeUserResponse = Shapes::StructureShape.new(name: 'DescribeUserResponse')
    EngineType = Shapes::StringShape.new(name: 'EngineType')
    Error = Shapes::StructureShape.new(name: 'Error')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    InternalServerErrorException = Shapes::StructureShape.new(name: 'InternalServerErrorException')
    ListBrokersOutput = Shapes::StructureShape.new(name: 'ListBrokersOutput')
    ListBrokersRequest = Shapes::StructureShape.new(name: 'ListBrokersRequest')
    ListBrokersResponse = Shapes::StructureShape.new(name: 'ListBrokersResponse')
    ListConfigurationRevisionsOutput = Shapes::StructureShape.new(name: 'ListConfigurationRevisionsOutput')
    ListConfigurationRevisionsRequest = Shapes::StructureShape.new(name: 'ListConfigurationRevisionsRequest')
    ListConfigurationRevisionsResponse = Shapes::StructureShape.new(name: 'ListConfigurationRevisionsResponse')
    ListConfigurationsOutput = Shapes::StructureShape.new(name: 'ListConfigurationsOutput')
    ListConfigurationsRequest = Shapes::StructureShape.new(name: 'ListConfigurationsRequest')
    ListConfigurationsResponse = Shapes::StructureShape.new(name: 'ListConfigurationsResponse')
    ListUsersOutput = Shapes::StructureShape.new(name: 'ListUsersOutput')
    ListUsersRequest = Shapes::StructureShape.new(name: 'ListUsersRequest')
    ListUsersResponse = Shapes::StructureShape.new(name: 'ListUsersResponse')
    Logs = Shapes::StructureShape.new(name: 'Logs')
    LogsSummary = Shapes::StructureShape.new(name: 'LogsSummary')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    PendingLogs = Shapes::StructureShape.new(name: 'PendingLogs')
    RebootBrokerRequest = Shapes::StructureShape.new(name: 'RebootBrokerRequest')
    RebootBrokerResponse = Shapes::StructureShape.new(name: 'RebootBrokerResponse')
    SanitizationWarning = Shapes::StructureShape.new(name: 'SanitizationWarning')
    SanitizationWarningReason = Shapes::StringShape.new(name: 'SanitizationWarningReason')
    UnauthorizedException = Shapes::StructureShape.new(name: 'UnauthorizedException')
    UpdateBrokerInput = Shapes::StructureShape.new(name: 'UpdateBrokerInput')
    UpdateBrokerOutput = Shapes::StructureShape.new(name: 'UpdateBrokerOutput')
    UpdateBrokerRequest = Shapes::StructureShape.new(name: 'UpdateBrokerRequest')
    UpdateBrokerResponse = Shapes::StructureShape.new(name: 'UpdateBrokerResponse')
    UpdateConfigurationInput = Shapes::StructureShape.new(name: 'UpdateConfigurationInput')
    UpdateConfigurationOutput = Shapes::StructureShape.new(name: 'UpdateConfigurationOutput')
    UpdateConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateConfigurationRequest')
    UpdateConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateConfigurationResponse')
    UpdateUserInput = Shapes::StructureShape.new(name: 'UpdateUserInput')
    UpdateUserRequest = Shapes::StructureShape.new(name: 'UpdateUserRequest')
    UpdateUserResponse = Shapes::StructureShape.new(name: 'UpdateUserResponse')
    User = Shapes::StructureShape.new(name: 'User')
    UserPendingChanges = Shapes::StructureShape.new(name: 'UserPendingChanges')
    UserSummary = Shapes::StructureShape.new(name: 'UserSummary')
    WeeklyStartTime = Shapes::StructureShape.new(name: 'WeeklyStartTime')
    __boolean = Shapes::BooleanShape.new(name: '__boolean')
    __double = Shapes::FloatShape.new(name: '__double')
    __integer = Shapes::IntegerShape.new(name: '__integer')
    __integerMin5Max100 = Shapes::IntegerShape.new(name: '__integerMin5Max100')
    __listOfBrokerInstance = Shapes::ListShape.new(name: '__listOfBrokerInstance')
    __listOfBrokerSummary = Shapes::ListShape.new(name: '__listOfBrokerSummary')
    __listOfConfiguration = Shapes::ListShape.new(name: '__listOfConfiguration')
    __listOfConfigurationId = Shapes::ListShape.new(name: '__listOfConfigurationId')
    __listOfConfigurationRevision = Shapes::ListShape.new(name: '__listOfConfigurationRevision')
    __listOfSanitizationWarning = Shapes::ListShape.new(name: '__listOfSanitizationWarning')
    __listOfUser = Shapes::ListShape.new(name: '__listOfUser')
    __listOfUserSummary = Shapes::ListShape.new(name: '__listOfUserSummary')
    __listOf__string = Shapes::ListShape.new(name: '__listOf__string')
    __long = Shapes::IntegerShape.new(name: '__long')
    __string = Shapes::StringShape.new(name: '__string')
    __timestampIso8601 = Shapes::TimestampShape.new(name: '__timestampIso8601', timestampFormat: "iso8601")
    __timestampUnix = Shapes::TimestampShape.new(name: '__timestampUnix', timestampFormat: "unixTimestamp")

    BrokerInstance.add_member(:console_url, Shapes::ShapeRef.new(shape: __string, location_name: "consoleURL"))
    BrokerInstance.add_member(:endpoints, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "endpoints"))
    BrokerInstance.add_member(:ip_address, Shapes::ShapeRef.new(shape: __string, location_name: "ipAddress"))
    BrokerInstance.struct_class = Types::BrokerInstance

    BrokerSummary.add_member(:broker_arn, Shapes::ShapeRef.new(shape: __string, location_name: "brokerArn"))
    BrokerSummary.add_member(:broker_id, Shapes::ShapeRef.new(shape: __string, location_name: "brokerId"))
    BrokerSummary.add_member(:broker_name, Shapes::ShapeRef.new(shape: __string, location_name: "brokerName"))
    BrokerSummary.add_member(:broker_state, Shapes::ShapeRef.new(shape: BrokerState, location_name: "brokerState"))
    BrokerSummary.add_member(:created, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "created"))
    BrokerSummary.add_member(:deployment_mode, Shapes::ShapeRef.new(shape: DeploymentMode, location_name: "deploymentMode"))
    BrokerSummary.add_member(:host_instance_type, Shapes::ShapeRef.new(shape: __string, location_name: "hostInstanceType"))
    BrokerSummary.struct_class = Types::BrokerSummary

    Configuration.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    Configuration.add_member(:created, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "created"))
    Configuration.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    Configuration.add_member(:engine_type, Shapes::ShapeRef.new(shape: EngineType, location_name: "engineType"))
    Configuration.add_member(:engine_version, Shapes::ShapeRef.new(shape: __string, location_name: "engineVersion"))
    Configuration.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    Configuration.add_member(:latest_revision, Shapes::ShapeRef.new(shape: ConfigurationRevision, location_name: "latestRevision"))
    Configuration.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    Configuration.struct_class = Types::Configuration

    ConfigurationId.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    ConfigurationId.add_member(:revision, Shapes::ShapeRef.new(shape: __integer, location_name: "revision"))
    ConfigurationId.struct_class = Types::ConfigurationId

    ConfigurationRevision.add_member(:created, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "created"))
    ConfigurationRevision.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    ConfigurationRevision.add_member(:revision, Shapes::ShapeRef.new(shape: __integer, location_name: "revision"))
    ConfigurationRevision.struct_class = Types::ConfigurationRevision

    Configurations.add_member(:current, Shapes::ShapeRef.new(shape: ConfigurationId, location_name: "current"))
    Configurations.add_member(:history, Shapes::ShapeRef.new(shape: __listOfConfigurationId, location_name: "history"))
    Configurations.add_member(:pending, Shapes::ShapeRef.new(shape: ConfigurationId, location_name: "pending"))
    Configurations.struct_class = Types::Configurations

    CreateBrokerInput.add_member(:auto_minor_version_upgrade, Shapes::ShapeRef.new(shape: __boolean, location_name: "autoMinorVersionUpgrade"))
    CreateBrokerInput.add_member(:broker_name, Shapes::ShapeRef.new(shape: __string, location_name: "brokerName"))
    CreateBrokerInput.add_member(:configuration, Shapes::ShapeRef.new(shape: ConfigurationId, location_name: "configuration"))
    CreateBrokerInput.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: __string, location_name: "creatorRequestId", metadata: {"idempotencyToken"=>true}))
    CreateBrokerInput.add_member(:deployment_mode, Shapes::ShapeRef.new(shape: DeploymentMode, location_name: "deploymentMode"))
    CreateBrokerInput.add_member(:engine_type, Shapes::ShapeRef.new(shape: EngineType, location_name: "engineType"))
    CreateBrokerInput.add_member(:engine_version, Shapes::ShapeRef.new(shape: __string, location_name: "engineVersion"))
    CreateBrokerInput.add_member(:host_instance_type, Shapes::ShapeRef.new(shape: __string, location_name: "hostInstanceType"))
    CreateBrokerInput.add_member(:logs, Shapes::ShapeRef.new(shape: Logs, location_name: "logs"))
    CreateBrokerInput.add_member(:maintenance_window_start_time, Shapes::ShapeRef.new(shape: WeeklyStartTime, location_name: "maintenanceWindowStartTime"))
    CreateBrokerInput.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: __boolean, location_name: "publiclyAccessible"))
    CreateBrokerInput.add_member(:security_groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "securityGroups"))
    CreateBrokerInput.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "subnetIds"))
    CreateBrokerInput.add_member(:users, Shapes::ShapeRef.new(shape: __listOfUser, location_name: "users"))
    CreateBrokerInput.struct_class = Types::CreateBrokerInput

    CreateBrokerOutput.add_member(:broker_arn, Shapes::ShapeRef.new(shape: __string, location_name: "brokerArn"))
    CreateBrokerOutput.add_member(:broker_id, Shapes::ShapeRef.new(shape: __string, location_name: "brokerId"))
    CreateBrokerOutput.struct_class = Types::CreateBrokerOutput

    CreateBrokerRequest.add_member(:auto_minor_version_upgrade, Shapes::ShapeRef.new(shape: __boolean, location_name: "autoMinorVersionUpgrade"))
    CreateBrokerRequest.add_member(:broker_name, Shapes::ShapeRef.new(shape: __string, location_name: "brokerName"))
    CreateBrokerRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: ConfigurationId, location_name: "configuration"))
    CreateBrokerRequest.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: __string, location_name: "creatorRequestId", metadata: {"idempotencyToken"=>true}))
    CreateBrokerRequest.add_member(:deployment_mode, Shapes::ShapeRef.new(shape: DeploymentMode, location_name: "deploymentMode"))
    CreateBrokerRequest.add_member(:engine_type, Shapes::ShapeRef.new(shape: EngineType, location_name: "engineType"))
    CreateBrokerRequest.add_member(:engine_version, Shapes::ShapeRef.new(shape: __string, location_name: "engineVersion"))
    CreateBrokerRequest.add_member(:host_instance_type, Shapes::ShapeRef.new(shape: __string, location_name: "hostInstanceType"))
    CreateBrokerRequest.add_member(:logs, Shapes::ShapeRef.new(shape: Logs, location_name: "logs"))
    CreateBrokerRequest.add_member(:maintenance_window_start_time, Shapes::ShapeRef.new(shape: WeeklyStartTime, location_name: "maintenanceWindowStartTime"))
    CreateBrokerRequest.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: __boolean, location_name: "publiclyAccessible"))
    CreateBrokerRequest.add_member(:security_groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "securityGroups"))
    CreateBrokerRequest.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "subnetIds"))
    CreateBrokerRequest.add_member(:users, Shapes::ShapeRef.new(shape: __listOfUser, location_name: "users"))
    CreateBrokerRequest.struct_class = Types::CreateBrokerRequest

    CreateBrokerResponse.add_member(:broker_arn, Shapes::ShapeRef.new(shape: __string, location_name: "brokerArn"))
    CreateBrokerResponse.add_member(:broker_id, Shapes::ShapeRef.new(shape: __string, location_name: "brokerId"))
    CreateBrokerResponse.struct_class = Types::CreateBrokerResponse

    CreateConfigurationInput.add_member(:engine_type, Shapes::ShapeRef.new(shape: EngineType, location_name: "engineType"))
    CreateConfigurationInput.add_member(:engine_version, Shapes::ShapeRef.new(shape: __string, location_name: "engineVersion"))
    CreateConfigurationInput.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    CreateConfigurationInput.struct_class = Types::CreateConfigurationInput

    CreateConfigurationOutput.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    CreateConfigurationOutput.add_member(:created, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "created"))
    CreateConfigurationOutput.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    CreateConfigurationOutput.add_member(:latest_revision, Shapes::ShapeRef.new(shape: ConfigurationRevision, location_name: "latestRevision"))
    CreateConfigurationOutput.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    CreateConfigurationOutput.struct_class = Types::CreateConfigurationOutput

    CreateConfigurationRequest.add_member(:engine_type, Shapes::ShapeRef.new(shape: EngineType, location_name: "engineType"))
    CreateConfigurationRequest.add_member(:engine_version, Shapes::ShapeRef.new(shape: __string, location_name: "engineVersion"))
    CreateConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    CreateConfigurationRequest.struct_class = Types::CreateConfigurationRequest

    CreateConfigurationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    CreateConfigurationResponse.add_member(:created, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "created"))
    CreateConfigurationResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    CreateConfigurationResponse.add_member(:latest_revision, Shapes::ShapeRef.new(shape: ConfigurationRevision, location_name: "latestRevision"))
    CreateConfigurationResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    CreateConfigurationResponse.struct_class = Types::CreateConfigurationResponse

    CreateUserInput.add_member(:console_access, Shapes::ShapeRef.new(shape: __boolean, location_name: "consoleAccess"))
    CreateUserInput.add_member(:groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "groups"))
    CreateUserInput.add_member(:password, Shapes::ShapeRef.new(shape: __string, location_name: "password"))
    CreateUserInput.struct_class = Types::CreateUserInput

    CreateUserRequest.add_member(:broker_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "broker-id"))
    CreateUserRequest.add_member(:console_access, Shapes::ShapeRef.new(shape: __boolean, location_name: "consoleAccess"))
    CreateUserRequest.add_member(:groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "groups"))
    CreateUserRequest.add_member(:password, Shapes::ShapeRef.new(shape: __string, location_name: "password"))
    CreateUserRequest.add_member(:username, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "username"))
    CreateUserRequest.struct_class = Types::CreateUserRequest

    CreateUserResponse.struct_class = Types::CreateUserResponse

    DeleteBrokerOutput.add_member(:broker_id, Shapes::ShapeRef.new(shape: __string, location_name: "brokerId"))
    DeleteBrokerOutput.struct_class = Types::DeleteBrokerOutput

    DeleteBrokerRequest.add_member(:broker_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "broker-id"))
    DeleteBrokerRequest.struct_class = Types::DeleteBrokerRequest

    DeleteBrokerResponse.add_member(:broker_id, Shapes::ShapeRef.new(shape: __string, location_name: "brokerId"))
    DeleteBrokerResponse.struct_class = Types::DeleteBrokerResponse

    DeleteUserRequest.add_member(:broker_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "broker-id"))
    DeleteUserRequest.add_member(:username, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "username"))
    DeleteUserRequest.struct_class = Types::DeleteUserRequest

    DeleteUserResponse.struct_class = Types::DeleteUserResponse

    DescribeBrokerOutput.add_member(:auto_minor_version_upgrade, Shapes::ShapeRef.new(shape: __boolean, location_name: "autoMinorVersionUpgrade"))
    DescribeBrokerOutput.add_member(:broker_arn, Shapes::ShapeRef.new(shape: __string, location_name: "brokerArn"))
    DescribeBrokerOutput.add_member(:broker_id, Shapes::ShapeRef.new(shape: __string, location_name: "brokerId"))
    DescribeBrokerOutput.add_member(:broker_instances, Shapes::ShapeRef.new(shape: __listOfBrokerInstance, location_name: "brokerInstances"))
    DescribeBrokerOutput.add_member(:broker_name, Shapes::ShapeRef.new(shape: __string, location_name: "brokerName"))
    DescribeBrokerOutput.add_member(:broker_state, Shapes::ShapeRef.new(shape: BrokerState, location_name: "brokerState"))
    DescribeBrokerOutput.add_member(:configurations, Shapes::ShapeRef.new(shape: Configurations, location_name: "configurations"))
    DescribeBrokerOutput.add_member(:created, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "created"))
    DescribeBrokerOutput.add_member(:deployment_mode, Shapes::ShapeRef.new(shape: DeploymentMode, location_name: "deploymentMode"))
    DescribeBrokerOutput.add_member(:engine_type, Shapes::ShapeRef.new(shape: EngineType, location_name: "engineType"))
    DescribeBrokerOutput.add_member(:engine_version, Shapes::ShapeRef.new(shape: __string, location_name: "engineVersion"))
    DescribeBrokerOutput.add_member(:host_instance_type, Shapes::ShapeRef.new(shape: __string, location_name: "hostInstanceType"))
    DescribeBrokerOutput.add_member(:logs, Shapes::ShapeRef.new(shape: LogsSummary, location_name: "logs"))
    DescribeBrokerOutput.add_member(:maintenance_window_start_time, Shapes::ShapeRef.new(shape: WeeklyStartTime, location_name: "maintenanceWindowStartTime"))
    DescribeBrokerOutput.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: __boolean, location_name: "publiclyAccessible"))
    DescribeBrokerOutput.add_member(:security_groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "securityGroups"))
    DescribeBrokerOutput.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "subnetIds"))
    DescribeBrokerOutput.add_member(:users, Shapes::ShapeRef.new(shape: __listOfUserSummary, location_name: "users"))
    DescribeBrokerOutput.struct_class = Types::DescribeBrokerOutput

    DescribeBrokerRequest.add_member(:broker_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "broker-id"))
    DescribeBrokerRequest.struct_class = Types::DescribeBrokerRequest

    DescribeBrokerResponse.add_member(:auto_minor_version_upgrade, Shapes::ShapeRef.new(shape: __boolean, location_name: "autoMinorVersionUpgrade"))
    DescribeBrokerResponse.add_member(:broker_arn, Shapes::ShapeRef.new(shape: __string, location_name: "brokerArn"))
    DescribeBrokerResponse.add_member(:broker_id, Shapes::ShapeRef.new(shape: __string, location_name: "brokerId"))
    DescribeBrokerResponse.add_member(:broker_instances, Shapes::ShapeRef.new(shape: __listOfBrokerInstance, location_name: "brokerInstances"))
    DescribeBrokerResponse.add_member(:broker_name, Shapes::ShapeRef.new(shape: __string, location_name: "brokerName"))
    DescribeBrokerResponse.add_member(:broker_state, Shapes::ShapeRef.new(shape: BrokerState, location_name: "brokerState"))
    DescribeBrokerResponse.add_member(:configurations, Shapes::ShapeRef.new(shape: Configurations, location_name: "configurations"))
    DescribeBrokerResponse.add_member(:created, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "created"))
    DescribeBrokerResponse.add_member(:deployment_mode, Shapes::ShapeRef.new(shape: DeploymentMode, location_name: "deploymentMode"))
    DescribeBrokerResponse.add_member(:engine_type, Shapes::ShapeRef.new(shape: EngineType, location_name: "engineType"))
    DescribeBrokerResponse.add_member(:engine_version, Shapes::ShapeRef.new(shape: __string, location_name: "engineVersion"))
    DescribeBrokerResponse.add_member(:host_instance_type, Shapes::ShapeRef.new(shape: __string, location_name: "hostInstanceType"))
    DescribeBrokerResponse.add_member(:logs, Shapes::ShapeRef.new(shape: LogsSummary, location_name: "logs"))
    DescribeBrokerResponse.add_member(:maintenance_window_start_time, Shapes::ShapeRef.new(shape: WeeklyStartTime, location_name: "maintenanceWindowStartTime"))
    DescribeBrokerResponse.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: __boolean, location_name: "publiclyAccessible"))
    DescribeBrokerResponse.add_member(:security_groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "securityGroups"))
    DescribeBrokerResponse.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "subnetIds"))
    DescribeBrokerResponse.add_member(:users, Shapes::ShapeRef.new(shape: __listOfUserSummary, location_name: "users"))
    DescribeBrokerResponse.struct_class = Types::DescribeBrokerResponse

    DescribeConfigurationRequest.add_member(:configuration_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "configuration-id"))
    DescribeConfigurationRequest.struct_class = Types::DescribeConfigurationRequest

    DescribeConfigurationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DescribeConfigurationResponse.add_member(:created, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "created"))
    DescribeConfigurationResponse.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    DescribeConfigurationResponse.add_member(:engine_type, Shapes::ShapeRef.new(shape: EngineType, location_name: "engineType"))
    DescribeConfigurationResponse.add_member(:engine_version, Shapes::ShapeRef.new(shape: __string, location_name: "engineVersion"))
    DescribeConfigurationResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    DescribeConfigurationResponse.add_member(:latest_revision, Shapes::ShapeRef.new(shape: ConfigurationRevision, location_name: "latestRevision"))
    DescribeConfigurationResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    DescribeConfigurationResponse.struct_class = Types::DescribeConfigurationResponse

    DescribeConfigurationRevisionOutput.add_member(:configuration_id, Shapes::ShapeRef.new(shape: __string, location_name: "configurationId"))
    DescribeConfigurationRevisionOutput.add_member(:created, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "created"))
    DescribeConfigurationRevisionOutput.add_member(:data, Shapes::ShapeRef.new(shape: __string, location_name: "data"))
    DescribeConfigurationRevisionOutput.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    DescribeConfigurationRevisionOutput.struct_class = Types::DescribeConfigurationRevisionOutput

    DescribeConfigurationRevisionRequest.add_member(:configuration_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "configuration-id"))
    DescribeConfigurationRevisionRequest.add_member(:configuration_revision, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "configuration-revision"))
    DescribeConfigurationRevisionRequest.struct_class = Types::DescribeConfigurationRevisionRequest

    DescribeConfigurationRevisionResponse.add_member(:configuration_id, Shapes::ShapeRef.new(shape: __string, location_name: "configurationId"))
    DescribeConfigurationRevisionResponse.add_member(:created, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "created"))
    DescribeConfigurationRevisionResponse.add_member(:data, Shapes::ShapeRef.new(shape: __string, location_name: "data"))
    DescribeConfigurationRevisionResponse.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    DescribeConfigurationRevisionResponse.struct_class = Types::DescribeConfigurationRevisionResponse

    DescribeUserOutput.add_member(:broker_id, Shapes::ShapeRef.new(shape: __string, location_name: "brokerId"))
    DescribeUserOutput.add_member(:console_access, Shapes::ShapeRef.new(shape: __boolean, location_name: "consoleAccess"))
    DescribeUserOutput.add_member(:groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "groups"))
    DescribeUserOutput.add_member(:pending, Shapes::ShapeRef.new(shape: UserPendingChanges, location_name: "pending"))
    DescribeUserOutput.add_member(:username, Shapes::ShapeRef.new(shape: __string, location_name: "username"))
    DescribeUserOutput.struct_class = Types::DescribeUserOutput

    DescribeUserRequest.add_member(:broker_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "broker-id"))
    DescribeUserRequest.add_member(:username, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "username"))
    DescribeUserRequest.struct_class = Types::DescribeUserRequest

    DescribeUserResponse.add_member(:broker_id, Shapes::ShapeRef.new(shape: __string, location_name: "brokerId"))
    DescribeUserResponse.add_member(:console_access, Shapes::ShapeRef.new(shape: __boolean, location_name: "consoleAccess"))
    DescribeUserResponse.add_member(:groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "groups"))
    DescribeUserResponse.add_member(:pending, Shapes::ShapeRef.new(shape: UserPendingChanges, location_name: "pending"))
    DescribeUserResponse.add_member(:username, Shapes::ShapeRef.new(shape: __string, location_name: "username"))
    DescribeUserResponse.struct_class = Types::DescribeUserResponse

    Error.add_member(:error_attribute, Shapes::ShapeRef.new(shape: __string, location_name: "errorAttribute"))
    Error.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    Error.struct_class = Types::Error

    ListBrokersOutput.add_member(:broker_summaries, Shapes::ShapeRef.new(shape: __listOfBrokerSummary, location_name: "brokerSummaries"))
    ListBrokersOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListBrokersOutput.struct_class = Types::ListBrokersOutput

    ListBrokersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListBrokersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListBrokersRequest.struct_class = Types::ListBrokersRequest

    ListBrokersResponse.add_member(:broker_summaries, Shapes::ShapeRef.new(shape: __listOfBrokerSummary, location_name: "brokerSummaries"))
    ListBrokersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListBrokersResponse.struct_class = Types::ListBrokersResponse

    ListConfigurationRevisionsOutput.add_member(:configuration_id, Shapes::ShapeRef.new(shape: __string, location_name: "configurationId"))
    ListConfigurationRevisionsOutput.add_member(:max_results, Shapes::ShapeRef.new(shape: __integer, location_name: "maxResults"))
    ListConfigurationRevisionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListConfigurationRevisionsOutput.add_member(:revisions, Shapes::ShapeRef.new(shape: __listOfConfigurationRevision, location_name: "revisions"))
    ListConfigurationRevisionsOutput.struct_class = Types::ListConfigurationRevisionsOutput

    ListConfigurationRevisionsRequest.add_member(:configuration_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "configuration-id"))
    ListConfigurationRevisionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListConfigurationRevisionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListConfigurationRevisionsRequest.struct_class = Types::ListConfigurationRevisionsRequest

    ListConfigurationRevisionsResponse.add_member(:configuration_id, Shapes::ShapeRef.new(shape: __string, location_name: "configurationId"))
    ListConfigurationRevisionsResponse.add_member(:max_results, Shapes::ShapeRef.new(shape: __integer, location_name: "maxResults"))
    ListConfigurationRevisionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListConfigurationRevisionsResponse.add_member(:revisions, Shapes::ShapeRef.new(shape: __listOfConfigurationRevision, location_name: "revisions"))
    ListConfigurationRevisionsResponse.struct_class = Types::ListConfigurationRevisionsResponse

    ListConfigurationsOutput.add_member(:configurations, Shapes::ShapeRef.new(shape: __listOfConfiguration, location_name: "configurations"))
    ListConfigurationsOutput.add_member(:max_results, Shapes::ShapeRef.new(shape: __integer, location_name: "maxResults"))
    ListConfigurationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListConfigurationsOutput.struct_class = Types::ListConfigurationsOutput

    ListConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListConfigurationsRequest.struct_class = Types::ListConfigurationsRequest

    ListConfigurationsResponse.add_member(:configurations, Shapes::ShapeRef.new(shape: __listOfConfiguration, location_name: "configurations"))
    ListConfigurationsResponse.add_member(:max_results, Shapes::ShapeRef.new(shape: __integer, location_name: "maxResults"))
    ListConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListConfigurationsResponse.struct_class = Types::ListConfigurationsResponse

    ListUsersOutput.add_member(:broker_id, Shapes::ShapeRef.new(shape: __string, location_name: "brokerId"))
    ListUsersOutput.add_member(:max_results, Shapes::ShapeRef.new(shape: __integerMin5Max100, location_name: "maxResults"))
    ListUsersOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListUsersOutput.add_member(:users, Shapes::ShapeRef.new(shape: __listOfUserSummary, location_name: "users"))
    ListUsersOutput.struct_class = Types::ListUsersOutput

    ListUsersRequest.add_member(:broker_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "broker-id"))
    ListUsersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListUsersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListUsersRequest.struct_class = Types::ListUsersRequest

    ListUsersResponse.add_member(:broker_id, Shapes::ShapeRef.new(shape: __string, location_name: "brokerId"))
    ListUsersResponse.add_member(:max_results, Shapes::ShapeRef.new(shape: __integerMin5Max100, location_name: "maxResults"))
    ListUsersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListUsersResponse.add_member(:users, Shapes::ShapeRef.new(shape: __listOfUserSummary, location_name: "users"))
    ListUsersResponse.struct_class = Types::ListUsersResponse

    Logs.add_member(:audit, Shapes::ShapeRef.new(shape: __boolean, location_name: "audit"))
    Logs.add_member(:general, Shapes::ShapeRef.new(shape: __boolean, location_name: "general"))
    Logs.struct_class = Types::Logs

    LogsSummary.add_member(:audit, Shapes::ShapeRef.new(shape: __boolean, location_name: "audit"))
    LogsSummary.add_member(:audit_log_group, Shapes::ShapeRef.new(shape: __string, location_name: "auditLogGroup"))
    LogsSummary.add_member(:general, Shapes::ShapeRef.new(shape: __boolean, location_name: "general"))
    LogsSummary.add_member(:general_log_group, Shapes::ShapeRef.new(shape: __string, location_name: "generalLogGroup"))
    LogsSummary.add_member(:pending, Shapes::ShapeRef.new(shape: PendingLogs, location_name: "pending"))
    LogsSummary.struct_class = Types::LogsSummary

    PendingLogs.add_member(:audit, Shapes::ShapeRef.new(shape: __boolean, location_name: "audit"))
    PendingLogs.add_member(:general, Shapes::ShapeRef.new(shape: __boolean, location_name: "general"))
    PendingLogs.struct_class = Types::PendingLogs

    RebootBrokerRequest.add_member(:broker_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "broker-id"))
    RebootBrokerRequest.struct_class = Types::RebootBrokerRequest

    RebootBrokerResponse.struct_class = Types::RebootBrokerResponse

    SanitizationWarning.add_member(:attribute_name, Shapes::ShapeRef.new(shape: __string, location_name: "attributeName"))
    SanitizationWarning.add_member(:element_name, Shapes::ShapeRef.new(shape: __string, location_name: "elementName"))
    SanitizationWarning.add_member(:reason, Shapes::ShapeRef.new(shape: SanitizationWarningReason, location_name: "reason"))
    SanitizationWarning.struct_class = Types::SanitizationWarning

    UpdateBrokerInput.add_member(:configuration, Shapes::ShapeRef.new(shape: ConfigurationId, location_name: "configuration"))
    UpdateBrokerInput.add_member(:logs, Shapes::ShapeRef.new(shape: Logs, location_name: "logs"))
    UpdateBrokerInput.struct_class = Types::UpdateBrokerInput

    UpdateBrokerOutput.add_member(:broker_id, Shapes::ShapeRef.new(shape: __string, location_name: "brokerId"))
    UpdateBrokerOutput.add_member(:configuration, Shapes::ShapeRef.new(shape: ConfigurationId, location_name: "configuration"))
    UpdateBrokerOutput.add_member(:logs, Shapes::ShapeRef.new(shape: Logs, location_name: "logs"))
    UpdateBrokerOutput.struct_class = Types::UpdateBrokerOutput

    UpdateBrokerRequest.add_member(:broker_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "broker-id"))
    UpdateBrokerRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: ConfigurationId, location_name: "configuration"))
    UpdateBrokerRequest.add_member(:logs, Shapes::ShapeRef.new(shape: Logs, location_name: "logs"))
    UpdateBrokerRequest.struct_class = Types::UpdateBrokerRequest

    UpdateBrokerResponse.add_member(:broker_id, Shapes::ShapeRef.new(shape: __string, location_name: "brokerId"))
    UpdateBrokerResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: ConfigurationId, location_name: "configuration"))
    UpdateBrokerResponse.add_member(:logs, Shapes::ShapeRef.new(shape: Logs, location_name: "logs"))
    UpdateBrokerResponse.struct_class = Types::UpdateBrokerResponse

    UpdateConfigurationInput.add_member(:data, Shapes::ShapeRef.new(shape: __string, location_name: "data"))
    UpdateConfigurationInput.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    UpdateConfigurationInput.struct_class = Types::UpdateConfigurationInput

    UpdateConfigurationOutput.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    UpdateConfigurationOutput.add_member(:created, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "created"))
    UpdateConfigurationOutput.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    UpdateConfigurationOutput.add_member(:latest_revision, Shapes::ShapeRef.new(shape: ConfigurationRevision, location_name: "latestRevision"))
    UpdateConfigurationOutput.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    UpdateConfigurationOutput.add_member(:warnings, Shapes::ShapeRef.new(shape: __listOfSanitizationWarning, location_name: "warnings"))
    UpdateConfigurationOutput.struct_class = Types::UpdateConfigurationOutput

    UpdateConfigurationRequest.add_member(:configuration_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "configuration-id"))
    UpdateConfigurationRequest.add_member(:data, Shapes::ShapeRef.new(shape: __string, location_name: "data"))
    UpdateConfigurationRequest.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    UpdateConfigurationRequest.struct_class = Types::UpdateConfigurationRequest

    UpdateConfigurationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    UpdateConfigurationResponse.add_member(:created, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "created"))
    UpdateConfigurationResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    UpdateConfigurationResponse.add_member(:latest_revision, Shapes::ShapeRef.new(shape: ConfigurationRevision, location_name: "latestRevision"))
    UpdateConfigurationResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    UpdateConfigurationResponse.add_member(:warnings, Shapes::ShapeRef.new(shape: __listOfSanitizationWarning, location_name: "warnings"))
    UpdateConfigurationResponse.struct_class = Types::UpdateConfigurationResponse

    UpdateUserInput.add_member(:console_access, Shapes::ShapeRef.new(shape: __boolean, location_name: "consoleAccess"))
    UpdateUserInput.add_member(:groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "groups"))
    UpdateUserInput.add_member(:password, Shapes::ShapeRef.new(shape: __string, location_name: "password"))
    UpdateUserInput.struct_class = Types::UpdateUserInput

    UpdateUserRequest.add_member(:broker_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "broker-id"))
    UpdateUserRequest.add_member(:console_access, Shapes::ShapeRef.new(shape: __boolean, location_name: "consoleAccess"))
    UpdateUserRequest.add_member(:groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "groups"))
    UpdateUserRequest.add_member(:password, Shapes::ShapeRef.new(shape: __string, location_name: "password"))
    UpdateUserRequest.add_member(:username, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "username"))
    UpdateUserRequest.struct_class = Types::UpdateUserRequest

    UpdateUserResponse.struct_class = Types::UpdateUserResponse

    User.add_member(:console_access, Shapes::ShapeRef.new(shape: __boolean, location_name: "consoleAccess"))
    User.add_member(:groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "groups"))
    User.add_member(:password, Shapes::ShapeRef.new(shape: __string, location_name: "password"))
    User.add_member(:username, Shapes::ShapeRef.new(shape: __string, location_name: "username"))
    User.struct_class = Types::User

    UserPendingChanges.add_member(:console_access, Shapes::ShapeRef.new(shape: __boolean, location_name: "consoleAccess"))
    UserPendingChanges.add_member(:groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "groups"))
    UserPendingChanges.add_member(:pending_change, Shapes::ShapeRef.new(shape: ChangeType, location_name: "pendingChange"))
    UserPendingChanges.struct_class = Types::UserPendingChanges

    UserSummary.add_member(:pending_change, Shapes::ShapeRef.new(shape: ChangeType, location_name: "pendingChange"))
    UserSummary.add_member(:username, Shapes::ShapeRef.new(shape: __string, location_name: "username"))
    UserSummary.struct_class = Types::UserSummary

    WeeklyStartTime.add_member(:day_of_week, Shapes::ShapeRef.new(shape: DayOfWeek, location_name: "dayOfWeek"))
    WeeklyStartTime.add_member(:time_of_day, Shapes::ShapeRef.new(shape: __string, location_name: "timeOfDay"))
    WeeklyStartTime.add_member(:time_zone, Shapes::ShapeRef.new(shape: __string, location_name: "timeZone"))
    WeeklyStartTime.struct_class = Types::WeeklyStartTime

    __listOfBrokerInstance.member = Shapes::ShapeRef.new(shape: BrokerInstance)

    __listOfBrokerSummary.member = Shapes::ShapeRef.new(shape: BrokerSummary)

    __listOfConfiguration.member = Shapes::ShapeRef.new(shape: Configuration)

    __listOfConfigurationId.member = Shapes::ShapeRef.new(shape: ConfigurationId)

    __listOfConfigurationRevision.member = Shapes::ShapeRef.new(shape: ConfigurationRevision)

    __listOfSanitizationWarning.member = Shapes::ShapeRef.new(shape: SanitizationWarning)

    __listOfUser.member = Shapes::ShapeRef.new(shape: User)

    __listOfUserSummary.member = Shapes::ShapeRef.new(shape: UserSummary)

    __listOf__string.member = Shapes::ShapeRef.new(shape: __string)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-11-27"

      api.metadata = {
        "apiVersion" => "2017-11-27",
        "endpointPrefix" => "mq",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AmazonMQ",
        "serviceId" => "mq",
        "signatureVersion" => "v4",
        "signingName" => "mq",
        "uid" => "mq-2017-11-27",
      }

      api.add_operation(:create_broker, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBroker"
        o.http_method = "POST"
        o.http_request_uri = "/v1/brokers"
        o.input = Shapes::ShapeRef.new(shape: CreateBrokerRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBrokerResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:create_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/v1/configurations"
        o.input = Shapes::ShapeRef.new(shape: CreateConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:create_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUser"
        o.http_method = "POST"
        o.http_request_uri = "/v1/brokers/{broker-id}/users/{username}"
        o.input = Shapes::ShapeRef.new(shape: CreateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:delete_broker, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBroker"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/brokers/{broker-id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteBrokerRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteBrokerResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:delete_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteUser"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/brokers/{broker-id}/users/{username}"
        o.input = Shapes::ShapeRef.new(shape: DeleteUserRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:describe_broker, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeBroker"
        o.http_method = "GET"
        o.http_request_uri = "/v1/brokers/{broker-id}"
        o.input = Shapes::ShapeRef.new(shape: DescribeBrokerRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeBrokerResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:describe_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/v1/configurations/{configuration-id}"
        o.input = Shapes::ShapeRef.new(shape: DescribeConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:describe_configuration_revision, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeConfigurationRevision"
        o.http_method = "GET"
        o.http_request_uri = "/v1/configurations/{configuration-id}/revisions/{configuration-revision}"
        o.input = Shapes::ShapeRef.new(shape: DescribeConfigurationRevisionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeConfigurationRevisionResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:describe_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeUser"
        o.http_method = "GET"
        o.http_request_uri = "/v1/brokers/{broker-id}/users/{username}"
        o.input = Shapes::ShapeRef.new(shape: DescribeUserRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:list_brokers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBrokers"
        o.http_method = "GET"
        o.http_request_uri = "/v1/brokers"
        o.input = Shapes::ShapeRef.new(shape: ListBrokersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBrokersResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:list_configuration_revisions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConfigurationRevisions"
        o.http_method = "GET"
        o.http_request_uri = "/v1/configurations/{configuration-id}/revisions"
        o.input = Shapes::ShapeRef.new(shape: ListConfigurationRevisionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListConfigurationRevisionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:list_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConfigurations"
        o.http_method = "GET"
        o.http_request_uri = "/v1/configurations"
        o.input = Shapes::ShapeRef.new(shape: ListConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:list_users, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUsers"
        o.http_method = "GET"
        o.http_request_uri = "/v1/brokers/{broker-id}/users"
        o.input = Shapes::ShapeRef.new(shape: ListUsersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUsersResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:reboot_broker, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RebootBroker"
        o.http_method = "POST"
        o.http_request_uri = "/v1/brokers/{broker-id}/reboot"
        o.input = Shapes::ShapeRef.new(shape: RebootBrokerRequest)
        o.output = Shapes::ShapeRef.new(shape: RebootBrokerResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:update_broker, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBroker"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/brokers/{broker-id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateBrokerRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBrokerResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:update_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/configurations/{configuration-id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:update_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUser"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/brokers/{broker-id}/users/{username}"
        o.input = Shapes::ShapeRef.new(shape: UpdateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)
    end

  end
end
