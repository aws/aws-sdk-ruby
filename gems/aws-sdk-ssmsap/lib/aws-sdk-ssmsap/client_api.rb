# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::SsmSap
  # @api private
  module ClientApi

    include Seahorse::Model

    AllocationType = Shapes::StringShape.new(name: 'AllocationType')
    AppRegistryArn = Shapes::StringShape.new(name: 'AppRegistryArn')
    Application = Shapes::StructureShape.new(name: 'Application')
    ApplicationArnList = Shapes::ListShape.new(name: 'ApplicationArnList')
    ApplicationCredential = Shapes::StructureShape.new(name: 'ApplicationCredential')
    ApplicationCredentialList = Shapes::ListShape.new(name: 'ApplicationCredentialList')
    ApplicationDiscoveryStatus = Shapes::StringShape.new(name: 'ApplicationDiscoveryStatus')
    ApplicationId = Shapes::StringShape.new(name: 'ApplicationId')
    ApplicationStatus = Shapes::StringShape.new(name: 'ApplicationStatus')
    ApplicationSummary = Shapes::StructureShape.new(name: 'ApplicationSummary')
    ApplicationSummaryList = Shapes::ListShape.new(name: 'ApplicationSummaryList')
    ApplicationType = Shapes::StringShape.new(name: 'ApplicationType')
    ApplicationTypeList = Shapes::ListShape.new(name: 'ApplicationTypeList')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AssociatedHost = Shapes::StructureShape.new(name: 'AssociatedHost')
    BackintConfig = Shapes::StructureShape.new(name: 'BackintConfig')
    BackintMode = Shapes::StringShape.new(name: 'BackintMode')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ClusterStatus = Shapes::StringShape.new(name: 'ClusterStatus')
    Component = Shapes::StructureShape.new(name: 'Component')
    ComponentArnList = Shapes::ListShape.new(name: 'ComponentArnList')
    ComponentId = Shapes::StringShape.new(name: 'ComponentId')
    ComponentIdList = Shapes::ListShape.new(name: 'ComponentIdList')
    ComponentInfo = Shapes::StructureShape.new(name: 'ComponentInfo')
    ComponentInfoList = Shapes::ListShape.new(name: 'ComponentInfoList')
    ComponentStatus = Shapes::StringShape.new(name: 'ComponentStatus')
    ComponentSummary = Shapes::StructureShape.new(name: 'ComponentSummary')
    ComponentSummaryList = Shapes::ListShape.new(name: 'ComponentSummaryList')
    ComponentType = Shapes::StringShape.new(name: 'ComponentType')
    ConfigurationCheckDefinition = Shapes::StructureShape.new(name: 'ConfigurationCheckDefinition')
    ConfigurationCheckDefinitionList = Shapes::ListShape.new(name: 'ConfigurationCheckDefinitionList')
    ConfigurationCheckOperation = Shapes::StructureShape.new(name: 'ConfigurationCheckOperation')
    ConfigurationCheckOperationList = Shapes::ListShape.new(name: 'ConfigurationCheckOperationList')
    ConfigurationCheckOperationListingMode = Shapes::StringShape.new(name: 'ConfigurationCheckOperationListingMode')
    ConfigurationCheckType = Shapes::StringShape.new(name: 'ConfigurationCheckType')
    ConfigurationCheckTypeList = Shapes::ListShape.new(name: 'ConfigurationCheckTypeList')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConnectedEntityType = Shapes::StringShape.new(name: 'ConnectedEntityType')
    CredentialType = Shapes::StringShape.new(name: 'CredentialType')
    Database = Shapes::StructureShape.new(name: 'Database')
    DatabaseConnection = Shapes::StructureShape.new(name: 'DatabaseConnection')
    DatabaseConnectionMethod = Shapes::StringShape.new(name: 'DatabaseConnectionMethod')
    DatabaseId = Shapes::StringShape.new(name: 'DatabaseId')
    DatabaseIdList = Shapes::ListShape.new(name: 'DatabaseIdList')
    DatabaseName = Shapes::StringShape.new(name: 'DatabaseName')
    DatabaseStatus = Shapes::StringShape.new(name: 'DatabaseStatus')
    DatabaseSummary = Shapes::StructureShape.new(name: 'DatabaseSummary')
    DatabaseSummaryList = Shapes::ListShape.new(name: 'DatabaseSummaryList')
    DatabaseType = Shapes::StringShape.new(name: 'DatabaseType')
    DeleteResourcePermissionInput = Shapes::StructureShape.new(name: 'DeleteResourcePermissionInput')
    DeleteResourcePermissionOutput = Shapes::StructureShape.new(name: 'DeleteResourcePermissionOutput')
    DeregisterApplicationInput = Shapes::StructureShape.new(name: 'DeregisterApplicationInput')
    DeregisterApplicationOutput = Shapes::StructureShape.new(name: 'DeregisterApplicationOutput')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterList = Shapes::ListShape.new(name: 'FilterList')
    FilterName = Shapes::StringShape.new(name: 'FilterName')
    FilterOperator = Shapes::StringShape.new(name: 'FilterOperator')
    FilterValue = Shapes::StringShape.new(name: 'FilterValue')
    GetApplicationInput = Shapes::StructureShape.new(name: 'GetApplicationInput')
    GetApplicationOutput = Shapes::StructureShape.new(name: 'GetApplicationOutput')
    GetComponentInput = Shapes::StructureShape.new(name: 'GetComponentInput')
    GetComponentOutput = Shapes::StructureShape.new(name: 'GetComponentOutput')
    GetConfigurationCheckOperationInput = Shapes::StructureShape.new(name: 'GetConfigurationCheckOperationInput')
    GetConfigurationCheckOperationOutput = Shapes::StructureShape.new(name: 'GetConfigurationCheckOperationOutput')
    GetDatabaseInput = Shapes::StructureShape.new(name: 'GetDatabaseInput')
    GetDatabaseOutput = Shapes::StructureShape.new(name: 'GetDatabaseOutput')
    GetOperationInput = Shapes::StructureShape.new(name: 'GetOperationInput')
    GetOperationOutput = Shapes::StructureShape.new(name: 'GetOperationOutput')
    GetResourcePermissionInput = Shapes::StructureShape.new(name: 'GetResourcePermissionInput')
    GetResourcePermissionOutput = Shapes::StructureShape.new(name: 'GetResourcePermissionOutput')
    Host = Shapes::StructureShape.new(name: 'Host')
    HostList = Shapes::ListShape.new(name: 'HostList')
    HostRole = Shapes::StringShape.new(name: 'HostRole')
    InstanceId = Shapes::StringShape.new(name: 'InstanceId')
    InstanceList = Shapes::ListShape.new(name: 'InstanceList')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    IpAddressList = Shapes::ListShape.new(name: 'IpAddressList')
    IpAddressMember = Shapes::StructureShape.new(name: 'IpAddressMember')
    ListApplicationsInput = Shapes::StructureShape.new(name: 'ListApplicationsInput')
    ListApplicationsOutput = Shapes::StructureShape.new(name: 'ListApplicationsOutput')
    ListComponentsInput = Shapes::StructureShape.new(name: 'ListComponentsInput')
    ListComponentsOutput = Shapes::StructureShape.new(name: 'ListComponentsOutput')
    ListConfigurationCheckDefinitionsInput = Shapes::StructureShape.new(name: 'ListConfigurationCheckDefinitionsInput')
    ListConfigurationCheckDefinitionsOutput = Shapes::StructureShape.new(name: 'ListConfigurationCheckDefinitionsOutput')
    ListConfigurationCheckOperationsInput = Shapes::StructureShape.new(name: 'ListConfigurationCheckOperationsInput')
    ListConfigurationCheckOperationsOutput = Shapes::StructureShape.new(name: 'ListConfigurationCheckOperationsOutput')
    ListDatabasesInput = Shapes::StructureShape.new(name: 'ListDatabasesInput')
    ListDatabasesOutput = Shapes::StructureShape.new(name: 'ListDatabasesOutput')
    ListOperationEventsInput = Shapes::StructureShape.new(name: 'ListOperationEventsInput')
    ListOperationEventsOutput = Shapes::StructureShape.new(name: 'ListOperationEventsOutput')
    ListOperationsInput = Shapes::StructureShape.new(name: 'ListOperationsInput')
    ListOperationsOutput = Shapes::StructureShape.new(name: 'ListOperationsOutput')
    ListSubCheckResultsInput = Shapes::StructureShape.new(name: 'ListSubCheckResultsInput')
    ListSubCheckResultsOutput = Shapes::StructureShape.new(name: 'ListSubCheckResultsOutput')
    ListSubCheckRuleResultsInput = Shapes::StructureShape.new(name: 'ListSubCheckRuleResultsInput')
    ListSubCheckRuleResultsOutput = Shapes::StructureShape.new(name: 'ListSubCheckRuleResultsOutput')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    Operation = Shapes::StructureShape.new(name: 'Operation')
    OperationEvent = Shapes::StructureShape.new(name: 'OperationEvent')
    OperationEventList = Shapes::ListShape.new(name: 'OperationEventList')
    OperationEventResourceType = Shapes::StringShape.new(name: 'OperationEventResourceType')
    OperationEventStatus = Shapes::StringShape.new(name: 'OperationEventStatus')
    OperationId = Shapes::StringShape.new(name: 'OperationId')
    OperationIdList = Shapes::ListShape.new(name: 'OperationIdList')
    OperationList = Shapes::ListShape.new(name: 'OperationList')
    OperationMode = Shapes::StringShape.new(name: 'OperationMode')
    OperationProperties = Shapes::MapShape.new(name: 'OperationProperties')
    OperationStatus = Shapes::StringShape.new(name: 'OperationStatus')
    OperationType = Shapes::StringShape.new(name: 'OperationType')
    PermissionActionType = Shapes::StringShape.new(name: 'PermissionActionType')
    PutResourcePermissionInput = Shapes::StructureShape.new(name: 'PutResourcePermissionInput')
    PutResourcePermissionOutput = Shapes::StructureShape.new(name: 'PutResourcePermissionOutput')
    RegisterApplicationInput = Shapes::StructureShape.new(name: 'RegisterApplicationInput')
    RegisterApplicationOutput = Shapes::StructureShape.new(name: 'RegisterApplicationOutput')
    ReplicationMode = Shapes::StringShape.new(name: 'ReplicationMode')
    Resilience = Shapes::StructureShape.new(name: 'Resilience')
    Resource = Shapes::StructureShape.new(name: 'Resource')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    RuleResult = Shapes::StructureShape.new(name: 'RuleResult')
    RuleResultId = Shapes::StringShape.new(name: 'RuleResultId')
    RuleResultList = Shapes::ListShape.new(name: 'RuleResultList')
    RuleResultMetadata = Shapes::MapShape.new(name: 'RuleResultMetadata')
    RuleResultMetadataKey = Shapes::StringShape.new(name: 'RuleResultMetadataKey')
    RuleResultMetadataValue = Shapes::StringShape.new(name: 'RuleResultMetadataValue')
    RuleResultStatus = Shapes::StringShape.new(name: 'RuleResultStatus')
    RuleStatusCounts = Shapes::StructureShape.new(name: 'RuleStatusCounts')
    SAPInstanceNumber = Shapes::StringShape.new(name: 'SAPInstanceNumber')
    SID = Shapes::StringShape.new(name: 'SID')
    SecretId = Shapes::StringShape.new(name: 'SecretId')
    SsmSapArn = Shapes::StringShape.new(name: 'SsmSapArn')
    StartApplicationInput = Shapes::StructureShape.new(name: 'StartApplicationInput')
    StartApplicationOutput = Shapes::StructureShape.new(name: 'StartApplicationOutput')
    StartApplicationRefreshInput = Shapes::StructureShape.new(name: 'StartApplicationRefreshInput')
    StartApplicationRefreshOutput = Shapes::StructureShape.new(name: 'StartApplicationRefreshOutput')
    StartConfigurationChecksInput = Shapes::StructureShape.new(name: 'StartConfigurationChecksInput')
    StartConfigurationChecksOutput = Shapes::StructureShape.new(name: 'StartConfigurationChecksOutput')
    StopApplicationInput = Shapes::StructureShape.new(name: 'StopApplicationInput')
    StopApplicationOutput = Shapes::StructureShape.new(name: 'StopApplicationOutput')
    String = Shapes::StringShape.new(name: 'String')
    SubCheckReferencesList = Shapes::ListShape.new(name: 'SubCheckReferencesList')
    SubCheckResult = Shapes::StructureShape.new(name: 'SubCheckResult')
    SubCheckResultId = Shapes::StringShape.new(name: 'SubCheckResultId')
    SubCheckResultList = Shapes::ListShape.new(name: 'SubCheckResultList')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UnauthorizedException = Shapes::StructureShape.new(name: 'UnauthorizedException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateApplicationSettingsInput = Shapes::StructureShape.new(name: 'UpdateApplicationSettingsInput')
    UpdateApplicationSettingsOutput = Shapes::StructureShape.new(name: 'UpdateApplicationSettingsOutput')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    Application.add_member(:id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "Id"))
    Application.add_member(:type, Shapes::ShapeRef.new(shape: ApplicationType, location_name: "Type"))
    Application.add_member(:arn, Shapes::ShapeRef.new(shape: SsmSapArn, location_name: "Arn"))
    Application.add_member(:app_registry_arn, Shapes::ShapeRef.new(shape: AppRegistryArn, location_name: "AppRegistryArn"))
    Application.add_member(:status, Shapes::ShapeRef.new(shape: ApplicationStatus, location_name: "Status"))
    Application.add_member(:discovery_status, Shapes::ShapeRef.new(shape: ApplicationDiscoveryStatus, location_name: "DiscoveryStatus"))
    Application.add_member(:components, Shapes::ShapeRef.new(shape: ComponentIdList, location_name: "Components"))
    Application.add_member(:last_updated, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdated"))
    Application.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "StatusMessage"))
    Application.add_member(:associated_application_arns, Shapes::ShapeRef.new(shape: ApplicationArnList, location_name: "AssociatedApplicationArns"))
    Application.struct_class = Types::Application

    ApplicationArnList.member = Shapes::ShapeRef.new(shape: SsmSapArn)

    ApplicationCredential.add_member(:database_name, Shapes::ShapeRef.new(shape: DatabaseName, required: true, location_name: "DatabaseName"))
    ApplicationCredential.add_member(:credential_type, Shapes::ShapeRef.new(shape: CredentialType, required: true, location_name: "CredentialType"))
    ApplicationCredential.add_member(:secret_id, Shapes::ShapeRef.new(shape: SecretId, required: true, location_name: "SecretId"))
    ApplicationCredential.struct_class = Types::ApplicationCredential

    ApplicationCredentialList.member = Shapes::ShapeRef.new(shape: ApplicationCredential)

    ApplicationSummary.add_member(:id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "Id"))
    ApplicationSummary.add_member(:discovery_status, Shapes::ShapeRef.new(shape: ApplicationDiscoveryStatus, location_name: "DiscoveryStatus"))
    ApplicationSummary.add_member(:type, Shapes::ShapeRef.new(shape: ApplicationType, location_name: "Type"))
    ApplicationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: SsmSapArn, location_name: "Arn"))
    ApplicationSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ApplicationSummary.struct_class = Types::ApplicationSummary

    ApplicationSummaryList.member = Shapes::ShapeRef.new(shape: ApplicationSummary)

    ApplicationTypeList.member = Shapes::ShapeRef.new(shape: ApplicationType)

    AssociatedHost.add_member(:hostname, Shapes::ShapeRef.new(shape: String, location_name: "Hostname"))
    AssociatedHost.add_member(:ec2_instance_id, Shapes::ShapeRef.new(shape: String, location_name: "Ec2InstanceId"))
    AssociatedHost.add_member(:ip_addresses, Shapes::ShapeRef.new(shape: IpAddressList, location_name: "IpAddresses"))
    AssociatedHost.add_member(:os_version, Shapes::ShapeRef.new(shape: String, location_name: "OsVersion"))
    AssociatedHost.struct_class = Types::AssociatedHost

    BackintConfig.add_member(:backint_mode, Shapes::ShapeRef.new(shape: BackintMode, required: true, location_name: "BackintMode"))
    BackintConfig.add_member(:ensure_no_backup_in_process, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "EnsureNoBackupInProcess"))
    BackintConfig.struct_class = Types::BackintConfig

    Component.add_member(:component_id, Shapes::ShapeRef.new(shape: ComponentId, location_name: "ComponentId"))
    Component.add_member(:sid, Shapes::ShapeRef.new(shape: SID, location_name: "Sid"))
    Component.add_member(:system_number, Shapes::ShapeRef.new(shape: SAPInstanceNumber, location_name: "SystemNumber"))
    Component.add_member(:parent_component, Shapes::ShapeRef.new(shape: ComponentId, location_name: "ParentComponent"))
    Component.add_member(:child_components, Shapes::ShapeRef.new(shape: ComponentIdList, location_name: "ChildComponents"))
    Component.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "ApplicationId"))
    Component.add_member(:component_type, Shapes::ShapeRef.new(shape: ComponentType, location_name: "ComponentType"))
    Component.add_member(:status, Shapes::ShapeRef.new(shape: ComponentStatus, location_name: "Status"))
    Component.add_member(:sap_hostname, Shapes::ShapeRef.new(shape: String, location_name: "SapHostname"))
    Component.add_member(:sap_feature, Shapes::ShapeRef.new(shape: String, location_name: "SapFeature"))
    Component.add_member(:sap_kernel_version, Shapes::ShapeRef.new(shape: String, location_name: "SapKernelVersion"))
    Component.add_member(:hdb_version, Shapes::ShapeRef.new(shape: String, location_name: "HdbVersion"))
    Component.add_member(:resilience, Shapes::ShapeRef.new(shape: Resilience, location_name: "Resilience"))
    Component.add_member(:associated_host, Shapes::ShapeRef.new(shape: AssociatedHost, location_name: "AssociatedHost"))
    Component.add_member(:databases, Shapes::ShapeRef.new(shape: DatabaseIdList, location_name: "Databases"))
    Component.add_member(:hosts, Shapes::ShapeRef.new(shape: HostList, deprecated: true, location_name: "Hosts", metadata: {"deprecatedMessage" => "This shape is no longer used. Please use AssociatedHost."}))
    Component.add_member(:primary_host, Shapes::ShapeRef.new(shape: String, deprecated: true, location_name: "PrimaryHost", metadata: {"deprecatedMessage" => "This shape is no longer used. Please use AssociatedHost."}))
    Component.add_member(:database_connection, Shapes::ShapeRef.new(shape: DatabaseConnection, location_name: "DatabaseConnection"))
    Component.add_member(:last_updated, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdated"))
    Component.add_member(:arn, Shapes::ShapeRef.new(shape: SsmSapArn, location_name: "Arn"))
    Component.struct_class = Types::Component

    ComponentArnList.member = Shapes::ShapeRef.new(shape: SsmSapArn)

    ComponentIdList.member = Shapes::ShapeRef.new(shape: ComponentId)

    ComponentInfo.add_member(:component_type, Shapes::ShapeRef.new(shape: ComponentType, required: true, location_name: "ComponentType"))
    ComponentInfo.add_member(:sid, Shapes::ShapeRef.new(shape: SID, required: true, location_name: "Sid"))
    ComponentInfo.add_member(:ec2_instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "Ec2InstanceId"))
    ComponentInfo.struct_class = Types::ComponentInfo

    ComponentInfoList.member = Shapes::ShapeRef.new(shape: ComponentInfo)

    ComponentSummary.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "ApplicationId"))
    ComponentSummary.add_member(:component_id, Shapes::ShapeRef.new(shape: ComponentId, location_name: "ComponentId"))
    ComponentSummary.add_member(:component_type, Shapes::ShapeRef.new(shape: ComponentType, location_name: "ComponentType"))
    ComponentSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ComponentSummary.add_member(:arn, Shapes::ShapeRef.new(shape: SsmSapArn, location_name: "Arn"))
    ComponentSummary.struct_class = Types::ComponentSummary

    ComponentSummaryList.member = Shapes::ShapeRef.new(shape: ComponentSummary)

    ConfigurationCheckDefinition.add_member(:id, Shapes::ShapeRef.new(shape: ConfigurationCheckType, location_name: "Id"))
    ConfigurationCheckDefinition.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    ConfigurationCheckDefinition.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    ConfigurationCheckDefinition.add_member(:applicable_application_types, Shapes::ShapeRef.new(shape: ApplicationTypeList, location_name: "ApplicableApplicationTypes"))
    ConfigurationCheckDefinition.struct_class = Types::ConfigurationCheckDefinition

    ConfigurationCheckDefinitionList.member = Shapes::ShapeRef.new(shape: ConfigurationCheckDefinition)

    ConfigurationCheckOperation.add_member(:id, Shapes::ShapeRef.new(shape: OperationId, location_name: "Id"))
    ConfigurationCheckOperation.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "ApplicationId"))
    ConfigurationCheckOperation.add_member(:status, Shapes::ShapeRef.new(shape: OperationStatus, location_name: "Status"))
    ConfigurationCheckOperation.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "StatusMessage"))
    ConfigurationCheckOperation.add_member(:configuration_check_id, Shapes::ShapeRef.new(shape: ConfigurationCheckType, location_name: "ConfigurationCheckId"))
    ConfigurationCheckOperation.add_member(:configuration_check_name, Shapes::ShapeRef.new(shape: String, location_name: "ConfigurationCheckName"))
    ConfigurationCheckOperation.add_member(:configuration_check_description, Shapes::ShapeRef.new(shape: String, location_name: "ConfigurationCheckDescription"))
    ConfigurationCheckOperation.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    ConfigurationCheckOperation.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    ConfigurationCheckOperation.add_member(:rule_status_counts, Shapes::ShapeRef.new(shape: RuleStatusCounts, location_name: "RuleStatusCounts"))
    ConfigurationCheckOperation.struct_class = Types::ConfigurationCheckOperation

    ConfigurationCheckOperationList.member = Shapes::ShapeRef.new(shape: ConfigurationCheckOperation)

    ConfigurationCheckTypeList.member = Shapes::ShapeRef.new(shape: ConfigurationCheckType)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    Database.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "ApplicationId"))
    Database.add_member(:component_id, Shapes::ShapeRef.new(shape: ComponentId, location_name: "ComponentId"))
    Database.add_member(:credentials, Shapes::ShapeRef.new(shape: ApplicationCredentialList, location_name: "Credentials"))
    Database.add_member(:database_id, Shapes::ShapeRef.new(shape: DatabaseId, location_name: "DatabaseId"))
    Database.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    Database.add_member(:database_type, Shapes::ShapeRef.new(shape: DatabaseType, location_name: "DatabaseType"))
    Database.add_member(:arn, Shapes::ShapeRef.new(shape: SsmSapArn, location_name: "Arn"))
    Database.add_member(:status, Shapes::ShapeRef.new(shape: DatabaseStatus, location_name: "Status"))
    Database.add_member(:primary_host, Shapes::ShapeRef.new(shape: String, location_name: "PrimaryHost"))
    Database.add_member(:sql_port, Shapes::ShapeRef.new(shape: Integer, location_name: "SQLPort"))
    Database.add_member(:last_updated, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdated"))
    Database.add_member(:connected_component_arns, Shapes::ShapeRef.new(shape: ComponentArnList, location_name: "ConnectedComponentArns"))
    Database.struct_class = Types::Database

    DatabaseConnection.add_member(:database_connection_method, Shapes::ShapeRef.new(shape: DatabaseConnectionMethod, location_name: "DatabaseConnectionMethod"))
    DatabaseConnection.add_member(:database_arn, Shapes::ShapeRef.new(shape: SsmSapArn, location_name: "DatabaseArn"))
    DatabaseConnection.add_member(:connection_ip, Shapes::ShapeRef.new(shape: String, location_name: "ConnectionIp"))
    DatabaseConnection.struct_class = Types::DatabaseConnection

    DatabaseIdList.member = Shapes::ShapeRef.new(shape: DatabaseId)

    DatabaseSummary.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "ApplicationId"))
    DatabaseSummary.add_member(:component_id, Shapes::ShapeRef.new(shape: ComponentId, location_name: "ComponentId"))
    DatabaseSummary.add_member(:database_id, Shapes::ShapeRef.new(shape: DatabaseId, location_name: "DatabaseId"))
    DatabaseSummary.add_member(:database_type, Shapes::ShapeRef.new(shape: DatabaseType, location_name: "DatabaseType"))
    DatabaseSummary.add_member(:arn, Shapes::ShapeRef.new(shape: SsmSapArn, location_name: "Arn"))
    DatabaseSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    DatabaseSummary.struct_class = Types::DatabaseSummary

    DatabaseSummaryList.member = Shapes::ShapeRef.new(shape: DatabaseSummary)

    DeleteResourcePermissionInput.add_member(:action_type, Shapes::ShapeRef.new(shape: PermissionActionType, location_name: "ActionType"))
    DeleteResourcePermissionInput.add_member(:source_resource_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SourceResourceArn"))
    DeleteResourcePermissionInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceArn"))
    DeleteResourcePermissionInput.struct_class = Types::DeleteResourcePermissionInput

    DeleteResourcePermissionOutput.add_member(:policy, Shapes::ShapeRef.new(shape: String, location_name: "Policy"))
    DeleteResourcePermissionOutput.struct_class = Types::DeleteResourcePermissionOutput

    DeregisterApplicationInput.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location_name: "ApplicationId"))
    DeregisterApplicationInput.struct_class = Types::DeregisterApplicationInput

    DeregisterApplicationOutput.struct_class = Types::DeregisterApplicationOutput

    Filter.add_member(:name, Shapes::ShapeRef.new(shape: FilterName, required: true, location_name: "Name"))
    Filter.add_member(:value, Shapes::ShapeRef.new(shape: FilterValue, required: true, location_name: "Value"))
    Filter.add_member(:operator, Shapes::ShapeRef.new(shape: FilterOperator, required: true, location_name: "Operator"))
    Filter.struct_class = Types::Filter

    FilterList.member = Shapes::ShapeRef.new(shape: Filter)

    GetApplicationInput.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "ApplicationId"))
    GetApplicationInput.add_member(:application_arn, Shapes::ShapeRef.new(shape: SsmSapArn, location_name: "ApplicationArn"))
    GetApplicationInput.add_member(:app_registry_arn, Shapes::ShapeRef.new(shape: AppRegistryArn, location_name: "AppRegistryArn"))
    GetApplicationInput.struct_class = Types::GetApplicationInput

    GetApplicationOutput.add_member(:application, Shapes::ShapeRef.new(shape: Application, location_name: "Application"))
    GetApplicationOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    GetApplicationOutput.struct_class = Types::GetApplicationOutput

    GetComponentInput.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location_name: "ApplicationId"))
    GetComponentInput.add_member(:component_id, Shapes::ShapeRef.new(shape: ComponentId, required: true, location_name: "ComponentId"))
    GetComponentInput.struct_class = Types::GetComponentInput

    GetComponentOutput.add_member(:component, Shapes::ShapeRef.new(shape: Component, location_name: "Component"))
    GetComponentOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    GetComponentOutput.struct_class = Types::GetComponentOutput

    GetConfigurationCheckOperationInput.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, required: true, location_name: "OperationId"))
    GetConfigurationCheckOperationInput.struct_class = Types::GetConfigurationCheckOperationInput

    GetConfigurationCheckOperationOutput.add_member(:configuration_check_operation, Shapes::ShapeRef.new(shape: ConfigurationCheckOperation, location_name: "ConfigurationCheckOperation"))
    GetConfigurationCheckOperationOutput.struct_class = Types::GetConfigurationCheckOperationOutput

    GetDatabaseInput.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "ApplicationId"))
    GetDatabaseInput.add_member(:component_id, Shapes::ShapeRef.new(shape: ComponentId, location_name: "ComponentId"))
    GetDatabaseInput.add_member(:database_id, Shapes::ShapeRef.new(shape: DatabaseId, location_name: "DatabaseId"))
    GetDatabaseInput.add_member(:database_arn, Shapes::ShapeRef.new(shape: SsmSapArn, location_name: "DatabaseArn"))
    GetDatabaseInput.struct_class = Types::GetDatabaseInput

    GetDatabaseOutput.add_member(:database, Shapes::ShapeRef.new(shape: Database, location_name: "Database"))
    GetDatabaseOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    GetDatabaseOutput.struct_class = Types::GetDatabaseOutput

    GetOperationInput.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, required: true, location_name: "OperationId"))
    GetOperationInput.struct_class = Types::GetOperationInput

    GetOperationOutput.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, location_name: "Operation"))
    GetOperationOutput.struct_class = Types::GetOperationOutput

    GetResourcePermissionInput.add_member(:action_type, Shapes::ShapeRef.new(shape: PermissionActionType, location_name: "ActionType"))
    GetResourcePermissionInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceArn"))
    GetResourcePermissionInput.struct_class = Types::GetResourcePermissionInput

    GetResourcePermissionOutput.add_member(:policy, Shapes::ShapeRef.new(shape: String, location_name: "Policy"))
    GetResourcePermissionOutput.struct_class = Types::GetResourcePermissionOutput

    Host.add_member(:host_name, Shapes::ShapeRef.new(shape: String, location_name: "HostName"))
    Host.add_member(:host_ip, Shapes::ShapeRef.new(shape: String, location_name: "HostIp"))
    Host.add_member(:ec2_instance_id, Shapes::ShapeRef.new(shape: String, location_name: "EC2InstanceId"))
    Host.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, location_name: "InstanceId"))
    Host.add_member(:host_role, Shapes::ShapeRef.new(shape: HostRole, location_name: "HostRole"))
    Host.add_member(:os_version, Shapes::ShapeRef.new(shape: String, location_name: "OsVersion"))
    Host.struct_class = Types::Host

    HostList.member = Shapes::ShapeRef.new(shape: Host)

    InstanceList.member = Shapes::ShapeRef.new(shape: InstanceId)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    IpAddressList.member = Shapes::ShapeRef.new(shape: IpAddressMember)

    IpAddressMember.add_member(:ip_address, Shapes::ShapeRef.new(shape: String, location_name: "IpAddress"))
    IpAddressMember.add_member(:primary, Shapes::ShapeRef.new(shape: Boolean, location_name: "Primary"))
    IpAddressMember.add_member(:allocation_type, Shapes::ShapeRef.new(shape: AllocationType, location_name: "AllocationType"))
    IpAddressMember.struct_class = Types::IpAddressMember

    ListApplicationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListApplicationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListApplicationsInput.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    ListApplicationsInput.struct_class = Types::ListApplicationsInput

    ListApplicationsOutput.add_member(:applications, Shapes::ShapeRef.new(shape: ApplicationSummaryList, location_name: "Applications"))
    ListApplicationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListApplicationsOutput.struct_class = Types::ListApplicationsOutput

    ListComponentsInput.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "ApplicationId"))
    ListComponentsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListComponentsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListComponentsInput.struct_class = Types::ListComponentsInput

    ListComponentsOutput.add_member(:components, Shapes::ShapeRef.new(shape: ComponentSummaryList, location_name: "Components"))
    ListComponentsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListComponentsOutput.struct_class = Types::ListComponentsOutput

    ListConfigurationCheckDefinitionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListConfigurationCheckDefinitionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListConfigurationCheckDefinitionsInput.struct_class = Types::ListConfigurationCheckDefinitionsInput

    ListConfigurationCheckDefinitionsOutput.add_member(:configuration_checks, Shapes::ShapeRef.new(shape: ConfigurationCheckDefinitionList, location_name: "ConfigurationChecks"))
    ListConfigurationCheckDefinitionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListConfigurationCheckDefinitionsOutput.struct_class = Types::ListConfigurationCheckDefinitionsOutput

    ListConfigurationCheckOperationsInput.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location_name: "ApplicationId"))
    ListConfigurationCheckOperationsInput.add_member(:list_mode, Shapes::ShapeRef.new(shape: ConfigurationCheckOperationListingMode, location_name: "ListMode"))
    ListConfigurationCheckOperationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListConfigurationCheckOperationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListConfigurationCheckOperationsInput.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    ListConfigurationCheckOperationsInput.struct_class = Types::ListConfigurationCheckOperationsInput

    ListConfigurationCheckOperationsOutput.add_member(:configuration_check_operations, Shapes::ShapeRef.new(shape: ConfigurationCheckOperationList, location_name: "ConfigurationCheckOperations"))
    ListConfigurationCheckOperationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListConfigurationCheckOperationsOutput.struct_class = Types::ListConfigurationCheckOperationsOutput

    ListDatabasesInput.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "ApplicationId"))
    ListDatabasesInput.add_member(:component_id, Shapes::ShapeRef.new(shape: ComponentId, location_name: "ComponentId"))
    ListDatabasesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDatabasesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListDatabasesInput.struct_class = Types::ListDatabasesInput

    ListDatabasesOutput.add_member(:databases, Shapes::ShapeRef.new(shape: DatabaseSummaryList, location_name: "Databases"))
    ListDatabasesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDatabasesOutput.struct_class = Types::ListDatabasesOutput

    ListOperationEventsInput.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, required: true, location_name: "OperationId"))
    ListOperationEventsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListOperationEventsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListOperationEventsInput.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    ListOperationEventsInput.struct_class = Types::ListOperationEventsInput

    ListOperationEventsOutput.add_member(:operation_events, Shapes::ShapeRef.new(shape: OperationEventList, location_name: "OperationEvents"))
    ListOperationEventsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListOperationEventsOutput.struct_class = Types::ListOperationEventsOutput

    ListOperationsInput.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location_name: "ApplicationId"))
    ListOperationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListOperationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListOperationsInput.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    ListOperationsInput.struct_class = Types::ListOperationsInput

    ListOperationsOutput.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "Operations"))
    ListOperationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListOperationsOutput.struct_class = Types::ListOperationsOutput

    ListSubCheckResultsInput.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, required: true, location_name: "OperationId"))
    ListSubCheckResultsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListSubCheckResultsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSubCheckResultsInput.struct_class = Types::ListSubCheckResultsInput

    ListSubCheckResultsOutput.add_member(:sub_check_results, Shapes::ShapeRef.new(shape: SubCheckResultList, location_name: "SubCheckResults"))
    ListSubCheckResultsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSubCheckResultsOutput.struct_class = Types::ListSubCheckResultsOutput

    ListSubCheckRuleResultsInput.add_member(:sub_check_result_id, Shapes::ShapeRef.new(shape: SubCheckResultId, required: true, location_name: "SubCheckResultId"))
    ListSubCheckRuleResultsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListSubCheckRuleResultsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSubCheckRuleResultsInput.struct_class = Types::ListSubCheckRuleResultsInput

    ListSubCheckRuleResultsOutput.add_member(:rule_results, Shapes::ShapeRef.new(shape: RuleResultList, location_name: "RuleResults"))
    ListSubCheckRuleResultsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSubCheckRuleResultsOutput.struct_class = Types::ListSubCheckRuleResultsOutput

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: SsmSapArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    Operation.add_member(:id, Shapes::ShapeRef.new(shape: OperationId, location_name: "Id"))
    Operation.add_member(:type, Shapes::ShapeRef.new(shape: OperationType, location_name: "Type"))
    Operation.add_member(:status, Shapes::ShapeRef.new(shape: OperationStatus, location_name: "Status"))
    Operation.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "StatusMessage"))
    Operation.add_member(:properties, Shapes::ShapeRef.new(shape: OperationProperties, location_name: "Properties"))
    Operation.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    Operation.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId"))
    Operation.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ResourceArn"))
    Operation.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    Operation.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    Operation.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    Operation.struct_class = Types::Operation

    OperationEvent.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    OperationEvent.add_member(:resource, Shapes::ShapeRef.new(shape: Resource, location_name: "Resource"))
    OperationEvent.add_member(:status, Shapes::ShapeRef.new(shape: OperationEventStatus, location_name: "Status"))
    OperationEvent.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "StatusMessage"))
    OperationEvent.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    OperationEvent.struct_class = Types::OperationEvent

    OperationEventList.member = Shapes::ShapeRef.new(shape: OperationEvent)

    OperationIdList.member = Shapes::ShapeRef.new(shape: OperationId)

    OperationList.member = Shapes::ShapeRef.new(shape: Operation)

    OperationProperties.key = Shapes::ShapeRef.new(shape: String)
    OperationProperties.value = Shapes::ShapeRef.new(shape: String)

    PutResourcePermissionInput.add_member(:action_type, Shapes::ShapeRef.new(shape: PermissionActionType, required: true, location_name: "ActionType"))
    PutResourcePermissionInput.add_member(:source_resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "SourceResourceArn"))
    PutResourcePermissionInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceArn"))
    PutResourcePermissionInput.struct_class = Types::PutResourcePermissionInput

    PutResourcePermissionOutput.add_member(:policy, Shapes::ShapeRef.new(shape: String, location_name: "Policy"))
    PutResourcePermissionOutput.struct_class = Types::PutResourcePermissionOutput

    RegisterApplicationInput.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location_name: "ApplicationId"))
    RegisterApplicationInput.add_member(:application_type, Shapes::ShapeRef.new(shape: ApplicationType, required: true, location_name: "ApplicationType"))
    RegisterApplicationInput.add_member(:instances, Shapes::ShapeRef.new(shape: InstanceList, required: true, location_name: "Instances"))
    RegisterApplicationInput.add_member(:sap_instance_number, Shapes::ShapeRef.new(shape: SAPInstanceNumber, location_name: "SapInstanceNumber"))
    RegisterApplicationInput.add_member(:sid, Shapes::ShapeRef.new(shape: SID, location_name: "Sid"))
    RegisterApplicationInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    RegisterApplicationInput.add_member(:credentials, Shapes::ShapeRef.new(shape: ApplicationCredentialList, location_name: "Credentials"))
    RegisterApplicationInput.add_member(:database_arn, Shapes::ShapeRef.new(shape: SsmSapArn, location_name: "DatabaseArn"))
    RegisterApplicationInput.add_member(:components_info, Shapes::ShapeRef.new(shape: ComponentInfoList, location_name: "ComponentsInfo"))
    RegisterApplicationInput.struct_class = Types::RegisterApplicationInput

    RegisterApplicationOutput.add_member(:application, Shapes::ShapeRef.new(shape: Application, location_name: "Application"))
    RegisterApplicationOutput.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, location_name: "OperationId"))
    RegisterApplicationOutput.struct_class = Types::RegisterApplicationOutput

    Resilience.add_member(:hsr_tier, Shapes::ShapeRef.new(shape: String, location_name: "HsrTier"))
    Resilience.add_member(:hsr_replication_mode, Shapes::ShapeRef.new(shape: ReplicationMode, location_name: "HsrReplicationMode"))
    Resilience.add_member(:hsr_operation_mode, Shapes::ShapeRef.new(shape: OperationMode, location_name: "HsrOperationMode"))
    Resilience.add_member(:cluster_status, Shapes::ShapeRef.new(shape: ClusterStatus, location_name: "ClusterStatus"))
    Resilience.add_member(:enqueue_replication, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnqueueReplication"))
    Resilience.struct_class = Types::Resilience

    Resource.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ResourceArn"))
    Resource.add_member(:resource_type, Shapes::ShapeRef.new(shape: OperationEventResourceType, location_name: "ResourceType"))
    Resource.struct_class = Types::Resource

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RuleResult.add_member(:id, Shapes::ShapeRef.new(shape: RuleResultId, location_name: "Id"))
    RuleResult.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    RuleResult.add_member(:status, Shapes::ShapeRef.new(shape: RuleResultStatus, location_name: "Status"))
    RuleResult.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    RuleResult.add_member(:metadata, Shapes::ShapeRef.new(shape: RuleResultMetadata, location_name: "Metadata"))
    RuleResult.struct_class = Types::RuleResult

    RuleResultList.member = Shapes::ShapeRef.new(shape: RuleResult)

    RuleResultMetadata.key = Shapes::ShapeRef.new(shape: RuleResultMetadataKey)
    RuleResultMetadata.value = Shapes::ShapeRef.new(shape: RuleResultMetadataValue)

    RuleStatusCounts.add_member(:failed, Shapes::ShapeRef.new(shape: Integer, location_name: "Failed"))
    RuleStatusCounts.add_member(:warning, Shapes::ShapeRef.new(shape: Integer, location_name: "Warning"))
    RuleStatusCounts.add_member(:info, Shapes::ShapeRef.new(shape: Integer, location_name: "Info"))
    RuleStatusCounts.add_member(:passed, Shapes::ShapeRef.new(shape: Integer, location_name: "Passed"))
    RuleStatusCounts.add_member(:unknown, Shapes::ShapeRef.new(shape: Integer, location_name: "Unknown"))
    RuleStatusCounts.struct_class = Types::RuleStatusCounts

    StartApplicationInput.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location_name: "ApplicationId"))
    StartApplicationInput.struct_class = Types::StartApplicationInput

    StartApplicationOutput.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, location_name: "OperationId"))
    StartApplicationOutput.struct_class = Types::StartApplicationOutput

    StartApplicationRefreshInput.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location_name: "ApplicationId"))
    StartApplicationRefreshInput.struct_class = Types::StartApplicationRefreshInput

    StartApplicationRefreshOutput.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, location_name: "OperationId"))
    StartApplicationRefreshOutput.struct_class = Types::StartApplicationRefreshOutput

    StartConfigurationChecksInput.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location_name: "ApplicationId"))
    StartConfigurationChecksInput.add_member(:configuration_check_ids, Shapes::ShapeRef.new(shape: ConfigurationCheckTypeList, location_name: "ConfigurationCheckIds"))
    StartConfigurationChecksInput.struct_class = Types::StartConfigurationChecksInput

    StartConfigurationChecksOutput.add_member(:configuration_check_operations, Shapes::ShapeRef.new(shape: ConfigurationCheckOperationList, location_name: "ConfigurationCheckOperations"))
    StartConfigurationChecksOutput.struct_class = Types::StartConfigurationChecksOutput

    StopApplicationInput.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location_name: "ApplicationId"))
    StopApplicationInput.add_member(:stop_connected_entity, Shapes::ShapeRef.new(shape: ConnectedEntityType, location_name: "StopConnectedEntity"))
    StopApplicationInput.add_member(:include_ec2_instance_shutdown, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludeEc2InstanceShutdown"))
    StopApplicationInput.struct_class = Types::StopApplicationInput

    StopApplicationOutput.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, location_name: "OperationId"))
    StopApplicationOutput.struct_class = Types::StopApplicationOutput

    SubCheckReferencesList.member = Shapes::ShapeRef.new(shape: String)

    SubCheckResult.add_member(:id, Shapes::ShapeRef.new(shape: SubCheckResultId, location_name: "Id"))
    SubCheckResult.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    SubCheckResult.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    SubCheckResult.add_member(:references, Shapes::ShapeRef.new(shape: SubCheckReferencesList, location_name: "References"))
    SubCheckResult.struct_class = Types::SubCheckResult

    SubCheckResultList.member = Shapes::ShapeRef.new(shape: SubCheckResult)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: SsmSapArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    UnauthorizedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    UnauthorizedException.struct_class = Types::UnauthorizedException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: SsmSapArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateApplicationSettingsInput.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location_name: "ApplicationId"))
    UpdateApplicationSettingsInput.add_member(:credentials_to_add_or_update, Shapes::ShapeRef.new(shape: ApplicationCredentialList, location_name: "CredentialsToAddOrUpdate"))
    UpdateApplicationSettingsInput.add_member(:credentials_to_remove, Shapes::ShapeRef.new(shape: ApplicationCredentialList, location_name: "CredentialsToRemove"))
    UpdateApplicationSettingsInput.add_member(:backint, Shapes::ShapeRef.new(shape: BackintConfig, location_name: "Backint"))
    UpdateApplicationSettingsInput.add_member(:database_arn, Shapes::ShapeRef.new(shape: SsmSapArn, location_name: "DatabaseArn"))
    UpdateApplicationSettingsInput.struct_class = Types::UpdateApplicationSettingsInput

    UpdateApplicationSettingsOutput.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    UpdateApplicationSettingsOutput.add_member(:operation_ids, Shapes::ShapeRef.new(shape: OperationIdList, location_name: "OperationIds"))
    UpdateApplicationSettingsOutput.struct_class = Types::UpdateApplicationSettingsOutput

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-10"

      api.metadata = {
        "apiVersion" => "2018-05-10",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "ssm-sap",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceAbbreviation" => "SsmSap",
        "serviceFullName" => "AWS Systems Manager for SAP",
        "serviceId" => "Ssm Sap",
        "signatureVersion" => "v4",
        "signingName" => "ssm-sap",
        "uid" => "ssm-sap-2018-05-10",
      }

      api.add_operation(:delete_resource_permission, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResourcePermission"
        o.http_method = "POST"
        o.http_request_uri = "/delete-resource-permission"
        o.input = Shapes::ShapeRef.new(shape: DeleteResourcePermissionInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteResourcePermissionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:deregister_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterApplication"
        o.http_method = "POST"
        o.http_request_uri = "/deregister-application"
        o.input = Shapes::ShapeRef.new(shape: DeregisterApplicationInput)
        o.output = Shapes::ShapeRef.new(shape: DeregisterApplicationOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApplication"
        o.http_method = "POST"
        o.http_request_uri = "/get-application"
        o.input = Shapes::ShapeRef.new(shape: GetApplicationInput)
        o.output = Shapes::ShapeRef.new(shape: GetApplicationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetComponent"
        o.http_method = "POST"
        o.http_request_uri = "/get-component"
        o.input = Shapes::ShapeRef.new(shape: GetComponentInput)
        o.output = Shapes::ShapeRef.new(shape: GetComponentOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_configuration_check_operation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConfigurationCheckOperation"
        o.http_method = "POST"
        o.http_request_uri = "/get-configuration-check-operation"
        o.input = Shapes::ShapeRef.new(shape: GetConfigurationCheckOperationInput)
        o.output = Shapes::ShapeRef.new(shape: GetConfigurationCheckOperationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_database, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDatabase"
        o.http_method = "POST"
        o.http_request_uri = "/get-database"
        o.input = Shapes::ShapeRef.new(shape: GetDatabaseInput)
        o.output = Shapes::ShapeRef.new(shape: GetDatabaseOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_operation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOperation"
        o.http_method = "POST"
        o.http_request_uri = "/get-operation"
        o.input = Shapes::ShapeRef.new(shape: GetOperationInput)
        o.output = Shapes::ShapeRef.new(shape: GetOperationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_resource_permission, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourcePermission"
        o.http_method = "POST"
        o.http_request_uri = "/get-resource-permission"
        o.input = Shapes::ShapeRef.new(shape: GetResourcePermissionInput)
        o.output = Shapes::ShapeRef.new(shape: GetResourcePermissionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_applications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApplications"
        o.http_method = "POST"
        o.http_request_uri = "/list-applications"
        o.input = Shapes::ShapeRef.new(shape: ListApplicationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListApplicationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_components, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListComponents"
        o.http_method = "POST"
        o.http_request_uri = "/list-components"
        o.input = Shapes::ShapeRef.new(shape: ListComponentsInput)
        o.output = Shapes::ShapeRef.new(shape: ListComponentsOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_configuration_check_definitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConfigurationCheckDefinitions"
        o.http_method = "POST"
        o.http_request_uri = "/list-configuration-check-definitions"
        o.input = Shapes::ShapeRef.new(shape: ListConfigurationCheckDefinitionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListConfigurationCheckDefinitionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_configuration_check_operations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConfigurationCheckOperations"
        o.http_method = "POST"
        o.http_request_uri = "/list-configuration-check-operations"
        o.input = Shapes::ShapeRef.new(shape: ListConfigurationCheckOperationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListConfigurationCheckOperationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_databases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDatabases"
        o.http_method = "POST"
        o.http_request_uri = "/list-databases"
        o.input = Shapes::ShapeRef.new(shape: ListDatabasesInput)
        o.output = Shapes::ShapeRef.new(shape: ListDatabasesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_operation_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOperationEvents"
        o.http_method = "POST"
        o.http_request_uri = "/list-operation-events"
        o.input = Shapes::ShapeRef.new(shape: ListOperationEventsInput)
        o.output = Shapes::ShapeRef.new(shape: ListOperationEventsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_operations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOperations"
        o.http_method = "POST"
        o.http_request_uri = "/list-operations"
        o.input = Shapes::ShapeRef.new(shape: ListOperationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListOperationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_sub_check_results, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSubCheckResults"
        o.http_method = "POST"
        o.http_request_uri = "/list-sub-check-results"
        o.input = Shapes::ShapeRef.new(shape: ListSubCheckResultsInput)
        o.output = Shapes::ShapeRef.new(shape: ListSubCheckResultsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_sub_check_rule_results, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSubCheckRuleResults"
        o.http_method = "POST"
        o.http_request_uri = "/list-sub-check-rule-results"
        o.input = Shapes::ShapeRef.new(shape: ListSubCheckRuleResultsInput)
        o.output = Shapes::ShapeRef.new(shape: ListSubCheckRuleResultsOutput)
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
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:put_resource_permission, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutResourcePermission"
        o.http_method = "POST"
        o.http_request_uri = "/put-resource-permission"
        o.input = Shapes::ShapeRef.new(shape: PutResourcePermissionInput)
        o.output = Shapes::ShapeRef.new(shape: PutResourcePermissionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:register_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterApplication"
        o.http_method = "POST"
        o.http_request_uri = "/register-application"
        o.input = Shapes::ShapeRef.new(shape: RegisterApplicationInput)
        o.output = Shapes::ShapeRef.new(shape: RegisterApplicationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartApplication"
        o.http_method = "POST"
        o.http_request_uri = "/start-application"
        o.input = Shapes::ShapeRef.new(shape: StartApplicationInput)
        o.output = Shapes::ShapeRef.new(shape: StartApplicationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_application_refresh, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartApplicationRefresh"
        o.http_method = "POST"
        o.http_request_uri = "/start-application-refresh"
        o.input = Shapes::ShapeRef.new(shape: StartApplicationRefreshInput)
        o.output = Shapes::ShapeRef.new(shape: StartApplicationRefreshOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_configuration_checks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartConfigurationChecks"
        o.http_method = "POST"
        o.http_request_uri = "/start-configuration-checks"
        o.input = Shapes::ShapeRef.new(shape: StartConfigurationChecksInput)
        o.output = Shapes::ShapeRef.new(shape: StartConfigurationChecksOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:stop_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopApplication"
        o.http_method = "POST"
        o.http_request_uri = "/stop-application"
        o.input = Shapes::ShapeRef.new(shape: StopApplicationInput)
        o.output = Shapes::ShapeRef.new(shape: StopApplicationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_application_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateApplicationSettings"
        o.http_method = "POST"
        o.http_request_uri = "/update-application-settings"
        o.input = Shapes::ShapeRef.new(shape: UpdateApplicationSettingsInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateApplicationSettingsOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
