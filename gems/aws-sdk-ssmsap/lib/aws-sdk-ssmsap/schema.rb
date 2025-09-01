# frozen_string_literal: true

# This is generated code!

module Aws::SsmSap
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AllocationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssmsap#AllocationType', name: 'AllocationType')
    AppRegistryArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmsap#AppRegistryArn', name: 'AppRegistryArn', traits: {"smithy.api#pattern" => "^arn:aws:servicecatalog:[a-z0-9:\\/-]+$"})
    Application = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#Application', name: 'Application')
    ApplicationArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmsap#ApplicationArnList', name: 'ApplicationArnList')
    ApplicationCredential = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#ApplicationCredential', name: 'ApplicationCredential')
    ApplicationCredentialList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmsap#ApplicationCredentialList', name: 'ApplicationCredentialList', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    ApplicationDiscoveryStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssmsap#ApplicationDiscoveryStatus', name: 'ApplicationDiscoveryStatus')
    ApplicationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmsap#ApplicationId', name: 'ApplicationId', traits: {"smithy.api#length" => {"min" => 1, "max" => 60}, "smithy.api#pattern" => "^[\\w\\d\\.-]+$"})
    ApplicationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssmsap#ApplicationStatus', name: 'ApplicationStatus')
    ApplicationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#ApplicationSummary', name: 'ApplicationSummary')
    ApplicationSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmsap#ApplicationSummaryList', name: 'ApplicationSummaryList')
    ApplicationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssmsap#ApplicationType', name: 'ApplicationType')
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmsap#Arn', name: 'Arn', traits: {"smithy.api#pattern" => "^arn:(.+:){2,4}.+$|^arn:(.+:){1,3}.+\\/.+$"})
    AssociatedHost = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#AssociatedHost', name: 'AssociatedHost')
    BackintConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#BackintConfig', name: 'BackintConfig')
    BackintMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssmsap#BackintMode', name: 'BackintMode')
    ClusterStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssmsap#ClusterStatus', name: 'ClusterStatus')
    Component = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#Component', name: 'Component')
    ComponentArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmsap#ComponentArnList', name: 'ComponentArnList')
    ComponentId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmsap#ComponentId', name: 'ComponentId', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[\\w\\d-]+$"})
    ComponentIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmsap#ComponentIdList', name: 'ComponentIdList')
    ComponentInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#ComponentInfo', name: 'ComponentInfo')
    ComponentInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmsap#ComponentInfoList', name: 'ComponentInfoList', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    ComponentStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssmsap#ComponentStatus', name: 'ComponentStatus')
    ComponentSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#ComponentSummary', name: 'ComponentSummary')
    ComponentSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmsap#ComponentSummaryList', name: 'ComponentSummaryList')
    ComponentType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssmsap#ComponentType', name: 'ComponentType')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectedEntityType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssmsap#ConnectedEntityType', name: 'ConnectedEntityType')
    CredentialType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssmsap#CredentialType', name: 'CredentialType')
    Database = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#Database', name: 'Database')
    DatabaseConnection = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#DatabaseConnection', name: 'DatabaseConnection')
    DatabaseConnectionMethod = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssmsap#DatabaseConnectionMethod', name: 'DatabaseConnectionMethod')
    DatabaseId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmsap#DatabaseId', name: 'DatabaseId', traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#pattern" => "[\\w\\d]+$"})
    DatabaseIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmsap#DatabaseIdList', name: 'DatabaseIdList')
    DatabaseName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmsap#DatabaseName', name: 'DatabaseName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    DatabaseStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssmsap#DatabaseStatus', name: 'DatabaseStatus')
    DatabaseSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#DatabaseSummary', name: 'DatabaseSummary')
    DatabaseSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmsap#DatabaseSummaryList', name: 'DatabaseSummaryList')
    DatabaseType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssmsap#DatabaseType', name: 'DatabaseType')
    DeleteResourcePermissionOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#DeleteResourcePermissionOperationInput', name: 'DeleteResourcePermissionOperationInput')
    DeleteResourcePermissionOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#DeleteResourcePermissionOperationOutput', name: 'DeleteResourcePermissionOperationOutput')
    DeregisterApplicationOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#DeregisterApplicationOperationInput', name: 'DeregisterApplicationOperationInput')
    DeregisterApplicationOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#DeregisterApplicationOperationOutput', name: 'DeregisterApplicationOperationOutput')
    Filter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#Filter', name: 'Filter')
    FilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmsap#FilterList', name: 'FilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    FilterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmsap#FilterName', name: 'FilterName', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    FilterOperator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssmsap#FilterOperator', name: 'FilterOperator')
    FilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmsap#FilterValue', name: 'FilterValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    GetApplicationOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#GetApplicationOperationInput', name: 'GetApplicationOperationInput')
    GetApplicationOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#GetApplicationOperationOutput', name: 'GetApplicationOperationOutput')
    GetComponentOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#GetComponentOperationInput', name: 'GetComponentOperationInput')
    GetComponentOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#GetComponentOperationOutput', name: 'GetComponentOperationOutput')
    GetDatabaseOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#GetDatabaseOperationInput', name: 'GetDatabaseOperationInput')
    GetDatabaseOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#GetDatabaseOperationOutput', name: 'GetDatabaseOperationOutput')
    GetOperationOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#GetOperationOperationInput', name: 'GetOperationOperationInput')
    GetOperationOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#GetOperationOperationOutput', name: 'GetOperationOperationOutput')
    GetResourcePermissionOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#GetResourcePermissionOperationInput', name: 'GetResourcePermissionOperationInput')
    GetResourcePermissionOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#GetResourcePermissionOperationOutput', name: 'GetResourcePermissionOperationOutput')
    Host = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#Host', name: 'Host')
    HostList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmsap#HostList', name: 'HostList')
    HostRole = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssmsap#HostRole', name: 'HostRole')
    InstanceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmsap#InstanceId', name: 'InstanceId', traits: {"smithy.api#pattern" => "^i-[\\w\\d]{8}$|^i-[\\w\\d]{17}$"})
    InstanceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmsap#InstanceList', name: 'InstanceList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    IpAddressList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmsap#IpAddressList', name: 'IpAddressList')
    IpAddressMember = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#IpAddressMember', name: 'IpAddressMember')
    ListApplicationsOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#ListApplicationsOperationInput', name: 'ListApplicationsOperationInput')
    ListApplicationsOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#ListApplicationsOperationOutput', name: 'ListApplicationsOperationOutput')
    ListComponentsOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#ListComponentsOperationInput', name: 'ListComponentsOperationInput')
    ListComponentsOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#ListComponentsOperationOutput', name: 'ListComponentsOperationOutput')
    ListDatabasesOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#ListDatabasesOperationInput', name: 'ListDatabasesOperationInput')
    ListDatabasesOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#ListDatabasesOperationOutput', name: 'ListDatabasesOperationOutput')
    ListOperationEventsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#ListOperationEventsInput', name: 'ListOperationEventsInput')
    ListOperationEventsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#ListOperationEventsOutput', name: 'ListOperationEventsOutput')
    ListOperationsOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#ListOperationsOperationInput', name: 'ListOperationsOperationInput')
    ListOperationsOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#ListOperationsOperationOutput', name: 'ListOperationsOperationOutput')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ssmsap#MaxResults', name: 'MaxResults', traits: {"smithy.api#default" => 50, "smithy.api#range" => {"min" => 1, "max" => 50}})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmsap#NextToken', name: 'NextToken', traits: {"smithy.api#pattern" => "^.{16,1024}$"})
    Operation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#Operation', name: 'Operation')
    OperationEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#OperationEvent', name: 'OperationEvent')
    OperationEventList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmsap#OperationEventList', name: 'OperationEventList')
    OperationEventResourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmsap#OperationEventResourceType', name: 'OperationEventResourceType', traits: {"smithy.api#pattern" => "^[\\w]+::[\\w]+::[\\w]+$"})
    OperationEventStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssmsap#OperationEventStatus', name: 'OperationEventStatus')
    OperationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmsap#OperationId', name: 'OperationId', traits: {"smithy.api#pattern" => "^[{]?[0-9a-fA-F]{8}-([0-9a-fA-F]{4}-){3}[0-9a-fA-F]{12}[}]?$"})
    OperationIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmsap#OperationIdList', name: 'OperationIdList')
    OperationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmsap#OperationList', name: 'OperationList')
    OperationMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssmsap#OperationMode', name: 'OperationMode')
    OperationProperties = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.ssmsap#OperationProperties', name: 'OperationProperties', traits: {"smithy.api#sparse" => {}})
    OperationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssmsap#OperationStatus', name: 'OperationStatus')
    OperationType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmsap#OperationType', name: 'OperationType')
    PermissionActionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssmsap#PermissionActionType', name: 'PermissionActionType')
    PutResourcePermissionOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#PutResourcePermissionOperationInput', name: 'PutResourcePermissionOperationInput')
    PutResourcePermissionOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#PutResourcePermissionOperationOutput', name: 'PutResourcePermissionOperationOutput')
    RegisterApplicationOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#RegisterApplicationOperationInput', name: 'RegisterApplicationOperationInput')
    RegisterApplicationOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#RegisterApplicationOperationOutput', name: 'RegisterApplicationOperationOutput')
    ReplicationMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssmsap#ReplicationMode', name: 'ReplicationMode')
    Resilience = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#Resilience', name: 'Resilience')
    Resource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#Resource', name: 'Resource')
    ResourceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmsap#ResourceId', name: 'ResourceId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmsap#ResourceType', name: 'ResourceType', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    SAPInstanceNumber = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmsap#SAPInstanceNumber', name: 'SAPInstanceNumber', traits: {"smithy.api#pattern" => "^[0-9]{2}$"})
    SID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmsap#SID', name: 'SID', traits: {"smithy.api#pattern" => "^[A-Z][A-Z0-9]{2}$"})
    SecretId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmsap#SecretId', name: 'SecretId', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#sensitive" => {}})
    SsmSapArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmsap#SsmSapArn', name: 'SsmSapArn', traits: {"smithy.api#pattern" => "^arn:(.+:){2,4}.+$|^arn:(.+:){1,3}.+\\/.+$"})
    StartApplicationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#StartApplicationInput', name: 'StartApplicationInput')
    StartApplicationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#StartApplicationOutput', name: 'StartApplicationOutput')
    StartApplicationRefreshInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#StartApplicationRefreshInput', name: 'StartApplicationRefreshInput')
    StartApplicationRefreshOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#StartApplicationRefreshOutput', name: 'StartApplicationRefreshOutput')
    StopApplicationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#StopApplicationInput', name: 'StopApplicationInput')
    StopApplicationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#StopApplicationOutput', name: 'StopApplicationOutput')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmsap#TagKey', name: 'TagKey', traits: {"smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmsap#TagKeyList', name: 'TagKeyList')
    TagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.ssmsap#TagMap', name: 'TagMap')
    TagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmsap#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    UnauthorizedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#UnauthorizedException', name: 'UnauthorizedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UntagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateApplicationSettingsOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#UpdateApplicationSettingsOperationInput', name: 'UpdateApplicationSettingsOperationInput')
    UpdateApplicationSettingsOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#UpdateApplicationSettingsOperationOutput', name: 'UpdateApplicationSettingsOperationOutput')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmsap#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AllocationType.add_member(:vpc_subnet, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VPC_SUBNET', traits: {"smithy.api#enumValue" => "VPC_SUBNET"}))
    AllocationType.add_member(:elastic_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ELASTIC_IP', traits: {"smithy.api#enumValue" => "ELASTIC_IP"}))
    AllocationType.add_member(:overlay, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OVERLAY', traits: {"smithy.api#enumValue" => "OVERLAY"}))
    AllocationType.add_member(:unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    Application.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>"}))
    Application.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of the application.</p>"}))
    Application.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmSapArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the application.</p>"}))
    Application.add_member(:app_registry_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRegistryArn, location_name: 'AppRegistryArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Application Registry.</p>"}))
    Application.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the application.</p>"}))
    Application.add_member(:discovery_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDiscoveryStatus, location_name: 'DiscoveryStatus', traits: {"smithy.api#documentation" => "<p>The latest discovery result for the application.</p>"}))
    Application.add_member(:components, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentIdList, location_name: 'Components', traits: {"smithy.api#documentation" => "<p>The components of the application.</p>"}))
    Application.add_member(:last_updated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'LastUpdated', traits: {"smithy.api#documentation" => "<p>The time at which the application was last updated.</p>"}))
    Application.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>The status message.</p>"}))
    Application.add_member(:associated_application_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArnList, location_name: 'AssociatedApplicationArns', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Names of the associated AWS Systems Manager for SAP\n         applications.</p>"}))
    Application.type = Types::Application
    ApplicationArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SsmSapArn)
    ApplicationCredential.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseName, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>The name of the SAP HANA database.</p>", "smithy.api#required" => {}}))
    ApplicationCredential.add_member(:credential_type, Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialType, location_name: 'CredentialType', traits: {"smithy.api#documentation" => "<p>The type of the application credentials. </p>", "smithy.api#required" => {}}))
    ApplicationCredential.add_member(:secret_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretId, location_name: 'SecretId', traits: {"smithy.api#documentation" => "<p>The secret ID created in AWS Secrets Manager to store the credentials of the SAP\n         application. </p>", "smithy.api#required" => {}}))
    ApplicationCredential.type = Types::ApplicationCredential
    ApplicationCredentialList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationCredential)
    ApplicationDiscoveryStatus.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    ApplicationDiscoveryStatus.add_member(:registration_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REGISTRATION_FAILED', traits: {"smithy.api#enumValue" => "REGISTRATION_FAILED"}))
    ApplicationDiscoveryStatus.add_member(:refresh_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REFRESH_FAILED', traits: {"smithy.api#enumValue" => "REFRESH_FAILED"}))
    ApplicationDiscoveryStatus.add_member(:registering, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REGISTERING', traits: {"smithy.api#enumValue" => "REGISTERING"}))
    ApplicationDiscoveryStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ApplicationStatus.add_member(:activated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVATED', traits: {"smithy.api#enumValue" => "ACTIVATED"}))
    ApplicationStatus.add_member(:starting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTING', traits: {"smithy.api#enumValue" => "STARTING"}))
    ApplicationStatus.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "STOPPED"}))
    ApplicationStatus.add_member(:stopping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPING', traits: {"smithy.api#enumValue" => "STOPPING"}))
    ApplicationStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ApplicationStatus.add_member(:registering, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REGISTERING', traits: {"smithy.api#enumValue" => "REGISTERING"}))
    ApplicationStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ApplicationStatus.add_member(:unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    ApplicationSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>"}))
    ApplicationSummary.add_member(:discovery_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDiscoveryStatus, location_name: 'DiscoveryStatus', traits: {"smithy.api#documentation" => "<p>The status of the latest discovery.</p>"}))
    ApplicationSummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of the application.</p>"}))
    ApplicationSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmSapArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the application.</p>"}))
    ApplicationSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags on the application.</p>"}))
    ApplicationSummary.type = Types::ApplicationSummary
    ApplicationSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSummary)
    ApplicationType.add_member(:hana, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HANA', traits: {"smithy.api#enumValue" => "HANA"}))
    ApplicationType.add_member(:sap_abap, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAP_ABAP', traits: {"smithy.api#enumValue" => "SAP_ABAP"}))
    AssociatedHost.add_member(:hostname, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Hostname', traits: {"smithy.api#documentation" => "<p>The name of the host.</p>"}))
    AssociatedHost.add_member(:ec2_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Ec2InstanceId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon EC2 instance.</p>"}))
    AssociatedHost.add_member(:ip_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressList, location_name: 'IpAddresses', traits: {"smithy.api#documentation" => "<p>The IP addresses of the associated host.</p>"}))
    AssociatedHost.add_member(:os_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'OsVersion', traits: {"smithy.api#documentation" => "<p>The version of the operating system.</p>"}))
    AssociatedHost.type = Types::AssociatedHost
    BackintConfig.add_member(:backint_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: BackintMode, location_name: 'BackintMode', traits: {"smithy.api#documentation" => "<p>AWS service for your database backup.</p>", "smithy.api#required" => {}}))
    BackintConfig.add_member(:ensure_no_backup_in_process, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'EnsureNoBackupInProcess', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#required" => {}}))
    BackintConfig.type = Types::BackintConfig
    BackintMode.add_member(:aws_backup, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWSBackup', traits: {"smithy.api#enumValue" => "AWSBackup"}))
    ClusterStatus.add_member(:online, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONLINE', traits: {"smithy.api#enumValue" => "ONLINE"}))
    ClusterStatus.add_member(:standby, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDBY', traits: {"smithy.api#enumValue" => "STANDBY"}))
    ClusterStatus.add_member(:maintenance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAINTENANCE', traits: {"smithy.api#enumValue" => "MAINTENANCE"}))
    ClusterStatus.add_member(:offline, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OFFLINE', traits: {"smithy.api#enumValue" => "OFFLINE"}))
    ClusterStatus.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    Component.add_member(:component_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentId, location_name: 'ComponentId', traits: {"smithy.api#documentation" => "<p>The ID of the component.</p>"}))
    Component.add_member(:sid, Smithy::Schema::Shapes::ShapeRef.new(shape: SID, location_name: 'Sid', traits: {"smithy.api#documentation" => "<p>The SAP System Identifier of the application component.</p>"}))
    Component.add_member(:system_number, Smithy::Schema::Shapes::ShapeRef.new(shape: SAPInstanceNumber, location_name: 'SystemNumber', traits: {"smithy.api#documentation" => "<p>The SAP system number of the application component.</p>"}))
    Component.add_member(:parent_component, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentId, location_name: 'ParentComponent', traits: {"smithy.api#documentation" => "<p>The parent component of a highly available environment. For example, in a highly\n         available SAP on AWS workload, the parent component consists of the entire setup,\n         including the child components.</p>"}))
    Component.add_member(:child_components, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentIdList, location_name: 'ChildComponents', traits: {"smithy.api#documentation" => "<p>The child components of a highly available environment. For example, in a highly\n         available SAP on AWS workload, the child component consists of the primary and secondar\n         instances.</p>"}))
    Component.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>"}))
    Component.add_member(:component_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentType, location_name: 'ComponentType', traits: {"smithy.api#documentation" => "<p>The type of the component.</p>"}))
    Component.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the component.</p>\n         <ul>\n            <li>\n               <p>ACTIVATED - this status has been deprecated.</p>\n            </li>\n            <li>\n               <p>STARTING - the component is in the process of being started.</p>\n            </li>\n            <li>\n               <p>STOPPED - the component is not running.</p>\n            </li>\n            <li>\n               <p>STOPPING - the component is in the process of being stopped.</p>\n            </li>\n            <li>\n               <p>RUNNING - the component is running.</p>\n            </li>\n            <li>\n               <p>RUNNING_WITH_ERROR - one or more child component(s) of the parent component is not\n               running. Call <a href=\"https://docs.aws.amazon.com/ssmsap/latest/APIReference/API_GetComponent.html\">\n                     <code>GetComponent</code>\n                  </a> to review the status of each child\n               component.</p>\n            </li>\n            <li>\n               <p>UNDEFINED - AWS Systems Manager for SAP cannot provide the component status\n               based on the discovered information. Verify your SAP application.</p>\n            </li>\n         </ul>"}))
    Component.add_member(:sap_hostname, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'SapHostname', traits: {"smithy.api#documentation" => "<p>The hostname of the component.</p>"}))
    Component.add_member(:sap_feature, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'SapFeature', traits: {"smithy.api#documentation" => "<p>The SAP feature of the component.</p>"}))
    Component.add_member(:sap_kernel_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'SapKernelVersion', traits: {"smithy.api#documentation" => "<p>The kernel version of the component.</p>"}))
    Component.add_member(:hdb_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'HdbVersion', traits: {"smithy.api#documentation" => "<p>The SAP HANA version of the component.</p>"}))
    Component.add_member(:resilience, Smithy::Schema::Shapes::ShapeRef.new(shape: Resilience, location_name: 'Resilience', traits: {"smithy.api#documentation" => "<p>Details of the SAP HANA system replication for the component.</p>"}))
    Component.add_member(:associated_host, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedHost, location_name: 'AssociatedHost', traits: {"smithy.api#documentation" => "<p>The associated host of the component.</p>"}))
    Component.add_member(:databases, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseIdList, location_name: 'Databases', traits: {"smithy.api#documentation" => "<p>The SAP HANA databases of the component.</p>"}))
    Component.add_member(:hosts, Smithy::Schema::Shapes::ShapeRef.new(shape: HostList, location_name: 'Hosts', traits: {"smithy.api#deprecated" => {"message" => "This shape is no longer used. Please use AssociatedHost."}, "smithy.api#documentation" => "<p>The hosts of the component.</p>"}))
    Component.add_member(:primary_host, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'PrimaryHost', traits: {"smithy.api#deprecated" => {"message" => "This shape is no longer used. Please use AssociatedHost."}, "smithy.api#documentation" => "<p>The primary host of the component.</p>"}))
    Component.add_member(:database_connection, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseConnection, location_name: 'DatabaseConnection', traits: {"smithy.api#documentation" => "<p>The connection specifications for the database of the component.</p>"}))
    Component.add_member(:last_updated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'LastUpdated', traits: {"smithy.api#documentation" => "<p>The time at which the component was last updated.</p>"}))
    Component.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmSapArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the component.</p>"}))
    Component.type = Types::Component
    ComponentArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SsmSapArn)
    ComponentIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentId)
    ComponentInfo.add_member(:component_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentType, location_name: 'ComponentType', traits: {"smithy.api#documentation" => "<p>This string is the type of the component.</p>\n         <p>Accepted value is <code>WD</code>.</p>", "smithy.api#required" => {}}))
    ComponentInfo.add_member(:sid, Smithy::Schema::Shapes::ShapeRef.new(shape: SID, location_name: 'Sid', traits: {"smithy.api#documentation" => "<p>This string is the SAP System ID of the component.</p>\n         <p>Accepted values are alphanumeric.</p>", "smithy.api#required" => {}}))
    ComponentInfo.add_member(:ec2_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'Ec2InstanceId', traits: {"smithy.api#documentation" => "<p>This is the Amazon EC2 instance on which your SAP component is running.</p>\n         <p>Accepted values are alphanumeric.</p>", "smithy.api#required" => {}}))
    ComponentInfo.type = Types::ComponentInfo
    ComponentInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentInfo)
    ComponentStatus.add_member(:activated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVATED', traits: {"smithy.api#enumValue" => "ACTIVATED"}))
    ComponentStatus.add_member(:starting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTING', traits: {"smithy.api#enumValue" => "STARTING"}))
    ComponentStatus.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "STOPPED"}))
    ComponentStatus.add_member(:stopping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPING', traits: {"smithy.api#enumValue" => "STOPPING"}))
    ComponentStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    ComponentStatus.add_member(:running_with_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING_WITH_ERROR', traits: {"smithy.api#enumValue" => "RUNNING_WITH_ERROR"}))
    ComponentStatus.add_member(:undefined, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNDEFINED', traits: {"smithy.api#enumValue" => "UNDEFINED"}))
    ComponentSummary.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>"}))
    ComponentSummary.add_member(:component_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentId, location_name: 'ComponentId', traits: {"smithy.api#documentation" => "<p>The ID of the component.</p>"}))
    ComponentSummary.add_member(:component_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentType, location_name: 'ComponentType', traits: {"smithy.api#documentation" => "<p>The type of the component.</p>"}))
    ComponentSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags of the component.</p>"}))
    ComponentSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmSapArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the component summary.</p>"}))
    ComponentSummary.type = Types::ComponentSummary
    ComponentSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentSummary)
    ComponentType.add_member(:hana, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HANA', traits: {"smithy.api#enumValue" => "HANA"}))
    ComponentType.add_member(:hana_node, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HANA_NODE', traits: {"smithy.api#enumValue" => "HANA_NODE"}))
    ComponentType.add_member(:abap, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ABAP', traits: {"smithy.api#enumValue" => "ABAP"}))
    ComponentType.add_member(:ascs, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASCS', traits: {"smithy.api#enumValue" => "ASCS"}))
    ComponentType.add_member(:dialog, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIALOG', traits: {"smithy.api#enumValue" => "DIALOG"}))
    ComponentType.add_member(:webdisp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEBDISP', traits: {"smithy.api#enumValue" => "WEBDISP"}))
    ComponentType.add_member(:wd, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WD', traits: {"smithy.api#enumValue" => "WD"}))
    ComponentType.add_member(:ers, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERS', traits: {"smithy.api#enumValue" => "ERS"}))
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ConflictException.type = Types::ConflictException
    ConnectedEntityType.add_member(:dbms, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DBMS', traits: {"smithy.api#enumValue" => "DBMS"}))
    CredentialType.add_member(:admin, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADMIN', traits: {"smithy.api#enumValue" => "ADMIN"}))
    Database.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>"}))
    Database.add_member(:component_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentId, location_name: 'ComponentId', traits: {"smithy.api#documentation" => "<p>The ID of the component.</p>"}))
    Database.add_member(:credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationCredentialList, location_name: 'Credentials', traits: {"smithy.api#documentation" => "<p>The credentials of the database.</p>"}))
    Database.add_member(:database_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseId, location_name: 'DatabaseId', traits: {"smithy.api#documentation" => "<p>The ID of the SAP HANA database.</p>"}))
    Database.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>The name of the database.</p>"}))
    Database.add_member(:database_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseType, location_name: 'DatabaseType', traits: {"smithy.api#documentation" => "<p>The type of the database.</p>"}))
    Database.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmSapArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the database.</p>"}))
    Database.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the database.</p>"}))
    Database.add_member(:primary_host, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'PrimaryHost', traits: {"smithy.api#documentation" => "<p>The primary host of the database.</p>"}))
    Database.add_member(:sql_port, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'SQLPort', traits: {"smithy.api#documentation" => "<p>The SQL port of the database.</p>"}))
    Database.add_member(:last_updated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'LastUpdated', traits: {"smithy.api#documentation" => "<p>The time at which the database was last updated.</p>"}))
    Database.add_member(:connected_component_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentArnList, location_name: 'ConnectedComponentArns', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Names of the connected AWS Systems Manager for SAP\n         components.</p>"}))
    Database.type = Types::Database
    DatabaseConnection.add_member(:database_connection_method, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseConnectionMethod, location_name: 'DatabaseConnectionMethod', traits: {"smithy.api#documentation" => "<p>The method of connection.</p>"}))
    DatabaseConnection.add_member(:database_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmSapArn, location_name: 'DatabaseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name of the connected SAP HANA database.</p>"}))
    DatabaseConnection.add_member(:connection_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ConnectionIp', traits: {"smithy.api#documentation" => "<p>The IP address for connection.</p>"}))
    DatabaseConnection.type = Types::DatabaseConnection
    DatabaseConnectionMethod.add_member(:direct, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIRECT', traits: {"smithy.api#enumValue" => "DIRECT"}))
    DatabaseConnectionMethod.add_member(:overlay, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OVERLAY', traits: {"smithy.api#enumValue" => "OVERLAY"}))
    DatabaseIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseId)
    DatabaseStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    DatabaseStatus.add_member(:starting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTING', traits: {"smithy.api#enumValue" => "STARTING"}))
    DatabaseStatus.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "STOPPED"}))
    DatabaseStatus.add_member(:warning, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WARNING', traits: {"smithy.api#enumValue" => "WARNING"}))
    DatabaseStatus.add_member(:unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    DatabaseStatus.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    DatabaseSummary.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>"}))
    DatabaseSummary.add_member(:component_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentId, location_name: 'ComponentId', traits: {"smithy.api#documentation" => "<p>The ID of the component.</p>"}))
    DatabaseSummary.add_member(:database_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseId, location_name: 'DatabaseId', traits: {"smithy.api#documentation" => "<p>The ID of the database.</p>"}))
    DatabaseSummary.add_member(:database_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseType, location_name: 'DatabaseType', traits: {"smithy.api#documentation" => "<p>The type of the database.</p>"}))
    DatabaseSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmSapArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the database.</p>"}))
    DatabaseSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags of the database.</p>"}))
    DatabaseSummary.type = Types::DatabaseSummary
    DatabaseSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseSummary)
    DatabaseType.add_member(:system, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYSTEM', traits: {"smithy.api#enumValue" => "SYSTEM"}))
    DatabaseType.add_member(:tenant, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TENANT', traits: {"smithy.api#enumValue" => "TENANT"}))
    DeleteResourcePermissionOperationInput.add_member(:action_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionActionType, location_name: 'ActionType', traits: {"smithy.api#documentation" => "<p>Delete or restore the permissions on the target database.</p>"}))
    DeleteResourcePermissionOperationInput.add_member(:source_resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SourceResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the source resource.</p>"}))
    DeleteResourcePermissionOperationInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#required" => {}}))
    DeleteResourcePermissionOperationInput.type = Types::DeleteResourcePermissionOperationInput
    DeleteResourcePermissionOperationOutput.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>The policy that removes permissions on the target database.</p>"}))
    DeleteResourcePermissionOperationOutput.type = Types::DeleteResourcePermissionOperationOutput
    DeregisterApplicationOperationInput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>", "smithy.api#required" => {}}))
    DeregisterApplicationOperationInput.type = Types::DeregisterApplicationOperationInput
    DeregisterApplicationOperationOutput.type = Types::DeregisterApplicationOperationOutput
    Filter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the filter. Filter names are case-sensitive. </p>", "smithy.api#required" => {}}))
    Filter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The filter values. Filter values are case-sensitive. If you specify multiple values for\n         a filter, the values are joined with an OR, and the request returns all results that match\n         any of the specified values</p>", "smithy.api#required" => {}}))
    Filter.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterOperator, location_name: 'Operator', traits: {"smithy.api#documentation" => "<p>The operator for the filter. </p>", "smithy.api#required" => {}}))
    Filter.type = Types::Filter
    FilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Filter)
    FilterOperator.add_member(:equals, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQUALS', traits: {"smithy.api#enumValue" => "Equals"}))
    FilterOperator.add_member(:greater_than_or_equals, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GREATER_THAN_OR_EQUALS', traits: {"smithy.api#enumValue" => "GreaterThanOrEquals"}))
    FilterOperator.add_member(:less_than_or_equals, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LESS_THAN_OR_EQUALS', traits: {"smithy.api#enumValue" => "LessThanOrEquals"}))
    GetApplicationOperationInput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>"}))
    GetApplicationOperationInput.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmSapArn, location_name: 'ApplicationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the application. </p>"}))
    GetApplicationOperationInput.add_member(:app_registry_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppRegistryArn, location_name: 'AppRegistryArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the application registry.</p>"}))
    GetApplicationOperationInput.type = Types::GetApplicationOperationInput
    GetApplicationOperationOutput.add_member(:application, Smithy::Schema::Shapes::ShapeRef.new(shape: Application, location_name: 'Application', traits: {"smithy.api#documentation" => "<p>Returns all of the metadata of an application registered with AWS Systems Manager for\n         SAP.</p>"}))
    GetApplicationOperationOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags of a registered application.</p>"}))
    GetApplicationOperationOutput.type = Types::GetApplicationOperationOutput
    GetComponentOperationInput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>", "smithy.api#required" => {}}))
    GetComponentOperationInput.add_member(:component_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentId, location_name: 'ComponentId', traits: {"smithy.api#documentation" => "<p>The ID of the component.</p>", "smithy.api#required" => {}}))
    GetComponentOperationInput.type = Types::GetComponentOperationInput
    GetComponentOperationOutput.add_member(:component, Smithy::Schema::Shapes::ShapeRef.new(shape: Component, location_name: 'Component', traits: {"smithy.api#documentation" => "<p>The component of an application registered with AWS Systems Manager for SAP.</p>"}))
    GetComponentOperationOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags of a component.</p>"}))
    GetComponentOperationOutput.type = Types::GetComponentOperationOutput
    GetDatabaseOperationInput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>"}))
    GetDatabaseOperationInput.add_member(:component_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentId, location_name: 'ComponentId', traits: {"smithy.api#documentation" => "<p>The ID of the component.</p>"}))
    GetDatabaseOperationInput.add_member(:database_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseId, location_name: 'DatabaseId', traits: {"smithy.api#documentation" => "<p>The ID of the database.</p>"}))
    GetDatabaseOperationInput.add_member(:database_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmSapArn, location_name: 'DatabaseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the database.</p>"}))
    GetDatabaseOperationInput.type = Types::GetDatabaseOperationInput
    GetDatabaseOperationOutput.add_member(:database, Smithy::Schema::Shapes::ShapeRef.new(shape: Database, location_name: 'Database', traits: {"smithy.api#documentation" => "<p>The SAP HANA database of an application registered with AWS Systems Manager for\n         SAP.</p>"}))
    GetDatabaseOperationOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags of a database.</p>"}))
    GetDatabaseOperationOutput.type = Types::GetDatabaseOperationOutput
    GetOperationOperationInput.add_member(:operation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OperationId, location_name: 'OperationId', traits: {"smithy.api#documentation" => "<p>The ID of the operation.</p>", "smithy.api#required" => {}}))
    GetOperationOperationInput.type = Types::GetOperationOperationInput
    GetOperationOperationOutput.add_member(:operation, Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: 'Operation', traits: {"smithy.api#documentation" => "<p>Returns the details of an operation.</p>"}))
    GetOperationOperationOutput.type = Types::GetOperationOperationOutput
    GetResourcePermissionOperationInput.add_member(:action_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionActionType, location_name: 'ActionType', traits: {"smithy.api#documentation" => "<p/>"}))
    GetResourcePermissionOperationInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#required" => {}}))
    GetResourcePermissionOperationInput.type = Types::GetResourcePermissionOperationInput
    GetResourcePermissionOperationOutput.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p/>"}))
    GetResourcePermissionOperationOutput.type = Types::GetResourcePermissionOperationOutput
    Host.add_member(:host_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'HostName', traits: {"smithy.api#documentation" => "<p>The name of the Dedicated Host.</p>"}))
    Host.add_member(:host_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'HostIp', traits: {"smithy.api#documentation" => "<p>The IP address of the Dedicated Host. </p>"}))
    Host.add_member(:ec2_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'EC2InstanceId', traits: {"smithy.api#documentation" => "<p>The ID of Amazon EC2 instance.</p>"}))
    Host.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'InstanceId', traits: {"smithy.api#documentation" => "<p>The instance ID of the instance on the Dedicated Host.</p>"}))
    Host.add_member(:host_role, Smithy::Schema::Shapes::ShapeRef.new(shape: HostRole, location_name: 'HostRole', traits: {"smithy.api#documentation" => "<p>The role of the Dedicated Host.</p>"}))
    Host.add_member(:os_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'OsVersion', traits: {"smithy.api#documentation" => "<p>The version of the operating system.</p>"}))
    Host.type = Types::Host
    HostList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Host)
    HostRole.add_member(:leader, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LEADER', traits: {"smithy.api#enumValue" => "LEADER"}))
    HostRole.add_member(:worker, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WORKER', traits: {"smithy.api#enumValue" => "WORKER"}))
    HostRole.add_member(:standby, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDBY', traits: {"smithy.api#enumValue" => "STANDBY"}))
    HostRole.add_member(:unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    InstanceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId)
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    InternalServerException.type = Types::InternalServerException
    IpAddressList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressMember)
    IpAddressMember.add_member(:ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'IpAddress', traits: {"smithy.api#documentation" => "<p>The IP address.</p>"}))
    IpAddressMember.add_member(:primary, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'Primary', traits: {"smithy.api#documentation" => "<p>The primary IP address.</p>"}))
    IpAddressMember.add_member(:allocation_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AllocationType, location_name: 'AllocationType', traits: {"smithy.api#documentation" => "<p>The type of allocation for the IP address.</p>"}))
    IpAddressMember.type = Types::IpAddressMember
    ListApplicationsOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>"}))
    ListApplicationsOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The maximum number of results to return with a single call. To retrieve the remaining\n         results, make another call with the returned nextToken value.</p>"}))
    ListApplicationsOperationInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>The filter of name, value, and operator.</p>"}))
    ListApplicationsOperationInput.type = Types::ListApplicationsOperationInput
    ListApplicationsOperationOutput.add_member(:applications, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSummaryList, location_name: 'Applications', traits: {"smithy.api#documentation" => "<p>The applications registered with AWS Systems Manager for SAP.</p>"}))
    ListApplicationsOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results. This value is null when there are\n         no more results to return.</p>"}))
    ListApplicationsOperationOutput.type = Types::ListApplicationsOperationOutput
    ListComponentsOperationInput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>"}))
    ListComponentsOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>"}))
    ListComponentsOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The maximum number of results to return with a single call. To retrieve the remaining\n         results, make another call with the returned nextToken value.</p>\n         <p>If you do not specify a value for MaxResults, the request returns 50 items per page by\n         default.</p>"}))
    ListComponentsOperationInput.type = Types::ListComponentsOperationInput
    ListComponentsOperationOutput.add_member(:components, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentSummaryList, location_name: 'Components', traits: {"smithy.api#documentation" => "<p>List of components registered with AWS System Manager for SAP.</p>"}))
    ListComponentsOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results. This value is null when there are\n         no more results to return.</p>"}))
    ListComponentsOperationOutput.type = Types::ListComponentsOperationOutput
    ListDatabasesOperationInput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>"}))
    ListDatabasesOperationInput.add_member(:component_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentId, location_name: 'ComponentId', traits: {"smithy.api#documentation" => "<p>The ID of the component.</p>"}))
    ListDatabasesOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results. </p>"}))
    ListDatabasesOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The maximum number of results to return with a single call. To retrieve the remaining\n         results, make another call with the returned nextToken value. If you do not specify a value\n         for MaxResults, the request returns 50 items per page by default.</p>"}))
    ListDatabasesOperationInput.type = Types::ListDatabasesOperationInput
    ListDatabasesOperationOutput.add_member(:databases, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseSummaryList, location_name: 'Databases', traits: {"smithy.api#documentation" => "<p>The SAP HANA databases of an application.</p>"}))
    ListDatabasesOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results. This value is null when there are\n         no more results to return.</p>"}))
    ListDatabasesOperationOutput.type = Types::ListDatabasesOperationOutput
    ListOperationEventsInput.add_member(:operation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OperationId, location_name: 'OperationId', traits: {"smithy.api#documentation" => "<p>The ID of the operation.</p>", "smithy.api#required" => {}}))
    ListOperationEventsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The maximum number of results to return with a single call. To retrieve the remaining\n         results, make another call with the returned nextToken value.</p>\n         <p>If you do not specify a value for <code>MaxResults</code>, the request returns 50 items\n         per page by default.</p>"}))
    ListOperationEventsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results. This value is null when there are\n         no more results to return.</p>"}))
    ListOperationEventsInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>Optionally specify filters to narrow the returned operation event items.</p>\n         <p>Valid filter names include <code>status</code>, <code>resourceID</code>, and\n            <code>resourceType</code>. The valid operator for all three filters is\n            <code>Equals</code>.</p>"}))
    ListOperationEventsInput.type = Types::ListOperationEventsInput
    ListOperationEventsOutput.add_member(:operation_events, Smithy::Schema::Shapes::ShapeRef.new(shape: OperationEventList, location_name: 'OperationEvents', traits: {"smithy.api#documentation" => "<p>A returned list of operation events that meet the filter criteria.</p>"}))
    ListOperationEventsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results. This value is null when there are\n         no more results to return.</p>"}))
    ListOperationEventsOutput.type = Types::ListOperationEventsOutput
    ListOperationsOperationInput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>", "smithy.api#required" => {}}))
    ListOperationsOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The maximum number of results to return with a single call. To retrieve the remaining\n         results, make another call with the returned nextToken value. If you do not specify a value\n         for MaxResults, the request returns 50 items per page by default.</p>"}))
    ListOperationsOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results. </p>"}))
    ListOperationsOperationInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>The filters of an operation.</p>"}))
    ListOperationsOperationInput.type = Types::ListOperationsOperationInput
    ListOperationsOperationOutput.add_member(:operations, Smithy::Schema::Shapes::ShapeRef.new(shape: OperationList, location_name: 'Operations', traits: {"smithy.api#documentation" => "<p>List of operations performed by AWS Systems Manager for SAP.</p>"}))
    ListOperationsOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results. This value is null when there are\n         no more results to return.</p>"}))
    ListOperationsOperationOutput.type = Types::ListOperationsOperationOutput
    ListTagsForResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmSapArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p/>"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    Operation.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: OperationId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the operation.</p>"}))
    Operation.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: OperationType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of the operation.</p>"}))
    Operation.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OperationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the operation.</p>"}))
    Operation.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>The status message of the operation.</p>"}))
    Operation.add_member(:properties, Smithy::Schema::Shapes::ShapeRef.new(shape: OperationProperties, location_name: 'Properties', traits: {"smithy.api#documentation" => "<p>The properties of the operation.</p>"}))
    Operation.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The resource type of the operation.</p>"}))
    Operation.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The resource ID of the operation.</p>"}))
    Operation.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the operation.</p>"}))
    Operation.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The start time of the operation.</p>"}))
    Operation.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The end time of the operation.</p>"}))
    Operation.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>The time at which the operation was last updated.</p>"}))
    Operation.type = Types::Operation
    OperationEvent.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the operation event. For example, \"Stop the EC2 instance\n         i-abcdefgh987654321\".</p>"}))
    OperationEvent.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Resource, location_name: 'Resource', traits: {"smithy.api#documentation" => "<p>The resource involved in the operations event.</p>\n         <p>Contains <code>ResourceArn</code> ARN and <code>ResourceType</code>.</p>"}))
    OperationEvent.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OperationEventStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the operation event. The possible statuses are: <code>IN_PROGRESS</code>,\n            <code>COMPLETED</code>, and <code>FAILED</code>.</p>"}))
    OperationEvent.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>The status message relating to a specific operation event.</p>"}))
    OperationEvent.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'Timestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of the specified operation event.</p>"}))
    OperationEvent.type = Types::OperationEvent
    OperationEventList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OperationEvent)
    OperationEventStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    OperationEventStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    OperationEventStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    OperationIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OperationId)
    OperationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Operation)
    OperationMode.add_member(:primary, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRIMARY', traits: {"smithy.api#enumValue" => "PRIMARY"}))
    OperationMode.add_member(:logreplay, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOGREPLAY', traits: {"smithy.api#enumValue" => "LOGREPLAY"}))
    OperationMode.add_member(:delta_datashipping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELTA_DATASHIPPING', traits: {"smithy.api#enumValue" => "DELTA_DATASHIPPING"}))
    OperationMode.add_member(:logreplay_readaccess, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOGREPLAY_READACCESS', traits: {"smithy.api#enumValue" => "LOGREPLAY_READACCESS"}))
    OperationMode.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    OperationProperties.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    OperationProperties.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    OperationStatus.add_member(:inprogress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INPROGRESS', traits: {"smithy.api#enumValue" => "INPROGRESS"}))
    OperationStatus.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    OperationStatus.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    PermissionActionType.add_member(:restore, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESTORE', traits: {"smithy.api#enumValue" => "RESTORE"}))
    PutResourcePermissionOperationInput.add_member(:action_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionActionType, location_name: 'ActionType', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#required" => {}}))
    PutResourcePermissionOperationInput.add_member(:source_resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SourceResourceArn', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#required" => {}}))
    PutResourcePermissionOperationInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#required" => {}}))
    PutResourcePermissionOperationInput.type = Types::PutResourcePermissionOperationInput
    PutResourcePermissionOperationOutput.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p/>"}))
    PutResourcePermissionOperationOutput.type = Types::PutResourcePermissionOperationOutput
    RegisterApplicationOperationInput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>", "smithy.api#required" => {}}))
    RegisterApplicationOperationInput.add_member(:application_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationType, location_name: 'ApplicationType', traits: {"smithy.api#documentation" => "<p>The type of the application.</p>", "smithy.api#required" => {}}))
    RegisterApplicationOperationInput.add_member(:instances, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceList, location_name: 'Instances', traits: {"smithy.api#documentation" => "<p>The Amazon EC2 instances on which your SAP application is running.</p>", "smithy.api#required" => {}}))
    RegisterApplicationOperationInput.add_member(:sap_instance_number, Smithy::Schema::Shapes::ShapeRef.new(shape: SAPInstanceNumber, location_name: 'SapInstanceNumber', traits: {"smithy.api#documentation" => "<p>The SAP instance number of the application.</p>"}))
    RegisterApplicationOperationInput.add_member(:sid, Smithy::Schema::Shapes::ShapeRef.new(shape: SID, location_name: 'Sid', traits: {"smithy.api#documentation" => "<p>The System ID of the application.</p>"}))
    RegisterApplicationOperationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to be attached to the SAP application.</p>"}))
    RegisterApplicationOperationInput.add_member(:credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationCredentialList, location_name: 'Credentials', traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => [], "smithy.api#documentation" => "<p>The credentials of the SAP application.</p>"}))
    RegisterApplicationOperationInput.add_member(:database_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmSapArn, location_name: 'DatabaseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name of the SAP HANA database.</p>"}))
    RegisterApplicationOperationInput.add_member(:components_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentInfoList, location_name: 'ComponentsInfo', traits: {"smithy.api#documentation" => "<p>This is an optional parameter for component details \n         to which the SAP ABAP application is attached, \n         such as Web Dispatcher.</p>\n         <p>This is an array of ApplicationComponent objects. \n         You may input 0 to 5 items.</p>"}))
    RegisterApplicationOperationInput.type = Types::RegisterApplicationOperationInput
    RegisterApplicationOperationOutput.add_member(:application, Smithy::Schema::Shapes::ShapeRef.new(shape: Application, location_name: 'Application', traits: {"smithy.api#documentation" => "<p>The application registered with AWS Systems Manager for SAP.</p>"}))
    RegisterApplicationOperationOutput.add_member(:operation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OperationId, location_name: 'OperationId', traits: {"smithy.api#documentation" => "<p>The ID of the operation.</p>"}))
    RegisterApplicationOperationOutput.type = Types::RegisterApplicationOperationOutput
    ReplicationMode.add_member(:primary, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRIMARY', traits: {"smithy.api#enumValue" => "PRIMARY"}))
    ReplicationMode.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    ReplicationMode.add_member(:sync, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYNC', traits: {"smithy.api#enumValue" => "SYNC"}))
    ReplicationMode.add_member(:syncmem, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYNCMEM', traits: {"smithy.api#enumValue" => "SYNCMEM"}))
    ReplicationMode.add_member(:async, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASYNC', traits: {"smithy.api#enumValue" => "ASYNC"}))
    Resilience.add_member(:hsr_tier, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'HsrTier', traits: {"smithy.api#documentation" => "<p>The tier of the component.</p>"}))
    Resilience.add_member(:hsr_replication_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationMode, location_name: 'HsrReplicationMode', traits: {"smithy.api#documentation" => "<p>The replication mode of the component.</p>"}))
    Resilience.add_member(:hsr_operation_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: OperationMode, location_name: 'HsrOperationMode', traits: {"smithy.api#documentation" => "<p>The operation mode of the component.</p>"}))
    Resilience.add_member(:cluster_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterStatus, location_name: 'ClusterStatus', traits: {"smithy.api#documentation" => "<p>The cluster status of the component.</p>"}))
    Resilience.add_member(:enqueue_replication, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'EnqueueReplication', traits: {"smithy.api#documentation" => "<p>Indicates if or not enqueue replication is enabled for the ASCS component.</p>"}))
    Resilience.type = Types::Resilience
    Resource.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the source resource.</p>\n         <p>Example of <code>ResourceArn</code>:\n            \"<code>arn:aws:ec2:us-east-1:111111111111:instance/i-abcdefgh987654321</code>\"</p>"}))
    Resource.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: OperationEventResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The resource type.</p>\n         <p>Example of <code>ResourceType</code>: \"<code>AWS::SystemsManagerSAP::Component</code>\"\n         or \"<code>AWS::EC2::Instance</code>\".</p>"}))
    Resource.type = Types::Resource
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    StartApplicationInput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>", "smithy.api#required" => {}}))
    StartApplicationInput.type = Types::StartApplicationInput
    StartApplicationOutput.add_member(:operation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OperationId, location_name: 'OperationId', traits: {"smithy.api#documentation" => "<p>The ID of the operation.</p>"}))
    StartApplicationOutput.type = Types::StartApplicationOutput
    StartApplicationRefreshInput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>", "smithy.api#required" => {}}))
    StartApplicationRefreshInput.type = Types::StartApplicationRefreshInput
    StartApplicationRefreshOutput.add_member(:operation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OperationId, location_name: 'OperationId', traits: {"smithy.api#documentation" => "<p>The ID of the operation.</p>"}))
    StartApplicationRefreshOutput.type = Types::StartApplicationRefreshOutput
    StopApplicationInput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>", "smithy.api#required" => {}}))
    StopApplicationInput.add_member(:stop_connected_entity, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectedEntityType, location_name: 'StopConnectedEntity', traits: {"smithy.api#documentation" => "<p>Specify the <code>ConnectedEntityType</code>. Accepted type is <code>DBMS</code>.</p>\n         <p>If this parameter is included, the connected DBMS (Database Management System) will be\n         stopped.</p>"}))
    StopApplicationInput.add_member(:include_ec2_instance_shutdown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'IncludeEc2InstanceShutdown', traits: {"smithy.api#documentation" => "<p>Boolean. If included and if set to <code>True</code>, the StopApplication operation will\n         shut down the associated Amazon EC2 instance in addition to the application.</p>"}))
    StopApplicationInput.type = Types::StopApplicationInput
    StopApplicationOutput.add_member(:operation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OperationId, location_name: 'OperationId', traits: {"smithy.api#documentation" => "<p>The ID of the operation.</p>"}))
    StopApplicationOutput.type = Types::StopApplicationOutput
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmSapArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags on a resource.</p>", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    UnauthorizedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    UnauthorizedException.type = Types::UnauthorizedException
    UntagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmSapArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>Adds/updates or removes credentials for applications registered with AWS Systems\n         Manager for SAP.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateApplicationSettingsOperationInput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application.</p>", "smithy.api#required" => {}}))
    UpdateApplicationSettingsOperationInput.add_member(:credentials_to_add_or_update, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationCredentialList, location_name: 'CredentialsToAddOrUpdate', traits: {"smithy.api#documentation" => "<p>The credentials to be added or updated.</p>"}))
    UpdateApplicationSettingsOperationInput.add_member(:credentials_to_remove, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationCredentialList, location_name: 'CredentialsToRemove', traits: {"smithy.api#documentation" => "<p>The credentials to be removed.</p>"}))
    UpdateApplicationSettingsOperationInput.add_member(:backint, Smithy::Schema::Shapes::ShapeRef.new(shape: BackintConfig, location_name: 'Backint', traits: {"smithy.api#documentation" => "<p>Installation of AWS Backint Agent for SAP HANA.</p>"}))
    UpdateApplicationSettingsOperationInput.add_member(:database_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmSapArn, location_name: 'DatabaseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name of the SAP HANA database that replaces the current SAP HANA\n         connection with the SAP_ABAP application.</p>"}))
    UpdateApplicationSettingsOperationInput.type = Types::UpdateApplicationSettingsOperationInput
    UpdateApplicationSettingsOperationOutput.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The update message.</p>"}))
    UpdateApplicationSettingsOperationOutput.add_member(:operation_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: OperationIdList, location_name: 'OperationIds', traits: {"smithy.api#documentation" => "<p>The IDs of the operations.</p>"}))
    UpdateApplicationSettingsOperationOutput.type = Types::UpdateApplicationSettingsOperationOutput
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ValidationException.type = Types::ValidationException

    SsmSap = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.ssmsap#SsmSap"
      service.name = "SsmSap"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "Ssm Sap", "arnNamespace" => "ssm-sap", "cloudTrailEventSource" => "ssm-sap.amazonaws.com", "endpointPrefix" => "ssm-sap"}, "aws.auth#sigv4" => {"name" => "ssm-sap"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["content-type", "x-amz-date", "authorization", "x-api-key", "x-amz-security-token", "x-amz-content-sha256", "x-amz-user-agent"], "origin" => "*"}, "smithy.api#title" => "AWS Systems Manager for SAP"}
      service.add_operation(:delete_resource_permission, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#DeleteResourcePermission"
        operation.name = "DeleteResourcePermission"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourcePermissionOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourcePermissionOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/delete-resource-permission"}}
      end)
      service.add_operation(:deregister_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#DeregisterApplication"
        operation.name = "DeregisterApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterApplicationOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterApplicationOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/deregister-application"}}
      end)
      service.add_operation(:get_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#GetApplication"
        operation.name = "GetApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/get-application"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_component, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#GetComponent"
        operation.name = "GetComponent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetComponentOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetComponentOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/get-component"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_database, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#GetDatabase"
        operation.name = "GetDatabase"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDatabaseOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDatabaseOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/get-database"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_operation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#GetOperation"
        operation.name = "GetOperation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetOperationOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetOperationOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/get-operation"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_resource_permission, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#GetResourcePermission"
        operation.name = "GetResourcePermission"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePermissionOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePermissionOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/get-resource-permission"}}
      end)
      service.add_operation(:list_applications, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#ListApplications"
        operation.name = "ListApplications"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/list-applications"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListApplications.new
      end)
      service.add_operation(:list_components, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#ListComponents"
        operation.name = "ListComponents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListComponentsOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListComponentsOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/list-components"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListComponents.new
      end)
      service.add_operation(:list_databases, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#ListDatabases"
        operation.name = "ListDatabases"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatabasesOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatabasesOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/list-databases"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDatabases.new
      end)
      service.add_operation(:list_operation_events, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#ListOperationEvents"
        operation.name = "ListOperationEvents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOperationEventsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOperationEventsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/list-operation-events"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListOperationEvents.new
      end)
      service.add_operation(:list_operations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#ListOperations"
        operation.name = "ListOperations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOperationsOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOperationsOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/list-operations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListOperations.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:put_resource_permission, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#PutResourcePermission"
        operation.name = "PutResourcePermission"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePermissionOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePermissionOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/put-resource-permission"}}
      end)
      service.add_operation(:register_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#RegisterApplication"
        operation.name = "RegisterApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterApplicationOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterApplicationOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/register-application"}}
      end)
      service.add_operation(:start_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#StartApplication"
        operation.name = "StartApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartApplicationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartApplicationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/start-application"}}
      end)
      service.add_operation(:start_application_refresh, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#StartApplicationRefresh"
        operation.name = "StartApplicationRefresh"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartApplicationRefreshInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartApplicationRefreshOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/start-application-refresh"}}
      end)
      service.add_operation(:stop_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#StopApplication"
        operation.name = "StopApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopApplicationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopApplicationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/stop-application"}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}"}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_application_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#UpdateApplicationSettings"
        operation.name = "UpdateApplicationSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationSettingsOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationSettingsOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/update-application-settings"}}
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
