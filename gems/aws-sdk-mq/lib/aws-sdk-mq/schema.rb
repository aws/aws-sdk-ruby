# frozen_string_literal: true

# This is generated code!

module Aws::Mq
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ActionRequired = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#ActionRequired', name: 'ActionRequired')
    AuthenticationStrategy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mq#AuthenticationStrategy', name: 'AuthenticationStrategy')
    AvailabilityZone = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#AvailabilityZone', name: 'AvailabilityZone')
    BadRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#BadRequestException', name: 'BadRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BrokerEngineType = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#BrokerEngineType', name: 'BrokerEngineType')
    BrokerInstance = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#BrokerInstance', name: 'BrokerInstance')
    BrokerInstanceOption = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#BrokerInstanceOption', name: 'BrokerInstanceOption')
    BrokerState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mq#BrokerState', name: 'BrokerState')
    BrokerStorageType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mq#BrokerStorageType', name: 'BrokerStorageType')
    BrokerSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#BrokerSummary', name: 'BrokerSummary')
    ChangeType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mq#ChangeType', name: 'ChangeType')
    Configuration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#Configuration', name: 'Configuration')
    ConfigurationId = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#ConfigurationId', name: 'ConfigurationId')
    ConfigurationRevision = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#ConfigurationRevision', name: 'ConfigurationRevision')
    Configurations = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#Configurations', name: 'Configurations')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateBrokerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#CreateBrokerRequest', name: 'CreateBrokerRequest')
    CreateBrokerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#CreateBrokerResponse', name: 'CreateBrokerResponse')
    CreateConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#CreateConfigurationRequest', name: 'CreateConfigurationRequest')
    CreateConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#CreateConfigurationResponse', name: 'CreateConfigurationResponse')
    CreateTagsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#CreateTagsRequest', name: 'CreateTagsRequest')
    CreateUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#CreateUserRequest', name: 'CreateUserRequest')
    CreateUserResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#CreateUserResponse', name: 'CreateUserResponse')
    DataReplicationCounterpart = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#DataReplicationCounterpart', name: 'DataReplicationCounterpart')
    DataReplicationMetadataOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#DataReplicationMetadataOutput', name: 'DataReplicationMetadataOutput')
    DataReplicationMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mq#DataReplicationMode', name: 'DataReplicationMode')
    DayOfWeek = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mq#DayOfWeek', name: 'DayOfWeek')
    DeleteBrokerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#DeleteBrokerRequest', name: 'DeleteBrokerRequest')
    DeleteBrokerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#DeleteBrokerResponse', name: 'DeleteBrokerResponse')
    DeleteConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#DeleteConfigurationRequest', name: 'DeleteConfigurationRequest')
    DeleteConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#DeleteConfigurationResponse', name: 'DeleteConfigurationResponse')
    DeleteTagsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#DeleteTagsRequest', name: 'DeleteTagsRequest')
    DeleteUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#DeleteUserRequest', name: 'DeleteUserRequest')
    DeleteUserResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#DeleteUserResponse', name: 'DeleteUserResponse')
    DeploymentMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mq#DeploymentMode', name: 'DeploymentMode')
    DescribeBrokerEngineTypesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#DescribeBrokerEngineTypesRequest', name: 'DescribeBrokerEngineTypesRequest')
    DescribeBrokerEngineTypesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#DescribeBrokerEngineTypesResponse', name: 'DescribeBrokerEngineTypesResponse')
    DescribeBrokerInstanceOptionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#DescribeBrokerInstanceOptionsRequest', name: 'DescribeBrokerInstanceOptionsRequest')
    DescribeBrokerInstanceOptionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#DescribeBrokerInstanceOptionsResponse', name: 'DescribeBrokerInstanceOptionsResponse')
    DescribeBrokerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#DescribeBrokerRequest', name: 'DescribeBrokerRequest')
    DescribeBrokerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#DescribeBrokerResponse', name: 'DescribeBrokerResponse')
    DescribeConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#DescribeConfigurationRequest', name: 'DescribeConfigurationRequest')
    DescribeConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#DescribeConfigurationResponse', name: 'DescribeConfigurationResponse')
    DescribeConfigurationRevisionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#DescribeConfigurationRevisionRequest', name: 'DescribeConfigurationRevisionRequest')
    DescribeConfigurationRevisionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#DescribeConfigurationRevisionResponse', name: 'DescribeConfigurationRevisionResponse')
    DescribeUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#DescribeUserRequest', name: 'DescribeUserRequest')
    DescribeUserResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#DescribeUserResponse', name: 'DescribeUserResponse')
    EncryptionOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#EncryptionOptions', name: 'EncryptionOptions')
    EngineType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mq#EngineType', name: 'EngineType')
    EngineVersion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#EngineVersion', name: 'EngineVersion')
    ForbiddenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#ForbiddenException', name: 'ForbiddenException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    InternalServerErrorException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#InternalServerErrorException', name: 'InternalServerErrorException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    LdapServerMetadataInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#LdapServerMetadataInput', name: 'LdapServerMetadataInput')
    LdapServerMetadataOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#LdapServerMetadataOutput', name: 'LdapServerMetadataOutput')
    ListBrokersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#ListBrokersRequest', name: 'ListBrokersRequest')
    ListBrokersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#ListBrokersResponse', name: 'ListBrokersResponse')
    ListConfigurationRevisionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#ListConfigurationRevisionsRequest', name: 'ListConfigurationRevisionsRequest')
    ListConfigurationRevisionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#ListConfigurationRevisionsResponse', name: 'ListConfigurationRevisionsResponse')
    ListConfigurationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#ListConfigurationsRequest', name: 'ListConfigurationsRequest')
    ListConfigurationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#ListConfigurationsResponse', name: 'ListConfigurationsResponse')
    ListTagsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#ListTagsRequest', name: 'ListTagsRequest')
    ListTagsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#ListTagsResponse', name: 'ListTagsResponse')
    ListUsersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#ListUsersRequest', name: 'ListUsersRequest')
    ListUsersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#ListUsersResponse', name: 'ListUsersResponse')
    Logs = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#Logs', name: 'Logs')
    LogsSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#LogsSummary', name: 'LogsSummary')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.mq#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    NotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#NotFoundException', name: 'NotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    PendingLogs = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#PendingLogs', name: 'PendingLogs')
    PromoteMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mq#PromoteMode', name: 'PromoteMode')
    PromoteRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#PromoteRequest', name: 'PromoteRequest')
    PromoteResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#PromoteResponse', name: 'PromoteResponse')
    RebootBrokerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#RebootBrokerRequest', name: 'RebootBrokerRequest')
    RebootBrokerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#RebootBrokerResponse', name: 'RebootBrokerResponse')
    SanitizationWarning = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#SanitizationWarning', name: 'SanitizationWarning')
    SanitizationWarningReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mq#SanitizationWarningReason', name: 'SanitizationWarningReason')
    UnauthorizedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#UnauthorizedException', name: 'UnauthorizedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UpdateBrokerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#UpdateBrokerRequest', name: 'UpdateBrokerRequest')
    UpdateBrokerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#UpdateBrokerResponse', name: 'UpdateBrokerResponse')
    UpdateConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#UpdateConfigurationRequest', name: 'UpdateConfigurationRequest')
    UpdateConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#UpdateConfigurationResponse', name: 'UpdateConfigurationResponse')
    UpdateUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#UpdateUserRequest', name: 'UpdateUserRequest')
    UpdateUserResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#UpdateUserResponse', name: 'UpdateUserResponse')
    User = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#User', name: 'User')
    UserPendingChanges = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#UserPendingChanges', name: 'UserPendingChanges')
    UserSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#UserSummary', name: 'UserSummary')
    WeeklyStartTime = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mq#WeeklyStartTime', name: 'WeeklyStartTime')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.mq#__boolean', name: 'Boolean')
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.mq#__integer', name: 'Integer')
    Integermin5max100 = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.mq#__integerMin5Max100', name: 'Integermin5max100', traits: {"smithy.api#range" => {"min" => 5, "max" => 100}})
    Listofactionrequired = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mq#__listOfActionRequired', name: 'Listofactionrequired')
    Listofavailabilityzone = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mq#__listOfAvailabilityZone', name: 'Listofavailabilityzone')
    Listofbrokerenginetype = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mq#__listOfBrokerEngineType', name: 'Listofbrokerenginetype')
    Listofbrokerinstance = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mq#__listOfBrokerInstance', name: 'Listofbrokerinstance')
    Listofbrokerinstanceoption = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mq#__listOfBrokerInstanceOption', name: 'Listofbrokerinstanceoption')
    Listofbrokersummary = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mq#__listOfBrokerSummary', name: 'Listofbrokersummary')
    Listofconfiguration = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mq#__listOfConfiguration', name: 'Listofconfiguration')
    Listofconfigurationid = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mq#__listOfConfigurationId', name: 'Listofconfigurationid')
    Listofconfigurationrevision = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mq#__listOfConfigurationRevision', name: 'Listofconfigurationrevision')
    Listofdeploymentmode = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mq#__listOfDeploymentMode', name: 'Listofdeploymentmode')
    Listofengineversion = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mq#__listOfEngineVersion', name: 'Listofengineversion')
    Listofsanitizationwarning = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mq#__listOfSanitizationWarning', name: 'Listofsanitizationwarning')
    Listofuser = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mq#__listOfUser', name: 'Listofuser')
    Listofusersummary = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mq#__listOfUserSummary', name: 'Listofusersummary')
    ListofString = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mq#__listOf__string', name: 'ListofString')
    MapofString = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.mq#__mapOf__string', name: 'MapofString')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mq#__string', name: 'String')
    Timestampiso8601 = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.mq#__timestampIso8601', name: 'Timestampiso8601', traits: {"smithy.api#timestampFormat" => "date-time"})

    ActionRequired.add_member(:action_required_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ActionRequiredCode', traits: {"smithy.api#documentation" => "<p>The code you can use to find instructions on the action required to resolve your broker issue.</p>", "smithy.api#jsonName" => "actionRequiredCode"}))
    ActionRequired.add_member(:action_required_info, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ActionRequiredInfo', traits: {"smithy.api#documentation" => "<p>Information about the action required to resolve your broker issue.</p>", "smithy.api#jsonName" => "actionRequiredInfo"}))
    ActionRequired.type = Types::ActionRequired
    AuthenticationStrategy.add_member(:simple, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SIMPLE', traits: {"smithy.api#enumValue" => "SIMPLE"}))
    AuthenticationStrategy.add_member(:ldap, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LDAP', traits: {"smithy.api#enumValue" => "LDAP"}))
    AvailabilityZone.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Id for the availability zone.</p>", "smithy.api#jsonName" => "name"}))
    AvailabilityZone.type = Types::AvailabilityZone
    BadRequestException.add_member(:error_attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorAttribute', traits: {"smithy.api#documentation" => "<p>The attribute which caused the error.</p>", "smithy.api#jsonName" => "errorAttribute"}))
    BadRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The explanation of the error.</p>", "smithy.api#jsonName" => "message"}))
    BadRequestException.type = Types::BadRequestException
    BrokerEngineType.add_member(:engine_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineType, location_name: 'EngineType', traits: {"smithy.api#documentation" => "<p>The broker's engine type.</p>", "smithy.api#jsonName" => "engineType"}))
    BrokerEngineType.add_member(:engine_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofengineversion, location_name: 'EngineVersions', traits: {"smithy.api#documentation" => "<p>The list of engine versions.</p>", "smithy.api#jsonName" => "engineVersions"}))
    BrokerEngineType.type = Types::BrokerEngineType
    BrokerInstance.add_member(:console_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConsoleURL', traits: {"smithy.api#documentation" => "<p>The brokers web console URL.</p>", "smithy.api#jsonName" => "consoleURL"}))
    BrokerInstance.add_member(:endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'Endpoints', traits: {"smithy.api#documentation" => "<p>The broker's wire-level protocol endpoints.</p>", "smithy.api#jsonName" => "endpoints"}))
    BrokerInstance.add_member(:ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IpAddress', traits: {"smithy.api#documentation" => "<p>The IP address of the Elastic Network Interface (ENI) attached to the broker. Does not apply to RabbitMQ brokers.</p>", "smithy.api#jsonName" => "ipAddress"}))
    BrokerInstance.type = Types::BrokerInstance
    BrokerInstanceOption.add_member(:availability_zones, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofavailabilityzone, location_name: 'AvailabilityZones', traits: {"smithy.api#documentation" => "<p>The list of available az.</p>", "smithy.api#jsonName" => "availabilityZones"}))
    BrokerInstanceOption.add_member(:engine_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineType, location_name: 'EngineType', traits: {"smithy.api#documentation" => "<p>The broker's engine type.</p>", "smithy.api#jsonName" => "engineType"}))
    BrokerInstanceOption.add_member(:host_instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HostInstanceType', traits: {"smithy.api#documentation" => "<p>The broker's instance type.</p>", "smithy.api#jsonName" => "hostInstanceType"}))
    BrokerInstanceOption.add_member(:storage_type, Smithy::Schema::Shapes::ShapeRef.new(shape: BrokerStorageType, location_name: 'StorageType', traits: {"smithy.api#documentation" => "<p>The broker's storage type.</p>", "smithy.api#jsonName" => "storageType"}))
    BrokerInstanceOption.add_member(:supported_deployment_modes, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofdeploymentmode, location_name: 'SupportedDeploymentModes', traits: {"smithy.api#documentation" => "<p>The list of supported deployment modes.</p>", "smithy.api#jsonName" => "supportedDeploymentModes"}))
    BrokerInstanceOption.add_member(:supported_engine_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'SupportedEngineVersions', traits: {"smithy.api#documentation" => "<p>The list of supported engine versions.</p>", "smithy.api#jsonName" => "supportedEngineVersions"}))
    BrokerInstanceOption.type = Types::BrokerInstanceOption
    BrokerState.add_member(:creation_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATION_IN_PROGRESS', traits: {"smithy.api#enumValue" => "CREATION_IN_PROGRESS"}))
    BrokerState.add_member(:creation_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATION_FAILED', traits: {"smithy.api#enumValue" => "CREATION_FAILED"}))
    BrokerState.add_member(:deletion_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETION_IN_PROGRESS', traits: {"smithy.api#enumValue" => "DELETION_IN_PROGRESS"}))
    BrokerState.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    BrokerState.add_member(:reboot_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REBOOT_IN_PROGRESS', traits: {"smithy.api#enumValue" => "REBOOT_IN_PROGRESS"}))
    BrokerState.add_member(:critical_action_required, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CRITICAL_ACTION_REQUIRED', traits: {"smithy.api#enumValue" => "CRITICAL_ACTION_REQUIRED"}))
    BrokerState.add_member(:replica, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REPLICA', traits: {"smithy.api#enumValue" => "REPLICA"}))
    BrokerStorageType.add_member(:ebs, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EBS', traits: {"smithy.api#enumValue" => "EBS"}))
    BrokerStorageType.add_member(:efs, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EFS', traits: {"smithy.api#enumValue" => "EFS"}))
    BrokerSummary.add_member(:broker_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BrokerArn', traits: {"smithy.api#documentation" => "<p>The broker's Amazon Resource Name (ARN).</p>", "smithy.api#jsonName" => "brokerArn"}))
    BrokerSummary.add_member(:broker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BrokerId', traits: {"smithy.api#documentation" => "<p>The unique ID that Amazon MQ generates for the broker.</p>", "smithy.api#jsonName" => "brokerId"}))
    BrokerSummary.add_member(:broker_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BrokerName', traits: {"smithy.api#documentation" => "<p>The broker's name. This value is unique in your Amazon Web Services account, 1-50 characters long, and containing only letters, numbers, dashes, and underscores, and must not contain white spaces, brackets, wildcard characters, or special characters.</p>", "smithy.api#jsonName" => "brokerName"}))
    BrokerSummary.add_member(:broker_state, Smithy::Schema::Shapes::ShapeRef.new(shape: BrokerState, location_name: 'BrokerState', traits: {"smithy.api#documentation" => "<p>The broker's status.</p>", "smithy.api#jsonName" => "brokerState"}))
    BrokerSummary.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'Created', traits: {"smithy.api#documentation" => "<p>The time when the broker was created.</p>", "smithy.api#jsonName" => "created"}))
    BrokerSummary.add_member(:deployment_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentMode, location_name: 'DeploymentMode', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The broker's deployment mode.</p>", "smithy.api#jsonName" => "deploymentMode", "smithy.api#required" => {}}))
    BrokerSummary.add_member(:engine_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineType, location_name: 'EngineType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The type of broker engine.</p>", "smithy.api#jsonName" => "engineType", "smithy.api#required" => {}}))
    BrokerSummary.add_member(:host_instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HostInstanceType', traits: {"smithy.api#documentation" => "<p>The broker's instance type.</p>", "smithy.api#jsonName" => "hostInstanceType"}))
    BrokerSummary.type = Types::BrokerSummary
    ChangeType.add_member(:create, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE', traits: {"smithy.api#enumValue" => "CREATE"}))
    ChangeType.add_member(:update, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE', traits: {"smithy.api#enumValue" => "UPDATE"}))
    ChangeType.add_member(:delete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE', traits: {"smithy.api#enumValue" => "DELETE"}))
    Configuration.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Required. The ARN of the configuration.</p>", "smithy.api#jsonName" => "arn", "smithy.api#required" => {}}))
    Configuration.add_member(:authentication_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationStrategy, location_name: 'AuthenticationStrategy', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Optional. The authentication strategy associated with the configuration. The default is SIMPLE.</p>", "smithy.api#jsonName" => "authenticationStrategy", "smithy.api#required" => {}}))
    Configuration.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'Created', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Required. The date and time of the configuration revision.</p>", "smithy.api#jsonName" => "created", "smithy.api#required" => {}}))
    Configuration.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Required. The description of the configuration.</p>", "smithy.api#jsonName" => "description", "smithy.api#required" => {}}))
    Configuration.add_member(:engine_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineType, location_name: 'EngineType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Required. The type of broker engine. Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ.</p>", "smithy.api#jsonName" => "engineType", "smithy.api#required" => {}}))
    Configuration.add_member(:engine_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The broker engine version. Defaults to the latest available version for the specified broker engine type. For a list of supported engine versions, see the <a href=\"https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/activemq-version-management.html\">ActiveMQ version management</a> and the <a href=\"https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/rabbitmq-version-management.html\">RabbitMQ version management</a> sections in the Amazon MQ Developer Guide.</p>", "smithy.api#jsonName" => "engineVersion", "smithy.api#required" => {}}))
    Configuration.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Required. The unique ID that Amazon MQ generates for the configuration.</p>", "smithy.api#jsonName" => "id", "smithy.api#required" => {}}))
    Configuration.add_member(:latest_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationRevision, location_name: 'LatestRevision', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Required. The latest revision of the configuration.</p>", "smithy.api#jsonName" => "latestRevision", "smithy.api#required" => {}}))
    Configuration.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long.</p>", "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    Configuration.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of all tags associated with this configuration.</p>", "smithy.api#jsonName" => "tags"}))
    Configuration.type = Types::Configuration
    ConfigurationId.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Required. The unique ID that Amazon MQ generates for the configuration.</p>", "smithy.api#jsonName" => "id", "smithy.api#required" => {}}))
    ConfigurationId.add_member(:revision, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Revision', traits: {"smithy.api#documentation" => "<p>The revision number of the configuration.</p>", "smithy.api#jsonName" => "revision"}))
    ConfigurationId.type = Types::ConfigurationId
    ConfigurationRevision.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'Created', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Required. The date and time of the configuration revision.</p>", "smithy.api#jsonName" => "created", "smithy.api#required" => {}}))
    ConfigurationRevision.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the configuration revision.</p>", "smithy.api#jsonName" => "description"}))
    ConfigurationRevision.add_member(:revision, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Revision', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Required. The revision number of the configuration.</p>", "smithy.api#jsonName" => "revision", "smithy.api#required" => {}}))
    ConfigurationRevision.type = Types::ConfigurationRevision
    Configurations.add_member(:current, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationId, location_name: 'Current', traits: {"smithy.api#documentation" => "<p>The broker's current configuration.</p>", "smithy.api#jsonName" => "current"}))
    Configurations.add_member(:history, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofconfigurationid, location_name: 'History', traits: {"smithy.api#documentation" => "<p>The history of configurations applied to the broker.</p>", "smithy.api#jsonName" => "history"}))
    Configurations.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationId, location_name: 'Pending', traits: {"smithy.api#documentation" => "<p>The broker's pending configuration.</p>", "smithy.api#jsonName" => "pending"}))
    Configurations.type = Types::Configurations
    ConflictException.add_member(:error_attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorAttribute', traits: {"smithy.api#documentation" => "<p>The attribute which caused the error.</p>", "smithy.api#jsonName" => "errorAttribute"}))
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The explanation of the error.</p>", "smithy.api#jsonName" => "message"}))
    ConflictException.type = Types::ConflictException
    CreateBrokerRequest.add_member(:authentication_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationStrategy, location_name: 'AuthenticationStrategy', traits: {"smithy.api#documentation" => "<p>Optional. The authentication strategy used to secure the broker. The default is SIMPLE.</p>", "smithy.api#jsonName" => "authenticationStrategy"}))
    CreateBrokerRequest.add_member(:auto_minor_version_upgrade, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AutoMinorVersionUpgrade', traits: {"smithy.api#documentation" => "<p>Enables automatic upgrades to new patch versions for brokers as new versions are released and supported by Amazon MQ. Automatic upgrades occur during the scheduled maintenance window or after a manual broker reboot. Set to true by default, if no value is specified.</p> <note><p>Must be set to true for ActiveMQ brokers version 5.18 and above and for RabbitMQ brokers version 3.13 and above.</p></note>", "smithy.api#jsonName" => "autoMinorVersionUpgrade"}))
    CreateBrokerRequest.add_member(:broker_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BrokerName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Required. The broker's name. This value must be unique in your Amazon Web Services account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain white spaces, brackets, wildcard characters, or special characters.</p> <important><p>Do not add personally identifiable information (PII) or other confidential or sensitive information in broker names. Broker names are accessible to other Amazon Web Services services, including CloudWatch Logs. Broker names are not intended to be used for private or sensitive data.</p></important>", "smithy.api#jsonName" => "brokerName", "smithy.api#required" => {}}))
    CreateBrokerRequest.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationId, location_name: 'Configuration', traits: {"smithy.api#documentation" => "<p>A list of information about the configuration.</p>", "smithy.api#jsonName" => "configuration"}))
    CreateBrokerRequest.add_member(:creator_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreatorRequestId', traits: {"smithy.api#documentation" => "<p>The unique ID that the requester receives for the created broker. Amazon MQ passes your ID with the API action.</p> <note><p>We recommend using a Universally Unique Identifier (UUID) for the creatorRequestId. You may omit the creatorRequestId if your application doesn't require idempotency.</p></note>", "smithy.api#idempotencyToken" => {}, "smithy.api#jsonName" => "creatorRequestId"}))
    CreateBrokerRequest.add_member(:deployment_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentMode, location_name: 'DeploymentMode', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Required. The broker's deployment mode.</p>", "smithy.api#jsonName" => "deploymentMode", "smithy.api#required" => {}}))
    CreateBrokerRequest.add_member(:encryption_options, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionOptions, location_name: 'EncryptionOptions', traits: {"smithy.api#documentation" => "<p>Encryption options for the broker.</p>", "smithy.api#jsonName" => "encryptionOptions"}))
    CreateBrokerRequest.add_member(:engine_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineType, location_name: 'EngineType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Required. The type of broker engine. Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ.</p>", "smithy.api#jsonName" => "engineType", "smithy.api#required" => {}}))
    CreateBrokerRequest.add_member(:engine_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion', traits: {"smithy.api#documentation" => "<p>The broker engine version. Defaults to the latest available version for the specified broker engine type. For more information, see the <a href=\"https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/activemq-version-management.html\">ActiveMQ version management</a> and the <a href=\"https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/rabbitmq-version-management.html\">RabbitMQ version management</a> sections in the Amazon MQ Developer Guide.</p>", "smithy.api#jsonName" => "engineVersion"}))
    CreateBrokerRequest.add_member(:host_instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HostInstanceType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Required. The broker's instance type.</p>", "smithy.api#jsonName" => "hostInstanceType", "smithy.api#required" => {}}))
    CreateBrokerRequest.add_member(:ldap_server_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: LdapServerMetadataInput, location_name: 'LdapServerMetadata', traits: {"smithy.api#documentation" => "<p>Optional. The metadata of the LDAP server used to authenticate and authorize connections to the broker. Does not apply to RabbitMQ brokers.</p>", "smithy.api#jsonName" => "ldapServerMetadata"}))
    CreateBrokerRequest.add_member(:logs, Smithy::Schema::Shapes::ShapeRef.new(shape: Logs, location_name: 'Logs', traits: {"smithy.api#documentation" => "<p>Enables Amazon CloudWatch logging for brokers.</p>", "smithy.api#jsonName" => "logs"}))
    CreateBrokerRequest.add_member(:maintenance_window_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: WeeklyStartTime, location_name: 'MaintenanceWindowStartTime', traits: {"smithy.api#documentation" => "<p>The parameters that determine the WeeklyStartTime.</p>", "smithy.api#jsonName" => "maintenanceWindowStartTime"}))
    CreateBrokerRequest.add_member(:publicly_accessible, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'PubliclyAccessible', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Enables connections from applications outside of the VPC that hosts the broker's subnets. Set to false by default, if no value is provided.</p>", "smithy.api#jsonName" => "publiclyAccessible", "smithy.api#required" => {}}))
    CreateBrokerRequest.add_member(:security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'SecurityGroups', traits: {"smithy.api#documentation" => "<p>The list of rules (1 minimum, 125 maximum) that authorize connections to brokers.</p>", "smithy.api#jsonName" => "securityGroups"}))
    CreateBrokerRequest.add_member(:storage_type, Smithy::Schema::Shapes::ShapeRef.new(shape: BrokerStorageType, location_name: 'StorageType', traits: {"smithy.api#documentation" => "<p>The broker's storage type.</p>", "smithy.api#jsonName" => "storageType"}))
    CreateBrokerRequest.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'SubnetIds', traits: {"smithy.api#documentation" => "<p>The list of groups that define which subnets and IP ranges the broker can use from different Availability Zones. If you specify more than one subnet, the subnets must be in different Availability Zones. Amazon MQ will not be able to create VPC endpoints for your broker with multiple subnets in the same Availability Zone. A SINGLE_INSTANCE deployment requires one subnet (for example, the default subnet). An ACTIVE_STANDBY_MULTI_AZ Amazon MQ for ActiveMQ deployment requires two subnets. A CLUSTER_MULTI_AZ Amazon MQ for RabbitMQ deployment has no subnet requirements when deployed with public accessibility. Deployment without public accessibility requires at least one subnet.</p> <important><p>If you specify subnets in a <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/vpc-sharing.html\">shared VPC</a> for a RabbitMQ broker, the associated VPC to which the specified subnets belong must be owned by your Amazon Web Services account. Amazon MQ will not be able to create VPC endpoints in VPCs that are not owned by your Amazon Web Services account.</p></important>", "smithy.api#jsonName" => "subnetIds"}))
    CreateBrokerRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Create tags when creating the broker.</p>", "smithy.api#jsonName" => "tags"}))
    CreateBrokerRequest.add_member(:users, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofuser, location_name: 'Users', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The list of broker users (persons or applications) who can access queues and topics. For Amazon MQ for RabbitMQ brokers, one and only one administrative user is accepted and created when a broker is first provisioned. All subsequent broker users are created by making RabbitMQ API calls directly to brokers or via the RabbitMQ web console.</p>", "smithy.api#jsonName" => "users", "smithy.api#required" => {}}))
    CreateBrokerRequest.add_member(:data_replication_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationMode, location_name: 'DataReplicationMode', traits: {"smithy.api#documentation" => "<p>Defines whether this broker is a part of a data replication pair.</p>", "smithy.api#jsonName" => "dataReplicationMode"}))
    CreateBrokerRequest.add_member(:data_replication_primary_broker_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataReplicationPrimaryBrokerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the primary broker that is used to replicate data from in a data replication pair, and is applied to the replica broker. Must be set when dataReplicationMode is set to CRDR.</p>", "smithy.api#jsonName" => "dataReplicationPrimaryBrokerArn"}))
    CreateBrokerRequest.type = Types::CreateBrokerRequest
    CreateBrokerResponse.add_member(:broker_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BrokerArn', traits: {"smithy.api#documentation" => "<p>The broker's Amazon Resource Name (ARN).</p>", "smithy.api#jsonName" => "brokerArn"}))
    CreateBrokerResponse.add_member(:broker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BrokerId', traits: {"smithy.api#documentation" => "<p>The unique ID that Amazon MQ generates for the broker.</p>", "smithy.api#jsonName" => "brokerId"}))
    CreateBrokerResponse.type = Types::CreateBrokerResponse
    CreateConfigurationRequest.add_member(:authentication_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationStrategy, location_name: 'AuthenticationStrategy', traits: {"smithy.api#documentation" => "<p>Optional. The authentication strategy associated with the configuration. The default is SIMPLE.</p>", "smithy.api#jsonName" => "authenticationStrategy"}))
    CreateConfigurationRequest.add_member(:engine_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineType, location_name: 'EngineType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Required. The type of broker engine. Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ.</p>", "smithy.api#jsonName" => "engineType", "smithy.api#required" => {}}))
    CreateConfigurationRequest.add_member(:engine_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion', traits: {"smithy.api#documentation" => "<p>The broker engine version. Defaults to the latest available version for the specified broker engine type. For more information, see the <a href=\"https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/activemq-version-management.html\">ActiveMQ version management</a> and the <a href=\"https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/rabbitmq-version-management.html\">RabbitMQ version management</a> sections in the Amazon MQ Developer Guide.</p>", "smithy.api#jsonName" => "engineVersion"}))
    CreateConfigurationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long.</p>", "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    CreateConfigurationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Create tags when creating the configuration.</p>", "smithy.api#jsonName" => "tags"}))
    CreateConfigurationRequest.type = Types::CreateConfigurationRequest
    CreateConfigurationResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>Required. The Amazon Resource Name (ARN) of the configuration.</p>", "smithy.api#jsonName" => "arn"}))
    CreateConfigurationResponse.add_member(:authentication_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationStrategy, location_name: 'AuthenticationStrategy', traits: {"smithy.api#documentation" => "<p>Optional. The authentication strategy associated with the configuration. The default is SIMPLE.</p>", "smithy.api#jsonName" => "authenticationStrategy"}))
    CreateConfigurationResponse.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'Created', traits: {"smithy.api#documentation" => "<p>Required. The date and time of the configuration.</p>", "smithy.api#jsonName" => "created"}))
    CreateConfigurationResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>Required. The unique ID that Amazon MQ generates for the configuration.</p>", "smithy.api#jsonName" => "id"}))
    CreateConfigurationResponse.add_member(:latest_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationRevision, location_name: 'LatestRevision', traits: {"smithy.api#documentation" => "<p>The latest revision of the configuration.</p>", "smithy.api#jsonName" => "latestRevision"}))
    CreateConfigurationResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long.</p>", "smithy.api#jsonName" => "name"}))
    CreateConfigurationResponse.type = Types::CreateConfigurationResponse
    CreateTagsRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource tag.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateTagsRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The key-value pair for the resource tag.</p>", "smithy.api#jsonName" => "tags"}))
    CreateTagsRequest.type = Types::CreateTagsRequest
    CreateUserRequest.add_member(:broker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BrokerId', traits: {"smithy.api#documentation" => "<p>The unique ID that Amazon MQ generates for the broker.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateUserRequest.add_member(:console_access, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ConsoleAccess', traits: {"smithy.api#documentation" => "<p>Enables access to the ActiveMQ Web Console for the ActiveMQ user.</p>", "smithy.api#jsonName" => "consoleAccess"}))
    CreateUserRequest.add_member(:groups, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'Groups', traits: {"smithy.api#documentation" => "<p>The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>", "smithy.api#jsonName" => "groups"}))
    CreateUserRequest.add_member(:password, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Password', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Required. The password of the user. This value must be at least 12 characters long, must contain at least 4 unique characters, and must not contain commas, colons, or equal signs (,:=).</p>", "smithy.api#jsonName" => "password", "smithy.api#required" => {}}))
    CreateUserRequest.add_member(:username, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Username', traits: {"smithy.api#documentation" => "<p>The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateUserRequest.add_member(:replication_user, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ReplicationUser', traits: {"smithy.api#documentation" => "<p>Defines if this user is intended for CRDR replication purposes.</p>", "smithy.api#jsonName" => "replicationUser"}))
    CreateUserRequest.type = Types::CreateUserRequest
    CreateUserResponse.type = Types::CreateUserResponse
    DataReplicationCounterpart.add_member(:broker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BrokerId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Required. The unique broker id generated by Amazon MQ.</p>", "smithy.api#jsonName" => "brokerId", "smithy.api#required" => {}}))
    DataReplicationCounterpart.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Region', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Required. The region of the broker.</p>", "smithy.api#jsonName" => "region", "smithy.api#required" => {}}))
    DataReplicationCounterpart.type = Types::DataReplicationCounterpart
    DataReplicationMetadataOutput.add_member(:data_replication_counterpart, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationCounterpart, location_name: 'DataReplicationCounterpart', traits: {"smithy.api#documentation" => "<p>Describes the replica/primary broker. Only returned if this broker is currently set as a primary or replica in the broker's dataReplicationRole property.</p>", "smithy.api#jsonName" => "dataReplicationCounterpart"}))
    DataReplicationMetadataOutput.add_member(:data_replication_role, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataReplicationRole', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Defines the role of this broker in a data replication pair. When a replica broker is promoted to primary, this role is interchanged.</p>", "smithy.api#jsonName" => "dataReplicationRole", "smithy.api#required" => {}}))
    DataReplicationMetadataOutput.type = Types::DataReplicationMetadataOutput
    DataReplicationMode.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    DataReplicationMode.add_member(:crdr, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CRDR', traits: {"smithy.api#enumValue" => "CRDR"}))
    DayOfWeek.add_member(:monday, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MONDAY', traits: {"smithy.api#enumValue" => "MONDAY"}))
    DayOfWeek.add_member(:tuesday, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TUESDAY', traits: {"smithy.api#enumValue" => "TUESDAY"}))
    DayOfWeek.add_member(:wednesday, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEDNESDAY', traits: {"smithy.api#enumValue" => "WEDNESDAY"}))
    DayOfWeek.add_member(:thursday, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'THURSDAY', traits: {"smithy.api#enumValue" => "THURSDAY"}))
    DayOfWeek.add_member(:friday, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FRIDAY', traits: {"smithy.api#enumValue" => "FRIDAY"}))
    DayOfWeek.add_member(:saturday, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SATURDAY', traits: {"smithy.api#enumValue" => "SATURDAY"}))
    DayOfWeek.add_member(:sunday, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUNDAY', traits: {"smithy.api#enumValue" => "SUNDAY"}))
    DeleteBrokerRequest.add_member(:broker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BrokerId', traits: {"smithy.api#documentation" => "<p>The unique ID that Amazon MQ generates for the broker.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBrokerRequest.type = Types::DeleteBrokerRequest
    DeleteBrokerResponse.add_member(:broker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BrokerId', traits: {"smithy.api#documentation" => "<p>The unique ID that Amazon MQ generates for the broker.</p>", "smithy.api#jsonName" => "brokerId"}))
    DeleteBrokerResponse.type = Types::DeleteBrokerResponse
    DeleteConfigurationRequest.add_member(:configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConfigurationId', traits: {"smithy.api#documentation" => "<p>The unique ID that Amazon MQ generates for the configuration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConfigurationRequest.type = Types::DeleteConfigurationRequest
    DeleteConfigurationResponse.add_member(:configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConfigurationId', traits: {"smithy.api#documentation" => "<p>The unique ID that Amazon MQ generates for the configuration.</p>", "smithy.api#jsonName" => "configurationId"}))
    DeleteConfigurationResponse.type = Types::DeleteConfigurationResponse
    DeleteTagsRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource tag.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTagsRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'TagKeys', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An array of tag keys to delete</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    DeleteTagsRequest.type = Types::DeleteTagsRequest
    DeleteUserRequest.add_member(:broker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BrokerId', traits: {"smithy.api#documentation" => "<p>The unique ID that Amazon MQ generates for the broker.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteUserRequest.add_member(:username, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Username', traits: {"smithy.api#documentation" => "<p>The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteUserRequest.type = Types::DeleteUserRequest
    DeleteUserResponse.type = Types::DeleteUserResponse
    DeploymentMode.add_member(:single_instance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SINGLE_INSTANCE', traits: {"smithy.api#enumValue" => "SINGLE_INSTANCE"}))
    DeploymentMode.add_member(:active_standby_multi_az, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE_STANDBY_MULTI_AZ', traits: {"smithy.api#enumValue" => "ACTIVE_STANDBY_MULTI_AZ"}))
    DeploymentMode.add_member(:cluster_multi_az, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLUSTER_MULTI_AZ', traits: {"smithy.api#enumValue" => "CLUSTER_MULTI_AZ"}))
    DescribeBrokerEngineTypesRequest.add_member(:engine_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineType', traits: {"smithy.api#documentation" => "<p>Filter response by engine type.</p>", "smithy.api#httpQuery" => "engineType"}))
    DescribeBrokerEngineTypesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.</p>", "smithy.api#httpQuery" => "maxResults"}))
    DescribeBrokerEngineTypesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>", "smithy.api#httpQuery" => "nextToken"}))
    DescribeBrokerEngineTypesRequest.type = Types::DescribeBrokerEngineTypesRequest
    DescribeBrokerEngineTypesResponse.add_member(:broker_engine_types, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofbrokerenginetype, location_name: 'BrokerEngineTypes', traits: {"smithy.api#documentation" => "<p>List of available engine types and versions.</p>", "smithy.api#jsonName" => "brokerEngineTypes"}))
    DescribeBrokerEngineTypesResponse.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integermin5max100, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Required. The maximum number of engine types that can be returned per page (20 by default). This value must be an integer from 5 to 100.</p>", "smithy.api#jsonName" => "maxResults"}))
    DescribeBrokerEngineTypesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>", "smithy.api#jsonName" => "nextToken"}))
    DescribeBrokerEngineTypesResponse.type = Types::DescribeBrokerEngineTypesResponse
    DescribeBrokerInstanceOptionsRequest.add_member(:engine_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineType', traits: {"smithy.api#documentation" => "<p>Filter response by engine type.</p>", "smithy.api#httpQuery" => "engineType"}))
    DescribeBrokerInstanceOptionsRequest.add_member(:host_instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HostInstanceType', traits: {"smithy.api#documentation" => "<p>Filter response by host instance type.</p>", "smithy.api#httpQuery" => "hostInstanceType"}))
    DescribeBrokerInstanceOptionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.</p>", "smithy.api#httpQuery" => "maxResults"}))
    DescribeBrokerInstanceOptionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>", "smithy.api#httpQuery" => "nextToken"}))
    DescribeBrokerInstanceOptionsRequest.add_member(:storage_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType', traits: {"smithy.api#documentation" => "<p>Filter response by storage type.</p>", "smithy.api#httpQuery" => "storageType"}))
    DescribeBrokerInstanceOptionsRequest.type = Types::DescribeBrokerInstanceOptionsRequest
    DescribeBrokerInstanceOptionsResponse.add_member(:broker_instance_options, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofbrokerinstanceoption, location_name: 'BrokerInstanceOptions', traits: {"smithy.api#documentation" => "<p>List of available broker instance options.</p>", "smithy.api#jsonName" => "brokerInstanceOptions"}))
    DescribeBrokerInstanceOptionsResponse.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integermin5max100, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Required. The maximum number of instance options that can be returned per page (20 by default). This value must be an integer from 5 to 100.</p>", "smithy.api#jsonName" => "maxResults"}))
    DescribeBrokerInstanceOptionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>", "smithy.api#jsonName" => "nextToken"}))
    DescribeBrokerInstanceOptionsResponse.type = Types::DescribeBrokerInstanceOptionsResponse
    DescribeBrokerRequest.add_member(:broker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BrokerId', traits: {"smithy.api#documentation" => "<p>The unique ID that Amazon MQ generates for the broker.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeBrokerRequest.type = Types::DescribeBrokerRequest
    DescribeBrokerResponse.add_member(:actions_required, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofactionrequired, location_name: 'ActionsRequired', traits: {"smithy.api#documentation" => "<p>Actions required for a broker.</p>", "smithy.api#jsonName" => "actionsRequired"}))
    DescribeBrokerResponse.add_member(:authentication_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationStrategy, location_name: 'AuthenticationStrategy', traits: {"smithy.api#documentation" => "<p>The authentication strategy used to secure the broker. The default is SIMPLE.</p>", "smithy.api#jsonName" => "authenticationStrategy"}))
    DescribeBrokerResponse.add_member(:auto_minor_version_upgrade, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AutoMinorVersionUpgrade', traits: {"smithy.api#documentation" => "<p>Enables automatic upgrades to new patch versions for brokers as new versions are released and supported by Amazon MQ. Automatic upgrades occur during the scheduled maintenance window or after a manual broker reboot.</p>", "smithy.api#jsonName" => "autoMinorVersionUpgrade"}))
    DescribeBrokerResponse.add_member(:broker_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BrokerArn', traits: {"smithy.api#documentation" => "<p>The broker's Amazon Resource Name (ARN).</p>", "smithy.api#jsonName" => "brokerArn"}))
    DescribeBrokerResponse.add_member(:broker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BrokerId', traits: {"smithy.api#documentation" => "<p>The unique ID that Amazon MQ generates for the broker.</p>", "smithy.api#jsonName" => "brokerId"}))
    DescribeBrokerResponse.add_member(:broker_instances, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofbrokerinstance, location_name: 'BrokerInstances', traits: {"smithy.api#documentation" => "<p>A list of information about allocated brokers.</p>", "smithy.api#jsonName" => "brokerInstances"}))
    DescribeBrokerResponse.add_member(:broker_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BrokerName', traits: {"smithy.api#documentation" => "<p>The broker's name. This value must be unique in your Amazon Web Services account account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain white spaces, brackets, wildcard characters, or special characters.</p>", "smithy.api#jsonName" => "brokerName"}))
    DescribeBrokerResponse.add_member(:broker_state, Smithy::Schema::Shapes::ShapeRef.new(shape: BrokerState, location_name: 'BrokerState', traits: {"smithy.api#documentation" => "<p>The broker's status.</p>", "smithy.api#jsonName" => "brokerState"}))
    DescribeBrokerResponse.add_member(:configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: Configurations, location_name: 'Configurations', traits: {"smithy.api#documentation" => "<p>The list of all revisions for the specified configuration.</p>", "smithy.api#jsonName" => "configurations"}))
    DescribeBrokerResponse.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'Created', traits: {"smithy.api#documentation" => "<p>The time when the broker was created.</p>", "smithy.api#jsonName" => "created"}))
    DescribeBrokerResponse.add_member(:deployment_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentMode, location_name: 'DeploymentMode', traits: {"smithy.api#documentation" => "<p>The broker's deployment mode.</p>", "smithy.api#jsonName" => "deploymentMode"}))
    DescribeBrokerResponse.add_member(:encryption_options, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionOptions, location_name: 'EncryptionOptions', traits: {"smithy.api#documentation" => "<p>Encryption options for the broker.</p>", "smithy.api#jsonName" => "encryptionOptions"}))
    DescribeBrokerResponse.add_member(:engine_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineType, location_name: 'EngineType', traits: {"smithy.api#documentation" => "<p>The type of broker engine. Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ.</p>", "smithy.api#jsonName" => "engineType"}))
    DescribeBrokerResponse.add_member(:engine_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion', traits: {"smithy.api#documentation" => "<p>The broker engine version. For more information, see the <a href=\"https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/activemq-version-management.html\">ActiveMQ version management</a> and the <a href=\"https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/rabbitmq-version-management.html\">RabbitMQ version management</a> sections in the Amazon MQ Developer Guide.</p>", "smithy.api#jsonName" => "engineVersion"}))
    DescribeBrokerResponse.add_member(:host_instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HostInstanceType', traits: {"smithy.api#documentation" => "<p>The broker's instance type.</p>", "smithy.api#jsonName" => "hostInstanceType"}))
    DescribeBrokerResponse.add_member(:ldap_server_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: LdapServerMetadataOutput, location_name: 'LdapServerMetadata', traits: {"smithy.api#documentation" => "<p>The metadata of the LDAP server used to authenticate and authorize connections to the broker.</p>", "smithy.api#jsonName" => "ldapServerMetadata"}))
    DescribeBrokerResponse.add_member(:logs, Smithy::Schema::Shapes::ShapeRef.new(shape: LogsSummary, location_name: 'Logs', traits: {"smithy.api#documentation" => "<p>The list of information about logs currently enabled and pending to be deployed for the specified broker.</p>", "smithy.api#jsonName" => "logs"}))
    DescribeBrokerResponse.add_member(:maintenance_window_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: WeeklyStartTime, location_name: 'MaintenanceWindowStartTime', traits: {"smithy.api#documentation" => "<p>The parameters that determine the WeeklyStartTime.</p>", "smithy.api#jsonName" => "maintenanceWindowStartTime"}))
    DescribeBrokerResponse.add_member(:pending_authentication_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationStrategy, location_name: 'PendingAuthenticationStrategy', traits: {"smithy.api#documentation" => "<p>The authentication strategy that will be applied when the broker is rebooted. The default is SIMPLE.</p>", "smithy.api#jsonName" => "pendingAuthenticationStrategy"}))
    DescribeBrokerResponse.add_member(:pending_engine_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PendingEngineVersion', traits: {"smithy.api#documentation" => "<p>The broker engine version to upgrade to. For more information, see the <a href=\"https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/activemq-version-management.html\">ActiveMQ version management</a> and the <a href=\"https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/rabbitmq-version-management.html\">RabbitMQ version management</a> sections in the Amazon MQ Developer Guide.</p>", "smithy.api#jsonName" => "pendingEngineVersion"}))
    DescribeBrokerResponse.add_member(:pending_host_instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PendingHostInstanceType', traits: {"smithy.api#documentation" => "<p>The broker's host instance type to upgrade to. For a list of supported instance types, see <a href=\"https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker.html#broker-instance-types\">Broker instance types</a>.</p>", "smithy.api#jsonName" => "pendingHostInstanceType"}))
    DescribeBrokerResponse.add_member(:pending_ldap_server_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: LdapServerMetadataOutput, location_name: 'PendingLdapServerMetadata', traits: {"smithy.api#documentation" => "<p>The metadata of the LDAP server that will be used to authenticate and authorize connections to the broker after it is rebooted.</p>", "smithy.api#jsonName" => "pendingLdapServerMetadata"}))
    DescribeBrokerResponse.add_member(:pending_security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'PendingSecurityGroups', traits: {"smithy.api#documentation" => "<p>The list of pending security groups to authorize connections to brokers.</p>", "smithy.api#jsonName" => "pendingSecurityGroups"}))
    DescribeBrokerResponse.add_member(:publicly_accessible, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'PubliclyAccessible', traits: {"smithy.api#documentation" => "<p>Enables connections from applications outside of the VPC that hosts the broker's subnets.</p>", "smithy.api#jsonName" => "publiclyAccessible"}))
    DescribeBrokerResponse.add_member(:security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'SecurityGroups', traits: {"smithy.api#documentation" => "<p>The list of rules (1 minimum, 125 maximum) that authorize connections to brokers.</p>", "smithy.api#jsonName" => "securityGroups"}))
    DescribeBrokerResponse.add_member(:storage_type, Smithy::Schema::Shapes::ShapeRef.new(shape: BrokerStorageType, location_name: 'StorageType', traits: {"smithy.api#documentation" => "<p>The broker's storage type.</p>", "smithy.api#jsonName" => "storageType"}))
    DescribeBrokerResponse.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'SubnetIds', traits: {"smithy.api#documentation" => "<p>The list of groups that define which subnets and IP ranges the broker can use from different Availability Zones.</p>", "smithy.api#jsonName" => "subnetIds"}))
    DescribeBrokerResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of all tags associated with this broker.</p>", "smithy.api#jsonName" => "tags"}))
    DescribeBrokerResponse.add_member(:users, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofusersummary, location_name: 'Users', traits: {"smithy.api#documentation" => "<p>The list of all broker usernames for the specified broker.</p>", "smithy.api#jsonName" => "users"}))
    DescribeBrokerResponse.add_member(:data_replication_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationMetadataOutput, location_name: 'DataReplicationMetadata', traits: {"smithy.api#documentation" => "<p>The replication details of the data replication-enabled broker. Only returned if dataReplicationMode is set to CRDR.</p>", "smithy.api#jsonName" => "dataReplicationMetadata"}))
    DescribeBrokerResponse.add_member(:data_replication_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationMode, location_name: 'DataReplicationMode', traits: {"smithy.api#documentation" => "<p>Describes whether this broker is a part of a data replication pair.</p>", "smithy.api#jsonName" => "dataReplicationMode"}))
    DescribeBrokerResponse.add_member(:pending_data_replication_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationMetadataOutput, location_name: 'PendingDataReplicationMetadata', traits: {"smithy.api#documentation" => "<p>The pending replication details of the data replication-enabled broker. Only returned if pendingDataReplicationMode is set to CRDR.</p>", "smithy.api#jsonName" => "pendingDataReplicationMetadata"}))
    DescribeBrokerResponse.add_member(:pending_data_replication_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationMode, location_name: 'PendingDataReplicationMode', traits: {"smithy.api#documentation" => "<p>Describes whether this broker will be a part of a data replication pair after reboot.</p>", "smithy.api#jsonName" => "pendingDataReplicationMode"}))
    DescribeBrokerResponse.type = Types::DescribeBrokerResponse
    DescribeConfigurationRequest.add_member(:configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConfigurationId', traits: {"smithy.api#documentation" => "<p>The unique ID that Amazon MQ generates for the configuration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeConfigurationRequest.type = Types::DescribeConfigurationRequest
    DescribeConfigurationResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>Required. The ARN of the configuration.</p>", "smithy.api#jsonName" => "arn"}))
    DescribeConfigurationResponse.add_member(:authentication_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationStrategy, location_name: 'AuthenticationStrategy', traits: {"smithy.api#documentation" => "<p>Optional. The authentication strategy associated with the configuration. The default is SIMPLE.</p>", "smithy.api#jsonName" => "authenticationStrategy"}))
    DescribeConfigurationResponse.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'Created', traits: {"smithy.api#documentation" => "<p>Required. The date and time of the configuration revision.</p>", "smithy.api#jsonName" => "created"}))
    DescribeConfigurationResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>Required. The description of the configuration.</p>", "smithy.api#jsonName" => "description"}))
    DescribeConfigurationResponse.add_member(:engine_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineType, location_name: 'EngineType', traits: {"smithy.api#documentation" => "<p>Required. The type of broker engine. Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ.</p>", "smithy.api#jsonName" => "engineType"}))
    DescribeConfigurationResponse.add_member(:engine_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion', traits: {"smithy.api#documentation" => "<p>The broker engine version. Defaults to the latest available version for the specified broker engine type. For a list of supported engine versions, see the <a href=\"https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/activemq-version-management.html\">ActiveMQ version management</a> and the <a href=\"https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/rabbitmq-version-management.html\">RabbitMQ version management</a> sections in the Amazon MQ Developer Guide.</p>", "smithy.api#jsonName" => "engineVersion"}))
    DescribeConfigurationResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>Required. The unique ID that Amazon MQ generates for the configuration.</p>", "smithy.api#jsonName" => "id"}))
    DescribeConfigurationResponse.add_member(:latest_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationRevision, location_name: 'LatestRevision', traits: {"smithy.api#documentation" => "<p>Required. The latest revision of the configuration.</p>", "smithy.api#jsonName" => "latestRevision"}))
    DescribeConfigurationResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long.</p>", "smithy.api#jsonName" => "name"}))
    DescribeConfigurationResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of all tags associated with this configuration.</p>", "smithy.api#jsonName" => "tags"}))
    DescribeConfigurationResponse.type = Types::DescribeConfigurationResponse
    DescribeConfigurationRevisionRequest.add_member(:configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConfigurationId', traits: {"smithy.api#documentation" => "<p>The unique ID that Amazon MQ generates for the configuration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeConfigurationRevisionRequest.add_member(:configuration_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConfigurationRevision', traits: {"smithy.api#documentation" => "<p>The revision of the configuration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeConfigurationRevisionRequest.type = Types::DescribeConfigurationRevisionRequest
    DescribeConfigurationRevisionResponse.add_member(:configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConfigurationId', traits: {"smithy.api#documentation" => "<p>Required. The unique ID that Amazon MQ generates for the configuration.</p>", "smithy.api#jsonName" => "configurationId"}))
    DescribeConfigurationRevisionResponse.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'Created', traits: {"smithy.api#documentation" => "<p>Required. The date and time of the configuration.</p>", "smithy.api#jsonName" => "created"}))
    DescribeConfigurationRevisionResponse.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Data', traits: {"smithy.api#documentation" => "<p>Amazon MQ for ActiveMQ: the base64-encoded XML configuration. Amazon MQ for RabbitMQ: base64-encoded Cuttlefish.</p>", "smithy.api#jsonName" => "data"}))
    DescribeConfigurationRevisionResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the configuration.</p>", "smithy.api#jsonName" => "description"}))
    DescribeConfigurationRevisionResponse.type = Types::DescribeConfigurationRevisionResponse
    DescribeUserRequest.add_member(:broker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BrokerId', traits: {"smithy.api#documentation" => "<p>The unique ID that Amazon MQ generates for the broker.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeUserRequest.add_member(:username, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Username', traits: {"smithy.api#documentation" => "<p>The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeUserRequest.type = Types::DescribeUserRequest
    DescribeUserResponse.add_member(:broker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BrokerId', traits: {"smithy.api#documentation" => "<p>Required. The unique ID that Amazon MQ generates for the broker.</p>", "smithy.api#jsonName" => "brokerId"}))
    DescribeUserResponse.add_member(:console_access, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ConsoleAccess', traits: {"smithy.api#documentation" => "<p>Enables access to the the ActiveMQ Web Console for the ActiveMQ user.</p>", "smithy.api#jsonName" => "consoleAccess"}))
    DescribeUserResponse.add_member(:groups, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'Groups', traits: {"smithy.api#documentation" => "<p>The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>", "smithy.api#jsonName" => "groups"}))
    DescribeUserResponse.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: UserPendingChanges, location_name: 'Pending', traits: {"smithy.api#documentation" => "<p>The status of the changes pending for the ActiveMQ user.</p>", "smithy.api#jsonName" => "pending"}))
    DescribeUserResponse.add_member(:username, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Username', traits: {"smithy.api#documentation" => "<p>Required. The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>", "smithy.api#jsonName" => "username"}))
    DescribeUserResponse.add_member(:replication_user, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ReplicationUser', traits: {"smithy.api#documentation" => "<p>Describes whether the user is intended for data replication</p>", "smithy.api#jsonName" => "replicationUser"}))
    DescribeUserResponse.type = Types::DescribeUserResponse
    EncryptionOptions.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>The customer master key (CMK) to use for the A KMS (KMS). This key is used to encrypt your data at rest. If not provided, Amazon MQ will use a default CMK to encrypt your data.</p>", "smithy.api#jsonName" => "kmsKeyId"}))
    EncryptionOptions.add_member(:use_aws_owned_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UseAwsOwnedKey', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Enables the use of an Amazon Web Services owned CMK using KMS (KMS). Set to true by default, if no value is provided, for example, for RabbitMQ brokers.</p>", "smithy.api#jsonName" => "useAwsOwnedKey", "smithy.api#required" => {}}))
    EncryptionOptions.type = Types::EncryptionOptions
    EngineType.add_member(:activemq, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVEMQ', traits: {"smithy.api#enumValue" => "ACTIVEMQ"}))
    EngineType.add_member(:rabbitmq, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RABBITMQ', traits: {"smithy.api#enumValue" => "RABBITMQ"}))
    EngineVersion.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Id for the version.</p>", "smithy.api#jsonName" => "name"}))
    EngineVersion.type = Types::EngineVersion
    ForbiddenException.add_member(:error_attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorAttribute', traits: {"smithy.api#documentation" => "<p>The attribute which caused the error.</p>", "smithy.api#jsonName" => "errorAttribute"}))
    ForbiddenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The explanation of the error.</p>", "smithy.api#jsonName" => "message"}))
    ForbiddenException.type = Types::ForbiddenException
    InternalServerErrorException.add_member(:error_attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorAttribute', traits: {"smithy.api#documentation" => "<p>The attribute which caused the error.</p>", "smithy.api#jsonName" => "errorAttribute"}))
    InternalServerErrorException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The explanation of the error.</p>", "smithy.api#jsonName" => "message"}))
    InternalServerErrorException.type = Types::InternalServerErrorException
    LdapServerMetadataInput.add_member(:hosts, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'Hosts', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Specifies the location of the LDAP server such as Directory Service for Microsoft Active Directory. Optional failover server.</p>", "smithy.api#jsonName" => "hosts", "smithy.api#required" => {}}))
    LdapServerMetadataInput.add_member(:role_base, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoleBase', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The distinguished name of the node in the directory information tree (DIT) to search for roles or groups. For example, ou=group, ou=corp, dc=corp,\n                  dc=example, dc=com.</p>", "smithy.api#jsonName" => "roleBase", "smithy.api#required" => {}}))
    LdapServerMetadataInput.add_member(:role_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoleName', traits: {"smithy.api#documentation" => "<p>Specifies the LDAP attribute that identifies the group name attribute in the object returned from the group membership query.</p>", "smithy.api#jsonName" => "roleName"}))
    LdapServerMetadataInput.add_member(:role_search_matching, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoleSearchMatching', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The LDAP search filter used to find roles within the roleBase. The distinguished name of the user matched by userSearchMatching is substituted into the {0} placeholder in the search filter. The client's username is substituted into the {1} placeholder. For example, if you set this option to (member=uid={1})for the user janedoe, the search filter becomes (member=uid=janedoe) after string substitution. It matches all role entries that have a member attribute equal to uid=janedoe under the subtree selected by the roleBase.</p>", "smithy.api#jsonName" => "roleSearchMatching", "smithy.api#required" => {}}))
    LdapServerMetadataInput.add_member(:role_search_subtree, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'RoleSearchSubtree', traits: {"smithy.api#documentation" => "<p>The directory search scope for the role. If set to true, scope is to search the entire subtree.</p>", "smithy.api#jsonName" => "roleSearchSubtree"}))
    LdapServerMetadataInput.add_member(:service_account_password, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceAccountPassword', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Service account password. A service account is an account in your LDAP server that has access to initiate a connection. For example, cn=admin,dc=corp, dc=example,\n                  dc=com.</p>", "smithy.api#jsonName" => "serviceAccountPassword", "smithy.api#required" => {}}))
    LdapServerMetadataInput.add_member(:service_account_username, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceAccountUsername', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Service account username. A service account is an account in your LDAP server that has access to initiate a connection. For example, cn=admin,dc=corp, dc=example,\n                  dc=com.</p>", "smithy.api#jsonName" => "serviceAccountUsername", "smithy.api#required" => {}}))
    LdapServerMetadataInput.add_member(:user_base, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserBase', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Select a particular subtree of the directory information tree (DIT) to search for user entries. The subtree is specified by a DN, which specifies the base node of the subtree. For example, by setting this option to ou=Users,ou=corp, dc=corp,\n                  dc=example, dc=com, the search for user entries is restricted to the subtree beneath ou=Users, ou=corp, dc=corp, dc=example, dc=com.</p>", "smithy.api#jsonName" => "userBase", "smithy.api#required" => {}}))
    LdapServerMetadataInput.add_member(:user_role_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserRoleName', traits: {"smithy.api#documentation" => "<p>Specifies the name of the LDAP attribute for the user group membership.</p>", "smithy.api#jsonName" => "userRoleName"}))
    LdapServerMetadataInput.add_member(:user_search_matching, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserSearchMatching', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The LDAP search filter used to find users within the userBase. The client's username is substituted into the {0} placeholder in the search filter. For example, if this option is set to (uid={0}) and the received username is janedoe, the search filter becomes (uid=janedoe) after string substitution. It will result in matching an entry like uid=janedoe, ou=Users,ou=corp, dc=corp, dc=example,\n                  dc=com.</p>", "smithy.api#jsonName" => "userSearchMatching", "smithy.api#required" => {}}))
    LdapServerMetadataInput.add_member(:user_search_subtree, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UserSearchSubtree', traits: {"smithy.api#documentation" => "<p>The directory search scope for the user. If set to true, scope is to search the entire subtree.</p>", "smithy.api#jsonName" => "userSearchSubtree"}))
    LdapServerMetadataInput.type = Types::LdapServerMetadataInput
    LdapServerMetadataOutput.add_member(:hosts, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'Hosts', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Specifies the location of the LDAP server such as Directory Service for Microsoft Active Directory. Optional failover server.</p>", "smithy.api#jsonName" => "hosts", "smithy.api#required" => {}}))
    LdapServerMetadataOutput.add_member(:role_base, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoleBase', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The distinguished name of the node in the directory information tree (DIT) to search for roles or groups. For example, ou=group, ou=corp, dc=corp,\n                  dc=example, dc=com.</p>", "smithy.api#jsonName" => "roleBase", "smithy.api#required" => {}}))
    LdapServerMetadataOutput.add_member(:role_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoleName', traits: {"smithy.api#documentation" => "<p>Specifies the LDAP attribute that identifies the group name attribute in the object returned from the group membership query.</p>", "smithy.api#jsonName" => "roleName"}))
    LdapServerMetadataOutput.add_member(:role_search_matching, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoleSearchMatching', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The LDAP search filter used to find roles within the roleBase. The distinguished name of the user matched by userSearchMatching is substituted into the {0} placeholder in the search filter. The client's username is substituted into the {1} placeholder. For example, if you set this option to (member=uid={1})for the user janedoe, the search filter becomes (member=uid=janedoe) after string substitution. It matches all role entries that have a member attribute equal to uid=janedoe under the subtree selected by the roleBase.</p>", "smithy.api#jsonName" => "roleSearchMatching", "smithy.api#required" => {}}))
    LdapServerMetadataOutput.add_member(:role_search_subtree, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'RoleSearchSubtree', traits: {"smithy.api#documentation" => "<p>The directory search scope for the role. If set to true, scope is to search the entire subtree.</p>", "smithy.api#jsonName" => "roleSearchSubtree"}))
    LdapServerMetadataOutput.add_member(:service_account_username, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceAccountUsername', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Service account username. A service account is an account in your LDAP server that has access to initiate a connection. For example, cn=admin,dc=corp, dc=example,\n                  dc=com.</p>", "smithy.api#jsonName" => "serviceAccountUsername", "smithy.api#required" => {}}))
    LdapServerMetadataOutput.add_member(:user_base, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserBase', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Select a particular subtree of the directory information tree (DIT) to search for user entries. The subtree is specified by a DN, which specifies the base node of the subtree. For example, by setting this option to ou=Users,ou=corp, dc=corp,\n                  dc=example, dc=com, the search for user entries is restricted to the subtree beneath ou=Users, ou=corp, dc=corp, dc=example, dc=com.</p>", "smithy.api#jsonName" => "userBase", "smithy.api#required" => {}}))
    LdapServerMetadataOutput.add_member(:user_role_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserRoleName', traits: {"smithy.api#documentation" => "<p>Specifies the name of the LDAP attribute for the user group membership.</p>", "smithy.api#jsonName" => "userRoleName"}))
    LdapServerMetadataOutput.add_member(:user_search_matching, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserSearchMatching', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The LDAP search filter used to find users within the userBase. The client's username is substituted into the {0} placeholder in the search filter. For example, if this option is set to (uid={0}) and the received username is janedoe, the search filter becomes (uid=janedoe) after string substitution. It will result in matching an entry like uid=janedoe, ou=Users,ou=corp, dc=corp, dc=example,\n               dc=com.</p>", "smithy.api#jsonName" => "userSearchMatching", "smithy.api#required" => {}}))
    LdapServerMetadataOutput.add_member(:user_search_subtree, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UserSearchSubtree', traits: {"smithy.api#documentation" => "<p>The directory search scope for the user. If set to true, scope is to search the entire subtree.</p>", "smithy.api#jsonName" => "userSearchSubtree"}))
    LdapServerMetadataOutput.type = Types::LdapServerMetadataOutput
    ListBrokersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListBrokersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListBrokersRequest.type = Types::ListBrokersRequest
    ListBrokersResponse.add_member(:broker_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofbrokersummary, location_name: 'BrokerSummaries', traits: {"smithy.api#documentation" => "<p>A list of information about all brokers.</p>", "smithy.api#jsonName" => "brokerSummaries"}))
    ListBrokersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>", "smithy.api#jsonName" => "nextToken"}))
    ListBrokersResponse.type = Types::ListBrokersResponse
    ListConfigurationRevisionsRequest.add_member(:configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConfigurationId', traits: {"smithy.api#documentation" => "<p>The unique ID that Amazon MQ generates for the configuration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListConfigurationRevisionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListConfigurationRevisionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListConfigurationRevisionsRequest.type = Types::ListConfigurationRevisionsRequest
    ListConfigurationRevisionsResponse.add_member(:configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConfigurationId', traits: {"smithy.api#documentation" => "<p>The unique ID that Amazon MQ generates for the configuration.</p>", "smithy.api#jsonName" => "configurationId"}))
    ListConfigurationRevisionsResponse.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of configuration revisions that can be returned per page (20 by default). This value must be an integer from 5 to 100.</p>", "smithy.api#jsonName" => "maxResults"}))
    ListConfigurationRevisionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>", "smithy.api#jsonName" => "nextToken"}))
    ListConfigurationRevisionsResponse.add_member(:revisions, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofconfigurationrevision, location_name: 'Revisions', traits: {"smithy.api#documentation" => "<p>The list of all revisions for the specified configuration.</p>", "smithy.api#jsonName" => "revisions"}))
    ListConfigurationRevisionsResponse.type = Types::ListConfigurationRevisionsResponse
    ListConfigurationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListConfigurationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListConfigurationsRequest.type = Types::ListConfigurationsRequest
    ListConfigurationsResponse.add_member(:configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofconfiguration, location_name: 'Configurations', traits: {"smithy.api#documentation" => "<p>The list of all revisions for the specified configuration.</p>", "smithy.api#jsonName" => "configurations"}))
    ListConfigurationsResponse.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of configurations that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.</p>", "smithy.api#jsonName" => "maxResults"}))
    ListConfigurationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>", "smithy.api#jsonName" => "nextToken"}))
    ListConfigurationsResponse.type = Types::ListConfigurationsResponse
    ListTagsRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource tag.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsRequest.type = Types::ListTagsRequest
    ListTagsResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The key-value pair for the resource tag.</p>", "smithy.api#jsonName" => "tags"}))
    ListTagsResponse.type = Types::ListTagsResponse
    ListUsersRequest.add_member(:broker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BrokerId', traits: {"smithy.api#documentation" => "<p>The unique ID that Amazon MQ generates for the broker.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListUsersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListUsersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListUsersRequest.type = Types::ListUsersRequest
    ListUsersResponse.add_member(:broker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BrokerId', traits: {"smithy.api#documentation" => "<p>Required. The unique ID that Amazon MQ generates for the broker.</p>", "smithy.api#jsonName" => "brokerId"}))
    ListUsersResponse.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integermin5max100, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Required. The maximum number of ActiveMQ users that can be returned per page (20 by default). This value must be an integer from 5 to 100.</p>", "smithy.api#jsonName" => "maxResults"}))
    ListUsersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>", "smithy.api#jsonName" => "nextToken"}))
    ListUsersResponse.add_member(:users, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofusersummary, location_name: 'Users', traits: {"smithy.api#documentation" => "<p>Required. The list of all ActiveMQ usernames for the specified broker. Does not apply to RabbitMQ brokers.</p>", "smithy.api#jsonName" => "users"}))
    ListUsersResponse.type = Types::ListUsersResponse
    Logs.add_member(:audit, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Audit', traits: {"smithy.api#documentation" => "<p>Enables audit logging. Every user management action made using JMX or the ActiveMQ Web Console is logged. Does not apply to RabbitMQ brokers.</p>", "smithy.api#jsonName" => "audit"}))
    Logs.add_member(:general, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'General', traits: {"smithy.api#documentation" => "<p>Enables general logging.</p>", "smithy.api#jsonName" => "general"}))
    Logs.type = Types::Logs
    LogsSummary.add_member(:audit, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Audit', traits: {"smithy.api#documentation" => "<p>Enables audit logging. Every user management action made using JMX or the ActiveMQ Web Console is logged.</p>", "smithy.api#jsonName" => "audit"}))
    LogsSummary.add_member(:audit_log_group, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AuditLogGroup', traits: {"smithy.api#documentation" => "<p>The location of the CloudWatch Logs log group where audit logs are sent.</p>", "smithy.api#jsonName" => "auditLogGroup"}))
    LogsSummary.add_member(:general, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'General', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Enables general logging.</p>", "smithy.api#jsonName" => "general", "smithy.api#required" => {}}))
    LogsSummary.add_member(:general_log_group, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GeneralLogGroup', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The location of the CloudWatch Logs log group where general logs are sent.</p>", "smithy.api#jsonName" => "generalLogGroup", "smithy.api#required" => {}}))
    LogsSummary.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: PendingLogs, location_name: 'Pending', traits: {"smithy.api#documentation" => "<p>The list of information about logs pending to be deployed for the specified broker.</p>", "smithy.api#jsonName" => "pending"}))
    LogsSummary.type = Types::LogsSummary
    NotFoundException.add_member(:error_attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorAttribute', traits: {"smithy.api#documentation" => "<p>The attribute which caused the error.</p>", "smithy.api#jsonName" => "errorAttribute"}))
    NotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The explanation of the error.</p>", "smithy.api#jsonName" => "message"}))
    NotFoundException.type = Types::NotFoundException
    PendingLogs.add_member(:audit, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Audit', traits: {"smithy.api#documentation" => "<p>Enables audit logging. Every user management action made using JMX or the ActiveMQ Web Console is logged.</p>", "smithy.api#jsonName" => "audit"}))
    PendingLogs.add_member(:general, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'General', traits: {"smithy.api#documentation" => "<p>Enables general logging.</p>", "smithy.api#jsonName" => "general"}))
    PendingLogs.type = Types::PendingLogs
    PromoteMode.add_member(:switchover, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SWITCHOVER', traits: {"smithy.api#enumValue" => "SWITCHOVER"}))
    PromoteMode.add_member(:failover, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILOVER', traits: {"smithy.api#enumValue" => "FAILOVER"}))
    PromoteRequest.add_member(:broker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BrokerId', traits: {"smithy.api#documentation" => "<p>The unique ID that Amazon MQ generates for the broker.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PromoteRequest.add_member(:mode, Smithy::Schema::Shapes::ShapeRef.new(shape: PromoteMode, location_name: 'Mode', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Promote mode requested. Note: Valid values for the parameter are SWITCHOVER, FAILOVER.</p>", "smithy.api#jsonName" => "mode", "smithy.api#required" => {}}))
    PromoteRequest.type = Types::PromoteRequest
    PromoteResponse.add_member(:broker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BrokerId', traits: {"smithy.api#documentation" => "<p>The unique ID that Amazon MQ generates for the broker.</p>", "smithy.api#jsonName" => "brokerId"}))
    PromoteResponse.type = Types::PromoteResponse
    RebootBrokerRequest.add_member(:broker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BrokerId', traits: {"smithy.api#documentation" => "<p>The unique ID that Amazon MQ generates for the broker.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RebootBrokerRequest.type = Types::RebootBrokerRequest
    RebootBrokerResponse.type = Types::RebootBrokerResponse
    SanitizationWarning.add_member(:attribute_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AttributeName', traits: {"smithy.api#documentation" => "<p>The name of the configuration attribute that has been sanitized.</p>", "smithy.api#jsonName" => "attributeName"}))
    SanitizationWarning.add_member(:element_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ElementName', traits: {"smithy.api#documentation" => "<p>The name of the configuration element that has been sanitized.</p>", "smithy.api#jsonName" => "elementName"}))
    SanitizationWarning.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: SanitizationWarningReason, location_name: 'Reason', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The reason for which the configuration elements or attributes were sanitized.</p>", "smithy.api#jsonName" => "reason", "smithy.api#required" => {}}))
    SanitizationWarning.type = Types::SanitizationWarning
    SanitizationWarningReason.add_member(:disallowed_element_removed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISALLOWED_ELEMENT_REMOVED', traits: {"smithy.api#enumValue" => "DISALLOWED_ELEMENT_REMOVED"}))
    SanitizationWarningReason.add_member(:disallowed_attribute_removed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISALLOWED_ATTRIBUTE_REMOVED', traits: {"smithy.api#enumValue" => "DISALLOWED_ATTRIBUTE_REMOVED"}))
    SanitizationWarningReason.add_member(:invalid_attribute_value_removed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ATTRIBUTE_VALUE_REMOVED', traits: {"smithy.api#enumValue" => "INVALID_ATTRIBUTE_VALUE_REMOVED"}))
    UnauthorizedException.add_member(:error_attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorAttribute', traits: {"smithy.api#documentation" => "<p>The attribute which caused the error.</p>", "smithy.api#jsonName" => "errorAttribute"}))
    UnauthorizedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The explanation of the error.</p>", "smithy.api#jsonName" => "message"}))
    UnauthorizedException.type = Types::UnauthorizedException
    UpdateBrokerRequest.add_member(:authentication_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationStrategy, location_name: 'AuthenticationStrategy', traits: {"smithy.api#documentation" => "<p>Optional. The authentication strategy used to secure the broker. The default is SIMPLE.</p>", "smithy.api#jsonName" => "authenticationStrategy"}))
    UpdateBrokerRequest.add_member(:auto_minor_version_upgrade, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AutoMinorVersionUpgrade', traits: {"smithy.api#documentation" => "<p>Enables automatic upgrades to new patch versions for brokers as new versions are released and supported by Amazon MQ. Automatic upgrades occur during the scheduled maintenance window or after a manual broker reboot.</p> <note><p>Must be set to true for ActiveMQ brokers version 5.18 and above and for RabbitMQ brokers version 3.13 and above.</p></note>", "smithy.api#jsonName" => "autoMinorVersionUpgrade"}))
    UpdateBrokerRequest.add_member(:broker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BrokerId', traits: {"smithy.api#documentation" => "<p>The unique ID that Amazon MQ generates for the broker.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBrokerRequest.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationId, location_name: 'Configuration', traits: {"smithy.api#documentation" => "<p>A list of information about the configuration.</p>", "smithy.api#jsonName" => "configuration"}))
    UpdateBrokerRequest.add_member(:engine_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion', traits: {"smithy.api#documentation" => "<p>The broker engine version. For more information, see the <a href=\"https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/activemq-version-management.html\">ActiveMQ version management</a> and the <a href=\"https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/rabbitmq-version-management.html\">RabbitMQ version management</a> sections in the Amazon MQ Developer Guide.</p> <note><p>When upgrading to ActiveMQ version 5.18 and above or RabbitMQ version 3.13 and above, you must have autoMinorVersionUpgrade set to true for the broker.</p></note>", "smithy.api#jsonName" => "engineVersion"}))
    UpdateBrokerRequest.add_member(:host_instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HostInstanceType', traits: {"smithy.api#documentation" => "<p>The broker's host instance type to upgrade to. For a list of supported instance types, see <a href=\"https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker.html#broker-instance-types\">Broker instance types</a>.</p>", "smithy.api#jsonName" => "hostInstanceType"}))
    UpdateBrokerRequest.add_member(:ldap_server_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: LdapServerMetadataInput, location_name: 'LdapServerMetadata', traits: {"smithy.api#documentation" => "<p>Optional. The metadata of the LDAP server used to authenticate and authorize connections to the broker. Does not apply to RabbitMQ brokers.</p>", "smithy.api#jsonName" => "ldapServerMetadata"}))
    UpdateBrokerRequest.add_member(:logs, Smithy::Schema::Shapes::ShapeRef.new(shape: Logs, location_name: 'Logs', traits: {"smithy.api#documentation" => "<p>Enables Amazon CloudWatch logging for brokers.</p>", "smithy.api#jsonName" => "logs"}))
    UpdateBrokerRequest.add_member(:maintenance_window_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: WeeklyStartTime, location_name: 'MaintenanceWindowStartTime', traits: {"smithy.api#documentation" => "<p>The parameters that determine the WeeklyStartTime.</p>", "smithy.api#jsonName" => "maintenanceWindowStartTime"}))
    UpdateBrokerRequest.add_member(:security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'SecurityGroups', traits: {"smithy.api#documentation" => "<p>The list of security groups (1 minimum, 5 maximum) that authorizes connections to brokers.</p>", "smithy.api#jsonName" => "securityGroups"}))
    UpdateBrokerRequest.add_member(:data_replication_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationMode, location_name: 'DataReplicationMode', traits: {"smithy.api#documentation" => "<p>Defines whether this broker is a part of a data replication pair.</p>", "smithy.api#jsonName" => "dataReplicationMode"}))
    UpdateBrokerRequest.type = Types::UpdateBrokerRequest
    UpdateBrokerResponse.add_member(:authentication_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationStrategy, location_name: 'AuthenticationStrategy', traits: {"smithy.api#documentation" => "<p>Optional. The authentication strategy used to secure the broker. The default is SIMPLE.</p>", "smithy.api#jsonName" => "authenticationStrategy"}))
    UpdateBrokerResponse.add_member(:auto_minor_version_upgrade, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AutoMinorVersionUpgrade', traits: {"smithy.api#documentation" => "<p>Enables automatic upgrades to new patch versions for brokers as new versions are released and supported by Amazon MQ. Automatic upgrades occur during the scheduled maintenance window or after a manual broker reboot.</p>", "smithy.api#jsonName" => "autoMinorVersionUpgrade"}))
    UpdateBrokerResponse.add_member(:broker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BrokerId', traits: {"smithy.api#documentation" => "<p>Required. The unique ID that Amazon MQ generates for the broker.</p>", "smithy.api#jsonName" => "brokerId"}))
    UpdateBrokerResponse.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationId, location_name: 'Configuration', traits: {"smithy.api#documentation" => "<p>The ID of the updated configuration.</p>", "smithy.api#jsonName" => "configuration"}))
    UpdateBrokerResponse.add_member(:engine_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion', traits: {"smithy.api#documentation" => "<p>The broker engine version to upgrade to. For more information, see the <a href=\"https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/activemq-version-management.html\">ActiveMQ version management</a> and the <a href=\"https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/rabbitmq-version-management.html\">RabbitMQ version management</a> sections in the Amazon MQ Developer Guide.</p>", "smithy.api#jsonName" => "engineVersion"}))
    UpdateBrokerResponse.add_member(:host_instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HostInstanceType', traits: {"smithy.api#documentation" => "<p>The broker's host instance type to upgrade to. For a list of supported instance types, see <a href=\"https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker.html#broker-instance-types\">Broker instance types</a>.</p>", "smithy.api#jsonName" => "hostInstanceType"}))
    UpdateBrokerResponse.add_member(:ldap_server_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: LdapServerMetadataOutput, location_name: 'LdapServerMetadata', traits: {"smithy.api#documentation" => "<p>Optional. The metadata of the LDAP server used to authenticate and authorize connections to the broker. Does not apply to RabbitMQ brokers.</p>", "smithy.api#jsonName" => "ldapServerMetadata"}))
    UpdateBrokerResponse.add_member(:logs, Smithy::Schema::Shapes::ShapeRef.new(shape: Logs, location_name: 'Logs', traits: {"smithy.api#documentation" => "<p>The list of information about logs to be enabled for the specified broker.</p>", "smithy.api#jsonName" => "logs"}))
    UpdateBrokerResponse.add_member(:maintenance_window_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: WeeklyStartTime, location_name: 'MaintenanceWindowStartTime', traits: {"smithy.api#documentation" => "<p>The parameters that determine the WeeklyStartTime.</p>", "smithy.api#jsonName" => "maintenanceWindowStartTime"}))
    UpdateBrokerResponse.add_member(:security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'SecurityGroups', traits: {"smithy.api#documentation" => "<p>The list of security groups (1 minimum, 5 maximum) that authorizes connections to brokers.</p>", "smithy.api#jsonName" => "securityGroups"}))
    UpdateBrokerResponse.add_member(:data_replication_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationMetadataOutput, location_name: 'DataReplicationMetadata', traits: {"smithy.api#documentation" => "<p>The replication details of the data replication-enabled broker. Only returned if dataReplicationMode is set to CRDR.</p>", "smithy.api#jsonName" => "dataReplicationMetadata"}))
    UpdateBrokerResponse.add_member(:data_replication_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationMode, location_name: 'DataReplicationMode', traits: {"smithy.api#documentation" => "<p>Describes whether this broker is a part of a data replication pair.</p>", "smithy.api#jsonName" => "dataReplicationMode"}))
    UpdateBrokerResponse.add_member(:pending_data_replication_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationMetadataOutput, location_name: 'PendingDataReplicationMetadata', traits: {"smithy.api#documentation" => "<p>The pending replication details of the data replication-enabled broker. Only returned if pendingDataReplicationMode is set to CRDR.</p>", "smithy.api#jsonName" => "pendingDataReplicationMetadata"}))
    UpdateBrokerResponse.add_member(:pending_data_replication_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationMode, location_name: 'PendingDataReplicationMode', traits: {"smithy.api#documentation" => "<p>Describes whether this broker will be a part of a data replication pair after reboot.</p>", "smithy.api#jsonName" => "pendingDataReplicationMode"}))
    UpdateBrokerResponse.type = Types::UpdateBrokerResponse
    UpdateConfigurationRequest.add_member(:configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConfigurationId', traits: {"smithy.api#documentation" => "<p>The unique ID that Amazon MQ generates for the configuration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConfigurationRequest.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Data', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Amazon MQ for Active MQ: The base64-encoded XML configuration. Amazon MQ for RabbitMQ: the base64-encoded Cuttlefish configuration.</p>", "smithy.api#jsonName" => "data", "smithy.api#required" => {}}))
    UpdateConfigurationRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the configuration.</p>", "smithy.api#jsonName" => "description"}))
    UpdateConfigurationRequest.type = Types::UpdateConfigurationRequest
    UpdateConfigurationResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the configuration.</p>", "smithy.api#jsonName" => "arn"}))
    UpdateConfigurationResponse.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'Created', traits: {"smithy.api#documentation" => "<p>Required. The date and time of the configuration.</p>", "smithy.api#jsonName" => "created"}))
    UpdateConfigurationResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique ID that Amazon MQ generates for the configuration.</p>", "smithy.api#jsonName" => "id"}))
    UpdateConfigurationResponse.add_member(:latest_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationRevision, location_name: 'LatestRevision', traits: {"smithy.api#documentation" => "<p>The latest revision of the configuration.</p>", "smithy.api#jsonName" => "latestRevision"}))
    UpdateConfigurationResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long.</p>", "smithy.api#jsonName" => "name"}))
    UpdateConfigurationResponse.add_member(:warnings, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofsanitizationwarning, location_name: 'Warnings', traits: {"smithy.api#documentation" => "<p>The list of the first 20 warnings about the configuration elements or attributes that were sanitized.</p>", "smithy.api#jsonName" => "warnings"}))
    UpdateConfigurationResponse.type = Types::UpdateConfigurationResponse
    UpdateUserRequest.add_member(:broker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BrokerId', traits: {"smithy.api#documentation" => "<p>The unique ID that Amazon MQ generates for the broker.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateUserRequest.add_member(:console_access, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ConsoleAccess', traits: {"smithy.api#documentation" => "<p>Enables access to the the ActiveMQ Web Console for the ActiveMQ user.</p>", "smithy.api#jsonName" => "consoleAccess"}))
    UpdateUserRequest.add_member(:groups, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'Groups', traits: {"smithy.api#documentation" => "<p>The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>", "smithy.api#jsonName" => "groups"}))
    UpdateUserRequest.add_member(:password, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Password', traits: {"smithy.api#documentation" => "<p>The password of the user. This value must be at least 12 characters long, must contain at least 4 unique characters, and must not contain commas, colons, or equal signs (,:=).</p>", "smithy.api#jsonName" => "password"}))
    UpdateUserRequest.add_member(:username, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Username', traits: {"smithy.api#documentation" => "<p>The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateUserRequest.add_member(:replication_user, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ReplicationUser', traits: {"smithy.api#documentation" => "<p>Defines whether the user is intended for data replication.</p>", "smithy.api#jsonName" => "replicationUser"}))
    UpdateUserRequest.type = Types::UpdateUserRequest
    UpdateUserResponse.type = Types::UpdateUserResponse
    User.add_member(:console_access, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ConsoleAccess', traits: {"smithy.api#documentation" => "<p>Enables access to the ActiveMQ Web Console for the ActiveMQ user. Does not apply to RabbitMQ brokers.</p>", "smithy.api#jsonName" => "consoleAccess"}))
    User.add_member(:groups, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'Groups', traits: {"smithy.api#documentation" => "<p>The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long. Does not apply to RabbitMQ brokers.</p>", "smithy.api#jsonName" => "groups"}))
    User.add_member(:password, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Password', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Required. The password of the user. This value must be at least 12 characters long, must contain at least 4 unique characters, and must not contain commas, colons, or equal signs (,:=).</p>", "smithy.api#jsonName" => "password", "smithy.api#required" => {}}))
    User.add_member(:username, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Username', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The username of the broker user. The following restrictions apply to broker usernames:</p> <ul><li><p>For Amazon MQ for ActiveMQ brokers, this value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p></li> <li><p>para>For Amazon MQ for RabbitMQ brokers, this value can contain only alphanumeric characters, dashes, periods, underscores (- . _). This value must not contain a tilde (~) character. Amazon MQ prohibts using guest as a valid usename. This value must be 2-100 characters long.</p></para></li></ul> <important><p>Do not add personally identifiable information (PII) or other confidential or sensitive information in broker usernames. Broker usernames are accessible to other Amazon Web Services services, including CloudWatch Logs. Broker usernames are not intended to be used for private or sensitive data.</p></important>", "smithy.api#jsonName" => "username", "smithy.api#required" => {}}))
    User.add_member(:replication_user, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ReplicationUser', traits: {"smithy.api#documentation" => "<p>Defines if this user is intended for CRDR replication purposes.</p>", "smithy.api#jsonName" => "replicationUser"}))
    User.type = Types::User
    UserPendingChanges.add_member(:console_access, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ConsoleAccess', traits: {"smithy.api#documentation" => "<p>Enables access to the the ActiveMQ Web Console for the ActiveMQ user.</p>", "smithy.api#jsonName" => "consoleAccess"}))
    UserPendingChanges.add_member(:groups, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'Groups', traits: {"smithy.api#documentation" => "<p>The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>", "smithy.api#jsonName" => "groups"}))
    UserPendingChanges.add_member(:pending_change, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeType, location_name: 'PendingChange', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Required. The type of change pending for the ActiveMQ user.</p>", "smithy.api#jsonName" => "pendingChange", "smithy.api#required" => {}}))
    UserPendingChanges.type = Types::UserPendingChanges
    UserSummary.add_member(:pending_change, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeType, location_name: 'PendingChange', traits: {"smithy.api#documentation" => "<p>The type of change pending for the broker user.</p>", "smithy.api#jsonName" => "pendingChange"}))
    UserSummary.add_member(:username, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Username', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Required. The username of the broker user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>", "smithy.api#jsonName" => "username", "smithy.api#required" => {}}))
    UserSummary.type = Types::UserSummary
    WeeklyStartTime.add_member(:day_of_week, Smithy::Schema::Shapes::ShapeRef.new(shape: DayOfWeek, location_name: 'DayOfWeek', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Required. The day of the week.</p>", "smithy.api#jsonName" => "dayOfWeek", "smithy.api#required" => {}}))
    WeeklyStartTime.add_member(:time_of_day, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TimeOfDay', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Required. The time, in 24-hour format.</p>", "smithy.api#jsonName" => "timeOfDay", "smithy.api#required" => {}}))
    WeeklyStartTime.add_member(:time_zone, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TimeZone', traits: {"smithy.api#documentation" => "<p>The time zone, UTC by default, in either the Country/City format, or the UTC offset format.</p>", "smithy.api#jsonName" => "timeZone"}))
    WeeklyStartTime.type = Types::WeeklyStartTime
    Listofactionrequired.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ActionRequired)
    Listofavailabilityzone.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone)
    Listofbrokerenginetype.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BrokerEngineType)
    Listofbrokerinstance.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BrokerInstance)
    Listofbrokerinstanceoption.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BrokerInstanceOption)
    Listofbrokersummary.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BrokerSummary)
    Listofconfiguration.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Configuration)
    Listofconfigurationid.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationId)
    Listofconfigurationrevision.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationRevision)
    Listofdeploymentmode.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentMode)
    Listofengineversion.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EngineVersion)
    Listofsanitizationwarning.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SanitizationWarning)
    Listofuser.member = Smithy::Schema::Shapes::ShapeRef.new(shape: User)
    Listofusersummary.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UserSummary)
    ListofString.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapofString.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapofString.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String)

    Mq = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.mq#mq"
      service.name = "Mq"
      service.version = "2017-11-27"
      service.traits = {"aws.api#service" => {"sdkId" => "mq", "arnNamespace" => "mq", "cloudFormationName" => "AmazonMQ", "cloudTrailEventSource" => "mq.amazonaws.com", "endpointPrefix" => "mq"}, "aws.auth#sigv4" => {"name" => "mq"}, "aws.protocols#restJson1" => {}, "smithy.api#auth" => ["aws.auth#sigv4"], "smithy.api#title" => "AmazonMQ"}
      service.add_operation(:create_broker, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mq#CreateBroker"
        operation.name = "CreateBroker"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBrokerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBrokerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/brokers", "code" => 200}}
      end)
      service.add_operation(:create_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mq#CreateConfiguration"
        operation.name = "CreateConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/configurations", "code" => 200}}
      end)
      service.add_operation(:create_tags, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mq#CreateTags"
        operation.name = "CreateTags"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTagsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:create_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mq#CreateUser"
        operation.name = "CreateUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/brokers/{BrokerId}/users/{Username}", "code" => 200}}
      end)
      service.add_operation(:delete_broker, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mq#DeleteBroker"
        operation.name = "DeleteBroker"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBrokerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBrokerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/brokers/{BrokerId}", "code" => 200}}
      end)
      service.add_operation(:delete_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mq#DeleteConfiguration"
        operation.name = "DeleteConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/configurations/{ConfigurationId}", "code" => 200}}
      end)
      service.add_operation(:delete_tags, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mq#DeleteTags"
        operation.name = "DeleteTags"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTagsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:delete_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mq#DeleteUser"
        operation.name = "DeleteUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUserResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/brokers/{BrokerId}/users/{Username}", "code" => 200}}
      end)
      service.add_operation(:describe_broker, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mq#DescribeBroker"
        operation.name = "DescribeBroker"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBrokerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBrokerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/brokers/{BrokerId}", "code" => 200}}
      end)
      service.add_operation(:describe_broker_engine_types, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mq#DescribeBrokerEngineTypes"
        operation.name = "DescribeBrokerEngineTypes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBrokerEngineTypesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBrokerEngineTypesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/broker-engine-types", "code" => 200}}
      end)
      service.add_operation(:describe_broker_instance_options, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mq#DescribeBrokerInstanceOptions"
        operation.name = "DescribeBrokerInstanceOptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBrokerInstanceOptionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBrokerInstanceOptionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/broker-instance-options", "code" => 200}}
      end)
      service.add_operation(:describe_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mq#DescribeConfiguration"
        operation.name = "DescribeConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/configurations/{ConfigurationId}", "code" => 200}}
      end)
      service.add_operation(:describe_configuration_revision, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mq#DescribeConfigurationRevision"
        operation.name = "DescribeConfigurationRevision"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConfigurationRevisionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConfigurationRevisionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/configurations/{ConfigurationId}/revisions/{ConfigurationRevision}", "code" => 200}}
      end)
      service.add_operation(:describe_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mq#DescribeUser"
        operation.name = "DescribeUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUserResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/brokers/{BrokerId}/users/{Username}", "code" => 200}}
      end)
      service.add_operation(:list_brokers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mq#ListBrokers"
        operation.name = "ListBrokers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListBrokersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListBrokersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/brokers", "code" => 200}}
        operation[:paginator] = Paginators::ListBrokers.new
      end)
      service.add_operation(:list_configuration_revisions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mq#ListConfigurationRevisions"
        operation.name = "ListConfigurationRevisions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConfigurationRevisionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConfigurationRevisionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/configurations/{ConfigurationId}/revisions", "code" => 200}}
      end)
      service.add_operation(:list_configurations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mq#ListConfigurations"
        operation.name = "ListConfigurations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConfigurationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConfigurationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/configurations", "code" => 200}}
      end)
      service.add_operation(:list_tags, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mq#ListTags"
        operation.name = "ListTags"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:list_users, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mq#ListUsers"
        operation.name = "ListUsers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListUsersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListUsersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/brokers/{BrokerId}/users", "code" => 200}}
      end)
      service.add_operation(:promote, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mq#Promote"
        operation.name = "Promote"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PromoteRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PromoteResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/brokers/{BrokerId}/promote", "code" => 200}}
      end)
      service.add_operation(:reboot_broker, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mq#RebootBroker"
        operation.name = "RebootBroker"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RebootBrokerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RebootBrokerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/brokers/{BrokerId}/reboot", "code" => 200}}
      end)
      service.add_operation(:update_broker, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mq#UpdateBroker"
        operation.name = "UpdateBroker"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBrokerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBrokerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/brokers/{BrokerId}", "code" => 200}}
      end)
      service.add_operation(:update_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mq#UpdateConfiguration"
        operation.name = "UpdateConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/configurations/{ConfigurationId}", "code" => 200}}
      end)
      service.add_operation(:update_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mq#UpdateUser"
        operation.name = "UpdateUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUserResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/brokers/{BrokerId}/users/{Username}", "code" => 200}}
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
