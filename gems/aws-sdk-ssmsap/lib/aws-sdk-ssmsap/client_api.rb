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

    AppRegistryArn = Shapes::StringShape.new(name: 'AppRegistryArn')
    Application = Shapes::StructureShape.new(name: 'Application')
    ApplicationCredential = Shapes::StructureShape.new(name: 'ApplicationCredential')
    ApplicationCredentialList = Shapes::ListShape.new(name: 'ApplicationCredentialList')
    ApplicationId = Shapes::StringShape.new(name: 'ApplicationId')
    ApplicationStatus = Shapes::StringShape.new(name: 'ApplicationStatus')
    ApplicationSummary = Shapes::StructureShape.new(name: 'ApplicationSummary')
    ApplicationSummaryList = Shapes::ListShape.new(name: 'ApplicationSummaryList')
    ApplicationType = Shapes::StringShape.new(name: 'ApplicationType')
    Arn = Shapes::StringShape.new(name: 'Arn')
    Component = Shapes::StructureShape.new(name: 'Component')
    ComponentId = Shapes::StringShape.new(name: 'ComponentId')
    ComponentIdList = Shapes::ListShape.new(name: 'ComponentIdList')
    ComponentStatus = Shapes::StringShape.new(name: 'ComponentStatus')
    ComponentSummary = Shapes::StructureShape.new(name: 'ComponentSummary')
    ComponentSummaryList = Shapes::ListShape.new(name: 'ComponentSummaryList')
    ComponentType = Shapes::StringShape.new(name: 'ComponentType')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CredentialType = Shapes::StringShape.new(name: 'CredentialType')
    Database = Shapes::StructureShape.new(name: 'Database')
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
    ListApplicationsInput = Shapes::StructureShape.new(name: 'ListApplicationsInput')
    ListApplicationsOutput = Shapes::StructureShape.new(name: 'ListApplicationsOutput')
    ListComponentsInput = Shapes::StructureShape.new(name: 'ListComponentsInput')
    ListComponentsOutput = Shapes::StructureShape.new(name: 'ListComponentsOutput')
    ListDatabasesInput = Shapes::StructureShape.new(name: 'ListDatabasesInput')
    ListDatabasesOutput = Shapes::StructureShape.new(name: 'ListDatabasesOutput')
    ListOperationsInput = Shapes::StructureShape.new(name: 'ListOperationsInput')
    ListOperationsOutput = Shapes::StructureShape.new(name: 'ListOperationsOutput')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    Operation = Shapes::StructureShape.new(name: 'Operation')
    OperationId = Shapes::StringShape.new(name: 'OperationId')
    OperationIdList = Shapes::ListShape.new(name: 'OperationIdList')
    OperationList = Shapes::ListShape.new(name: 'OperationList')
    OperationProperties = Shapes::MapShape.new(name: 'OperationProperties')
    OperationStatus = Shapes::StringShape.new(name: 'OperationStatus')
    OperationType = Shapes::StringShape.new(name: 'OperationType')
    PermissionActionType = Shapes::StringShape.new(name: 'PermissionActionType')
    PutResourcePermissionInput = Shapes::StructureShape.new(name: 'PutResourcePermissionInput')
    PutResourcePermissionOutput = Shapes::StructureShape.new(name: 'PutResourcePermissionOutput')
    RegisterApplicationInput = Shapes::StructureShape.new(name: 'RegisterApplicationInput')
    RegisterApplicationOutput = Shapes::StructureShape.new(name: 'RegisterApplicationOutput')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    SAPInstanceNumber = Shapes::StringShape.new(name: 'SAPInstanceNumber')
    SID = Shapes::StringShape.new(name: 'SID')
    SecretId = Shapes::StringShape.new(name: 'SecretId')
    SsmSapArn = Shapes::StringShape.new(name: 'SsmSapArn')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
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
    Application.add_member(:components, Shapes::ShapeRef.new(shape: ComponentIdList, location_name: "Components"))
    Application.add_member(:last_updated, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdated"))
    Application.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "StatusMessage"))
    Application.struct_class = Types::Application

    ApplicationCredential.add_member(:database_name, Shapes::ShapeRef.new(shape: DatabaseName, required: true, location_name: "DatabaseName"))
    ApplicationCredential.add_member(:credential_type, Shapes::ShapeRef.new(shape: CredentialType, required: true, location_name: "CredentialType"))
    ApplicationCredential.add_member(:secret_id, Shapes::ShapeRef.new(shape: SecretId, required: true, location_name: "SecretId"))
    ApplicationCredential.struct_class = Types::ApplicationCredential

    ApplicationCredentialList.member = Shapes::ShapeRef.new(shape: ApplicationCredential)

    ApplicationSummary.add_member(:id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "Id"))
    ApplicationSummary.add_member(:type, Shapes::ShapeRef.new(shape: ApplicationType, location_name: "Type"))
    ApplicationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: SsmSapArn, location_name: "Arn"))
    ApplicationSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ApplicationSummary.struct_class = Types::ApplicationSummary

    ApplicationSummaryList.member = Shapes::ShapeRef.new(shape: ApplicationSummary)

    Component.add_member(:component_id, Shapes::ShapeRef.new(shape: ComponentId, location_name: "ComponentId"))
    Component.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "ApplicationId"))
    Component.add_member(:component_type, Shapes::ShapeRef.new(shape: ComponentType, location_name: "ComponentType"))
    Component.add_member(:status, Shapes::ShapeRef.new(shape: ComponentStatus, location_name: "Status"))
    Component.add_member(:databases, Shapes::ShapeRef.new(shape: DatabaseIdList, location_name: "Databases"))
    Component.add_member(:hosts, Shapes::ShapeRef.new(shape: HostList, location_name: "Hosts"))
    Component.add_member(:primary_host, Shapes::ShapeRef.new(shape: String, location_name: "PrimaryHost"))
    Component.add_member(:last_updated, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdated"))
    Component.struct_class = Types::Component

    ComponentIdList.member = Shapes::ShapeRef.new(shape: ComponentId)

    ComponentSummary.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "ApplicationId"))
    ComponentSummary.add_member(:component_id, Shapes::ShapeRef.new(shape: ComponentId, location_name: "ComponentId"))
    ComponentSummary.add_member(:component_type, Shapes::ShapeRef.new(shape: ComponentType, location_name: "ComponentType"))
    ComponentSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ComponentSummary.struct_class = Types::ComponentSummary

    ComponentSummaryList.member = Shapes::ShapeRef.new(shape: ComponentSummary)

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
    Database.struct_class = Types::Database

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
    GetComponentOutput.struct_class = Types::GetComponentOutput

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
    Host.add_member(:host_role, Shapes::ShapeRef.new(shape: HostRole, location_name: "HostRole"))
    Host.add_member(:host_ip, Shapes::ShapeRef.new(shape: String, location_name: "HostIp"))
    Host.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, location_name: "InstanceId"))
    Host.struct_class = Types::Host

    HostList.member = Shapes::ShapeRef.new(shape: Host)

    InstanceList.member = Shapes::ShapeRef.new(shape: InstanceId)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListApplicationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListApplicationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListApplicationsInput.struct_class = Types::ListApplicationsInput

    ListApplicationsOutput.add_member(:applications, Shapes::ShapeRef.new(shape: ApplicationSummaryList, location_name: "Applications"))
    ListApplicationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListApplicationsOutput.struct_class = Types::ListApplicationsOutput

    ListComponentsInput.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "ApplicationId"))
    ListComponentsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListComponentsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListComponentsInput.struct_class = Types::ListComponentsInput

    ListComponentsOutput.add_member(:components, Shapes::ShapeRef.new(shape: ComponentSummaryList, location_name: "Components"))
    ListComponentsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListComponentsOutput.struct_class = Types::ListComponentsOutput

    ListDatabasesInput.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "ApplicationId"))
    ListDatabasesInput.add_member(:component_id, Shapes::ShapeRef.new(shape: ComponentId, location_name: "ComponentId"))
    ListDatabasesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDatabasesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListDatabasesInput.struct_class = Types::ListDatabasesInput

    ListDatabasesOutput.add_member(:databases, Shapes::ShapeRef.new(shape: DatabaseSummaryList, location_name: "Databases"))
    ListDatabasesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDatabasesOutput.struct_class = Types::ListDatabasesOutput

    ListOperationsInput.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location_name: "ApplicationId"))
    ListOperationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListOperationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListOperationsInput.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    ListOperationsInput.struct_class = Types::ListOperationsInput

    ListOperationsOutput.add_member(:operations, Shapes::ShapeRef.new(shape: OperationList, location_name: "Operations"))
    ListOperationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListOperationsOutput.struct_class = Types::ListOperationsOutput

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
    RegisterApplicationInput.add_member(:credentials, Shapes::ShapeRef.new(shape: ApplicationCredentialList, required: true, location_name: "Credentials"))
    RegisterApplicationInput.struct_class = Types::RegisterApplicationInput

    RegisterApplicationOutput.add_member(:application, Shapes::ShapeRef.new(shape: Application, location_name: "Application"))
    RegisterApplicationOutput.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, location_name: "OperationId"))
    RegisterApplicationOutput.struct_class = Types::RegisterApplicationOutput

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: SsmSapArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: SsmSapArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateApplicationSettingsInput.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location_name: "ApplicationId"))
    UpdateApplicationSettingsInput.add_member(:credentials_to_add_or_update, Shapes::ShapeRef.new(shape: ApplicationCredentialList, location_name: "CredentialsToAddOrUpdate"))
    UpdateApplicationSettingsInput.add_member(:credentials_to_remove, Shapes::ShapeRef.new(shape: ApplicationCredentialList, location_name: "CredentialsToRemove"))
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
        "endpointPrefix" => "ssm-sap",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
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
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
