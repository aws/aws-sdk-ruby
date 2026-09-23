# frozen_string_literal: true

# This is generated code!

module Aws::SsmSap
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AllocationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssmsap#AllocationType", name: "AllocationType")
    AppRegistryArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmsap#AppRegistryArn", name: "AppRegistryArn", traits: {"smithy.api#pattern" => "^arn:aws:servicecatalog:[a-z0-9:\\/-]+$"})
    Application = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#Application", name: "Application")
    ApplicationArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmsap#ApplicationArnList", name: "ApplicationArnList")
    ApplicationCredential = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#ApplicationCredential", name: "ApplicationCredential")
    ApplicationCredentialList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmsap#ApplicationCredentialList", name: "ApplicationCredentialList", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    ApplicationDiscoveryStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssmsap#ApplicationDiscoveryStatus", name: "ApplicationDiscoveryStatus")
    ApplicationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmsap#ApplicationId", name: "ApplicationId", traits: {"smithy.api#length" => {"min" => 1, "max" => 60}, "smithy.api#pattern" => "^[\\w\\d\\.-]+$"})
    ApplicationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssmsap#ApplicationStatus", name: "ApplicationStatus")
    ApplicationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#ApplicationSummary", name: "ApplicationSummary")
    ApplicationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmsap#ApplicationSummaryList", name: "ApplicationSummaryList")
    ApplicationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssmsap#ApplicationType", name: "ApplicationType")
    ApplicationTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmsap#ApplicationTypeList", name: "ApplicationTypeList")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmsap#Arn", name: "Arn", traits: {"smithy.api#pattern" => "^arn:(.+:){2,4}.+$|^arn:(.+:){1,3}.+\\/.+$"})
    AssociatedHost = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#AssociatedHost", name: "AssociatedHost")
    BackintConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#BackintConfig", name: "BackintConfig")
    BackintMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssmsap#BackintMode", name: "BackintMode")
    ClusterStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssmsap#ClusterStatus", name: "ClusterStatus")
    Component = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#Component", name: "Component")
    ComponentArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmsap#ComponentArnList", name: "ComponentArnList")
    ComponentId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmsap#ComponentId", name: "ComponentId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[\\w\\d-]+$"})
    ComponentIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmsap#ComponentIdList", name: "ComponentIdList")
    ComponentInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#ComponentInfo", name: "ComponentInfo")
    ComponentInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmsap#ComponentInfoList", name: "ComponentInfoList", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    ComponentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssmsap#ComponentStatus", name: "ComponentStatus")
    ComponentSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#ComponentSummary", name: "ComponentSummary")
    ComponentSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmsap#ComponentSummaryList", name: "ComponentSummaryList")
    ComponentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssmsap#ComponentType", name: "ComponentType")
    ConfigurationCheckDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#ConfigurationCheckDefinition", name: "ConfigurationCheckDefinition")
    ConfigurationCheckDefinitionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmsap#ConfigurationCheckDefinitionList", name: "ConfigurationCheckDefinitionList")
    ConfigurationCheckOperation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#ConfigurationCheckOperation", name: "ConfigurationCheckOperation")
    ConfigurationCheckOperationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmsap#ConfigurationCheckOperationList", name: "ConfigurationCheckOperationList")
    ConfigurationCheckOperationListingMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssmsap#ConfigurationCheckOperationListingMode", name: "ConfigurationCheckOperationListingMode")
    ConfigurationCheckType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssmsap#ConfigurationCheckType", name: "ConfigurationCheckType")
    ConfigurationCheckTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmsap#ConfigurationCheckTypeList", name: "ConfigurationCheckTypeList")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectedEntityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssmsap#ConnectedEntityType", name: "ConnectedEntityType")
    CredentialType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssmsap#CredentialType", name: "CredentialType")
    Database = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#Database", name: "Database")
    DatabaseConnection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#DatabaseConnection", name: "DatabaseConnection")
    DatabaseConnectionMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssmsap#DatabaseConnectionMethod", name: "DatabaseConnectionMethod")
    DatabaseId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmsap#DatabaseId", name: "DatabaseId", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#pattern" => "[\\w\\d]+$"})
    DatabaseIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmsap#DatabaseIdList", name: "DatabaseIdList")
    DatabaseName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmsap#DatabaseName", name: "DatabaseName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    DatabaseStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssmsap#DatabaseStatus", name: "DatabaseStatus")
    DatabaseSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#DatabaseSummary", name: "DatabaseSummary")
    DatabaseSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmsap#DatabaseSummaryList", name: "DatabaseSummaryList")
    DatabaseType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssmsap#DatabaseType", name: "DatabaseType")
    DeleteResourcePermissionOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#DeleteResourcePermissionOperationInput", name: "DeleteResourcePermissionOperationInput")
    DeleteResourcePermissionOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#DeleteResourcePermissionOperationOutput", name: "DeleteResourcePermissionOperationOutput")
    DeregisterApplicationOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#DeregisterApplicationOperationInput", name: "DeregisterApplicationOperationInput")
    DeregisterApplicationOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#DeregisterApplicationOperationOutput", name: "DeregisterApplicationOperationOutput")
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#Filter", name: "Filter")
    FilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmsap#FilterList", name: "FilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    FilterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmsap#FilterName", name: "FilterName", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    FilterOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssmsap#FilterOperator", name: "FilterOperator")
    FilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmsap#FilterValue", name: "FilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    GetApplicationOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#GetApplicationOperationInput", name: "GetApplicationOperationInput")
    GetApplicationOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#GetApplicationOperationOutput", name: "GetApplicationOperationOutput")
    GetComponentOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#GetComponentOperationInput", name: "GetComponentOperationInput")
    GetComponentOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#GetComponentOperationOutput", name: "GetComponentOperationOutput")
    GetConfigurationCheckOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#GetConfigurationCheckOperationInput", name: "GetConfigurationCheckOperationInput")
    GetConfigurationCheckOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#GetConfigurationCheckOperationOutput", name: "GetConfigurationCheckOperationOutput")
    GetDatabaseOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#GetDatabaseOperationInput", name: "GetDatabaseOperationInput")
    GetDatabaseOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#GetDatabaseOperationOutput", name: "GetDatabaseOperationOutput")
    GetOperationOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#GetOperationOperationInput", name: "GetOperationOperationInput")
    GetOperationOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#GetOperationOperationOutput", name: "GetOperationOperationOutput")
    GetResourcePermissionOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#GetResourcePermissionOperationInput", name: "GetResourcePermissionOperationInput")
    GetResourcePermissionOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#GetResourcePermissionOperationOutput", name: "GetResourcePermissionOperationOutput")
    Host = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#Host", name: "Host")
    HostList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmsap#HostList", name: "HostList")
    HostRole = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssmsap#HostRole", name: "HostRole")
    InstanceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmsap#InstanceId", name: "InstanceId", traits: {"smithy.api#pattern" => "^i-[\\w\\d]{8}$|^i-[\\w\\d]{17}$"})
    InstanceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmsap#InstanceList", name: "InstanceList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    IpAddressList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmsap#IpAddressList", name: "IpAddressList")
    IpAddressMember = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#IpAddressMember", name: "IpAddressMember")
    ListApplicationsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#ListApplicationsOperationInput", name: "ListApplicationsOperationInput")
    ListApplicationsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#ListApplicationsOperationOutput", name: "ListApplicationsOperationOutput")
    ListComponentsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#ListComponentsOperationInput", name: "ListComponentsOperationInput")
    ListComponentsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#ListComponentsOperationOutput", name: "ListComponentsOperationOutput")
    ListConfigurationCheckDefinitionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#ListConfigurationCheckDefinitionsInput", name: "ListConfigurationCheckDefinitionsInput")
    ListConfigurationCheckDefinitionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#ListConfigurationCheckDefinitionsOutput", name: "ListConfigurationCheckDefinitionsOutput")
    ListConfigurationCheckOperationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#ListConfigurationCheckOperationsInput", name: "ListConfigurationCheckOperationsInput")
    ListConfigurationCheckOperationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#ListConfigurationCheckOperationsOutput", name: "ListConfigurationCheckOperationsOutput")
    ListDatabasesOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#ListDatabasesOperationInput", name: "ListDatabasesOperationInput")
    ListDatabasesOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#ListDatabasesOperationOutput", name: "ListDatabasesOperationOutput")
    ListOperationEventsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#ListOperationEventsInput", name: "ListOperationEventsInput")
    ListOperationEventsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#ListOperationEventsOutput", name: "ListOperationEventsOutput")
    ListOperationsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#ListOperationsOperationInput", name: "ListOperationsOperationInput")
    ListOperationsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#ListOperationsOperationOutput", name: "ListOperationsOperationOutput")
    ListSubCheckResultsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#ListSubCheckResultsInput", name: "ListSubCheckResultsInput")
    ListSubCheckResultsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#ListSubCheckResultsOutput", name: "ListSubCheckResultsOutput")
    ListSubCheckRuleResultsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#ListSubCheckRuleResultsInput", name: "ListSubCheckRuleResultsInput")
    ListSubCheckRuleResultsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#ListSubCheckRuleResultsOutput", name: "ListSubCheckRuleResultsOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssmsap#MaxResults", name: "MaxResults", traits: {"smithy.api#default" => 50, "smithy.api#range" => {"min" => 1, "max" => 50}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmsap#NextToken", name: "NextToken", traits: {"smithy.api#pattern" => "^.{16,2048}$"})
    Operation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#Operation", name: "Operation")
    OperationEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#OperationEvent", name: "OperationEvent")
    OperationEventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmsap#OperationEventList", name: "OperationEventList")
    OperationEventResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmsap#OperationEventResourceType", name: "OperationEventResourceType", traits: {"smithy.api#pattern" => "^[\\w]+::[\\w]+::[\\w]+$"})
    OperationEventStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssmsap#OperationEventStatus", name: "OperationEventStatus")
    OperationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmsap#OperationId", name: "OperationId", traits: {"smithy.api#pattern" => "^[{]?[0-9a-fA-F]{8}-([0-9a-fA-F]{4}-){3}[0-9a-fA-F]{12}[}]?$"})
    OperationIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmsap#OperationIdList", name: "OperationIdList")
    OperationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmsap#OperationList", name: "OperationList")
    OperationMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssmsap#OperationMode", name: "OperationMode")
    OperationProperties = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ssmsap#OperationProperties", name: "OperationProperties", traits: {"smithy.api#sparse" => {}})
    OperationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssmsap#OperationStatus", name: "OperationStatus")
    OperationType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmsap#OperationType", name: "OperationType")
    PermissionActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssmsap#PermissionActionType", name: "PermissionActionType")
    PutResourcePermissionOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#PutResourcePermissionOperationInput", name: "PutResourcePermissionOperationInput")
    PutResourcePermissionOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#PutResourcePermissionOperationOutput", name: "PutResourcePermissionOperationOutput")
    RegisterApplicationOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#RegisterApplicationOperationInput", name: "RegisterApplicationOperationInput")
    RegisterApplicationOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#RegisterApplicationOperationOutput", name: "RegisterApplicationOperationOutput")
    ReplicationMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssmsap#ReplicationMode", name: "ReplicationMode")
    Resilience = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#Resilience", name: "Resilience")
    Resource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#Resource", name: "Resource")
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmsap#ResourceId", name: "ResourceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmsap#ResourceType", name: "ResourceType", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    RuleResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#RuleResult", name: "RuleResult")
    RuleResultId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmsap#RuleResultId", name: "RuleResultId", traits: {"smithy.api#pattern" => "^[{]?[0-9a-fA-F]{8}-([0-9a-fA-F]{4}-){3}[0-9a-fA-F]{12}[}]?$"})
    RuleResultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmsap#RuleResultList", name: "RuleResultList")
    RuleResultMetadata = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ssmsap#RuleResultMetadata", name: "RuleResultMetadata", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    RuleResultMetadataKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmsap#RuleResultMetadataKey", name: "RuleResultMetadataKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    RuleResultMetadataValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmsap#RuleResultMetadataValue", name: "RuleResultMetadataValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    RuleResultStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssmsap#RuleResultStatus", name: "RuleResultStatus")
    RuleStatusCounts = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#RuleStatusCounts", name: "RuleStatusCounts")
    SAPInstanceNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmsap#SAPInstanceNumber", name: "SAPInstanceNumber", traits: {"smithy.api#pattern" => "^[0-9]{2}$"})
    SID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmsap#SID", name: "SID", traits: {"smithy.api#pattern" => "^[A-Z][A-Z0-9]{2}$"})
    SecretId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmsap#SecretId", name: "SecretId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#sensitive" => {}})
    SsmSapArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmsap#SsmSapArn", name: "SsmSapArn", traits: {"smithy.api#pattern" => "^arn:(.+:){2,4}.+$|^arn:(.+:){1,3}.+\\/.+$"})
    StartApplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#StartApplicationInput", name: "StartApplicationInput")
    StartApplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#StartApplicationOutput", name: "StartApplicationOutput")
    StartApplicationRefreshInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#StartApplicationRefreshInput", name: "StartApplicationRefreshInput")
    StartApplicationRefreshOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#StartApplicationRefreshOutput", name: "StartApplicationRefreshOutput")
    StartConfigurationChecksInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#StartConfigurationChecksInput", name: "StartConfigurationChecksInput")
    StartConfigurationChecksOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#StartConfigurationChecksOutput", name: "StartConfigurationChecksOutput")
    StopApplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#StopApplicationInput", name: "StopApplicationInput")
    StopApplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#StopApplicationOutput", name: "StopApplicationOutput")
    SubCheckReferencesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmsap#SubCheckReferencesList", name: "SubCheckReferencesList")
    SubCheckResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#SubCheckResult", name: "SubCheckResult")
    SubCheckResultId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmsap#SubCheckResultId", name: "SubCheckResultId", traits: {"smithy.api#pattern" => "^[{]?[0-9a-fA-F]{8}-([0-9a-fA-F]{4}-){3}[0-9a-fA-F]{12}[}]?$"})
    SubCheckResultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmsap#SubCheckResultList", name: "SubCheckResultList")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmsap#TagKey", name: "TagKey", traits: {"smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmsap#TagKeyList", name: "TagKeyList")
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ssmsap#TagMap", name: "TagMap")
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#TagResourceOutput", name: "TagResourceOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmsap#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    UnauthorizedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#UnauthorizedException", name: "UnauthorizedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#UntagResourceOutput", name: "UntagResourceOutput")
    UpdateApplicationSettingsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#UpdateApplicationSettingsOperationInput", name: "UpdateApplicationSettingsOperationInput")
    UpdateApplicationSettingsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#UpdateApplicationSettingsOperationOutput", name: "UpdateApplicationSettingsOperationOutput")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmsap#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AllocationType.add_member(:vpc_subnet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VPC_SUBNET", traits: {"smithy.api#enumValue" => "VPC_SUBNET"}))
    AllocationType.add_member(:elastic_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ELASTIC_IP", traits: {"smithy.api#enumValue" => "ELASTIC_IP"}))
    AllocationType.add_member(:overlay, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OVERLAY", traits: {"smithy.api#enumValue" => "OVERLAY"}))
    AllocationType.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN", traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    Application.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "Id"))
    Application.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationType, name: "Type"))
    Application.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmSapArn, name: "Arn"))
    Application.add_member(:app_registry_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRegistryArn, name: "AppRegistryArn"))
    Application.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationStatus, name: "Status"))
    Application.add_member(:discovery_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationDiscoveryStatus, name: "DiscoveryStatus"))
    Application.add_member(:components, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentIdList, name: "Components"))
    Application.add_member(:last_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastUpdated"))
    Application.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "StatusMessage"))
    Application.add_member(:associated_application_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArnList, name: "AssociatedApplicationArns"))
    Application.type = Types::Application
    ApplicationArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmSapArn, name: "member"))
    ApplicationCredential.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseName, name: "DatabaseName", traits: {"smithy.api#required" => {}}))
    ApplicationCredential.add_member(:credential_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialType, name: "CredentialType", traits: {"smithy.api#required" => {}}))
    ApplicationCredential.add_member(:secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretId, name: "SecretId", traits: {"smithy.api#required" => {}}))
    ApplicationCredential.type = Types::ApplicationCredential
    ApplicationCredentialList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationCredential, name: "member"))
    ApplicationDiscoveryStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    ApplicationDiscoveryStatus.add_member(:registration_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGISTRATION_FAILED", traits: {"smithy.api#enumValue" => "REGISTRATION_FAILED"}))
    ApplicationDiscoveryStatus.add_member(:refresh_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REFRESH_FAILED", traits: {"smithy.api#enumValue" => "REFRESH_FAILED"}))
    ApplicationDiscoveryStatus.add_member(:registering, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGISTERING", traits: {"smithy.api#enumValue" => "REGISTERING"}))
    ApplicationDiscoveryStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ApplicationStatus.add_member(:activated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVATED", traits: {"smithy.api#enumValue" => "ACTIVATED"}))
    ApplicationStatus.add_member(:starting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTING", traits: {"smithy.api#enumValue" => "STARTING"}))
    ApplicationStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    ApplicationStatus.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    ApplicationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ApplicationStatus.add_member(:registering, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGISTERING", traits: {"smithy.api#enumValue" => "REGISTERING"}))
    ApplicationStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ApplicationStatus.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN", traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    ApplicationSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "Id"))
    ApplicationSummary.add_member(:discovery_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationDiscoveryStatus, name: "DiscoveryStatus"))
    ApplicationSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationType, name: "Type"))
    ApplicationSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmSapArn, name: "Arn"))
    ApplicationSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    ApplicationSummary.type = Types::ApplicationSummary
    ApplicationSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSummary, name: "member"))
    ApplicationType.add_member(:hana, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HANA", traits: {"smithy.api#enumValue" => "HANA"}))
    ApplicationType.add_member(:sap_abap, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAP_ABAP", traits: {"smithy.api#enumValue" => "SAP_ABAP"}))
    ApplicationTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationType, name: "member"))
    AssociatedHost.add_member(:hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Hostname"))
    AssociatedHost.add_member(:ec2_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Ec2InstanceId"))
    AssociatedHost.add_member(:ip_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressList, name: "IpAddresses"))
    AssociatedHost.add_member(:os_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OsVersion"))
    AssociatedHost.type = Types::AssociatedHost
    BackintConfig.add_member(:backint_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: BackintMode, name: "BackintMode", traits: {"smithy.api#required" => {}}))
    BackintConfig.add_member(:ensure_no_backup_in_process, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "EnsureNoBackupInProcess", traits: {"smithy.api#required" => {}}))
    BackintConfig.type = Types::BackintConfig
    BackintMode.add_member(:aws_backup, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWSBackup", traits: {"smithy.api#enumValue" => "AWSBackup"}))
    ClusterStatus.add_member(:online, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONLINE", traits: {"smithy.api#enumValue" => "ONLINE"}))
    ClusterStatus.add_member(:standby, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDBY", traits: {"smithy.api#enumValue" => "STANDBY"}))
    ClusterStatus.add_member(:maintenance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAINTENANCE", traits: {"smithy.api#enumValue" => "MAINTENANCE"}))
    ClusterStatus.add_member(:offline, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OFFLINE", traits: {"smithy.api#enumValue" => "OFFLINE"}))
    ClusterStatus.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    Component.add_member(:component_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentId, name: "ComponentId"))
    Component.add_member(:sid, ::Smithy::Schema::Shapes::MemberShape.new(target: SID, name: "Sid"))
    Component.add_member(:system_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SAPInstanceNumber, name: "SystemNumber"))
    Component.add_member(:parent_component, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentId, name: "ParentComponent"))
    Component.add_member(:child_components, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentIdList, name: "ChildComponents"))
    Component.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationId"))
    Component.add_member(:component_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentType, name: "ComponentType"))
    Component.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentStatus, name: "Status"))
    Component.add_member(:sap_hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SapHostname"))
    Component.add_member(:sap_feature, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SapFeature"))
    Component.add_member(:sap_kernel_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SapKernelVersion"))
    Component.add_member(:hdb_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "HdbVersion"))
    Component.add_member(:resilience, ::Smithy::Schema::Shapes::MemberShape.new(target: Resilience, name: "Resilience"))
    Component.add_member(:associated_host, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedHost, name: "AssociatedHost"))
    Component.add_member(:databases, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseIdList, name: "Databases"))
    Component.add_member(:hosts, ::Smithy::Schema::Shapes::MemberShape.new(target: HostList, name: "Hosts", traits: {"smithy.api#deprecated" => {"message" => "This shape is no longer used. Please use AssociatedHost."}}))
    Component.add_member(:primary_host, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PrimaryHost", traits: {"smithy.api#deprecated" => {"message" => "This shape is no longer used. Please use AssociatedHost."}}))
    Component.add_member(:database_connection, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseConnection, name: "DatabaseConnection"))
    Component.add_member(:last_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastUpdated"))
    Component.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmSapArn, name: "Arn"))
    Component.type = Types::Component
    ComponentArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmSapArn, name: "member"))
    ComponentIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentId, name: "member"))
    ComponentInfo.add_member(:component_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentType, name: "ComponentType", traits: {"smithy.api#required" => {}}))
    ComponentInfo.add_member(:sid, ::Smithy::Schema::Shapes::MemberShape.new(target: SID, name: "Sid", traits: {"smithy.api#required" => {}}))
    ComponentInfo.add_member(:ec2_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "Ec2InstanceId", traits: {"smithy.api#required" => {}}))
    ComponentInfo.type = Types::ComponentInfo
    ComponentInfoList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentInfo, name: "member"))
    ComponentStatus.add_member(:activated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVATED", traits: {"smithy.api#enumValue" => "ACTIVATED"}))
    ComponentStatus.add_member(:starting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTING", traits: {"smithy.api#enumValue" => "STARTING"}))
    ComponentStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    ComponentStatus.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    ComponentStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    ComponentStatus.add_member(:running_with_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING_WITH_ERROR", traits: {"smithy.api#enumValue" => "RUNNING_WITH_ERROR"}))
    ComponentStatus.add_member(:undefined, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNDEFINED", traits: {"smithy.api#enumValue" => "UNDEFINED"}))
    ComponentSummary.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationId"))
    ComponentSummary.add_member(:component_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentId, name: "ComponentId"))
    ComponentSummary.add_member(:component_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentType, name: "ComponentType"))
    ComponentSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    ComponentSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmSapArn, name: "Arn"))
    ComponentSummary.type = Types::ComponentSummary
    ComponentSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentSummary, name: "member"))
    ComponentType.add_member(:hana, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HANA", traits: {"smithy.api#enumValue" => "HANA"}))
    ComponentType.add_member(:hana_node, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HANA_NODE", traits: {"smithy.api#enumValue" => "HANA_NODE"}))
    ComponentType.add_member(:abap, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ABAP", traits: {"smithy.api#enumValue" => "ABAP"}))
    ComponentType.add_member(:ascs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASCS", traits: {"smithy.api#enumValue" => "ASCS"}))
    ComponentType.add_member(:dialog, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIALOG", traits: {"smithy.api#enumValue" => "DIALOG"}))
    ComponentType.add_member(:webdisp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEBDISP", traits: {"smithy.api#enumValue" => "WEBDISP"}))
    ComponentType.add_member(:wd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WD", traits: {"smithy.api#enumValue" => "WD"}))
    ComponentType.add_member(:ers, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERS", traits: {"smithy.api#enumValue" => "ERS"}))
    ConfigurationCheckDefinition.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationCheckType, name: "Id"))
    ConfigurationCheckDefinition.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name"))
    ConfigurationCheckDefinition.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description"))
    ConfigurationCheckDefinition.add_member(:applicable_application_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationTypeList, name: "ApplicableApplicationTypes"))
    ConfigurationCheckDefinition.type = Types::ConfigurationCheckDefinition
    ConfigurationCheckDefinitionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationCheckDefinition, name: "member"))
    ConfigurationCheckOperation.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "Id"))
    ConfigurationCheckOperation.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationId"))
    ConfigurationCheckOperation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationStatus, name: "Status"))
    ConfigurationCheckOperation.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "StatusMessage"))
    ConfigurationCheckOperation.add_member(:configuration_check_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationCheckType, name: "ConfigurationCheckId"))
    ConfigurationCheckOperation.add_member(:configuration_check_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ConfigurationCheckName"))
    ConfigurationCheckOperation.add_member(:configuration_check_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ConfigurationCheckDescription"))
    ConfigurationCheckOperation.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "StartTime"))
    ConfigurationCheckOperation.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "EndTime"))
    ConfigurationCheckOperation.add_member(:rule_status_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleStatusCounts, name: "RuleStatusCounts"))
    ConfigurationCheckOperation.type = Types::ConfigurationCheckOperation
    ConfigurationCheckOperationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationCheckOperation, name: "member"))
    ConfigurationCheckOperationListingMode.add_member(:all_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL_OPERATIONS", traits: {"smithy.api#enumValue" => "ALL_OPERATIONS"}))
    ConfigurationCheckOperationListingMode.add_member(:latest_per_check, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LATEST_PER_CHECK", traits: {"smithy.api#enumValue" => "LATEST_PER_CHECK"}))
    ConfigurationCheckType.add_member(:sap_check_01, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAP_CHECK_01", traits: {"smithy.api#enumValue" => "SAP_CHECK_01"}))
    ConfigurationCheckType.add_member(:sap_check_02, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAP_CHECK_02", traits: {"smithy.api#enumValue" => "SAP_CHECK_02"}))
    ConfigurationCheckType.add_member(:sap_check_03, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAP_CHECK_03", traits: {"smithy.api#enumValue" => "SAP_CHECK_03"}))
    ConfigurationCheckTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationCheckType, name: "member"))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ConflictException.type = Types::ConflictException
    ConnectedEntityType.add_member(:dbms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DBMS", traits: {"smithy.api#enumValue" => "DBMS"}))
    CredentialType.add_member(:admin, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADMIN", traits: {"smithy.api#enumValue" => "ADMIN"}))
    Database.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationId"))
    Database.add_member(:component_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentId, name: "ComponentId"))
    Database.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationCredentialList, name: "Credentials"))
    Database.add_member(:database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseId, name: "DatabaseId"))
    Database.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "DatabaseName"))
    Database.add_member(:database_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseType, name: "DatabaseType"))
    Database.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmSapArn, name: "Arn"))
    Database.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseStatus, name: "Status"))
    Database.add_member(:primary_host, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PrimaryHost"))
    Database.add_member(:sql_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "SQLPort"))
    Database.add_member(:last_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastUpdated"))
    Database.add_member(:connected_component_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentArnList, name: "ConnectedComponentArns"))
    Database.type = Types::Database
    DatabaseConnection.add_member(:database_connection_method, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseConnectionMethod, name: "DatabaseConnectionMethod"))
    DatabaseConnection.add_member(:database_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmSapArn, name: "DatabaseArn"))
    DatabaseConnection.add_member(:connection_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ConnectionIp"))
    DatabaseConnection.type = Types::DatabaseConnection
    DatabaseConnectionMethod.add_member(:direct, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIRECT", traits: {"smithy.api#enumValue" => "DIRECT"}))
    DatabaseConnectionMethod.add_member(:overlay, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OVERLAY", traits: {"smithy.api#enumValue" => "OVERLAY"}))
    DatabaseIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseId, name: "member"))
    DatabaseStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    DatabaseStatus.add_member(:starting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTING", traits: {"smithy.api#enumValue" => "STARTING"}))
    DatabaseStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    DatabaseStatus.add_member(:warning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WARNING", traits: {"smithy.api#enumValue" => "WARNING"}))
    DatabaseStatus.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN", traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    DatabaseStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    DatabaseSummary.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationId"))
    DatabaseSummary.add_member(:component_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentId, name: "ComponentId"))
    DatabaseSummary.add_member(:database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseId, name: "DatabaseId"))
    DatabaseSummary.add_member(:database_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseType, name: "DatabaseType"))
    DatabaseSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmSapArn, name: "Arn"))
    DatabaseSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    DatabaseSummary.type = Types::DatabaseSummary
    DatabaseSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseSummary, name: "member"))
    DatabaseType.add_member(:system, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYSTEM", traits: {"smithy.api#enumValue" => "SYSTEM"}))
    DatabaseType.add_member(:tenant, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TENANT", traits: {"smithy.api#enumValue" => "TENANT"}))
    DeleteResourcePermissionOperationInput.add_member(:action_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionActionType, name: "ActionType"))
    DeleteResourcePermissionOperationInput.add_member(:source_resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SourceResourceArn"))
    DeleteResourcePermissionOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    DeleteResourcePermissionOperationInput.type = Types::DeleteResourcePermissionOperationInput
    DeleteResourcePermissionOperationOutput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Policy"))
    DeleteResourcePermissionOperationOutput.type = Types::DeleteResourcePermissionOperationOutput
    DeregisterApplicationOperationInput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationId", traits: {"smithy.api#required" => {}}))
    DeregisterApplicationOperationInput.type = Types::DeregisterApplicationOperationInput
    DeregisterApplicationOperationOutput.type = Types::DeregisterApplicationOperationOutput
    Filter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterName, name: "Name", traits: {"smithy.api#required" => {}}))
    Filter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Filter.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterOperator, name: "Operator", traits: {"smithy.api#required" => {}}))
    Filter.type = Types::Filter
    FilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, name: "member"))
    FilterOperator.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUALS", traits: {"smithy.api#enumValue" => "Equals"}))
    FilterOperator.add_member(:greater_than_or_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER_THAN_OR_EQUALS", traits: {"smithy.api#enumValue" => "GreaterThanOrEquals"}))
    FilterOperator.add_member(:less_than_or_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LESS_THAN_OR_EQUALS", traits: {"smithy.api#enumValue" => "LessThanOrEquals"}))
    GetApplicationOperationInput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationId"))
    GetApplicationOperationInput.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmSapArn, name: "ApplicationArn"))
    GetApplicationOperationInput.add_member(:app_registry_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppRegistryArn, name: "AppRegistryArn"))
    GetApplicationOperationInput.type = Types::GetApplicationOperationInput
    GetApplicationOperationOutput.add_member(:application, ::Smithy::Schema::Shapes::MemberShape.new(target: Application, name: "Application"))
    GetApplicationOperationOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    GetApplicationOperationOutput.type = Types::GetApplicationOperationOutput
    GetComponentOperationInput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationId", traits: {"smithy.api#required" => {}}))
    GetComponentOperationInput.add_member(:component_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentId, name: "ComponentId", traits: {"smithy.api#required" => {}}))
    GetComponentOperationInput.type = Types::GetComponentOperationInput
    GetComponentOperationOutput.add_member(:component, ::Smithy::Schema::Shapes::MemberShape.new(target: Component, name: "Component"))
    GetComponentOperationOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    GetComponentOperationOutput.type = Types::GetComponentOperationOutput
    GetConfigurationCheckOperationInput.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "OperationId", traits: {"smithy.api#required" => {}}))
    GetConfigurationCheckOperationInput.type = Types::GetConfigurationCheckOperationInput
    GetConfigurationCheckOperationOutput.add_member(:configuration_check_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationCheckOperation, name: "ConfigurationCheckOperation"))
    GetConfigurationCheckOperationOutput.type = Types::GetConfigurationCheckOperationOutput
    GetDatabaseOperationInput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationId"))
    GetDatabaseOperationInput.add_member(:component_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentId, name: "ComponentId"))
    GetDatabaseOperationInput.add_member(:database_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseId, name: "DatabaseId"))
    GetDatabaseOperationInput.add_member(:database_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmSapArn, name: "DatabaseArn"))
    GetDatabaseOperationInput.type = Types::GetDatabaseOperationInput
    GetDatabaseOperationOutput.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: Database, name: "Database"))
    GetDatabaseOperationOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    GetDatabaseOperationOutput.type = Types::GetDatabaseOperationOutput
    GetOperationOperationInput.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "OperationId", traits: {"smithy.api#required" => {}}))
    GetOperationOperationInput.type = Types::GetOperationOperationInput
    GetOperationOperationOutput.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: Operation, name: "Operation"))
    GetOperationOperationOutput.type = Types::GetOperationOperationOutput
    GetResourcePermissionOperationInput.add_member(:action_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionActionType, name: "ActionType"))
    GetResourcePermissionOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    GetResourcePermissionOperationInput.type = Types::GetResourcePermissionOperationInput
    GetResourcePermissionOperationOutput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Policy"))
    GetResourcePermissionOperationOutput.type = Types::GetResourcePermissionOperationOutput
    Host.add_member(:host_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "HostName"))
    Host.add_member(:host_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "HostIp"))
    Host.add_member(:ec2_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "EC2InstanceId"))
    Host.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "InstanceId"))
    Host.add_member(:host_role, ::Smithy::Schema::Shapes::MemberShape.new(target: HostRole, name: "HostRole"))
    Host.add_member(:os_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OsVersion"))
    Host.type = Types::Host
    HostList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Host, name: "member"))
    HostRole.add_member(:leader, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LEADER", traits: {"smithy.api#enumValue" => "LEADER"}))
    HostRole.add_member(:worker, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WORKER", traits: {"smithy.api#enumValue" => "WORKER"}))
    HostRole.add_member(:standby, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDBY", traits: {"smithy.api#enumValue" => "STANDBY"}))
    HostRole.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN", traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    InstanceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "member"))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    InternalServerException.type = Types::InternalServerException
    IpAddressList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressMember, name: "member"))
    IpAddressMember.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "IpAddress"))
    IpAddressMember.add_member(:primary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "Primary"))
    IpAddressMember.add_member(:allocation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationType, name: "AllocationType"))
    IpAddressMember.type = Types::IpAddressMember
    ListApplicationsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListApplicationsOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => nil}))
    ListApplicationsOperationInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    ListApplicationsOperationInput.type = Types::ListApplicationsOperationInput
    ListApplicationsOperationOutput.add_member(:applications, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSummaryList, name: "Applications"))
    ListApplicationsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListApplicationsOperationOutput.type = Types::ListApplicationsOperationOutput
    ListComponentsOperationInput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationId"))
    ListComponentsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListComponentsOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => nil}))
    ListComponentsOperationInput.type = Types::ListComponentsOperationInput
    ListComponentsOperationOutput.add_member(:components, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentSummaryList, name: "Components"))
    ListComponentsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListComponentsOperationOutput.type = Types::ListComponentsOperationOutput
    ListConfigurationCheckDefinitionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => nil}))
    ListConfigurationCheckDefinitionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListConfigurationCheckDefinitionsInput.type = Types::ListConfigurationCheckDefinitionsInput
    ListConfigurationCheckDefinitionsOutput.add_member(:configuration_checks, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationCheckDefinitionList, name: "ConfigurationChecks"))
    ListConfigurationCheckDefinitionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListConfigurationCheckDefinitionsOutput.type = Types::ListConfigurationCheckDefinitionsOutput
    ListConfigurationCheckOperationsInput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationId", traits: {"smithy.api#required" => {}}))
    ListConfigurationCheckOperationsInput.add_member(:list_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationCheckOperationListingMode, name: "ListMode", traits: {"smithy.api#default" => "LATEST_PER_CHECK"}))
    ListConfigurationCheckOperationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => nil}))
    ListConfigurationCheckOperationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListConfigurationCheckOperationsInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    ListConfigurationCheckOperationsInput.type = Types::ListConfigurationCheckOperationsInput
    ListConfigurationCheckOperationsOutput.add_member(:configuration_check_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationCheckOperationList, name: "ConfigurationCheckOperations"))
    ListConfigurationCheckOperationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListConfigurationCheckOperationsOutput.type = Types::ListConfigurationCheckOperationsOutput
    ListDatabasesOperationInput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationId"))
    ListDatabasesOperationInput.add_member(:component_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentId, name: "ComponentId"))
    ListDatabasesOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDatabasesOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => nil}))
    ListDatabasesOperationInput.type = Types::ListDatabasesOperationInput
    ListDatabasesOperationOutput.add_member(:databases, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseSummaryList, name: "Databases"))
    ListDatabasesOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDatabasesOperationOutput.type = Types::ListDatabasesOperationOutput
    ListOperationEventsInput.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "OperationId", traits: {"smithy.api#required" => {}}))
    ListOperationEventsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => nil}))
    ListOperationEventsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListOperationEventsInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    ListOperationEventsInput.type = Types::ListOperationEventsInput
    ListOperationEventsOutput.add_member(:operation_events, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationEventList, name: "OperationEvents"))
    ListOperationEventsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListOperationEventsOutput.type = Types::ListOperationEventsOutput
    ListOperationsOperationInput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationId", traits: {"smithy.api#required" => {}}))
    ListOperationsOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => nil}))
    ListOperationsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListOperationsOperationInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    ListOperationsOperationInput.type = Types::ListOperationsOperationInput
    ListOperationsOperationOutput.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationList, name: "Operations"))
    ListOperationsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListOperationsOperationOutput.type = Types::ListOperationsOperationOutput
    ListSubCheckResultsInput.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "OperationId", traits: {"smithy.api#required" => {}}))
    ListSubCheckResultsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => nil}))
    ListSubCheckResultsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListSubCheckResultsInput.type = Types::ListSubCheckResultsInput
    ListSubCheckResultsOutput.add_member(:sub_check_results, ::Smithy::Schema::Shapes::MemberShape.new(target: SubCheckResultList, name: "SubCheckResults"))
    ListSubCheckResultsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListSubCheckResultsOutput.type = Types::ListSubCheckResultsOutput
    ListSubCheckRuleResultsInput.add_member(:sub_check_result_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubCheckResultId, name: "SubCheckResultId", traits: {"smithy.api#required" => {}}))
    ListSubCheckRuleResultsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => nil}))
    ListSubCheckRuleResultsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListSubCheckRuleResultsInput.type = Types::ListSubCheckRuleResultsInput
    ListSubCheckRuleResultsOutput.add_member(:rule_results, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleResultList, name: "RuleResults"))
    ListSubCheckRuleResultsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListSubCheckRuleResultsOutput.type = Types::ListSubCheckRuleResultsOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmSapArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    Operation.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "Id"))
    Operation.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationType, name: "Type"))
    Operation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationStatus, name: "Status"))
    Operation.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "StatusMessage"))
    Operation.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationProperties, name: "Properties"))
    Operation.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    Operation.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId"))
    Operation.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn"))
    Operation.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "StartTime"))
    Operation.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "EndTime"))
    Operation.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastUpdatedTime"))
    Operation.type = Types::Operation
    OperationEvent.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description"))
    OperationEvent.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: Resource, name: "Resource"))
    OperationEvent.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationEventStatus, name: "Status"))
    OperationEvent.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "StatusMessage"))
    OperationEvent.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "Timestamp"))
    OperationEvent.type = Types::OperationEvent
    OperationEventList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationEvent, name: "member"))
    OperationEventStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    OperationEventStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    OperationEventStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    OperationIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "member"))
    OperationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Operation, name: "member"))
    OperationMode.add_member(:primary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIMARY", traits: {"smithy.api#enumValue" => "PRIMARY"}))
    OperationMode.add_member(:logreplay, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOGREPLAY", traits: {"smithy.api#enumValue" => "LOGREPLAY"}))
    OperationMode.add_member(:delta_datashipping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELTA_DATASHIPPING", traits: {"smithy.api#enumValue" => "DELTA_DATASHIPPING"}))
    OperationMode.add_member(:logreplay_readaccess, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOGREPLAY_READACCESS", traits: {"smithy.api#enumValue" => "LOGREPLAY_READACCESS"}))
    OperationMode.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    OperationProperties.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    OperationProperties.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    OperationStatus.add_member(:inprogress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INPROGRESS", traits: {"smithy.api#enumValue" => "INPROGRESS"}))
    OperationStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    OperationStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    PermissionActionType.add_member(:restore, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESTORE", traits: {"smithy.api#enumValue" => "RESTORE"}))
    PutResourcePermissionOperationInput.add_member(:action_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionActionType, name: "ActionType", traits: {"smithy.api#required" => {}}))
    PutResourcePermissionOperationInput.add_member(:source_resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SourceResourceArn", traits: {"smithy.api#required" => {}}))
    PutResourcePermissionOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    PutResourcePermissionOperationInput.type = Types::PutResourcePermissionOperationInput
    PutResourcePermissionOperationOutput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Policy"))
    PutResourcePermissionOperationOutput.type = Types::PutResourcePermissionOperationOutput
    RegisterApplicationOperationInput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationId", traits: {"smithy.api#required" => {}}))
    RegisterApplicationOperationInput.add_member(:application_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationType, name: "ApplicationType", traits: {"smithy.api#required" => {}}))
    RegisterApplicationOperationInput.add_member(:instances, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceList, name: "Instances", traits: {"smithy.api#required" => {}}))
    RegisterApplicationOperationInput.add_member(:sap_instance_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SAPInstanceNumber, name: "SapInstanceNumber"))
    RegisterApplicationOperationInput.add_member(:sid, ::Smithy::Schema::Shapes::MemberShape.new(target: SID, name: "Sid"))
    RegisterApplicationOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    RegisterApplicationOperationInput.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationCredentialList, name: "Credentials", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => []}))
    RegisterApplicationOperationInput.add_member(:database_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmSapArn, name: "DatabaseArn"))
    RegisterApplicationOperationInput.add_member(:components_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentInfoList, name: "ComponentsInfo"))
    RegisterApplicationOperationInput.type = Types::RegisterApplicationOperationInput
    RegisterApplicationOperationOutput.add_member(:application, ::Smithy::Schema::Shapes::MemberShape.new(target: Application, name: "Application"))
    RegisterApplicationOperationOutput.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "OperationId"))
    RegisterApplicationOperationOutput.type = Types::RegisterApplicationOperationOutput
    ReplicationMode.add_member(:primary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIMARY", traits: {"smithy.api#enumValue" => "PRIMARY"}))
    ReplicationMode.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    ReplicationMode.add_member(:sync, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYNC", traits: {"smithy.api#enumValue" => "SYNC"}))
    ReplicationMode.add_member(:syncmem, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYNCMEM", traits: {"smithy.api#enumValue" => "SYNCMEM"}))
    ReplicationMode.add_member(:async, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASYNC", traits: {"smithy.api#enumValue" => "ASYNC"}))
    Resilience.add_member(:hsr_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "HsrTier"))
    Resilience.add_member(:hsr_replication_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationMode, name: "HsrReplicationMode"))
    Resilience.add_member(:hsr_operation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationMode, name: "HsrOperationMode"))
    Resilience.add_member(:cluster_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterStatus, name: "ClusterStatus"))
    Resilience.add_member(:enqueue_replication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "EnqueueReplication"))
    Resilience.type = Types::Resilience
    Resource.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn"))
    Resource.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationEventResourceType, name: "ResourceType"))
    Resource.type = Types::Resource
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RuleResult.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleResultId, name: "Id"))
    RuleResult.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description"))
    RuleResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleResultStatus, name: "Status"))
    RuleResult.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    RuleResult.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleResultMetadata, name: "Metadata"))
    RuleResult.type = Types::RuleResult
    RuleResultList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleResult, name: "member"))
    RuleResultMetadata.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleResultMetadataKey, name: "key"))
    RuleResultMetadata.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleResultMetadataValue, name: "value"))
    RuleResultStatus.add_member(:passed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PASSED", traits: {"smithy.api#enumValue" => "PASSED"}))
    RuleResultStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    RuleResultStatus.add_member(:warning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WARNING", traits: {"smithy.api#enumValue" => "WARNING"}))
    RuleResultStatus.add_member(:info, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFO", traits: {"smithy.api#enumValue" => "INFO"}))
    RuleResultStatus.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN", traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    RuleStatusCounts.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "Failed"))
    RuleStatusCounts.add_member(:warning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "Warning"))
    RuleStatusCounts.add_member(:info, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "Info"))
    RuleStatusCounts.add_member(:passed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "Passed"))
    RuleStatusCounts.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "Unknown"))
    RuleStatusCounts.type = Types::RuleStatusCounts
    StartApplicationInput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationId", traits: {"smithy.api#required" => {}}))
    StartApplicationInput.type = Types::StartApplicationInput
    StartApplicationOutput.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "OperationId"))
    StartApplicationOutput.type = Types::StartApplicationOutput
    StartApplicationRefreshInput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationId", traits: {"smithy.api#required" => {}}))
    StartApplicationRefreshInput.type = Types::StartApplicationRefreshInput
    StartApplicationRefreshOutput.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "OperationId"))
    StartApplicationRefreshOutput.type = Types::StartApplicationRefreshOutput
    StartConfigurationChecksInput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationId", traits: {"smithy.api#required" => {}}))
    StartConfigurationChecksInput.add_member(:configuration_check_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationCheckTypeList, name: "ConfigurationCheckIds"))
    StartConfigurationChecksInput.type = Types::StartConfigurationChecksInput
    StartConfigurationChecksOutput.add_member(:configuration_check_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationCheckOperationList, name: "ConfigurationCheckOperations"))
    StartConfigurationChecksOutput.type = Types::StartConfigurationChecksOutput
    StopApplicationInput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationId", traits: {"smithy.api#required" => {}}))
    StopApplicationInput.add_member(:stop_connected_entity, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectedEntityType, name: "StopConnectedEntity"))
    StopApplicationInput.add_member(:include_ec2_instance_shutdown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "IncludeEc2InstanceShutdown"))
    StopApplicationInput.type = Types::StopApplicationInput
    StopApplicationOutput.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "OperationId"))
    StopApplicationOutput.type = Types::StopApplicationOutput
    SubCheckReferencesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    SubCheckResult.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubCheckResultId, name: "Id"))
    SubCheckResult.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name"))
    SubCheckResult.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description"))
    SubCheckResult.add_member(:references, ::Smithy::Schema::Shapes::MemberShape.new(target: SubCheckReferencesList, name: "References"))
    SubCheckResult.type = Types::SubCheckResult
    SubCheckResultList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SubCheckResult, name: "member"))
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmSapArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    UnauthorizedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    UnauthorizedException.type = Types::UnauthorizedException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmSapArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateApplicationSettingsOperationInput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "ApplicationId", traits: {"smithy.api#required" => {}}))
    UpdateApplicationSettingsOperationInput.add_member(:credentials_to_add_or_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationCredentialList, name: "CredentialsToAddOrUpdate"))
    UpdateApplicationSettingsOperationInput.add_member(:credentials_to_remove, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationCredentialList, name: "CredentialsToRemove"))
    UpdateApplicationSettingsOperationInput.add_member(:backint, ::Smithy::Schema::Shapes::MemberShape.new(target: BackintConfig, name: "Backint"))
    UpdateApplicationSettingsOperationInput.add_member(:database_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmSapArn, name: "DatabaseArn"))
    UpdateApplicationSettingsOperationInput.type = Types::UpdateApplicationSettingsOperationInput
    UpdateApplicationSettingsOperationOutput.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    UpdateApplicationSettingsOperationOutput.add_member(:operation_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationIdList, name: "OperationIds"))
    UpdateApplicationSettingsOperationOutput.type = Types::UpdateApplicationSettingsOperationOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ValidationException.type = Types::ValidationException

    SsmSap = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.ssmsap#SsmSap"
      service.name = "SsmSap"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "Ssm Sap", "arnNamespace" => "ssm-sap", "cloudTrailEventSource" => "ssm-sap.amazonaws.com", "endpointPrefix" => "ssm-sap"}, "aws.auth#sigv4" => {"name" => "ssm-sap"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["content-type", "x-amz-date", "authorization", "x-api-key", "x-amz-security-token", "x-amz-content-sha256", "x-amz-user-agent"], "origin" => "*"}, "smithy.api#title" => "AWS Systems Manager for SAP"}
      service.add_operation(:delete_resource_permission, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#DeleteResourcePermission"
        operation.name = "DeleteResourcePermission"
        operation.input = DeleteResourcePermissionOperationInput
        operation.output = DeleteResourcePermissionOperationOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/delete-resource-permission"}}
      end)
      service.add_operation(:deregister_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#DeregisterApplication"
        operation.name = "DeregisterApplication"
        operation.input = DeregisterApplicationOperationInput
        operation.output = DeregisterApplicationOperationOutput
        operation.errors << InternalServerException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/deregister-application"}}
      end)
      service.add_operation(:get_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#GetApplication"
        operation.name = "GetApplication"
        operation.input = GetApplicationOperationInput
        operation.output = GetApplicationOperationOutput
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/get-application"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_component, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#GetComponent"
        operation.name = "GetComponent"
        operation.input = GetComponentOperationInput
        operation.output = GetComponentOperationOutput
        operation.errors << InternalServerException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/get-component"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_configuration_check_operation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#GetConfigurationCheckOperation"
        operation.name = "GetConfigurationCheckOperation"
        operation.input = GetConfigurationCheckOperationInput
        operation.output = GetConfigurationCheckOperationOutput
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/get-configuration-check-operation"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_database, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#GetDatabase"
        operation.name = "GetDatabase"
        operation.input = GetDatabaseOperationInput
        operation.output = GetDatabaseOperationOutput
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/get-database"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_operation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#GetOperation"
        operation.name = "GetOperation"
        operation.input = GetOperationOperationInput
        operation.output = GetOperationOperationOutput
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/get-operation"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_resource_permission, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#GetResourcePermission"
        operation.name = "GetResourcePermission"
        operation.input = GetResourcePermissionOperationInput
        operation.output = GetResourcePermissionOperationOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/get-resource-permission"}}
      end)
      service.add_operation(:list_applications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#ListApplications"
        operation.name = "ListApplications"
        operation.input = ListApplicationsOperationInput
        operation.output = ListApplicationsOperationOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/list-applications"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListApplications.new
      end)
      service.add_operation(:list_components, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#ListComponents"
        operation.name = "ListComponents"
        operation.input = ListComponentsOperationInput
        operation.output = ListComponentsOperationOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/list-components"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListComponents.new
      end)
      service.add_operation(:list_configuration_check_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#ListConfigurationCheckDefinitions"
        operation.name = "ListConfigurationCheckDefinitions"
        operation.input = ListConfigurationCheckDefinitionsInput
        operation.output = ListConfigurationCheckDefinitionsOutput
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/list-configuration-check-definitions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListConfigurationCheckDefinitions.new
      end)
      service.add_operation(:list_configuration_check_operations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#ListConfigurationCheckOperations"
        operation.name = "ListConfigurationCheckOperations"
        operation.input = ListConfigurationCheckOperationsInput
        operation.output = ListConfigurationCheckOperationsOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/list-configuration-check-operations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListConfigurationCheckOperations.new
      end)
      service.add_operation(:list_databases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#ListDatabases"
        operation.name = "ListDatabases"
        operation.input = ListDatabasesOperationInput
        operation.output = ListDatabasesOperationOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/list-databases"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDatabases.new
      end)
      service.add_operation(:list_operation_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#ListOperationEvents"
        operation.name = "ListOperationEvents"
        operation.input = ListOperationEventsInput
        operation.output = ListOperationEventsOutput
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/list-operation-events"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListOperationEvents.new
      end)
      service.add_operation(:list_operations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#ListOperations"
        operation.name = "ListOperations"
        operation.input = ListOperationsOperationInput
        operation.output = ListOperationsOperationOutput
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/list-operations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListOperations.new
      end)
      service.add_operation(:list_sub_check_results, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#ListSubCheckResults"
        operation.name = "ListSubCheckResults"
        operation.input = ListSubCheckResultsInput
        operation.output = ListSubCheckResultsOutput
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/list-sub-check-results"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSubCheckResults.new
      end)
      service.add_operation(:list_sub_check_rule_results, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#ListSubCheckRuleResults"
        operation.name = "ListSubCheckRuleResults"
        operation.input = ListSubCheckRuleResultsInput
        operation.output = ListSubCheckRuleResultsOutput
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/list-sub-check-rule-results"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSubCheckRuleResults.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:put_resource_permission, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#PutResourcePermission"
        operation.name = "PutResourcePermission"
        operation.input = PutResourcePermissionOperationInput
        operation.output = PutResourcePermissionOperationOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/put-resource-permission"}}
      end)
      service.add_operation(:register_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#RegisterApplication"
        operation.name = "RegisterApplication"
        operation.input = RegisterApplicationOperationInput
        operation.output = RegisterApplicationOperationOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/register-application"}}
      end)
      service.add_operation(:start_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#StartApplication"
        operation.name = "StartApplication"
        operation.input = StartApplicationInput
        operation.output = StartApplicationOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/start-application"}}
      end)
      service.add_operation(:start_application_refresh, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#StartApplicationRefresh"
        operation.name = "StartApplicationRefresh"
        operation.input = StartApplicationRefreshInput
        operation.output = StartApplicationRefreshOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/start-application-refresh"}}
      end)
      service.add_operation(:start_configuration_checks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#StartConfigurationChecks"
        operation.name = "StartConfigurationChecks"
        operation.input = StartConfigurationChecksInput
        operation.output = StartConfigurationChecksOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/start-configuration-checks"}}
      end)
      service.add_operation(:stop_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#StopApplication"
        operation.name = "StopApplication"
        operation.input = StopApplicationInput
        operation.output = StopApplicationOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/stop-application"}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_application_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmsap#UpdateApplicationSettings"
        operation.name = "UpdateApplicationSettings"
        operation.input = UpdateApplicationSettingsOperationInput
        operation.output = UpdateApplicationSettingsOperationOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/update-application-settings"}}
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
