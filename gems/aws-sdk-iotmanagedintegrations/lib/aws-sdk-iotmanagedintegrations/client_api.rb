# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::IoTManagedIntegrations
  # @api private
  module ClientApi

    include Seahorse::Model

    AbortConfigCriteria = Shapes::StructureShape.new(name: 'AbortConfigCriteria')
    AbortConfigCriteriaList = Shapes::ListShape.new(name: 'AbortConfigCriteriaList')
    AbortCriteriaAction = Shapes::StringShape.new(name: 'AbortCriteriaAction')
    AbortCriteriaFailureType = Shapes::StringShape.new(name: 'AbortCriteriaFailureType')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ActionName = Shapes::StringShape.new(name: 'ActionName')
    ActionReference = Shapes::StringShape.new(name: 'ActionReference')
    ActionTraceId = Shapes::StringShape.new(name: 'ActionTraceId')
    AdvertisedProductId = Shapes::StringShape.new(name: 'AdvertisedProductId')
    AttributeName = Shapes::StringShape.new(name: 'AttributeName')
    AttributeValue = Shapes::StringShape.new(name: 'AttributeValue')
    AuthMaterialString = Shapes::StringShape.new(name: 'AuthMaterialString')
    AuthMaterialType = Shapes::StringShape.new(name: 'AuthMaterialType')
    BaseRatePerMinute = Shapes::IntegerShape.new(name: 'BaseRatePerMinute')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    Brand = Shapes::StringShape.new(name: 'Brand')
    CaCertificate = Shapes::StringShape.new(name: 'CaCertificate')
    Capabilities = Shapes::StringShape.new(name: 'Capabilities')
    CapabilityAction = Shapes::StructureShape.new(name: 'CapabilityAction')
    CapabilityActionName = Shapes::StringShape.new(name: 'CapabilityActionName')
    CapabilityActions = Shapes::ListShape.new(name: 'CapabilityActions')
    CapabilityId = Shapes::StringShape.new(name: 'CapabilityId')
    CapabilityName = Shapes::StringShape.new(name: 'CapabilityName')
    CapabilityProperties = Shapes::DocumentShape.new(name: 'CapabilityProperties', document: true)
    CapabilityReport = Shapes::StructureShape.new(name: 'CapabilityReport')
    CapabilityReportActions = Shapes::ListShape.new(name: 'CapabilityReportActions')
    CapabilityReportCapabilities = Shapes::ListShape.new(name: 'CapabilityReportCapabilities')
    CapabilityReportCapability = Shapes::StructureShape.new(name: 'CapabilityReportCapability')
    CapabilityReportEndpoint = Shapes::StructureShape.new(name: 'CapabilityReportEndpoint')
    CapabilityReportEndpoints = Shapes::ListShape.new(name: 'CapabilityReportEndpoints')
    CapabilityReportEvents = Shapes::ListShape.new(name: 'CapabilityReportEvents')
    CapabilityReportProperties = Shapes::ListShape.new(name: 'CapabilityReportProperties')
    CapabilityReportVersion = Shapes::StringShape.new(name: 'CapabilityReportVersion')
    CapabilityVersion = Shapes::StringShape.new(name: 'CapabilityVersion')
    ClaimCertificate = Shapes::StringShape.new(name: 'ClaimCertificate')
    ClaimCertificatePrivateKey = Shapes::StringShape.new(name: 'ClaimCertificatePrivateKey')
    Classification = Shapes::StringShape.new(name: 'Classification')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CommandCapabilities = Shapes::ListShape.new(name: 'CommandCapabilities')
    CommandCapability = Shapes::StructureShape.new(name: 'CommandCapability')
    CommandEndpoint = Shapes::StructureShape.new(name: 'CommandEndpoint')
    CommandEndpoints = Shapes::ListShape.new(name: 'CommandEndpoints')
    ConfigurationError = Shapes::StructureShape.new(name: 'ConfigurationError')
    ConfigurationErrorCode = Shapes::StringShape.new(name: 'ConfigurationErrorCode')
    ConfigurationErrorMessage = Shapes::StringShape.new(name: 'ConfigurationErrorMessage')
    ConfigurationState = Shapes::StringShape.new(name: 'ConfigurationState')
    ConfigurationStatus = Shapes::StructureShape.new(name: 'ConfigurationStatus')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConnectivityStatus = Shapes::BooleanShape.new(name: 'ConnectivityStatus')
    ConnectivityTimestamp = Shapes::TimestampShape.new(name: 'ConnectivityTimestamp')
    ConnectorAssociationId = Shapes::StringShape.new(name: 'ConnectorAssociationId')
    ConnectorDeviceId = Shapes::StringShape.new(name: 'ConnectorDeviceId')
    ConnectorPolicyId = Shapes::StringShape.new(name: 'ConnectorPolicyId')
    CreateCredentialLockerRequest = Shapes::StructureShape.new(name: 'CreateCredentialLockerRequest')
    CreateCredentialLockerResponse = Shapes::StructureShape.new(name: 'CreateCredentialLockerResponse')
    CreateDestinationRequest = Shapes::StructureShape.new(name: 'CreateDestinationRequest')
    CreateDestinationResponse = Shapes::StructureShape.new(name: 'CreateDestinationResponse')
    CreateEventLogConfigurationRequest = Shapes::StructureShape.new(name: 'CreateEventLogConfigurationRequest')
    CreateEventLogConfigurationResponse = Shapes::StructureShape.new(name: 'CreateEventLogConfigurationResponse')
    CreateManagedThingRequest = Shapes::StructureShape.new(name: 'CreateManagedThingRequest')
    CreateManagedThingResponse = Shapes::StructureShape.new(name: 'CreateManagedThingResponse')
    CreateNotificationConfigurationRequest = Shapes::StructureShape.new(name: 'CreateNotificationConfigurationRequest')
    CreateNotificationConfigurationResponse = Shapes::StructureShape.new(name: 'CreateNotificationConfigurationResponse')
    CreateOtaTaskConfigurationRequest = Shapes::StructureShape.new(name: 'CreateOtaTaskConfigurationRequest')
    CreateOtaTaskConfigurationResponse = Shapes::StructureShape.new(name: 'CreateOtaTaskConfigurationResponse')
    CreateOtaTaskRequest = Shapes::StructureShape.new(name: 'CreateOtaTaskRequest')
    CreateOtaTaskResponse = Shapes::StructureShape.new(name: 'CreateOtaTaskResponse')
    CreateProvisioningProfileRequest = Shapes::StructureShape.new(name: 'CreateProvisioningProfileRequest')
    CreateProvisioningProfileResponse = Shapes::StructureShape.new(name: 'CreateProvisioningProfileResponse')
    CreatedAt = Shapes::TimestampShape.new(name: 'CreatedAt')
    CredentialLockerArn = Shapes::StringShape.new(name: 'CredentialLockerArn')
    CredentialLockerCreatedAt = Shapes::TimestampShape.new(name: 'CredentialLockerCreatedAt')
    CredentialLockerId = Shapes::StringShape.new(name: 'CredentialLockerId')
    CredentialLockerListDefinition = Shapes::ListShape.new(name: 'CredentialLockerListDefinition')
    CredentialLockerName = Shapes::StringShape.new(name: 'CredentialLockerName')
    CredentialLockerSummary = Shapes::StructureShape.new(name: 'CredentialLockerSummary')
    DeleteCredentialLockerRequest = Shapes::StructureShape.new(name: 'DeleteCredentialLockerRequest')
    DeleteDestinationRequest = Shapes::StructureShape.new(name: 'DeleteDestinationRequest')
    DeleteEventLogConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteEventLogConfigurationRequest')
    DeleteLocalStoreAfterUpload = Shapes::BooleanShape.new(name: 'DeleteLocalStoreAfterUpload')
    DeleteManagedThingRequest = Shapes::StructureShape.new(name: 'DeleteManagedThingRequest')
    DeleteNotificationConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteNotificationConfigurationRequest')
    DeleteOtaTaskConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteOtaTaskConfigurationRequest')
    DeleteOtaTaskRequest = Shapes::StructureShape.new(name: 'DeleteOtaTaskRequest')
    DeleteProvisioningProfileRequest = Shapes::StructureShape.new(name: 'DeleteProvisioningProfileRequest')
    DeliveryDestinationArn = Shapes::StringShape.new(name: 'DeliveryDestinationArn')
    DeliveryDestinationRoleArn = Shapes::StringShape.new(name: 'DeliveryDestinationRoleArn')
    DeliveryDestinationType = Shapes::StringShape.new(name: 'DeliveryDestinationType')
    DestinationCreatedAt = Shapes::TimestampShape.new(name: 'DestinationCreatedAt')
    DestinationDescription = Shapes::StringShape.new(name: 'DestinationDescription')
    DestinationListDefinition = Shapes::ListShape.new(name: 'DestinationListDefinition')
    DestinationName = Shapes::StringShape.new(name: 'DestinationName')
    DestinationSummary = Shapes::StructureShape.new(name: 'DestinationSummary')
    DestinationUpdatedAt = Shapes::TimestampShape.new(name: 'DestinationUpdatedAt')
    DeviceDiscoveryArn = Shapes::StringShape.new(name: 'DeviceDiscoveryArn')
    DeviceDiscoveryId = Shapes::StringShape.new(name: 'DeviceDiscoveryId')
    DeviceDiscoveryStatus = Shapes::StringShape.new(name: 'DeviceDiscoveryStatus')
    DeviceSpecificKey = Shapes::StringShape.new(name: 'DeviceSpecificKey')
    DeviceType = Shapes::StringShape.new(name: 'DeviceType')
    DeviceTypes = Shapes::ListShape.new(name: 'DeviceTypes')
    DisconnectReasonValue = Shapes::StringShape.new(name: 'DisconnectReasonValue')
    DiscoveryAuthMaterialString = Shapes::StringShape.new(name: 'DiscoveryAuthMaterialString')
    DiscoveryAuthMaterialType = Shapes::StringShape.new(name: 'DiscoveryAuthMaterialType')
    DiscoveryFinishedAt = Shapes::TimestampShape.new(name: 'DiscoveryFinishedAt')
    DiscoveryStartedAt = Shapes::TimestampShape.new(name: 'DiscoveryStartedAt')
    DiscoveryType = Shapes::StringShape.new(name: 'DiscoveryType')
    DurationInMinutes = Shapes::IntegerShape.new(name: 'DurationInMinutes')
    EncryptionType = Shapes::StringShape.new(name: 'EncryptionType')
    EndTime = Shapes::StringShape.new(name: 'EndTime')
    EndpointAddress = Shapes::StringShape.new(name: 'EndpointAddress')
    EndpointId = Shapes::StringShape.new(name: 'EndpointId')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    EventLogConfigurationListDefinition = Shapes::ListShape.new(name: 'EventLogConfigurationListDefinition')
    EventLogConfigurationSummary = Shapes::StructureShape.new(name: 'EventLogConfigurationSummary')
    EventName = Shapes::StringShape.new(name: 'EventName')
    EventType = Shapes::StringShape.new(name: 'EventType')
    ExecutionNumber = Shapes::IntegerShape.new(name: 'ExecutionNumber')
    ExponentialRolloutRate = Shapes::StructureShape.new(name: 'ExponentialRolloutRate')
    GetCredentialLockerRequest = Shapes::StructureShape.new(name: 'GetCredentialLockerRequest')
    GetCredentialLockerResponse = Shapes::StructureShape.new(name: 'GetCredentialLockerResponse')
    GetCustomEndpointRequest = Shapes::StructureShape.new(name: 'GetCustomEndpointRequest')
    GetCustomEndpointResponse = Shapes::StructureShape.new(name: 'GetCustomEndpointResponse')
    GetDefaultEncryptionConfigurationRequest = Shapes::StructureShape.new(name: 'GetDefaultEncryptionConfigurationRequest')
    GetDefaultEncryptionConfigurationResponse = Shapes::StructureShape.new(name: 'GetDefaultEncryptionConfigurationResponse')
    GetDestinationRequest = Shapes::StructureShape.new(name: 'GetDestinationRequest')
    GetDestinationResponse = Shapes::StructureShape.new(name: 'GetDestinationResponse')
    GetDeviceDiscoveryRequest = Shapes::StructureShape.new(name: 'GetDeviceDiscoveryRequest')
    GetDeviceDiscoveryResponse = Shapes::StructureShape.new(name: 'GetDeviceDiscoveryResponse')
    GetEventLogConfigurationRequest = Shapes::StructureShape.new(name: 'GetEventLogConfigurationRequest')
    GetEventLogConfigurationResponse = Shapes::StructureShape.new(name: 'GetEventLogConfigurationResponse')
    GetHubConfigurationRequest = Shapes::StructureShape.new(name: 'GetHubConfigurationRequest')
    GetHubConfigurationResponse = Shapes::StructureShape.new(name: 'GetHubConfigurationResponse')
    GetManagedThingCapabilitiesRequest = Shapes::StructureShape.new(name: 'GetManagedThingCapabilitiesRequest')
    GetManagedThingCapabilitiesResponse = Shapes::StructureShape.new(name: 'GetManagedThingCapabilitiesResponse')
    GetManagedThingConnectivityDataRequest = Shapes::StructureShape.new(name: 'GetManagedThingConnectivityDataRequest')
    GetManagedThingConnectivityDataResponse = Shapes::StructureShape.new(name: 'GetManagedThingConnectivityDataResponse')
    GetManagedThingMetaDataRequest = Shapes::StructureShape.new(name: 'GetManagedThingMetaDataRequest')
    GetManagedThingMetaDataResponse = Shapes::StructureShape.new(name: 'GetManagedThingMetaDataResponse')
    GetManagedThingRequest = Shapes::StructureShape.new(name: 'GetManagedThingRequest')
    GetManagedThingResponse = Shapes::StructureShape.new(name: 'GetManagedThingResponse')
    GetManagedThingStateRequest = Shapes::StructureShape.new(name: 'GetManagedThingStateRequest')
    GetManagedThingStateResponse = Shapes::StructureShape.new(name: 'GetManagedThingStateResponse')
    GetNotificationConfigurationRequest = Shapes::StructureShape.new(name: 'GetNotificationConfigurationRequest')
    GetNotificationConfigurationResponse = Shapes::StructureShape.new(name: 'GetNotificationConfigurationResponse')
    GetOtaTaskConfigurationRequest = Shapes::StructureShape.new(name: 'GetOtaTaskConfigurationRequest')
    GetOtaTaskConfigurationResponse = Shapes::StructureShape.new(name: 'GetOtaTaskConfigurationResponse')
    GetOtaTaskRequest = Shapes::StructureShape.new(name: 'GetOtaTaskRequest')
    GetOtaTaskResponse = Shapes::StructureShape.new(name: 'GetOtaTaskResponse')
    GetProvisioningProfileRequest = Shapes::StructureShape.new(name: 'GetProvisioningProfileRequest')
    GetProvisioningProfileResponse = Shapes::StructureShape.new(name: 'GetProvisioningProfileResponse')
    GetRuntimeLogConfigurationRequest = Shapes::StructureShape.new(name: 'GetRuntimeLogConfigurationRequest')
    GetRuntimeLogConfigurationResponse = Shapes::StructureShape.new(name: 'GetRuntimeLogConfigurationResponse')
    GetSchemaVersionRequest = Shapes::StructureShape.new(name: 'GetSchemaVersionRequest')
    GetSchemaVersionResponse = Shapes::StructureShape.new(name: 'GetSchemaVersionResponse')
    HubConfigurationUpdatedAt = Shapes::TimestampShape.new(name: 'HubConfigurationUpdatedAt')
    HubNetworkMode = Shapes::StringShape.new(name: 'HubNetworkMode')
    HubTokenTimerExpirySettingInSeconds = Shapes::IntegerShape.new(name: 'HubTokenTimerExpirySettingInSeconds')
    InProgressTimeoutInMinutes = Shapes::IntegerShape.new(name: 'InProgressTimeoutInMinutes')
    IncrementFactor = Shapes::FloatShape.new(name: 'IncrementFactor')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalFailureException = Shapes::StructureShape.new(name: 'InternalFailureException')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InternationalArticleNumber = Shapes::StringShape.new(name: 'InternationalArticleNumber')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    LastUpdatedAt = Shapes::TimestampShape.new(name: 'LastUpdatedAt')
    ListCredentialLockersRequest = Shapes::StructureShape.new(name: 'ListCredentialLockersRequest')
    ListCredentialLockersResponse = Shapes::StructureShape.new(name: 'ListCredentialLockersResponse')
    ListDestinationsRequest = Shapes::StructureShape.new(name: 'ListDestinationsRequest')
    ListDestinationsResponse = Shapes::StructureShape.new(name: 'ListDestinationsResponse')
    ListEventLogConfigurationsRequest = Shapes::StructureShape.new(name: 'ListEventLogConfigurationsRequest')
    ListEventLogConfigurationsResponse = Shapes::StructureShape.new(name: 'ListEventLogConfigurationsResponse')
    ListManagedThingSchemasRequest = Shapes::StructureShape.new(name: 'ListManagedThingSchemasRequest')
    ListManagedThingSchemasResponse = Shapes::StructureShape.new(name: 'ListManagedThingSchemasResponse')
    ListManagedThingsRequest = Shapes::StructureShape.new(name: 'ListManagedThingsRequest')
    ListManagedThingsResponse = Shapes::StructureShape.new(name: 'ListManagedThingsResponse')
    ListNotificationConfigurationsRequest = Shapes::StructureShape.new(name: 'ListNotificationConfigurationsRequest')
    ListNotificationConfigurationsResponse = Shapes::StructureShape.new(name: 'ListNotificationConfigurationsResponse')
    ListOtaTaskConfigurationsRequest = Shapes::StructureShape.new(name: 'ListOtaTaskConfigurationsRequest')
    ListOtaTaskConfigurationsResponse = Shapes::StructureShape.new(name: 'ListOtaTaskConfigurationsResponse')
    ListOtaTaskExecutionsRequest = Shapes::StructureShape.new(name: 'ListOtaTaskExecutionsRequest')
    ListOtaTaskExecutionsResponse = Shapes::StructureShape.new(name: 'ListOtaTaskExecutionsResponse')
    ListOtaTasksRequest = Shapes::StructureShape.new(name: 'ListOtaTasksRequest')
    ListOtaTasksResponse = Shapes::StructureShape.new(name: 'ListOtaTasksResponse')
    ListProvisioningProfilesRequest = Shapes::StructureShape.new(name: 'ListProvisioningProfilesRequest')
    ListProvisioningProfilesResponse = Shapes::StructureShape.new(name: 'ListProvisioningProfilesResponse')
    ListSchemaVersionsRequest = Shapes::StructureShape.new(name: 'ListSchemaVersionsRequest')
    ListSchemaVersionsResponse = Shapes::StructureShape.new(name: 'ListSchemaVersionsResponse')
    LocalStoreFileRotationMaxBytes = Shapes::IntegerShape.new(name: 'LocalStoreFileRotationMaxBytes')
    LocalStoreFileRotationMaxFiles = Shapes::IntegerShape.new(name: 'LocalStoreFileRotationMaxFiles')
    LocalStoreLocation = Shapes::StringShape.new(name: 'LocalStoreLocation')
    LogConfigurationId = Shapes::StringShape.new(name: 'LogConfigurationId')
    LogLevel = Shapes::StringShape.new(name: 'LogLevel')
    MacAddress = Shapes::StringShape.new(name: 'MacAddress')
    ManagedThingArn = Shapes::StringShape.new(name: 'ManagedThingArn')
    ManagedThingId = Shapes::StringShape.new(name: 'ManagedThingId')
    ManagedThingListDefinition = Shapes::ListShape.new(name: 'ManagedThingListDefinition')
    ManagedThingSchemaListDefinition = Shapes::ListShape.new(name: 'ManagedThingSchemaListDefinition')
    ManagedThingSchemaListItem = Shapes::StructureShape.new(name: 'ManagedThingSchemaListItem')
    ManagedThingSummary = Shapes::StructureShape.new(name: 'ManagedThingSummary')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaximumPerMinute = Shapes::IntegerShape.new(name: 'MaximumPerMinute')
    MetaData = Shapes::MapShape.new(name: 'MetaData')
    MinNumberOfExecutedThings = Shapes::IntegerShape.new(name: 'MinNumberOfExecutedThings')
    MinNumberOfRetries = Shapes::IntegerShape.new(name: 'MinNumberOfRetries')
    Model = Shapes::StringShape.new(name: 'Model')
    Name = Shapes::StringShape.new(name: 'Name')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NodeId = Shapes::StringShape.new(name: 'NodeId')
    NotificationConfigurationCreatedAt = Shapes::TimestampShape.new(name: 'NotificationConfigurationCreatedAt')
    NotificationConfigurationListDefinition = Shapes::ListShape.new(name: 'NotificationConfigurationListDefinition')
    NotificationConfigurationSummary = Shapes::StructureShape.new(name: 'NotificationConfigurationSummary')
    NotificationConfigurationUpdatedAt = Shapes::TimestampShape.new(name: 'NotificationConfigurationUpdatedAt')
    NumberOfNotifiedThings = Shapes::IntegerShape.new(name: 'NumberOfNotifiedThings')
    NumberOfSucceededThings = Shapes::IntegerShape.new(name: 'NumberOfSucceededThings')
    OtaDescription = Shapes::StringShape.new(name: 'OtaDescription')
    OtaMechanism = Shapes::StringShape.new(name: 'OtaMechanism')
    OtaNextToken = Shapes::StringShape.new(name: 'OtaNextToken')
    OtaProtocol = Shapes::StringShape.new(name: 'OtaProtocol')
    OtaStatus = Shapes::StringShape.new(name: 'OtaStatus')
    OtaTargetQueryString = Shapes::StringShape.new(name: 'OtaTargetQueryString')
    OtaTaskAbortConfig = Shapes::StructureShape.new(name: 'OtaTaskAbortConfig')
    OtaTaskArn = Shapes::StringShape.new(name: 'OtaTaskArn')
    OtaTaskConfigurationId = Shapes::StringShape.new(name: 'OtaTaskConfigurationId')
    OtaTaskConfigurationListDefinition = Shapes::ListShape.new(name: 'OtaTaskConfigurationListDefinition')
    OtaTaskConfigurationName = Shapes::StringShape.new(name: 'OtaTaskConfigurationName')
    OtaTaskConfigurationSummary = Shapes::StructureShape.new(name: 'OtaTaskConfigurationSummary')
    OtaTaskExecutionRetryConfig = Shapes::StructureShape.new(name: 'OtaTaskExecutionRetryConfig')
    OtaTaskExecutionRolloutConfig = Shapes::StructureShape.new(name: 'OtaTaskExecutionRolloutConfig')
    OtaTaskExecutionStatus = Shapes::StringShape.new(name: 'OtaTaskExecutionStatus')
    OtaTaskExecutionSummaries = Shapes::StructureShape.new(name: 'OtaTaskExecutionSummaries')
    OtaTaskExecutionSummariesListDefinition = Shapes::ListShape.new(name: 'OtaTaskExecutionSummariesListDefinition')
    OtaTaskExecutionSummary = Shapes::StructureShape.new(name: 'OtaTaskExecutionSummary')
    OtaTaskId = Shapes::StringShape.new(name: 'OtaTaskId')
    OtaTaskListDefinition = Shapes::ListShape.new(name: 'OtaTaskListDefinition')
    OtaTaskSchedulingConfig = Shapes::StructureShape.new(name: 'OtaTaskSchedulingConfig')
    OtaTaskSummary = Shapes::StructureShape.new(name: 'OtaTaskSummary')
    OtaTaskTimeoutConfig = Shapes::StructureShape.new(name: 'OtaTaskTimeoutConfig')
    OtaType = Shapes::StringShape.new(name: 'OtaType')
    Owner = Shapes::StringShape.new(name: 'Owner')
    ParentControllerId = Shapes::StringShape.new(name: 'ParentControllerId')
    PropertyName = Shapes::StringShape.new(name: 'PropertyName')
    ProvisioningProfileArn = Shapes::StringShape.new(name: 'ProvisioningProfileArn')
    ProvisioningProfileId = Shapes::StringShape.new(name: 'ProvisioningProfileId')
    ProvisioningProfileListDefinition = Shapes::ListShape.new(name: 'ProvisioningProfileListDefinition')
    ProvisioningProfileName = Shapes::StringShape.new(name: 'ProvisioningProfileName')
    ProvisioningProfileSummary = Shapes::StructureShape.new(name: 'ProvisioningProfileSummary')
    ProvisioningStatus = Shapes::StringShape.new(name: 'ProvisioningStatus')
    ProvisioningType = Shapes::StringShape.new(name: 'ProvisioningType')
    PushConfig = Shapes::StructureShape.new(name: 'PushConfig')
    PutDefaultEncryptionConfigurationRequest = Shapes::StructureShape.new(name: 'PutDefaultEncryptionConfigurationRequest')
    PutDefaultEncryptionConfigurationResponse = Shapes::StructureShape.new(name: 'PutDefaultEncryptionConfigurationResponse')
    PutHubConfigurationRequest = Shapes::StructureShape.new(name: 'PutHubConfigurationRequest')
    PutHubConfigurationResponse = Shapes::StructureShape.new(name: 'PutHubConfigurationResponse')
    PutRuntimeLogConfigurationRequest = Shapes::StructureShape.new(name: 'PutRuntimeLogConfigurationRequest')
    QueuedAt = Shapes::TimestampShape.new(name: 'QueuedAt')
    RegisterCustomEndpointRequest = Shapes::StructureShape.new(name: 'RegisterCustomEndpointRequest')
    RegisterCustomEndpointResponse = Shapes::StructureShape.new(name: 'RegisterCustomEndpointResponse')
    ResetRuntimeLogConfigurationRequest = Shapes::StructureShape.new(name: 'ResetRuntimeLogConfigurationRequest')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RetryAttempt = Shapes::IntegerShape.new(name: 'RetryAttempt')
    RetryConfigCriteria = Shapes::StructureShape.new(name: 'RetryConfigCriteria')
    RetryConfigCriteriaList = Shapes::ListShape.new(name: 'RetryConfigCriteriaList')
    RetryCriteriaFailureType = Shapes::StringShape.new(name: 'RetryCriteriaFailureType')
    Role = Shapes::StringShape.new(name: 'Role')
    RolloutRateIncreaseCriteria = Shapes::StructureShape.new(name: 'RolloutRateIncreaseCriteria')
    RuntimeLogConfigurations = Shapes::StructureShape.new(name: 'RuntimeLogConfigurations')
    S3Url = Shapes::StringShape.new(name: 'S3Url')
    ScheduleMaintenanceWindow = Shapes::StructureShape.new(name: 'ScheduleMaintenanceWindow')
    ScheduleMaintenanceWindowList = Shapes::ListShape.new(name: 'ScheduleMaintenanceWindowList')
    ScheduleStartTime = Shapes::StringShape.new(name: 'ScheduleStartTime')
    SchedulingConfigEndBehavior = Shapes::StringShape.new(name: 'SchedulingConfigEndBehavior')
    SchemaId = Shapes::StringShape.new(name: 'SchemaId')
    SchemaVersionDescription = Shapes::StringShape.new(name: 'SchemaVersionDescription')
    SchemaVersionFormat = Shapes::StringShape.new(name: 'SchemaVersionFormat')
    SchemaVersionList = Shapes::ListShape.new(name: 'SchemaVersionList')
    SchemaVersionListItem = Shapes::StructureShape.new(name: 'SchemaVersionListItem')
    SchemaVersionNamespaceName = Shapes::StringShape.new(name: 'SchemaVersionNamespaceName')
    SchemaVersionSchema = Shapes::DocumentShape.new(name: 'SchemaVersionSchema', document: true)
    SchemaVersionType = Shapes::StringShape.new(name: 'SchemaVersionType')
    SchemaVersionVersion = Shapes::StringShape.new(name: 'SchemaVersionVersion')
    SchemaVersionVisibility = Shapes::StringShape.new(name: 'SchemaVersionVisibility')
    SchemaVersionedId = Shapes::StringShape.new(name: 'SchemaVersionedId')
    SendManagedThingCommandRequest = Shapes::StructureShape.new(name: 'SendManagedThingCommandRequest')
    SendManagedThingCommandResponse = Shapes::StructureShape.new(name: 'SendManagedThingCommandResponse')
    SerialNumber = Shapes::StringShape.new(name: 'SerialNumber')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SetupAt = Shapes::TimestampShape.new(name: 'SetupAt')
    SmartHomeResourceId = Shapes::StringShape.new(name: 'SmartHomeResourceId')
    SmartHomeResourceType = Shapes::StringShape.new(name: 'SmartHomeResourceType')
    StartDeviceDiscoveryRequest = Shapes::StructureShape.new(name: 'StartDeviceDiscoveryRequest')
    StartDeviceDiscoveryResponse = Shapes::StructureShape.new(name: 'StartDeviceDiscoveryResponse')
    StartTime = Shapes::StringShape.new(name: 'StartTime')
    StartedAt = Shapes::TimestampShape.new(name: 'StartedAt')
    StateCapabilities = Shapes::ListShape.new(name: 'StateCapabilities')
    StateCapability = Shapes::StructureShape.new(name: 'StateCapability')
    StateEndpoint = Shapes::StructureShape.new(name: 'StateEndpoint')
    StateEndpoints = Shapes::ListShape.new(name: 'StateEndpoints')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TagsMap = Shapes::MapShape.new(name: 'TagsMap')
    Target = Shapes::ListShape.new(name: 'Target')
    TaskProcessingDetails = Shapes::StructureShape.new(name: 'TaskProcessingDetails')
    ThresholdPercentage = Shapes::FloatShape.new(name: 'ThresholdPercentage')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TraceId = Shapes::StringShape.new(name: 'TraceId')
    UnauthorizedException = Shapes::StructureShape.new(name: 'UnauthorizedException')
    UniversalProductCode = Shapes::StringShape.new(name: 'UniversalProductCode')
    UpdateDestinationRequest = Shapes::StructureShape.new(name: 'UpdateDestinationRequest')
    UpdateEventLogConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateEventLogConfigurationRequest')
    UpdateManagedThingRequest = Shapes::StructureShape.new(name: 'UpdateManagedThingRequest')
    UpdateNotificationConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateNotificationConfigurationRequest')
    UpdateOtaTaskRequest = Shapes::StructureShape.new(name: 'UpdateOtaTaskRequest')
    UpdatedAt = Shapes::TimestampShape.new(name: 'UpdatedAt')
    UploadLog = Shapes::BooleanShape.new(name: 'UploadLog')
    UploadPeriodMinutes = Shapes::IntegerShape.new(name: 'UploadPeriodMinutes')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationSchema = Shapes::DocumentShape.new(name: 'ValidationSchema', document: true)

    AbortConfigCriteria.add_member(:action, Shapes::ShapeRef.new(shape: AbortCriteriaAction, location_name: "Action"))
    AbortConfigCriteria.add_member(:failure_type, Shapes::ShapeRef.new(shape: AbortCriteriaFailureType, location_name: "FailureType"))
    AbortConfigCriteria.add_member(:min_number_of_executed_things, Shapes::ShapeRef.new(shape: MinNumberOfExecutedThings, location_name: "MinNumberOfExecutedThings"))
    AbortConfigCriteria.add_member(:threshold_percentage, Shapes::ShapeRef.new(shape: ThresholdPercentage, location_name: "ThresholdPercentage"))
    AbortConfigCriteria.struct_class = Types::AbortConfigCriteria

    AbortConfigCriteriaList.member = Shapes::ShapeRef.new(shape: AbortConfigCriteria)

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    CapabilityAction.add_member(:name, Shapes::ShapeRef.new(shape: CapabilityActionName, required: true, location_name: "name"))
    CapabilityAction.add_member(:ref, Shapes::ShapeRef.new(shape: ActionReference, location_name: "ref"))
    CapabilityAction.add_member(:action_trace_id, Shapes::ShapeRef.new(shape: ActionTraceId, location_name: "actionTraceId"))
    CapabilityAction.add_member(:parameters, Shapes::ShapeRef.new(shape: CapabilityProperties, location_name: "parameters"))
    CapabilityAction.struct_class = Types::CapabilityAction

    CapabilityActions.member = Shapes::ShapeRef.new(shape: CapabilityAction)

    CapabilityReport.add_member(:version, Shapes::ShapeRef.new(shape: CapabilityReportVersion, required: true, location_name: "version"))
    CapabilityReport.add_member(:node_id, Shapes::ShapeRef.new(shape: NodeId, location_name: "nodeId"))
    CapabilityReport.add_member(:endpoints, Shapes::ShapeRef.new(shape: CapabilityReportEndpoints, required: true, location_name: "endpoints"))
    CapabilityReport.struct_class = Types::CapabilityReport

    CapabilityReportActions.member = Shapes::ShapeRef.new(shape: ActionName)

    CapabilityReportCapabilities.member = Shapes::ShapeRef.new(shape: CapabilityReportCapability)

    CapabilityReportCapability.add_member(:id, Shapes::ShapeRef.new(shape: SchemaVersionedId, required: true, location_name: "id"))
    CapabilityReportCapability.add_member(:name, Shapes::ShapeRef.new(shape: CapabilityName, required: true, location_name: "name"))
    CapabilityReportCapability.add_member(:version, Shapes::ShapeRef.new(shape: CapabilityVersion, required: true, location_name: "version"))
    CapabilityReportCapability.add_member(:properties, Shapes::ShapeRef.new(shape: CapabilityReportProperties, required: true, location_name: "properties"))
    CapabilityReportCapability.add_member(:actions, Shapes::ShapeRef.new(shape: CapabilityReportActions, required: true, location_name: "actions"))
    CapabilityReportCapability.add_member(:events, Shapes::ShapeRef.new(shape: CapabilityReportEvents, required: true, location_name: "events"))
    CapabilityReportCapability.struct_class = Types::CapabilityReportCapability

    CapabilityReportEndpoint.add_member(:id, Shapes::ShapeRef.new(shape: EndpointId, required: true, location_name: "id"))
    CapabilityReportEndpoint.add_member(:device_types, Shapes::ShapeRef.new(shape: DeviceTypes, required: true, location_name: "deviceTypes"))
    CapabilityReportEndpoint.add_member(:capabilities, Shapes::ShapeRef.new(shape: CapabilityReportCapabilities, required: true, location_name: "capabilities"))
    CapabilityReportEndpoint.struct_class = Types::CapabilityReportEndpoint

    CapabilityReportEndpoints.member = Shapes::ShapeRef.new(shape: CapabilityReportEndpoint)

    CapabilityReportEvents.member = Shapes::ShapeRef.new(shape: EventName)

    CapabilityReportProperties.member = Shapes::ShapeRef.new(shape: PropertyName)

    CommandCapabilities.member = Shapes::ShapeRef.new(shape: CommandCapability)

    CommandCapability.add_member(:id, Shapes::ShapeRef.new(shape: SchemaVersionedId, required: true, location_name: "id"))
    CommandCapability.add_member(:name, Shapes::ShapeRef.new(shape: CapabilityName, required: true, location_name: "name"))
    CommandCapability.add_member(:version, Shapes::ShapeRef.new(shape: CapabilityVersion, required: true, location_name: "version"))
    CommandCapability.add_member(:actions, Shapes::ShapeRef.new(shape: CapabilityActions, required: true, location_name: "actions"))
    CommandCapability.struct_class = Types::CommandCapability

    CommandEndpoint.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: EndpointId, required: true, location_name: "endpointId"))
    CommandEndpoint.add_member(:capabilities, Shapes::ShapeRef.new(shape: CommandCapabilities, required: true, location_name: "capabilities"))
    CommandEndpoint.struct_class = Types::CommandEndpoint

    CommandEndpoints.member = Shapes::ShapeRef.new(shape: CommandEndpoint)

    ConfigurationError.add_member(:code, Shapes::ShapeRef.new(shape: ConfigurationErrorCode, location_name: "code"))
    ConfigurationError.add_member(:message, Shapes::ShapeRef.new(shape: ConfigurationErrorMessage, location_name: "message"))
    ConfigurationError.struct_class = Types::ConfigurationError

    ConfigurationStatus.add_member(:error, Shapes::ShapeRef.new(shape: ConfigurationError, location_name: "error"))
    ConfigurationStatus.add_member(:state, Shapes::ShapeRef.new(shape: ConfigurationState, required: true, location_name: "state"))
    ConfigurationStatus.struct_class = Types::ConfigurationStatus

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateCredentialLockerRequest.add_member(:name, Shapes::ShapeRef.new(shape: CredentialLockerName, location_name: "Name"))
    CreateCredentialLockerRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateCredentialLockerRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    CreateCredentialLockerRequest.struct_class = Types::CreateCredentialLockerRequest

    CreateCredentialLockerResponse.add_member(:id, Shapes::ShapeRef.new(shape: CredentialLockerId, location_name: "Id"))
    CreateCredentialLockerResponse.add_member(:arn, Shapes::ShapeRef.new(shape: CredentialLockerArn, location_name: "Arn"))
    CreateCredentialLockerResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CredentialLockerCreatedAt, location_name: "CreatedAt"))
    CreateCredentialLockerResponse.struct_class = Types::CreateCredentialLockerResponse

    CreateDestinationRequest.add_member(:delivery_destination_arn, Shapes::ShapeRef.new(shape: DeliveryDestinationArn, required: true, location_name: "DeliveryDestinationArn"))
    CreateDestinationRequest.add_member(:delivery_destination_type, Shapes::ShapeRef.new(shape: DeliveryDestinationType, required: true, location_name: "DeliveryDestinationType"))
    CreateDestinationRequest.add_member(:name, Shapes::ShapeRef.new(shape: DestinationName, required: true, location_name: "Name"))
    CreateDestinationRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: DeliveryDestinationRoleArn, required: true, location_name: "RoleArn"))
    CreateDestinationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateDestinationRequest.add_member(:description, Shapes::ShapeRef.new(shape: DestinationDescription, location_name: "Description"))
    CreateDestinationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    CreateDestinationRequest.struct_class = Types::CreateDestinationRequest

    CreateDestinationResponse.add_member(:name, Shapes::ShapeRef.new(shape: DestinationName, location_name: "Name"))
    CreateDestinationResponse.struct_class = Types::CreateDestinationResponse

    CreateEventLogConfigurationRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: SmartHomeResourceType, required: true, location_name: "ResourceType"))
    CreateEventLogConfigurationRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: SmartHomeResourceId, location_name: "ResourceId"))
    CreateEventLogConfigurationRequest.add_member(:event_log_level, Shapes::ShapeRef.new(shape: LogLevel, required: true, location_name: "EventLogLevel"))
    CreateEventLogConfigurationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateEventLogConfigurationRequest.struct_class = Types::CreateEventLogConfigurationRequest

    CreateEventLogConfigurationResponse.add_member(:id, Shapes::ShapeRef.new(shape: LogConfigurationId, location_name: "Id"))
    CreateEventLogConfigurationResponse.struct_class = Types::CreateEventLogConfigurationResponse

    CreateManagedThingRequest.add_member(:role, Shapes::ShapeRef.new(shape: Role, required: true, location_name: "Role"))
    CreateManagedThingRequest.add_member(:owner, Shapes::ShapeRef.new(shape: Owner, location_name: "Owner"))
    CreateManagedThingRequest.add_member(:credential_locker_id, Shapes::ShapeRef.new(shape: CredentialLockerId, location_name: "CredentialLockerId"))
    CreateManagedThingRequest.add_member(:authentication_material, Shapes::ShapeRef.new(shape: AuthMaterialString, required: true, location_name: "AuthenticationMaterial"))
    CreateManagedThingRequest.add_member(:authentication_material_type, Shapes::ShapeRef.new(shape: AuthMaterialType, required: true, location_name: "AuthenticationMaterialType"))
    CreateManagedThingRequest.add_member(:serial_number, Shapes::ShapeRef.new(shape: SerialNumber, location_name: "SerialNumber"))
    CreateManagedThingRequest.add_member(:brand, Shapes::ShapeRef.new(shape: Brand, location_name: "Brand"))
    CreateManagedThingRequest.add_member(:model, Shapes::ShapeRef.new(shape: Model, location_name: "Model"))
    CreateManagedThingRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    CreateManagedThingRequest.add_member(:capability_report, Shapes::ShapeRef.new(shape: CapabilityReport, location_name: "CapabilityReport"))
    CreateManagedThingRequest.add_member(:capabilities, Shapes::ShapeRef.new(shape: Capabilities, location_name: "Capabilities"))
    CreateManagedThingRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateManagedThingRequest.add_member(:classification, Shapes::ShapeRef.new(shape: Classification, location_name: "Classification"))
    CreateManagedThingRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    CreateManagedThingRequest.add_member(:meta_data, Shapes::ShapeRef.new(shape: MetaData, location_name: "MetaData"))
    CreateManagedThingRequest.struct_class = Types::CreateManagedThingRequest

    CreateManagedThingResponse.add_member(:id, Shapes::ShapeRef.new(shape: ManagedThingId, location_name: "Id"))
    CreateManagedThingResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ManagedThingArn, location_name: "Arn"))
    CreateManagedThingResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "CreatedAt"))
    CreateManagedThingResponse.struct_class = Types::CreateManagedThingResponse

    CreateNotificationConfigurationRequest.add_member(:event_type, Shapes::ShapeRef.new(shape: EventType, required: true, location_name: "EventType"))
    CreateNotificationConfigurationRequest.add_member(:destination_name, Shapes::ShapeRef.new(shape: DestinationName, required: true, location_name: "DestinationName"))
    CreateNotificationConfigurationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateNotificationConfigurationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    CreateNotificationConfigurationRequest.struct_class = Types::CreateNotificationConfigurationRequest

    CreateNotificationConfigurationResponse.add_member(:event_type, Shapes::ShapeRef.new(shape: EventType, location_name: "EventType"))
    CreateNotificationConfigurationResponse.struct_class = Types::CreateNotificationConfigurationResponse

    CreateOtaTaskConfigurationRequest.add_member(:description, Shapes::ShapeRef.new(shape: OtaDescription, location_name: "Description"))
    CreateOtaTaskConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: OtaTaskConfigurationName, location_name: "Name"))
    CreateOtaTaskConfigurationRequest.add_member(:push_config, Shapes::ShapeRef.new(shape: PushConfig, location_name: "PushConfig"))
    CreateOtaTaskConfigurationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateOtaTaskConfigurationRequest.struct_class = Types::CreateOtaTaskConfigurationRequest

    CreateOtaTaskConfigurationResponse.add_member(:task_configuration_id, Shapes::ShapeRef.new(shape: OtaTaskConfigurationId, location_name: "TaskConfigurationId"))
    CreateOtaTaskConfigurationResponse.struct_class = Types::CreateOtaTaskConfigurationResponse

    CreateOtaTaskRequest.add_member(:description, Shapes::ShapeRef.new(shape: OtaDescription, location_name: "Description"))
    CreateOtaTaskRequest.add_member(:s3_url, Shapes::ShapeRef.new(shape: S3Url, required: true, location_name: "S3Url"))
    CreateOtaTaskRequest.add_member(:protocol, Shapes::ShapeRef.new(shape: OtaProtocol, location_name: "Protocol"))
    CreateOtaTaskRequest.add_member(:target, Shapes::ShapeRef.new(shape: Target, location_name: "Target"))
    CreateOtaTaskRequest.add_member(:task_configuration_id, Shapes::ShapeRef.new(shape: OtaTaskConfigurationId, location_name: "TaskConfigurationId"))
    CreateOtaTaskRequest.add_member(:ota_mechanism, Shapes::ShapeRef.new(shape: OtaMechanism, location_name: "OtaMechanism"))
    CreateOtaTaskRequest.add_member(:ota_type, Shapes::ShapeRef.new(shape: OtaType, required: true, location_name: "OtaType"))
    CreateOtaTaskRequest.add_member(:ota_target_query_string, Shapes::ShapeRef.new(shape: OtaTargetQueryString, location_name: "OtaTargetQueryString"))
    CreateOtaTaskRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateOtaTaskRequest.add_member(:ota_scheduling_config, Shapes::ShapeRef.new(shape: OtaTaskSchedulingConfig, location_name: "OtaSchedulingConfig"))
    CreateOtaTaskRequest.add_member(:ota_task_execution_retry_config, Shapes::ShapeRef.new(shape: OtaTaskExecutionRetryConfig, location_name: "OtaTaskExecutionRetryConfig"))
    CreateOtaTaskRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    CreateOtaTaskRequest.struct_class = Types::CreateOtaTaskRequest

    CreateOtaTaskResponse.add_member(:task_id, Shapes::ShapeRef.new(shape: OtaTaskId, location_name: "TaskId"))
    CreateOtaTaskResponse.add_member(:task_arn, Shapes::ShapeRef.new(shape: OtaTaskArn, location_name: "TaskArn"))
    CreateOtaTaskResponse.add_member(:description, Shapes::ShapeRef.new(shape: OtaDescription, location_name: "Description"))
    CreateOtaTaskResponse.struct_class = Types::CreateOtaTaskResponse

    CreateProvisioningProfileRequest.add_member(:provisioning_type, Shapes::ShapeRef.new(shape: ProvisioningType, required: true, location_name: "ProvisioningType"))
    CreateProvisioningProfileRequest.add_member(:ca_certificate, Shapes::ShapeRef.new(shape: CaCertificate, location_name: "CaCertificate"))
    CreateProvisioningProfileRequest.add_member(:name, Shapes::ShapeRef.new(shape: ProvisioningProfileName, location_name: "Name"))
    CreateProvisioningProfileRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateProvisioningProfileRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    CreateProvisioningProfileRequest.struct_class = Types::CreateProvisioningProfileRequest

    CreateProvisioningProfileResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ProvisioningProfileArn, location_name: "Arn"))
    CreateProvisioningProfileResponse.add_member(:name, Shapes::ShapeRef.new(shape: ProvisioningProfileName, location_name: "Name"))
    CreateProvisioningProfileResponse.add_member(:provisioning_type, Shapes::ShapeRef.new(shape: ProvisioningType, location_name: "ProvisioningType"))
    CreateProvisioningProfileResponse.add_member(:id, Shapes::ShapeRef.new(shape: ProvisioningProfileId, location_name: "Id"))
    CreateProvisioningProfileResponse.add_member(:claim_certificate, Shapes::ShapeRef.new(shape: ClaimCertificate, location_name: "ClaimCertificate"))
    CreateProvisioningProfileResponse.add_member(:claim_certificate_private_key, Shapes::ShapeRef.new(shape: ClaimCertificatePrivateKey, location_name: "ClaimCertificatePrivateKey"))
    CreateProvisioningProfileResponse.struct_class = Types::CreateProvisioningProfileResponse

    CredentialLockerListDefinition.member = Shapes::ShapeRef.new(shape: CredentialLockerSummary)

    CredentialLockerSummary.add_member(:id, Shapes::ShapeRef.new(shape: CredentialLockerId, location_name: "Id"))
    CredentialLockerSummary.add_member(:arn, Shapes::ShapeRef.new(shape: CredentialLockerArn, location_name: "Arn"))
    CredentialLockerSummary.add_member(:name, Shapes::ShapeRef.new(shape: CredentialLockerName, location_name: "Name"))
    CredentialLockerSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: CredentialLockerCreatedAt, location_name: "CreatedAt"))
    CredentialLockerSummary.struct_class = Types::CredentialLockerSummary

    DeleteCredentialLockerRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: CredentialLockerId, required: true, location: "uri", location_name: "Identifier"))
    DeleteCredentialLockerRequest.struct_class = Types::DeleteCredentialLockerRequest

    DeleteDestinationRequest.add_member(:name, Shapes::ShapeRef.new(shape: DestinationName, required: true, location: "uri", location_name: "Name"))
    DeleteDestinationRequest.struct_class = Types::DeleteDestinationRequest

    DeleteEventLogConfigurationRequest.add_member(:id, Shapes::ShapeRef.new(shape: LogConfigurationId, required: true, location: "uri", location_name: "Id"))
    DeleteEventLogConfigurationRequest.struct_class = Types::DeleteEventLogConfigurationRequest

    DeleteManagedThingRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ManagedThingId, required: true, location: "uri", location_name: "Identifier"))
    DeleteManagedThingRequest.add_member(:force, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "Force"))
    DeleteManagedThingRequest.struct_class = Types::DeleteManagedThingRequest

    DeleteNotificationConfigurationRequest.add_member(:event_type, Shapes::ShapeRef.new(shape: EventType, required: true, location: "uri", location_name: "EventType"))
    DeleteNotificationConfigurationRequest.struct_class = Types::DeleteNotificationConfigurationRequest

    DeleteOtaTaskConfigurationRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: OtaTaskConfigurationId, required: true, location: "uri", location_name: "Identifier"))
    DeleteOtaTaskConfigurationRequest.struct_class = Types::DeleteOtaTaskConfigurationRequest

    DeleteOtaTaskRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: OtaTaskId, required: true, location: "uri", location_name: "Identifier"))
    DeleteOtaTaskRequest.struct_class = Types::DeleteOtaTaskRequest

    DeleteProvisioningProfileRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ProvisioningProfileId, required: true, location: "uri", location_name: "Identifier"))
    DeleteProvisioningProfileRequest.struct_class = Types::DeleteProvisioningProfileRequest

    DestinationListDefinition.member = Shapes::ShapeRef.new(shape: DestinationSummary)

    DestinationSummary.add_member(:description, Shapes::ShapeRef.new(shape: DestinationDescription, location_name: "Description"))
    DestinationSummary.add_member(:delivery_destination_arn, Shapes::ShapeRef.new(shape: DeliveryDestinationArn, location_name: "DeliveryDestinationArn"))
    DestinationSummary.add_member(:delivery_destination_type, Shapes::ShapeRef.new(shape: DeliveryDestinationType, location_name: "DeliveryDestinationType"))
    DestinationSummary.add_member(:name, Shapes::ShapeRef.new(shape: DestinationName, location_name: "Name"))
    DestinationSummary.add_member(:role_arn, Shapes::ShapeRef.new(shape: DeliveryDestinationRoleArn, location_name: "RoleArn"))
    DestinationSummary.struct_class = Types::DestinationSummary

    DeviceTypes.member = Shapes::ShapeRef.new(shape: DeviceType)

    EventLogConfigurationListDefinition.member = Shapes::ShapeRef.new(shape: EventLogConfigurationSummary)

    EventLogConfigurationSummary.add_member(:id, Shapes::ShapeRef.new(shape: LogConfigurationId, location_name: "Id"))
    EventLogConfigurationSummary.add_member(:resource_type, Shapes::ShapeRef.new(shape: SmartHomeResourceType, location_name: "ResourceType"))
    EventLogConfigurationSummary.add_member(:resource_id, Shapes::ShapeRef.new(shape: SmartHomeResourceId, location_name: "ResourceId"))
    EventLogConfigurationSummary.add_member(:event_log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "EventLogLevel"))
    EventLogConfigurationSummary.struct_class = Types::EventLogConfigurationSummary

    ExponentialRolloutRate.add_member(:base_rate_per_minute, Shapes::ShapeRef.new(shape: BaseRatePerMinute, location_name: "BaseRatePerMinute"))
    ExponentialRolloutRate.add_member(:increment_factor, Shapes::ShapeRef.new(shape: IncrementFactor, location_name: "IncrementFactor"))
    ExponentialRolloutRate.add_member(:rate_increase_criteria, Shapes::ShapeRef.new(shape: RolloutRateIncreaseCriteria, location_name: "RateIncreaseCriteria"))
    ExponentialRolloutRate.struct_class = Types::ExponentialRolloutRate

    GetCredentialLockerRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: CredentialLockerId, required: true, location: "uri", location_name: "Identifier"))
    GetCredentialLockerRequest.struct_class = Types::GetCredentialLockerRequest

    GetCredentialLockerResponse.add_member(:id, Shapes::ShapeRef.new(shape: CredentialLockerId, location_name: "Id"))
    GetCredentialLockerResponse.add_member(:arn, Shapes::ShapeRef.new(shape: CredentialLockerArn, location_name: "Arn"))
    GetCredentialLockerResponse.add_member(:name, Shapes::ShapeRef.new(shape: CredentialLockerName, location_name: "Name"))
    GetCredentialLockerResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CredentialLockerCreatedAt, location_name: "CreatedAt"))
    GetCredentialLockerResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    GetCredentialLockerResponse.struct_class = Types::GetCredentialLockerResponse

    GetCustomEndpointRequest.struct_class = Types::GetCustomEndpointRequest

    GetCustomEndpointResponse.add_member(:endpoint_address, Shapes::ShapeRef.new(shape: EndpointAddress, required: true, location_name: "EndpointAddress"))
    GetCustomEndpointResponse.struct_class = Types::GetCustomEndpointResponse

    GetDefaultEncryptionConfigurationRequest.struct_class = Types::GetDefaultEncryptionConfigurationRequest

    GetDefaultEncryptionConfigurationResponse.add_member(:configuration_status, Shapes::ShapeRef.new(shape: ConfigurationStatus, required: true, location_name: "configurationStatus"))
    GetDefaultEncryptionConfigurationResponse.add_member(:encryption_type, Shapes::ShapeRef.new(shape: EncryptionType, required: true, location_name: "encryptionType"))
    GetDefaultEncryptionConfigurationResponse.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    GetDefaultEncryptionConfigurationResponse.struct_class = Types::GetDefaultEncryptionConfigurationResponse

    GetDestinationRequest.add_member(:name, Shapes::ShapeRef.new(shape: DestinationName, required: true, location: "uri", location_name: "Name"))
    GetDestinationRequest.struct_class = Types::GetDestinationRequest

    GetDestinationResponse.add_member(:description, Shapes::ShapeRef.new(shape: DestinationDescription, location_name: "Description"))
    GetDestinationResponse.add_member(:delivery_destination_arn, Shapes::ShapeRef.new(shape: DeliveryDestinationArn, location_name: "DeliveryDestinationArn"))
    GetDestinationResponse.add_member(:delivery_destination_type, Shapes::ShapeRef.new(shape: DeliveryDestinationType, location_name: "DeliveryDestinationType"))
    GetDestinationResponse.add_member(:name, Shapes::ShapeRef.new(shape: DestinationName, location_name: "Name"))
    GetDestinationResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: DeliveryDestinationRoleArn, location_name: "RoleArn"))
    GetDestinationResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DestinationCreatedAt, location_name: "CreatedAt"))
    GetDestinationResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DestinationUpdatedAt, location_name: "UpdatedAt"))
    GetDestinationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    GetDestinationResponse.struct_class = Types::GetDestinationResponse

    GetDeviceDiscoveryRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: DeviceDiscoveryId, required: true, location: "uri", location_name: "Identifier"))
    GetDeviceDiscoveryRequest.struct_class = Types::GetDeviceDiscoveryRequest

    GetDeviceDiscoveryResponse.add_member(:id, Shapes::ShapeRef.new(shape: DeviceDiscoveryId, required: true, location_name: "Id"))
    GetDeviceDiscoveryResponse.add_member(:arn, Shapes::ShapeRef.new(shape: DeviceDiscoveryArn, required: true, location_name: "Arn"))
    GetDeviceDiscoveryResponse.add_member(:discovery_type, Shapes::ShapeRef.new(shape: DiscoveryType, required: true, location_name: "DiscoveryType"))
    GetDeviceDiscoveryResponse.add_member(:status, Shapes::ShapeRef.new(shape: DeviceDiscoveryStatus, required: true, location_name: "Status"))
    GetDeviceDiscoveryResponse.add_member(:started_at, Shapes::ShapeRef.new(shape: DiscoveryStartedAt, required: true, location_name: "StartedAt"))
    GetDeviceDiscoveryResponse.add_member(:controller_id, Shapes::ShapeRef.new(shape: ManagedThingId, location_name: "ControllerId"))
    GetDeviceDiscoveryResponse.add_member(:connector_association_id, Shapes::ShapeRef.new(shape: ConnectorAssociationId, location_name: "ConnectorAssociationId"))
    GetDeviceDiscoveryResponse.add_member(:finished_at, Shapes::ShapeRef.new(shape: DiscoveryFinishedAt, location_name: "FinishedAt"))
    GetDeviceDiscoveryResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    GetDeviceDiscoveryResponse.struct_class = Types::GetDeviceDiscoveryResponse

    GetEventLogConfigurationRequest.add_member(:id, Shapes::ShapeRef.new(shape: LogConfigurationId, required: true, location: "uri", location_name: "Id"))
    GetEventLogConfigurationRequest.struct_class = Types::GetEventLogConfigurationRequest

    GetEventLogConfigurationResponse.add_member(:id, Shapes::ShapeRef.new(shape: LogConfigurationId, location_name: "Id"))
    GetEventLogConfigurationResponse.add_member(:resource_type, Shapes::ShapeRef.new(shape: SmartHomeResourceType, location_name: "ResourceType"))
    GetEventLogConfigurationResponse.add_member(:resource_id, Shapes::ShapeRef.new(shape: SmartHomeResourceId, location_name: "ResourceId"))
    GetEventLogConfigurationResponse.add_member(:event_log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "EventLogLevel"))
    GetEventLogConfigurationResponse.struct_class = Types::GetEventLogConfigurationResponse

    GetHubConfigurationRequest.struct_class = Types::GetHubConfigurationRequest

    GetHubConfigurationResponse.add_member(:hub_token_timer_expiry_setting_in_seconds, Shapes::ShapeRef.new(shape: HubTokenTimerExpirySettingInSeconds, location_name: "HubTokenTimerExpirySettingInSeconds"))
    GetHubConfigurationResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: HubConfigurationUpdatedAt, location_name: "UpdatedAt"))
    GetHubConfigurationResponse.struct_class = Types::GetHubConfigurationResponse

    GetManagedThingCapabilitiesRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ManagedThingId, required: true, location: "uri", location_name: "Identifier"))
    GetManagedThingCapabilitiesRequest.struct_class = Types::GetManagedThingCapabilitiesRequest

    GetManagedThingCapabilitiesResponse.add_member(:managed_thing_id, Shapes::ShapeRef.new(shape: ManagedThingId, location_name: "ManagedThingId"))
    GetManagedThingCapabilitiesResponse.add_member(:capabilities, Shapes::ShapeRef.new(shape: Capabilities, location_name: "Capabilities"))
    GetManagedThingCapabilitiesResponse.add_member(:capability_report, Shapes::ShapeRef.new(shape: CapabilityReport, location_name: "CapabilityReport"))
    GetManagedThingCapabilitiesResponse.struct_class = Types::GetManagedThingCapabilitiesResponse

    GetManagedThingConnectivityDataRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ManagedThingId, required: true, location: "uri", location_name: "Identifier"))
    GetManagedThingConnectivityDataRequest.struct_class = Types::GetManagedThingConnectivityDataRequest

    GetManagedThingConnectivityDataResponse.add_member(:managed_thing_id, Shapes::ShapeRef.new(shape: ManagedThingId, location_name: "ManagedThingId"))
    GetManagedThingConnectivityDataResponse.add_member(:connected, Shapes::ShapeRef.new(shape: ConnectivityStatus, location_name: "Connected"))
    GetManagedThingConnectivityDataResponse.add_member(:timestamp, Shapes::ShapeRef.new(shape: ConnectivityTimestamp, location_name: "Timestamp"))
    GetManagedThingConnectivityDataResponse.add_member(:disconnect_reason, Shapes::ShapeRef.new(shape: DisconnectReasonValue, location_name: "DisconnectReason"))
    GetManagedThingConnectivityDataResponse.struct_class = Types::GetManagedThingConnectivityDataResponse

    GetManagedThingMetaDataRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ManagedThingId, required: true, location: "uri", location_name: "Identifier"))
    GetManagedThingMetaDataRequest.struct_class = Types::GetManagedThingMetaDataRequest

    GetManagedThingMetaDataResponse.add_member(:managed_thing_id, Shapes::ShapeRef.new(shape: ManagedThingId, location_name: "ManagedThingId"))
    GetManagedThingMetaDataResponse.add_member(:meta_data, Shapes::ShapeRef.new(shape: MetaData, location_name: "MetaData"))
    GetManagedThingMetaDataResponse.struct_class = Types::GetManagedThingMetaDataResponse

    GetManagedThingRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ManagedThingId, required: true, location: "uri", location_name: "Identifier"))
    GetManagedThingRequest.struct_class = Types::GetManagedThingRequest

    GetManagedThingResponse.add_member(:id, Shapes::ShapeRef.new(shape: ManagedThingId, location_name: "Id"))
    GetManagedThingResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ManagedThingArn, location_name: "Arn"))
    GetManagedThingResponse.add_member(:owner, Shapes::ShapeRef.new(shape: Owner, location_name: "Owner"))
    GetManagedThingResponse.add_member(:credential_locker_id, Shapes::ShapeRef.new(shape: CredentialLockerId, location_name: "CredentialLockerId"))
    GetManagedThingResponse.add_member(:advertised_product_id, Shapes::ShapeRef.new(shape: AdvertisedProductId, location_name: "AdvertisedProductId"))
    GetManagedThingResponse.add_member(:role, Shapes::ShapeRef.new(shape: Role, location_name: "Role"))
    GetManagedThingResponse.add_member(:provisioning_status, Shapes::ShapeRef.new(shape: ProvisioningStatus, location_name: "ProvisioningStatus"))
    GetManagedThingResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    GetManagedThingResponse.add_member(:model, Shapes::ShapeRef.new(shape: Model, location_name: "Model"))
    GetManagedThingResponse.add_member(:brand, Shapes::ShapeRef.new(shape: Brand, location_name: "Brand"))
    GetManagedThingResponse.add_member(:serial_number, Shapes::ShapeRef.new(shape: SerialNumber, location_name: "SerialNumber"))
    GetManagedThingResponse.add_member(:universal_product_code, Shapes::ShapeRef.new(shape: UniversalProductCode, location_name: "UniversalProductCode"))
    GetManagedThingResponse.add_member(:international_article_number, Shapes::ShapeRef.new(shape: InternationalArticleNumber, location_name: "InternationalArticleNumber"))
    GetManagedThingResponse.add_member(:connector_policy_id, Shapes::ShapeRef.new(shape: ConnectorPolicyId, location_name: "ConnectorPolicyId"))
    GetManagedThingResponse.add_member(:connector_device_id, Shapes::ShapeRef.new(shape: ConnectorDeviceId, location_name: "ConnectorDeviceId"))
    GetManagedThingResponse.add_member(:device_specific_key, Shapes::ShapeRef.new(shape: DeviceSpecificKey, location_name: "DeviceSpecificKey"))
    GetManagedThingResponse.add_member(:mac_address, Shapes::ShapeRef.new(shape: MacAddress, location_name: "MacAddress"))
    GetManagedThingResponse.add_member(:parent_controller_id, Shapes::ShapeRef.new(shape: ParentControllerId, location_name: "ParentControllerId"))
    GetManagedThingResponse.add_member(:classification, Shapes::ShapeRef.new(shape: Classification, location_name: "Classification"))
    GetManagedThingResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "CreatedAt"))
    GetManagedThingResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "UpdatedAt"))
    GetManagedThingResponse.add_member(:activated_at, Shapes::ShapeRef.new(shape: SetupAt, location_name: "ActivatedAt"))
    GetManagedThingResponse.add_member(:hub_network_mode, Shapes::ShapeRef.new(shape: HubNetworkMode, location_name: "HubNetworkMode"))
    GetManagedThingResponse.add_member(:meta_data, Shapes::ShapeRef.new(shape: MetaData, location_name: "MetaData"))
    GetManagedThingResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    GetManagedThingResponse.struct_class = Types::GetManagedThingResponse

    GetManagedThingStateRequest.add_member(:managed_thing_id, Shapes::ShapeRef.new(shape: ManagedThingId, required: true, location: "uri", location_name: "ManagedThingId"))
    GetManagedThingStateRequest.struct_class = Types::GetManagedThingStateRequest

    GetManagedThingStateResponse.add_member(:endpoints, Shapes::ShapeRef.new(shape: StateEndpoints, required: true, location_name: "Endpoints"))
    GetManagedThingStateResponse.struct_class = Types::GetManagedThingStateResponse

    GetNotificationConfigurationRequest.add_member(:event_type, Shapes::ShapeRef.new(shape: EventType, required: true, location: "uri", location_name: "EventType"))
    GetNotificationConfigurationRequest.struct_class = Types::GetNotificationConfigurationRequest

    GetNotificationConfigurationResponse.add_member(:event_type, Shapes::ShapeRef.new(shape: EventType, location_name: "EventType"))
    GetNotificationConfigurationResponse.add_member(:destination_name, Shapes::ShapeRef.new(shape: DestinationName, location_name: "DestinationName"))
    GetNotificationConfigurationResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: NotificationConfigurationCreatedAt, location_name: "CreatedAt"))
    GetNotificationConfigurationResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: NotificationConfigurationUpdatedAt, location_name: "UpdatedAt"))
    GetNotificationConfigurationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    GetNotificationConfigurationResponse.struct_class = Types::GetNotificationConfigurationResponse

    GetOtaTaskConfigurationRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: OtaTaskConfigurationId, required: true, location: "uri", location_name: "Identifier"))
    GetOtaTaskConfigurationRequest.struct_class = Types::GetOtaTaskConfigurationRequest

    GetOtaTaskConfigurationResponse.add_member(:task_configuration_id, Shapes::ShapeRef.new(shape: OtaTaskConfigurationId, location_name: "TaskConfigurationId"))
    GetOtaTaskConfigurationResponse.add_member(:name, Shapes::ShapeRef.new(shape: OtaTaskConfigurationName, location_name: "Name"))
    GetOtaTaskConfigurationResponse.add_member(:push_config, Shapes::ShapeRef.new(shape: PushConfig, location_name: "PushConfig"))
    GetOtaTaskConfigurationResponse.add_member(:description, Shapes::ShapeRef.new(shape: OtaDescription, location_name: "Description"))
    GetOtaTaskConfigurationResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "CreatedAt"))
    GetOtaTaskConfigurationResponse.struct_class = Types::GetOtaTaskConfigurationResponse

    GetOtaTaskRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: OtaTaskId, required: true, location: "uri", location_name: "Identifier"))
    GetOtaTaskRequest.struct_class = Types::GetOtaTaskRequest

    GetOtaTaskResponse.add_member(:task_id, Shapes::ShapeRef.new(shape: OtaTaskId, location_name: "TaskId"))
    GetOtaTaskResponse.add_member(:task_arn, Shapes::ShapeRef.new(shape: OtaTaskArn, location_name: "TaskArn"))
    GetOtaTaskResponse.add_member(:description, Shapes::ShapeRef.new(shape: OtaDescription, location_name: "Description"))
    GetOtaTaskResponse.add_member(:s3_url, Shapes::ShapeRef.new(shape: S3Url, location_name: "S3Url"))
    GetOtaTaskResponse.add_member(:protocol, Shapes::ShapeRef.new(shape: OtaProtocol, location_name: "Protocol"))
    GetOtaTaskResponse.add_member(:ota_type, Shapes::ShapeRef.new(shape: OtaType, location_name: "OtaType"))
    GetOtaTaskResponse.add_member(:ota_target_query_string, Shapes::ShapeRef.new(shape: OtaTargetQueryString, location_name: "OtaTargetQueryString"))
    GetOtaTaskResponse.add_member(:ota_mechanism, Shapes::ShapeRef.new(shape: OtaMechanism, location_name: "OtaMechanism"))
    GetOtaTaskResponse.add_member(:target, Shapes::ShapeRef.new(shape: Target, location_name: "Target"))
    GetOtaTaskResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "CreatedAt"))
    GetOtaTaskResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: "LastUpdatedAt"))
    GetOtaTaskResponse.add_member(:task_configuration_id, Shapes::ShapeRef.new(shape: OtaTaskConfigurationId, location_name: "TaskConfigurationId"))
    GetOtaTaskResponse.add_member(:task_processing_details, Shapes::ShapeRef.new(shape: TaskProcessingDetails, location_name: "TaskProcessingDetails"))
    GetOtaTaskResponse.add_member(:ota_scheduling_config, Shapes::ShapeRef.new(shape: OtaTaskSchedulingConfig, location_name: "OtaSchedulingConfig"))
    GetOtaTaskResponse.add_member(:ota_task_execution_retry_config, Shapes::ShapeRef.new(shape: OtaTaskExecutionRetryConfig, location_name: "OtaTaskExecutionRetryConfig"))
    GetOtaTaskResponse.add_member(:status, Shapes::ShapeRef.new(shape: OtaStatus, location_name: "Status"))
    GetOtaTaskResponse.struct_class = Types::GetOtaTaskResponse

    GetProvisioningProfileRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ProvisioningProfileId, required: true, location: "uri", location_name: "Identifier"))
    GetProvisioningProfileRequest.struct_class = Types::GetProvisioningProfileRequest

    GetProvisioningProfileResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ProvisioningProfileArn, location_name: "Arn"))
    GetProvisioningProfileResponse.add_member(:name, Shapes::ShapeRef.new(shape: ProvisioningProfileName, location_name: "Name"))
    GetProvisioningProfileResponse.add_member(:provisioning_type, Shapes::ShapeRef.new(shape: ProvisioningType, location_name: "ProvisioningType"))
    GetProvisioningProfileResponse.add_member(:id, Shapes::ShapeRef.new(shape: ProvisioningProfileId, location_name: "Id"))
    GetProvisioningProfileResponse.add_member(:claim_certificate, Shapes::ShapeRef.new(shape: ClaimCertificate, location_name: "ClaimCertificate"))
    GetProvisioningProfileResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    GetProvisioningProfileResponse.struct_class = Types::GetProvisioningProfileResponse

    GetRuntimeLogConfigurationRequest.add_member(:managed_thing_id, Shapes::ShapeRef.new(shape: ManagedThingId, required: true, location: "uri", location_name: "ManagedThingId"))
    GetRuntimeLogConfigurationRequest.struct_class = Types::GetRuntimeLogConfigurationRequest

    GetRuntimeLogConfigurationResponse.add_member(:managed_thing_id, Shapes::ShapeRef.new(shape: ManagedThingId, location_name: "ManagedThingId"))
    GetRuntimeLogConfigurationResponse.add_member(:runtime_log_configurations, Shapes::ShapeRef.new(shape: RuntimeLogConfigurations, location_name: "RuntimeLogConfigurations"))
    GetRuntimeLogConfigurationResponse.struct_class = Types::GetRuntimeLogConfigurationResponse

    GetSchemaVersionRequest.add_member(:type, Shapes::ShapeRef.new(shape: SchemaVersionType, required: true, location: "uri", location_name: "Type"))
    GetSchemaVersionRequest.add_member(:schema_versioned_id, Shapes::ShapeRef.new(shape: SchemaVersionedId, required: true, location: "uri", location_name: "SchemaVersionedId"))
    GetSchemaVersionRequest.add_member(:format, Shapes::ShapeRef.new(shape: SchemaVersionFormat, location: "querystring", location_name: "Format"))
    GetSchemaVersionRequest.struct_class = Types::GetSchemaVersionRequest

    GetSchemaVersionResponse.add_member(:schema_id, Shapes::ShapeRef.new(shape: SchemaId, location_name: "SchemaId"))
    GetSchemaVersionResponse.add_member(:type, Shapes::ShapeRef.new(shape: SchemaVersionType, location_name: "Type"))
    GetSchemaVersionResponse.add_member(:description, Shapes::ShapeRef.new(shape: SchemaVersionDescription, location_name: "Description"))
    GetSchemaVersionResponse.add_member(:namespace, Shapes::ShapeRef.new(shape: SchemaVersionNamespaceName, location_name: "Namespace"))
    GetSchemaVersionResponse.add_member(:semantic_version, Shapes::ShapeRef.new(shape: SchemaVersionVersion, location_name: "SemanticVersion"))
    GetSchemaVersionResponse.add_member(:visibility, Shapes::ShapeRef.new(shape: SchemaVersionVisibility, location_name: "Visibility"))
    GetSchemaVersionResponse.add_member(:schema, Shapes::ShapeRef.new(shape: SchemaVersionSchema, location_name: "Schema"))
    GetSchemaVersionResponse.struct_class = Types::GetSchemaVersionResponse

    InternalFailureException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalFailureException.struct_class = Types::InternalFailureException

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListCredentialLockersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListCredentialLockersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListCredentialLockersRequest.struct_class = Types::ListCredentialLockersRequest

    ListCredentialLockersResponse.add_member(:items, Shapes::ShapeRef.new(shape: CredentialLockerListDefinition, location_name: "Items"))
    ListCredentialLockersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCredentialLockersResponse.struct_class = Types::ListCredentialLockersResponse

    ListDestinationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListDestinationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListDestinationsRequest.struct_class = Types::ListDestinationsRequest

    ListDestinationsResponse.add_member(:destination_list, Shapes::ShapeRef.new(shape: DestinationListDefinition, location_name: "DestinationList"))
    ListDestinationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDestinationsResponse.struct_class = Types::ListDestinationsResponse

    ListEventLogConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListEventLogConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListEventLogConfigurationsRequest.struct_class = Types::ListEventLogConfigurationsRequest

    ListEventLogConfigurationsResponse.add_member(:event_log_configuration_list, Shapes::ShapeRef.new(shape: EventLogConfigurationListDefinition, location_name: "EventLogConfigurationList"))
    ListEventLogConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEventLogConfigurationsResponse.struct_class = Types::ListEventLogConfigurationsResponse

    ListManagedThingSchemasRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ManagedThingId, required: true, location: "uri", location_name: "Identifier"))
    ListManagedThingSchemasRequest.add_member(:endpoint_id_filter, Shapes::ShapeRef.new(shape: EndpointId, location: "querystring", location_name: "EndpointIdFilter"))
    ListManagedThingSchemasRequest.add_member(:capability_id_filter, Shapes::ShapeRef.new(shape: CapabilityId, location: "querystring", location_name: "CapabilityIdFilter"))
    ListManagedThingSchemasRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListManagedThingSchemasRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListManagedThingSchemasRequest.struct_class = Types::ListManagedThingSchemasRequest

    ListManagedThingSchemasResponse.add_member(:items, Shapes::ShapeRef.new(shape: ManagedThingSchemaListDefinition, location_name: "Items"))
    ListManagedThingSchemasResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListManagedThingSchemasResponse.struct_class = Types::ListManagedThingSchemasResponse

    ListManagedThingsRequest.add_member(:owner_filter, Shapes::ShapeRef.new(shape: Owner, location: "querystring", location_name: "OwnerFilter"))
    ListManagedThingsRequest.add_member(:credential_locker_filter, Shapes::ShapeRef.new(shape: CredentialLockerId, location: "querystring", location_name: "CredentialLockerFilter"))
    ListManagedThingsRequest.add_member(:role_filter, Shapes::ShapeRef.new(shape: Role, location: "querystring", location_name: "RoleFilter"))
    ListManagedThingsRequest.add_member(:parent_controller_identifier_filter, Shapes::ShapeRef.new(shape: ParentControllerId, location: "querystring", location_name: "ParentControllerIdentifierFilter"))
    ListManagedThingsRequest.add_member(:connector_policy_id_filter, Shapes::ShapeRef.new(shape: ConnectorPolicyId, location: "querystring", location_name: "ConnectorPolicyIdFilter"))
    ListManagedThingsRequest.add_member(:serial_number_filter, Shapes::ShapeRef.new(shape: SerialNumber, location: "querystring", location_name: "SerialNumberFilter"))
    ListManagedThingsRequest.add_member(:provisioning_status_filter, Shapes::ShapeRef.new(shape: ProvisioningStatus, location: "querystring", location_name: "ProvisioningStatusFilter"))
    ListManagedThingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListManagedThingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListManagedThingsRequest.struct_class = Types::ListManagedThingsRequest

    ListManagedThingsResponse.add_member(:items, Shapes::ShapeRef.new(shape: ManagedThingListDefinition, location_name: "Items"))
    ListManagedThingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListManagedThingsResponse.struct_class = Types::ListManagedThingsResponse

    ListNotificationConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListNotificationConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListNotificationConfigurationsRequest.struct_class = Types::ListNotificationConfigurationsRequest

    ListNotificationConfigurationsResponse.add_member(:notification_configuration_list, Shapes::ShapeRef.new(shape: NotificationConfigurationListDefinition, location_name: "NotificationConfigurationList"))
    ListNotificationConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListNotificationConfigurationsResponse.struct_class = Types::ListNotificationConfigurationsResponse

    ListOtaTaskConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListOtaTaskConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListOtaTaskConfigurationsRequest.struct_class = Types::ListOtaTaskConfigurationsRequest

    ListOtaTaskConfigurationsResponse.add_member(:items, Shapes::ShapeRef.new(shape: OtaTaskConfigurationListDefinition, location_name: "Items"))
    ListOtaTaskConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListOtaTaskConfigurationsResponse.struct_class = Types::ListOtaTaskConfigurationsResponse

    ListOtaTaskExecutionsRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: OtaTaskId, required: true, location: "uri", location_name: "Identifier"))
    ListOtaTaskExecutionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: OtaNextToken, location: "querystring", location_name: "NextToken"))
    ListOtaTaskExecutionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListOtaTaskExecutionsRequest.struct_class = Types::ListOtaTaskExecutionsRequest

    ListOtaTaskExecutionsResponse.add_member(:execution_summaries, Shapes::ShapeRef.new(shape: OtaTaskExecutionSummariesListDefinition, location_name: "ExecutionSummaries"))
    ListOtaTaskExecutionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: OtaNextToken, location_name: "NextToken"))
    ListOtaTaskExecutionsResponse.struct_class = Types::ListOtaTaskExecutionsResponse

    ListOtaTasksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: OtaNextToken, location: "querystring", location_name: "NextToken"))
    ListOtaTasksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListOtaTasksRequest.struct_class = Types::ListOtaTasksRequest

    ListOtaTasksResponse.add_member(:tasks, Shapes::ShapeRef.new(shape: OtaTaskListDefinition, location_name: "Tasks"))
    ListOtaTasksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: OtaNextToken, location_name: "NextToken"))
    ListOtaTasksResponse.struct_class = Types::ListOtaTasksResponse

    ListProvisioningProfilesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListProvisioningProfilesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListProvisioningProfilesRequest.struct_class = Types::ListProvisioningProfilesRequest

    ListProvisioningProfilesResponse.add_member(:items, Shapes::ShapeRef.new(shape: ProvisioningProfileListDefinition, location_name: "Items"))
    ListProvisioningProfilesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListProvisioningProfilesResponse.struct_class = Types::ListProvisioningProfilesResponse

    ListSchemaVersionsRequest.add_member(:type, Shapes::ShapeRef.new(shape: SchemaVersionType, required: true, location: "uri", location_name: "Type"))
    ListSchemaVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListSchemaVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListSchemaVersionsRequest.add_member(:schema_id, Shapes::ShapeRef.new(shape: SchemaId, location: "querystring", location_name: "SchemaIdFilter"))
    ListSchemaVersionsRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: SchemaVersionNamespaceName, location: "querystring", location_name: "NamespaceFilter"))
    ListSchemaVersionsRequest.add_member(:visibility, Shapes::ShapeRef.new(shape: SchemaVersionVisibility, location: "querystring", location_name: "VisibilityFilter"))
    ListSchemaVersionsRequest.add_member(:semantic_version, Shapes::ShapeRef.new(shape: SchemaVersionVersion, location: "querystring", location_name: "SemanticVersionFilter"))
    ListSchemaVersionsRequest.struct_class = Types::ListSchemaVersionsRequest

    ListSchemaVersionsResponse.add_member(:items, Shapes::ShapeRef.new(shape: SchemaVersionList, location_name: "Items"))
    ListSchemaVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSchemaVersionsResponse.struct_class = Types::ListSchemaVersionsResponse

    ManagedThingListDefinition.member = Shapes::ShapeRef.new(shape: ManagedThingSummary)

    ManagedThingSchemaListDefinition.member = Shapes::ShapeRef.new(shape: ManagedThingSchemaListItem)

    ManagedThingSchemaListItem.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: EndpointId, location_name: "EndpointId"))
    ManagedThingSchemaListItem.add_member(:capability_id, Shapes::ShapeRef.new(shape: CapabilityId, location_name: "CapabilityId"))
    ManagedThingSchemaListItem.add_member(:schema, Shapes::ShapeRef.new(shape: ValidationSchema, location_name: "Schema"))
    ManagedThingSchemaListItem.struct_class = Types::ManagedThingSchemaListItem

    ManagedThingSummary.add_member(:id, Shapes::ShapeRef.new(shape: ManagedThingId, location_name: "Id"))
    ManagedThingSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ManagedThingArn, location_name: "Arn"))
    ManagedThingSummary.add_member(:advertised_product_id, Shapes::ShapeRef.new(shape: AdvertisedProductId, location_name: "AdvertisedProductId"))
    ManagedThingSummary.add_member(:brand, Shapes::ShapeRef.new(shape: Brand, location_name: "Brand"))
    ManagedThingSummary.add_member(:classification, Shapes::ShapeRef.new(shape: Classification, location_name: "Classification"))
    ManagedThingSummary.add_member(:connector_device_id, Shapes::ShapeRef.new(shape: ConnectorDeviceId, location_name: "ConnectorDeviceId"))
    ManagedThingSummary.add_member(:connector_policy_id, Shapes::ShapeRef.new(shape: ConnectorPolicyId, location_name: "ConnectorPolicyId"))
    ManagedThingSummary.add_member(:model, Shapes::ShapeRef.new(shape: Model, location_name: "Model"))
    ManagedThingSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    ManagedThingSummary.add_member(:owner, Shapes::ShapeRef.new(shape: Owner, location_name: "Owner"))
    ManagedThingSummary.add_member(:credential_locker_id, Shapes::ShapeRef.new(shape: CredentialLockerId, location_name: "CredentialLockerId"))
    ManagedThingSummary.add_member(:parent_controller_id, Shapes::ShapeRef.new(shape: ParentControllerId, location_name: "ParentControllerId"))
    ManagedThingSummary.add_member(:provisioning_status, Shapes::ShapeRef.new(shape: ProvisioningStatus, location_name: "ProvisioningStatus"))
    ManagedThingSummary.add_member(:role, Shapes::ShapeRef.new(shape: Role, location_name: "Role"))
    ManagedThingSummary.add_member(:serial_number, Shapes::ShapeRef.new(shape: SerialNumber, location_name: "SerialNumber"))
    ManagedThingSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "CreatedAt"))
    ManagedThingSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "UpdatedAt"))
    ManagedThingSummary.add_member(:activated_at, Shapes::ShapeRef.new(shape: SetupAt, location_name: "ActivatedAt"))
    ManagedThingSummary.struct_class = Types::ManagedThingSummary

    MetaData.key = Shapes::ShapeRef.new(shape: AttributeName)
    MetaData.value = Shapes::ShapeRef.new(shape: AttributeValue)

    NotificationConfigurationListDefinition.member = Shapes::ShapeRef.new(shape: NotificationConfigurationSummary)

    NotificationConfigurationSummary.add_member(:event_type, Shapes::ShapeRef.new(shape: EventType, location_name: "EventType"))
    NotificationConfigurationSummary.add_member(:destination_name, Shapes::ShapeRef.new(shape: DestinationName, location_name: "DestinationName"))
    NotificationConfigurationSummary.struct_class = Types::NotificationConfigurationSummary

    OtaTaskAbortConfig.add_member(:abort_config_criteria_list, Shapes::ShapeRef.new(shape: AbortConfigCriteriaList, location_name: "AbortConfigCriteriaList"))
    OtaTaskAbortConfig.struct_class = Types::OtaTaskAbortConfig

    OtaTaskConfigurationListDefinition.member = Shapes::ShapeRef.new(shape: OtaTaskConfigurationSummary)

    OtaTaskConfigurationSummary.add_member(:task_configuration_id, Shapes::ShapeRef.new(shape: OtaTaskConfigurationId, location_name: "TaskConfigurationId"))
    OtaTaskConfigurationSummary.add_member(:name, Shapes::ShapeRef.new(shape: OtaTaskConfigurationName, location_name: "Name"))
    OtaTaskConfigurationSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "CreatedAt"))
    OtaTaskConfigurationSummary.struct_class = Types::OtaTaskConfigurationSummary

    OtaTaskExecutionRetryConfig.add_member(:retry_config_criteria, Shapes::ShapeRef.new(shape: RetryConfigCriteriaList, location_name: "RetryConfigCriteria"))
    OtaTaskExecutionRetryConfig.struct_class = Types::OtaTaskExecutionRetryConfig

    OtaTaskExecutionRolloutConfig.add_member(:exponential_rollout_rate, Shapes::ShapeRef.new(shape: ExponentialRolloutRate, location_name: "ExponentialRolloutRate"))
    OtaTaskExecutionRolloutConfig.add_member(:maximum_per_minute, Shapes::ShapeRef.new(shape: MaximumPerMinute, location_name: "MaximumPerMinute"))
    OtaTaskExecutionRolloutConfig.struct_class = Types::OtaTaskExecutionRolloutConfig

    OtaTaskExecutionSummaries.add_member(:task_execution_summary, Shapes::ShapeRef.new(shape: OtaTaskExecutionSummary, location_name: "TaskExecutionSummary"))
    OtaTaskExecutionSummaries.add_member(:managed_thing_id, Shapes::ShapeRef.new(shape: ManagedThingId, location_name: "ManagedThingId"))
    OtaTaskExecutionSummaries.struct_class = Types::OtaTaskExecutionSummaries

    OtaTaskExecutionSummariesListDefinition.member = Shapes::ShapeRef.new(shape: OtaTaskExecutionSummaries)

    OtaTaskExecutionSummary.add_member(:execution_number, Shapes::ShapeRef.new(shape: ExecutionNumber, location_name: "ExecutionNumber"))
    OtaTaskExecutionSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: "LastUpdatedAt"))
    OtaTaskExecutionSummary.add_member(:queued_at, Shapes::ShapeRef.new(shape: QueuedAt, location_name: "QueuedAt"))
    OtaTaskExecutionSummary.add_member(:retry_attempt, Shapes::ShapeRef.new(shape: RetryAttempt, location_name: "RetryAttempt"))
    OtaTaskExecutionSummary.add_member(:started_at, Shapes::ShapeRef.new(shape: StartedAt, location_name: "StartedAt"))
    OtaTaskExecutionSummary.add_member(:status, Shapes::ShapeRef.new(shape: OtaTaskExecutionStatus, location_name: "Status"))
    OtaTaskExecutionSummary.struct_class = Types::OtaTaskExecutionSummary

    OtaTaskListDefinition.member = Shapes::ShapeRef.new(shape: OtaTaskSummary)

    OtaTaskSchedulingConfig.add_member(:end_behavior, Shapes::ShapeRef.new(shape: SchedulingConfigEndBehavior, location_name: "EndBehavior"))
    OtaTaskSchedulingConfig.add_member(:end_time, Shapes::ShapeRef.new(shape: EndTime, location_name: "EndTime"))
    OtaTaskSchedulingConfig.add_member(:maintenance_windows, Shapes::ShapeRef.new(shape: ScheduleMaintenanceWindowList, location_name: "MaintenanceWindows"))
    OtaTaskSchedulingConfig.add_member(:start_time, Shapes::ShapeRef.new(shape: ScheduleStartTime, location_name: "StartTime"))
    OtaTaskSchedulingConfig.struct_class = Types::OtaTaskSchedulingConfig

    OtaTaskSummary.add_member(:task_id, Shapes::ShapeRef.new(shape: OtaTaskId, location_name: "TaskId"))
    OtaTaskSummary.add_member(:task_arn, Shapes::ShapeRef.new(shape: OtaTaskArn, location_name: "TaskArn"))
    OtaTaskSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "CreatedAt"))
    OtaTaskSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: "LastUpdatedAt"))
    OtaTaskSummary.add_member(:task_configuration_id, Shapes::ShapeRef.new(shape: OtaTaskConfigurationId, location_name: "TaskConfigurationId"))
    OtaTaskSummary.add_member(:status, Shapes::ShapeRef.new(shape: OtaStatus, location_name: "Status"))
    OtaTaskSummary.struct_class = Types::OtaTaskSummary

    OtaTaskTimeoutConfig.add_member(:in_progress_timeout_in_minutes, Shapes::ShapeRef.new(shape: InProgressTimeoutInMinutes, location_name: "InProgressTimeoutInMinutes"))
    OtaTaskTimeoutConfig.struct_class = Types::OtaTaskTimeoutConfig

    ProvisioningProfileListDefinition.member = Shapes::ShapeRef.new(shape: ProvisioningProfileSummary)

    ProvisioningProfileSummary.add_member(:name, Shapes::ShapeRef.new(shape: ProvisioningProfileName, location_name: "Name"))
    ProvisioningProfileSummary.add_member(:id, Shapes::ShapeRef.new(shape: ProvisioningProfileId, location_name: "Id"))
    ProvisioningProfileSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ProvisioningProfileArn, location_name: "Arn"))
    ProvisioningProfileSummary.add_member(:provisioning_type, Shapes::ShapeRef.new(shape: ProvisioningType, location_name: "ProvisioningType"))
    ProvisioningProfileSummary.struct_class = Types::ProvisioningProfileSummary

    PushConfig.add_member(:abort_config, Shapes::ShapeRef.new(shape: OtaTaskAbortConfig, location_name: "AbortConfig"))
    PushConfig.add_member(:rollout_config, Shapes::ShapeRef.new(shape: OtaTaskExecutionRolloutConfig, location_name: "RolloutConfig"))
    PushConfig.add_member(:timeout_config, Shapes::ShapeRef.new(shape: OtaTaskTimeoutConfig, location_name: "TimeoutConfig"))
    PushConfig.struct_class = Types::PushConfig

    PutDefaultEncryptionConfigurationRequest.add_member(:encryption_type, Shapes::ShapeRef.new(shape: EncryptionType, required: true, location_name: "encryptionType"))
    PutDefaultEncryptionConfigurationRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    PutDefaultEncryptionConfigurationRequest.struct_class = Types::PutDefaultEncryptionConfigurationRequest

    PutDefaultEncryptionConfigurationResponse.add_member(:configuration_status, Shapes::ShapeRef.new(shape: ConfigurationStatus, required: true, location_name: "configurationStatus"))
    PutDefaultEncryptionConfigurationResponse.add_member(:encryption_type, Shapes::ShapeRef.new(shape: EncryptionType, required: true, location_name: "encryptionType"))
    PutDefaultEncryptionConfigurationResponse.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    PutDefaultEncryptionConfigurationResponse.struct_class = Types::PutDefaultEncryptionConfigurationResponse

    PutHubConfigurationRequest.add_member(:hub_token_timer_expiry_setting_in_seconds, Shapes::ShapeRef.new(shape: HubTokenTimerExpirySettingInSeconds, required: true, location_name: "HubTokenTimerExpirySettingInSeconds"))
    PutHubConfigurationRequest.struct_class = Types::PutHubConfigurationRequest

    PutHubConfigurationResponse.add_member(:hub_token_timer_expiry_setting_in_seconds, Shapes::ShapeRef.new(shape: HubTokenTimerExpirySettingInSeconds, location_name: "HubTokenTimerExpirySettingInSeconds"))
    PutHubConfigurationResponse.struct_class = Types::PutHubConfigurationResponse

    PutRuntimeLogConfigurationRequest.add_member(:managed_thing_id, Shapes::ShapeRef.new(shape: ManagedThingId, required: true, location: "uri", location_name: "ManagedThingId"))
    PutRuntimeLogConfigurationRequest.add_member(:runtime_log_configurations, Shapes::ShapeRef.new(shape: RuntimeLogConfigurations, required: true, location_name: "RuntimeLogConfigurations"))
    PutRuntimeLogConfigurationRequest.struct_class = Types::PutRuntimeLogConfigurationRequest

    RegisterCustomEndpointRequest.struct_class = Types::RegisterCustomEndpointRequest

    RegisterCustomEndpointResponse.add_member(:endpoint_address, Shapes::ShapeRef.new(shape: EndpointAddress, required: true, location_name: "EndpointAddress"))
    RegisterCustomEndpointResponse.struct_class = Types::RegisterCustomEndpointResponse

    ResetRuntimeLogConfigurationRequest.add_member(:managed_thing_id, Shapes::ShapeRef.new(shape: ManagedThingId, required: true, location: "uri", location_name: "ManagedThingId"))
    ResetRuntimeLogConfigurationRequest.struct_class = Types::ResetRuntimeLogConfigurationRequest

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RetryConfigCriteria.add_member(:failure_type, Shapes::ShapeRef.new(shape: RetryCriteriaFailureType, location_name: "FailureType"))
    RetryConfigCriteria.add_member(:min_number_of_retries, Shapes::ShapeRef.new(shape: MinNumberOfRetries, location_name: "MinNumberOfRetries"))
    RetryConfigCriteria.struct_class = Types::RetryConfigCriteria

    RetryConfigCriteriaList.member = Shapes::ShapeRef.new(shape: RetryConfigCriteria)

    RolloutRateIncreaseCriteria.add_member(:number_of_notified_things, Shapes::ShapeRef.new(shape: NumberOfNotifiedThings, location_name: "numberOfNotifiedThings"))
    RolloutRateIncreaseCriteria.add_member(:number_of_succeeded_things, Shapes::ShapeRef.new(shape: NumberOfSucceededThings, location_name: "numberOfSucceededThings"))
    RolloutRateIncreaseCriteria.struct_class = Types::RolloutRateIncreaseCriteria

    RuntimeLogConfigurations.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "LogLevel"))
    RuntimeLogConfigurations.add_member(:log_flush_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "LogFlushLevel"))
    RuntimeLogConfigurations.add_member(:local_store_location, Shapes::ShapeRef.new(shape: LocalStoreLocation, location_name: "LocalStoreLocation"))
    RuntimeLogConfigurations.add_member(:local_store_file_rotation_max_files, Shapes::ShapeRef.new(shape: LocalStoreFileRotationMaxFiles, location_name: "LocalStoreFileRotationMaxFiles"))
    RuntimeLogConfigurations.add_member(:local_store_file_rotation_max_bytes, Shapes::ShapeRef.new(shape: LocalStoreFileRotationMaxBytes, location_name: "LocalStoreFileRotationMaxBytes"))
    RuntimeLogConfigurations.add_member(:upload_log, Shapes::ShapeRef.new(shape: UploadLog, location_name: "UploadLog"))
    RuntimeLogConfigurations.add_member(:upload_period_minutes, Shapes::ShapeRef.new(shape: UploadPeriodMinutes, location_name: "UploadPeriodMinutes"))
    RuntimeLogConfigurations.add_member(:delete_local_store_after_upload, Shapes::ShapeRef.new(shape: DeleteLocalStoreAfterUpload, location_name: "DeleteLocalStoreAfterUpload"))
    RuntimeLogConfigurations.struct_class = Types::RuntimeLogConfigurations

    ScheduleMaintenanceWindow.add_member(:duration_in_minutes, Shapes::ShapeRef.new(shape: DurationInMinutes, location_name: "DurationInMinutes"))
    ScheduleMaintenanceWindow.add_member(:start_time, Shapes::ShapeRef.new(shape: StartTime, location_name: "StartTime"))
    ScheduleMaintenanceWindow.struct_class = Types::ScheduleMaintenanceWindow

    ScheduleMaintenanceWindowList.member = Shapes::ShapeRef.new(shape: ScheduleMaintenanceWindow)

    SchemaVersionList.member = Shapes::ShapeRef.new(shape: SchemaVersionListItem)

    SchemaVersionListItem.add_member(:schema_id, Shapes::ShapeRef.new(shape: SchemaId, location_name: "SchemaId"))
    SchemaVersionListItem.add_member(:type, Shapes::ShapeRef.new(shape: SchemaVersionType, location_name: "Type"))
    SchemaVersionListItem.add_member(:description, Shapes::ShapeRef.new(shape: SchemaVersionDescription, location_name: "Description"))
    SchemaVersionListItem.add_member(:namespace, Shapes::ShapeRef.new(shape: SchemaVersionNamespaceName, location_name: "Namespace"))
    SchemaVersionListItem.add_member(:semantic_version, Shapes::ShapeRef.new(shape: SchemaVersionVersion, location_name: "SemanticVersion"))
    SchemaVersionListItem.add_member(:visibility, Shapes::ShapeRef.new(shape: SchemaVersionVisibility, location_name: "Visibility"))
    SchemaVersionListItem.struct_class = Types::SchemaVersionListItem

    SendManagedThingCommandRequest.add_member(:managed_thing_id, Shapes::ShapeRef.new(shape: ManagedThingId, required: true, location: "uri", location_name: "ManagedThingId"))
    SendManagedThingCommandRequest.add_member(:endpoints, Shapes::ShapeRef.new(shape: CommandEndpoints, required: true, location_name: "Endpoints"))
    SendManagedThingCommandRequest.add_member(:connector_association_id, Shapes::ShapeRef.new(shape: ConnectorAssociationId, location_name: "ConnectorAssociationId"))
    SendManagedThingCommandRequest.struct_class = Types::SendManagedThingCommandRequest

    SendManagedThingCommandResponse.add_member(:trace_id, Shapes::ShapeRef.new(shape: TraceId, location_name: "TraceId"))
    SendManagedThingCommandResponse.struct_class = Types::SendManagedThingCommandResponse

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    StartDeviceDiscoveryRequest.add_member(:discovery_type, Shapes::ShapeRef.new(shape: DiscoveryType, required: true, location_name: "DiscoveryType"))
    StartDeviceDiscoveryRequest.add_member(:controller_identifier, Shapes::ShapeRef.new(shape: ManagedThingId, location_name: "ControllerIdentifier"))
    StartDeviceDiscoveryRequest.add_member(:connector_association_identifier, Shapes::ShapeRef.new(shape: ConnectorAssociationId, location_name: "ConnectorAssociationIdentifier"))
    StartDeviceDiscoveryRequest.add_member(:authentication_material, Shapes::ShapeRef.new(shape: DiscoveryAuthMaterialString, location_name: "AuthenticationMaterial"))
    StartDeviceDiscoveryRequest.add_member(:authentication_material_type, Shapes::ShapeRef.new(shape: DiscoveryAuthMaterialType, location_name: "AuthenticationMaterialType"))
    StartDeviceDiscoveryRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken"))
    StartDeviceDiscoveryRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    StartDeviceDiscoveryRequest.struct_class = Types::StartDeviceDiscoveryRequest

    StartDeviceDiscoveryResponse.add_member(:id, Shapes::ShapeRef.new(shape: DeviceDiscoveryId, location_name: "Id"))
    StartDeviceDiscoveryResponse.add_member(:started_at, Shapes::ShapeRef.new(shape: DiscoveryStartedAt, location_name: "StartedAt"))
    StartDeviceDiscoveryResponse.struct_class = Types::StartDeviceDiscoveryResponse

    StateCapabilities.member = Shapes::ShapeRef.new(shape: StateCapability)

    StateCapability.add_member(:id, Shapes::ShapeRef.new(shape: SchemaVersionedId, required: true, location_name: "id"))
    StateCapability.add_member(:name, Shapes::ShapeRef.new(shape: CapabilityName, required: true, location_name: "name"))
    StateCapability.add_member(:version, Shapes::ShapeRef.new(shape: CapabilityVersion, required: true, location_name: "version"))
    StateCapability.add_member(:properties, Shapes::ShapeRef.new(shape: CapabilityProperties, location_name: "properties"))
    StateCapability.struct_class = Types::StateCapability

    StateEndpoint.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: EndpointId, required: true, location_name: "endpointId"))
    StateEndpoint.add_member(:capabilities, Shapes::ShapeRef.new(shape: StateCapabilities, required: true, location_name: "capabilities"))
    StateEndpoint.struct_class = Types::StateEndpoint

    StateEndpoints.member = Shapes::ShapeRef.new(shape: StateEndpoint)

    TagsMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagsMap.value = Shapes::ShapeRef.new(shape: TagValue)

    Target.member = Shapes::ShapeRef.new(shape: String)

    TaskProcessingDetails.add_member(:number_of_canceled_things, Shapes::ShapeRef.new(shape: Integer, location_name: "NumberOfCanceledThings"))
    TaskProcessingDetails.add_member(:number_of_failed_things, Shapes::ShapeRef.new(shape: Integer, location_name: "NumberOfFailedThings"))
    TaskProcessingDetails.add_member(:number_of_in_progress_things, Shapes::ShapeRef.new(shape: Integer, location_name: "NumberOfInProgressThings"))
    TaskProcessingDetails.add_member(:number_of_queued_things, Shapes::ShapeRef.new(shape: Integer, location_name: "numberOfQueuedThings"))
    TaskProcessingDetails.add_member(:number_of_rejected_things, Shapes::ShapeRef.new(shape: Integer, location_name: "numberOfRejectedThings"))
    TaskProcessingDetails.add_member(:number_of_removed_things, Shapes::ShapeRef.new(shape: Integer, location_name: "numberOfRemovedThings"))
    TaskProcessingDetails.add_member(:number_of_succeeded_things, Shapes::ShapeRef.new(shape: Integer, location_name: "numberOfSucceededThings"))
    TaskProcessingDetails.add_member(:number_of_timed_out_things, Shapes::ShapeRef.new(shape: Integer, location_name: "numberOfTimedOutThings"))
    TaskProcessingDetails.add_member(:processing_targets, Shapes::ShapeRef.new(shape: Target, location_name: "processingTargets"))
    TaskProcessingDetails.struct_class = Types::TaskProcessingDetails

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UnauthorizedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    UnauthorizedException.struct_class = Types::UnauthorizedException

    UpdateDestinationRequest.add_member(:name, Shapes::ShapeRef.new(shape: DestinationName, required: true, location: "uri", location_name: "Name"))
    UpdateDestinationRequest.add_member(:delivery_destination_arn, Shapes::ShapeRef.new(shape: DeliveryDestinationArn, location_name: "DeliveryDestinationArn"))
    UpdateDestinationRequest.add_member(:delivery_destination_type, Shapes::ShapeRef.new(shape: DeliveryDestinationType, location_name: "DeliveryDestinationType"))
    UpdateDestinationRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: DeliveryDestinationRoleArn, location_name: "RoleArn"))
    UpdateDestinationRequest.add_member(:description, Shapes::ShapeRef.new(shape: DestinationDescription, location_name: "Description"))
    UpdateDestinationRequest.struct_class = Types::UpdateDestinationRequest

    UpdateEventLogConfigurationRequest.add_member(:id, Shapes::ShapeRef.new(shape: LogConfigurationId, required: true, location: "uri", location_name: "Id"))
    UpdateEventLogConfigurationRequest.add_member(:event_log_level, Shapes::ShapeRef.new(shape: LogLevel, required: true, location_name: "EventLogLevel"))
    UpdateEventLogConfigurationRequest.struct_class = Types::UpdateEventLogConfigurationRequest

    UpdateManagedThingRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ManagedThingId, required: true, location: "uri", location_name: "Identifier"))
    UpdateManagedThingRequest.add_member(:owner, Shapes::ShapeRef.new(shape: Owner, location_name: "Owner"))
    UpdateManagedThingRequest.add_member(:credential_locker_id, Shapes::ShapeRef.new(shape: CredentialLockerId, location_name: "CredentialLockerId"))
    UpdateManagedThingRequest.add_member(:serial_number, Shapes::ShapeRef.new(shape: SerialNumber, location_name: "SerialNumber"))
    UpdateManagedThingRequest.add_member(:brand, Shapes::ShapeRef.new(shape: Brand, location_name: "Brand"))
    UpdateManagedThingRequest.add_member(:model, Shapes::ShapeRef.new(shape: Model, location_name: "Model"))
    UpdateManagedThingRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    UpdateManagedThingRequest.add_member(:capability_report, Shapes::ShapeRef.new(shape: CapabilityReport, location_name: "CapabilityReport"))
    UpdateManagedThingRequest.add_member(:capabilities, Shapes::ShapeRef.new(shape: Capabilities, location_name: "Capabilities"))
    UpdateManagedThingRequest.add_member(:classification, Shapes::ShapeRef.new(shape: Classification, location_name: "Classification"))
    UpdateManagedThingRequest.add_member(:hub_network_mode, Shapes::ShapeRef.new(shape: HubNetworkMode, location_name: "HubNetworkMode"))
    UpdateManagedThingRequest.add_member(:meta_data, Shapes::ShapeRef.new(shape: MetaData, location_name: "MetaData"))
    UpdateManagedThingRequest.struct_class = Types::UpdateManagedThingRequest

    UpdateNotificationConfigurationRequest.add_member(:event_type, Shapes::ShapeRef.new(shape: EventType, required: true, location: "uri", location_name: "EventType"))
    UpdateNotificationConfigurationRequest.add_member(:destination_name, Shapes::ShapeRef.new(shape: DestinationName, required: true, location_name: "DestinationName"))
    UpdateNotificationConfigurationRequest.struct_class = Types::UpdateNotificationConfigurationRequest

    UpdateOtaTaskRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: OtaTaskId, required: true, location: "uri", location_name: "Identifier"))
    UpdateOtaTaskRequest.add_member(:description, Shapes::ShapeRef.new(shape: OtaDescription, location_name: "Description"))
    UpdateOtaTaskRequest.add_member(:task_configuration_id, Shapes::ShapeRef.new(shape: OtaTaskConfigurationId, location_name: "TaskConfigurationId"))
    UpdateOtaTaskRequest.struct_class = Types::UpdateOtaTaskRequest

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2025-03-03"

      api.metadata = {
        "apiVersion" => "2025-03-03",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "api.iotmanagedintegrations",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Managed integrations for AWS IoT Device Management",
        "serviceId" => "IoT Managed Integrations",
        "signatureVersion" => "v4",
        "signingName" => "iotmanagedintegrations",
        "uid" => "iot-managed-integrations-2025-03-03",
      }

      api.add_operation(:create_credential_locker, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCredentialLocker"
        o.http_method = "POST"
        o.http_request_uri = "/credential-lockers"
        o.input = Shapes::ShapeRef.new(shape: CreateCredentialLockerRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCredentialLockerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDestination"
        o.http_method = "POST"
        o.http_request_uri = "/destinations"
        o.input = Shapes::ShapeRef.new(shape: CreateDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDestinationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_event_log_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEventLogConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/event-log-configurations"
        o.input = Shapes::ShapeRef.new(shape: CreateEventLogConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEventLogConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_managed_thing, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateManagedThing"
        o.http_method = "POST"
        o.http_request_uri = "/managed-things"
        o.input = Shapes::ShapeRef.new(shape: CreateManagedThingRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateManagedThingResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_notification_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateNotificationConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/notification-configurations"
        o.input = Shapes::ShapeRef.new(shape: CreateNotificationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateNotificationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_ota_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateOtaTask"
        o.http_method = "POST"
        o.http_request_uri = "/ota-tasks"
        o.input = Shapes::ShapeRef.new(shape: CreateOtaTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateOtaTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_ota_task_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateOtaTaskConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/ota-task-configurations"
        o.input = Shapes::ShapeRef.new(shape: CreateOtaTaskConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateOtaTaskConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_provisioning_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProvisioningProfile"
        o.http_method = "POST"
        o.http_request_uri = "/provisioning-profiles"
        o.input = Shapes::ShapeRef.new(shape: CreateProvisioningProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateProvisioningProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_credential_locker, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCredentialLocker"
        o.http_method = "DELETE"
        o.http_request_uri = "/credential-lockers/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteCredentialLockerRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDestination"
        o.http_method = "DELETE"
        o.http_request_uri = "/destinations/{Name}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_event_log_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEventLogConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/event-log-configurations/{Id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteEventLogConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_managed_thing, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteManagedThing"
        o.http_method = "DELETE"
        o.http_request_uri = "/managed-things/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteManagedThingRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_notification_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteNotificationConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/notification-configurations/{EventType}"
        o.input = Shapes::ShapeRef.new(shape: DeleteNotificationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_ota_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteOtaTask"
        o.http_method = "DELETE"
        o.http_request_uri = "/ota-tasks/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteOtaTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_ota_task_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteOtaTaskConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/ota-task-configurations/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteOtaTaskConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_provisioning_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProvisioningProfile"
        o.http_method = "DELETE"
        o.http_request_uri = "/provisioning-profiles/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteProvisioningProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_credential_locker, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCredentialLocker"
        o.http_method = "GET"
        o.http_request_uri = "/credential-lockers/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetCredentialLockerRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCredentialLockerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_custom_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCustomEndpoint"
        o.http_method = "GET"
        o.http_request_uri = "/custom-endpoint"
        o.input = Shapes::ShapeRef.new(shape: GetCustomEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCustomEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_default_encryption_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDefaultEncryptionConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/configuration/account/encryption"
        o.input = Shapes::ShapeRef.new(shape: GetDefaultEncryptionConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDefaultEncryptionConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDestination"
        o.http_method = "GET"
        o.http_request_uri = "/destinations/{Name}"
        o.input = Shapes::ShapeRef.new(shape: GetDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDestinationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_device_discovery, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDeviceDiscovery"
        o.http_method = "GET"
        o.http_request_uri = "/device-discoveries/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetDeviceDiscoveryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDeviceDiscoveryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_event_log_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEventLogConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/event-log-configurations/{Id}"
        o.input = Shapes::ShapeRef.new(shape: GetEventLogConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEventLogConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_hub_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetHubConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/hub-configuration"
        o.input = Shapes::ShapeRef.new(shape: GetHubConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetHubConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_managed_thing, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetManagedThing"
        o.http_method = "GET"
        o.http_request_uri = "/managed-things/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetManagedThingRequest)
        o.output = Shapes::ShapeRef.new(shape: GetManagedThingResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_managed_thing_capabilities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetManagedThingCapabilities"
        o.http_method = "GET"
        o.http_request_uri = "/managed-things-capabilities/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetManagedThingCapabilitiesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetManagedThingCapabilitiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_managed_thing_connectivity_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetManagedThingConnectivityData"
        o.http_method = "POST"
        o.http_request_uri = "/managed-things-connectivity-data/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetManagedThingConnectivityDataRequest)
        o.output = Shapes::ShapeRef.new(shape: GetManagedThingConnectivityDataResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_managed_thing_meta_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetManagedThingMetaData"
        o.http_method = "GET"
        o.http_request_uri = "/managed-things-metadata/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetManagedThingMetaDataRequest)
        o.output = Shapes::ShapeRef.new(shape: GetManagedThingMetaDataResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_managed_thing_state, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetManagedThingState"
        o.http_method = "GET"
        o.http_request_uri = "/managed-thing-states/{ManagedThingId}"
        o.input = Shapes::ShapeRef.new(shape: GetManagedThingStateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetManagedThingStateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_notification_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetNotificationConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/notification-configurations/{EventType}"
        o.input = Shapes::ShapeRef.new(shape: GetNotificationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetNotificationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_ota_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOtaTask"
        o.http_method = "GET"
        o.http_request_uri = "/ota-tasks/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetOtaTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: GetOtaTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_ota_task_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOtaTaskConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/ota-task-configurations/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetOtaTaskConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetOtaTaskConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_provisioning_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProvisioningProfile"
        o.http_method = "GET"
        o.http_request_uri = "/provisioning-profiles/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetProvisioningProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProvisioningProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_runtime_log_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRuntimeLogConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/runtime-log-configurations/{ManagedThingId}"
        o.input = Shapes::ShapeRef.new(shape: GetRuntimeLogConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRuntimeLogConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_schema_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSchemaVersion"
        o.http_method = "GET"
        o.http_request_uri = "/schema-versions/{Type}/{SchemaVersionedId}"
        o.input = Shapes::ShapeRef.new(shape: GetSchemaVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSchemaVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_credential_lockers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCredentialLockers"
        o.http_method = "GET"
        o.http_request_uri = "/credential-lockers"
        o.input = Shapes::ShapeRef.new(shape: ListCredentialLockersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCredentialLockersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_destinations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDestinations"
        o.http_method = "GET"
        o.http_request_uri = "/destinations"
        o.input = Shapes::ShapeRef.new(shape: ListDestinationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDestinationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_event_log_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEventLogConfigurations"
        o.http_method = "GET"
        o.http_request_uri = "/event-log-configurations"
        o.input = Shapes::ShapeRef.new(shape: ListEventLogConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEventLogConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_managed_thing_schemas, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListManagedThingSchemas"
        o.http_method = "GET"
        o.http_request_uri = "/managed-thing-schemas/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: ListManagedThingSchemasRequest)
        o.output = Shapes::ShapeRef.new(shape: ListManagedThingSchemasResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_managed_things, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListManagedThings"
        o.http_method = "GET"
        o.http_request_uri = "/managed-things"
        o.input = Shapes::ShapeRef.new(shape: ListManagedThingsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListManagedThingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_notification_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNotificationConfigurations"
        o.http_method = "GET"
        o.http_request_uri = "/notification-configurations"
        o.input = Shapes::ShapeRef.new(shape: ListNotificationConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNotificationConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_ota_task_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOtaTaskConfigurations"
        o.http_method = "GET"
        o.http_request_uri = "/ota-task-configurations"
        o.input = Shapes::ShapeRef.new(shape: ListOtaTaskConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListOtaTaskConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_ota_task_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOtaTaskExecutions"
        o.http_method = "GET"
        o.http_request_uri = "/ota-tasks/{Identifier}/devices"
        o.input = Shapes::ShapeRef.new(shape: ListOtaTaskExecutionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListOtaTaskExecutionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_ota_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOtaTasks"
        o.http_method = "GET"
        o.http_request_uri = "/ota-tasks"
        o.input = Shapes::ShapeRef.new(shape: ListOtaTasksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListOtaTasksResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_provisioning_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProvisioningProfiles"
        o.http_method = "GET"
        o.http_request_uri = "/provisioning-profiles"
        o.input = Shapes::ShapeRef.new(shape: ListProvisioningProfilesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProvisioningProfilesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_schema_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSchemaVersions"
        o.http_method = "GET"
        o.http_request_uri = "/schema-versions/{Type}"
        o.input = Shapes::ShapeRef.new(shape: ListSchemaVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSchemaVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_default_encryption_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutDefaultEncryptionConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/configuration/account/encryption"
        o.input = Shapes::ShapeRef.new(shape: PutDefaultEncryptionConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutDefaultEncryptionConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:put_hub_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutHubConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/hub-configuration"
        o.input = Shapes::ShapeRef.new(shape: PutHubConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutHubConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:put_runtime_log_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutRuntimeLogConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/runtime-log-configurations/{ManagedThingId}"
        o.input = Shapes::ShapeRef.new(shape: PutRuntimeLogConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:register_custom_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterCustomEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/custom-endpoint"
        o.input = Shapes::ShapeRef.new(shape: RegisterCustomEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterCustomEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:reset_runtime_log_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResetRuntimeLogConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/runtime-log-configurations/{ManagedThingId}"
        o.input = Shapes::ShapeRef.new(shape: ResetRuntimeLogConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:send_managed_thing_command, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendManagedThingCommand"
        o.http_method = "POST"
        o.http_request_uri = "/managed-things-command/{ManagedThingId}"
        o.input = Shapes::ShapeRef.new(shape: SendManagedThingCommandRequest)
        o.output = Shapes::ShapeRef.new(shape: SendManagedThingCommandResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:start_device_discovery, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDeviceDiscovery"
        o.http_method = "POST"
        o.http_request_uri = "/device-discoveries"
        o.input = Shapes::ShapeRef.new(shape: StartDeviceDiscoveryRequest)
        o.output = Shapes::ShapeRef.new(shape: StartDeviceDiscoveryResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDestination"
        o.http_method = "PUT"
        o.http_request_uri = "/destinations/{Name}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_event_log_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEventLogConfiguration"
        o.http_method = "PATCH"
        o.http_request_uri = "/event-log-configurations/{Id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateEventLogConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_managed_thing, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateManagedThing"
        o.http_method = "PUT"
        o.http_request_uri = "/managed-things/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateManagedThingRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_notification_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateNotificationConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/notification-configurations/{EventType}"
        o.input = Shapes::ShapeRef.new(shape: UpdateNotificationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_ota_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateOtaTask"
        o.http_method = "PUT"
        o.http_request_uri = "/ota-tasks/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateOtaTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)
    end

  end
end
