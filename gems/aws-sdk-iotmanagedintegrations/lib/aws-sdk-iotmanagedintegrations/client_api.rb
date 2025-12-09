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
    AccountAssociationArn = Shapes::StringShape.new(name: 'AccountAssociationArn')
    AccountAssociationDescription = Shapes::StringShape.new(name: 'AccountAssociationDescription')
    AccountAssociationErrorMessage = Shapes::StringShape.new(name: 'AccountAssociationErrorMessage')
    AccountAssociationId = Shapes::StringShape.new(name: 'AccountAssociationId')
    AccountAssociationItem = Shapes::StructureShape.new(name: 'AccountAssociationItem')
    AccountAssociationListDefinition = Shapes::ListShape.new(name: 'AccountAssociationListDefinition')
    AccountAssociationName = Shapes::StringShape.new(name: 'AccountAssociationName')
    ActionName = Shapes::StringShape.new(name: 'ActionName')
    ActionReference = Shapes::StringShape.new(name: 'ActionReference')
    ActionTraceId = Shapes::StringShape.new(name: 'ActionTraceId')
    AdvertisedProductId = Shapes::StringShape.new(name: 'AdvertisedProductId')
    AssociationState = Shapes::StringShape.new(name: 'AssociationState')
    AttributeName = Shapes::StringShape.new(name: 'AttributeName')
    AttributeValue = Shapes::StringShape.new(name: 'AttributeValue')
    AuthConfig = Shapes::StructureShape.new(name: 'AuthConfig')
    AuthConfigUpdate = Shapes::StructureShape.new(name: 'AuthConfigUpdate')
    AuthMaterialString = Shapes::StringShape.new(name: 'AuthMaterialString')
    AuthMaterialType = Shapes::StringShape.new(name: 'AuthMaterialType')
    AuthType = Shapes::StringShape.new(name: 'AuthType')
    AuthUrl = Shapes::StringShape.new(name: 'AuthUrl')
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
    CapabilitySchemaItem = Shapes::StructureShape.new(name: 'CapabilitySchemaItem')
    CapabilitySchemas = Shapes::ListShape.new(name: 'CapabilitySchemas')
    CapabilityVersion = Shapes::StringShape.new(name: 'CapabilityVersion')
    CertificatePem = Shapes::StringShape.new(name: 'CertificatePem')
    ClaimCertificate = Shapes::StringShape.new(name: 'ClaimCertificate')
    ClaimCertificatePrivateKey = Shapes::StringShape.new(name: 'ClaimCertificatePrivateKey')
    Classification = Shapes::StringShape.new(name: 'Classification')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CloudConnectorDescription = Shapes::StringShape.new(name: 'CloudConnectorDescription')
    CloudConnectorId = Shapes::StringShape.new(name: 'CloudConnectorId')
    CloudConnectorType = Shapes::StringShape.new(name: 'CloudConnectorType')
    ClusterId = Shapes::StringShape.new(name: 'ClusterId')
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
    ConnectorDestinationDescription = Shapes::StringShape.new(name: 'ConnectorDestinationDescription')
    ConnectorDestinationId = Shapes::StringShape.new(name: 'ConnectorDestinationId')
    ConnectorDestinationListDefinition = Shapes::ListShape.new(name: 'ConnectorDestinationListDefinition')
    ConnectorDestinationName = Shapes::StringShape.new(name: 'ConnectorDestinationName')
    ConnectorDestinationSummary = Shapes::StructureShape.new(name: 'ConnectorDestinationSummary')
    ConnectorDeviceId = Shapes::StringShape.new(name: 'ConnectorDeviceId')
    ConnectorDeviceName = Shapes::StringShape.new(name: 'ConnectorDeviceName')
    ConnectorEventMessage = Shapes::StringShape.new(name: 'ConnectorEventMessage')
    ConnectorEventOperation = Shapes::StringShape.new(name: 'ConnectorEventOperation')
    ConnectorEventOperationVersion = Shapes::StringShape.new(name: 'ConnectorEventOperationVersion')
    ConnectorEventStatusCode = Shapes::IntegerShape.new(name: 'ConnectorEventStatusCode')
    ConnectorId = Shapes::StringShape.new(name: 'ConnectorId')
    ConnectorItem = Shapes::StructureShape.new(name: 'ConnectorItem')
    ConnectorList = Shapes::ListShape.new(name: 'ConnectorList')
    ConnectorPolicyId = Shapes::StringShape.new(name: 'ConnectorPolicyId')
    CreateAccountAssociationRequest = Shapes::StructureShape.new(name: 'CreateAccountAssociationRequest')
    CreateAccountAssociationResponse = Shapes::StructureShape.new(name: 'CreateAccountAssociationResponse')
    CreateCloudConnectorRequest = Shapes::StructureShape.new(name: 'CreateCloudConnectorRequest')
    CreateCloudConnectorResponse = Shapes::StructureShape.new(name: 'CreateCloudConnectorResponse')
    CreateConnectorDestinationRequest = Shapes::StructureShape.new(name: 'CreateConnectorDestinationRequest')
    CreateConnectorDestinationResponse = Shapes::StructureShape.new(name: 'CreateConnectorDestinationResponse')
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
    CustomProtocolDetail = Shapes::MapShape.new(name: 'CustomProtocolDetail')
    CustomProtocolDetailKey = Shapes::StringShape.new(name: 'CustomProtocolDetailKey')
    CustomProtocolDetailValue = Shapes::StringShape.new(name: 'CustomProtocolDetailValue')
    DeleteAccountAssociationRequest = Shapes::StructureShape.new(name: 'DeleteAccountAssociationRequest')
    DeleteCloudConnectorRequest = Shapes::StructureShape.new(name: 'DeleteCloudConnectorRequest')
    DeleteConnectorDestinationRequest = Shapes::StructureShape.new(name: 'DeleteConnectorDestinationRequest')
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
    DeregisterAccountAssociationRequest = Shapes::StructureShape.new(name: 'DeregisterAccountAssociationRequest')
    DestinationCreatedAt = Shapes::TimestampShape.new(name: 'DestinationCreatedAt')
    DestinationDescription = Shapes::StringShape.new(name: 'DestinationDescription')
    DestinationListDefinition = Shapes::ListShape.new(name: 'DestinationListDefinition')
    DestinationName = Shapes::StringShape.new(name: 'DestinationName')
    DestinationSummary = Shapes::StructureShape.new(name: 'DestinationSummary')
    DestinationUpdatedAt = Shapes::TimestampShape.new(name: 'DestinationUpdatedAt')
    Device = Shapes::StructureShape.new(name: 'Device')
    DeviceDiscoveryArn = Shapes::StringShape.new(name: 'DeviceDiscoveryArn')
    DeviceDiscoveryId = Shapes::StringShape.new(name: 'DeviceDiscoveryId')
    DeviceDiscoveryListDefinition = Shapes::ListShape.new(name: 'DeviceDiscoveryListDefinition')
    DeviceDiscoveryStatus = Shapes::StringShape.new(name: 'DeviceDiscoveryStatus')
    DeviceDiscoverySummary = Shapes::StructureShape.new(name: 'DeviceDiscoverySummary')
    DeviceMetadata = Shapes::DocumentShape.new(name: 'DeviceMetadata', document: true)
    DeviceSpecificKey = Shapes::StringShape.new(name: 'DeviceSpecificKey')
    DeviceType = Shapes::StringShape.new(name: 'DeviceType')
    DeviceTypeList = Shapes::ListShape.new(name: 'DeviceTypeList')
    DeviceTypes = Shapes::ListShape.new(name: 'DeviceTypes')
    Devices = Shapes::ListShape.new(name: 'Devices')
    DisconnectReasonValue = Shapes::StringShape.new(name: 'DisconnectReasonValue')
    DiscoveredAt = Shapes::TimestampShape.new(name: 'DiscoveredAt')
    DiscoveredDeviceListDefinition = Shapes::ListShape.new(name: 'DiscoveredDeviceListDefinition')
    DiscoveredDeviceSummary = Shapes::StructureShape.new(name: 'DiscoveredDeviceSummary')
    DiscoveryAuthMaterialString = Shapes::StringShape.new(name: 'DiscoveryAuthMaterialString')
    DiscoveryAuthMaterialType = Shapes::StringShape.new(name: 'DiscoveryAuthMaterialType')
    DiscoveryFinishedAt = Shapes::TimestampShape.new(name: 'DiscoveryFinishedAt')
    DiscoveryModification = Shapes::StringShape.new(name: 'DiscoveryModification')
    DiscoveryStartedAt = Shapes::TimestampShape.new(name: 'DiscoveryStartedAt')
    DiscoveryType = Shapes::StringShape.new(name: 'DiscoveryType')
    DisplayName = Shapes::StringShape.new(name: 'DisplayName')
    DurationInMinutes = Shapes::IntegerShape.new(name: 'DurationInMinutes')
    EncryptionType = Shapes::StringShape.new(name: 'EncryptionType')
    EndTime = Shapes::StringShape.new(name: 'EndTime')
    EndpointAddress = Shapes::StringShape.new(name: 'EndpointAddress')
    EndpointConfig = Shapes::StructureShape.new(name: 'EndpointConfig')
    EndpointId = Shapes::StringShape.new(name: 'EndpointId')
    EndpointSemanticTag = Shapes::StringShape.new(name: 'EndpointSemanticTag')
    EndpointType = Shapes::StringShape.new(name: 'EndpointType')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ErrorResourceId = Shapes::StringShape.new(name: 'ErrorResourceId')
    ErrorResourceType = Shapes::StringShape.new(name: 'ErrorResourceType')
    EventLogConfigurationListDefinition = Shapes::ListShape.new(name: 'EventLogConfigurationListDefinition')
    EventLogConfigurationSummary = Shapes::StructureShape.new(name: 'EventLogConfigurationSummary')
    EventName = Shapes::StringShape.new(name: 'EventName')
    EventType = Shapes::StringShape.new(name: 'EventType')
    ExecutionNumber = Shapes::IntegerShape.new(name: 'ExecutionNumber')
    ExponentialRolloutRate = Shapes::StructureShape.new(name: 'ExponentialRolloutRate')
    ExtrinsicSchemaId = Shapes::StringShape.new(name: 'ExtrinsicSchemaId')
    GetAccountAssociationRequest = Shapes::StructureShape.new(name: 'GetAccountAssociationRequest')
    GetAccountAssociationResponse = Shapes::StructureShape.new(name: 'GetAccountAssociationResponse')
    GetCloudConnectorRequest = Shapes::StructureShape.new(name: 'GetCloudConnectorRequest')
    GetCloudConnectorResponse = Shapes::StructureShape.new(name: 'GetCloudConnectorResponse')
    GetConnectorDestinationRequest = Shapes::StructureShape.new(name: 'GetConnectorDestinationRequest')
    GetConnectorDestinationResponse = Shapes::StructureShape.new(name: 'GetConnectorDestinationResponse')
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
    GetManagedThingCertificateRequest = Shapes::StructureShape.new(name: 'GetManagedThingCertificateRequest')
    GetManagedThingCertificateResponse = Shapes::StructureShape.new(name: 'GetManagedThingCertificateResponse')
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
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    IoTManagedIntegrationsResourceARN = Shapes::StringShape.new(name: 'IoTManagedIntegrationsResourceARN')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    LambdaArn = Shapes::StringShape.new(name: 'LambdaArn')
    LambdaConfig = Shapes::StructureShape.new(name: 'LambdaConfig')
    LastUpdatedAt = Shapes::TimestampShape.new(name: 'LastUpdatedAt')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListAccountAssociationsRequest = Shapes::StructureShape.new(name: 'ListAccountAssociationsRequest')
    ListAccountAssociationsResponse = Shapes::StructureShape.new(name: 'ListAccountAssociationsResponse')
    ListCloudConnectorsRequest = Shapes::StructureShape.new(name: 'ListCloudConnectorsRequest')
    ListCloudConnectorsResponse = Shapes::StructureShape.new(name: 'ListCloudConnectorsResponse')
    ListConnectorDestinationsRequest = Shapes::StructureShape.new(name: 'ListConnectorDestinationsRequest')
    ListConnectorDestinationsResponse = Shapes::StructureShape.new(name: 'ListConnectorDestinationsResponse')
    ListCredentialLockersRequest = Shapes::StructureShape.new(name: 'ListCredentialLockersRequest')
    ListCredentialLockersResponse = Shapes::StructureShape.new(name: 'ListCredentialLockersResponse')
    ListDestinationsRequest = Shapes::StructureShape.new(name: 'ListDestinationsRequest')
    ListDestinationsResponse = Shapes::StructureShape.new(name: 'ListDestinationsResponse')
    ListDeviceDiscoveriesRequest = Shapes::StructureShape.new(name: 'ListDeviceDiscoveriesRequest')
    ListDeviceDiscoveriesResponse = Shapes::StructureShape.new(name: 'ListDeviceDiscoveriesResponse')
    ListDiscoveredDevicesRequest = Shapes::StructureShape.new(name: 'ListDiscoveredDevicesRequest')
    ListDiscoveredDevicesResponse = Shapes::StructureShape.new(name: 'ListDiscoveredDevicesResponse')
    ListEventLogConfigurationsRequest = Shapes::StructureShape.new(name: 'ListEventLogConfigurationsRequest')
    ListEventLogConfigurationsResponse = Shapes::StructureShape.new(name: 'ListEventLogConfigurationsResponse')
    ListManagedThingAccountAssociationsRequest = Shapes::StructureShape.new(name: 'ListManagedThingAccountAssociationsRequest')
    ListManagedThingAccountAssociationsResponse = Shapes::StructureShape.new(name: 'ListManagedThingAccountAssociationsResponse')
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
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LocalStoreFileRotationMaxBytes = Shapes::IntegerShape.new(name: 'LocalStoreFileRotationMaxBytes')
    LocalStoreFileRotationMaxFiles = Shapes::IntegerShape.new(name: 'LocalStoreFileRotationMaxFiles')
    LocalStoreLocation = Shapes::StringShape.new(name: 'LocalStoreLocation')
    LogConfigurationId = Shapes::StringShape.new(name: 'LogConfigurationId')
    LogLevel = Shapes::StringShape.new(name: 'LogLevel')
    MacAddress = Shapes::StringShape.new(name: 'MacAddress')
    ManagedThingArn = Shapes::StringShape.new(name: 'ManagedThingArn')
    ManagedThingAssociation = Shapes::StructureShape.new(name: 'ManagedThingAssociation')
    ManagedThingAssociationList = Shapes::ListShape.new(name: 'ManagedThingAssociationList')
    ManagedThingId = Shapes::StringShape.new(name: 'ManagedThingId')
    ManagedThingListDefinition = Shapes::ListShape.new(name: 'ManagedThingListDefinition')
    ManagedThingSchemaListDefinition = Shapes::ListShape.new(name: 'ManagedThingSchemaListDefinition')
    ManagedThingSchemaListItem = Shapes::StructureShape.new(name: 'ManagedThingSchemaListItem')
    ManagedThingSummary = Shapes::StructureShape.new(name: 'ManagedThingSummary')
    MatterAttributeId = Shapes::StringShape.new(name: 'MatterAttributeId')
    MatterAttributes = Shapes::DocumentShape.new(name: 'MatterAttributes', document: true)
    MatterCapabilityReport = Shapes::StructureShape.new(name: 'MatterCapabilityReport')
    MatterCapabilityReportAttribute = Shapes::StructureShape.new(name: 'MatterCapabilityReportAttribute')
    MatterCapabilityReportAttributeValue = Shapes::DocumentShape.new(name: 'MatterCapabilityReportAttributeValue', document: true)
    MatterCapabilityReportAttributes = Shapes::ListShape.new(name: 'MatterCapabilityReportAttributes')
    MatterCapabilityReportCluster = Shapes::StructureShape.new(name: 'MatterCapabilityReportCluster')
    MatterCapabilityReportClusterRevisionId = Shapes::IntegerShape.new(name: 'MatterCapabilityReportClusterRevisionId')
    MatterCapabilityReportClusters = Shapes::ListShape.new(name: 'MatterCapabilityReportClusters')
    MatterCapabilityReportCommands = Shapes::ListShape.new(name: 'MatterCapabilityReportCommands')
    MatterCapabilityReportEndpoint = Shapes::StructureShape.new(name: 'MatterCapabilityReportEndpoint')
    MatterCapabilityReportEndpointClientClusters = Shapes::ListShape.new(name: 'MatterCapabilityReportEndpointClientClusters')
    MatterCapabilityReportEndpointParts = Shapes::ListShape.new(name: 'MatterCapabilityReportEndpointParts')
    MatterCapabilityReportEndpointSemanticTags = Shapes::ListShape.new(name: 'MatterCapabilityReportEndpointSemanticTags')
    MatterCapabilityReportEndpoints = Shapes::ListShape.new(name: 'MatterCapabilityReportEndpoints')
    MatterCapabilityReportEvents = Shapes::ListShape.new(name: 'MatterCapabilityReportEvents')
    MatterCapabilityReportFabricIndex = Shapes::IntegerShape.new(name: 'MatterCapabilityReportFabricIndex')
    MatterCapabilityReportFeatureMap = Shapes::IntegerShape.new(name: 'MatterCapabilityReportFeatureMap')
    MatterCapabilityReportGeneratedCommands = Shapes::ListShape.new(name: 'MatterCapabilityReportGeneratedCommands')
    MatterCluster = Shapes::StructureShape.new(name: 'MatterCluster')
    MatterClusters = Shapes::ListShape.new(name: 'MatterClusters')
    MatterCommandId = Shapes::StringShape.new(name: 'MatterCommandId')
    MatterCommands = Shapes::MapShape.new(name: 'MatterCommands')
    MatterEndpoint = Shapes::StructureShape.new(name: 'MatterEndpoint')
    MatterEventId = Shapes::StringShape.new(name: 'MatterEventId')
    MatterEvents = Shapes::MapShape.new(name: 'MatterEvents')
    MatterFields = Shapes::DocumentShape.new(name: 'MatterFields', document: true)
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
    OAuthAuthorizationUrl = Shapes::StringShape.new(name: 'OAuthAuthorizationUrl')
    OAuthCompleteRedirectUrl = Shapes::StringShape.new(name: 'OAuthCompleteRedirectUrl')
    OAuthConfig = Shapes::StructureShape.new(name: 'OAuthConfig')
    OAuthUpdate = Shapes::StructureShape.new(name: 'OAuthUpdate')
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
    ProactiveRefreshTokenRenewal = Shapes::StructureShape.new(name: 'ProactiveRefreshTokenRenewal')
    ProactiveRefreshTokenRenewalDaysBeforeRenewalInteger = Shapes::IntegerShape.new(name: 'ProactiveRefreshTokenRenewalDaysBeforeRenewalInteger')
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
    RegisterAccountAssociationRequest = Shapes::StructureShape.new(name: 'RegisterAccountAssociationRequest')
    RegisterAccountAssociationResponse = Shapes::StructureShape.new(name: 'RegisterAccountAssociationResponse')
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
    SecretsManager = Shapes::StructureShape.new(name: 'SecretsManager')
    SecretsManagerArn = Shapes::StringShape.new(name: 'SecretsManagerArn')
    SecretsManagerVersionId = Shapes::StringShape.new(name: 'SecretsManagerVersionId')
    SendConnectorEventRequest = Shapes::StructureShape.new(name: 'SendConnectorEventRequest')
    SendConnectorEventResponse = Shapes::StructureShape.new(name: 'SendConnectorEventResponse')
    SendManagedThingCommandRequest = Shapes::StructureShape.new(name: 'SendManagedThingCommandRequest')
    SendManagedThingCommandResponse = Shapes::StructureShape.new(name: 'SendManagedThingCommandResponse')
    SerialNumber = Shapes::StringShape.new(name: 'SerialNumber')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SetupAt = Shapes::TimestampShape.new(name: 'SetupAt')
    SmartHomeResourceId = Shapes::StringShape.new(name: 'SmartHomeResourceId')
    SmartHomeResourceType = Shapes::StringShape.new(name: 'SmartHomeResourceType')
    SpecVersion = Shapes::StringShape.new(name: 'SpecVersion')
    StartAccountAssociationRefreshRequest = Shapes::StructureShape.new(name: 'StartAccountAssociationRefreshRequest')
    StartAccountAssociationRefreshResponse = Shapes::StructureShape.new(name: 'StartAccountAssociationRefreshResponse')
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
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TagsMap = Shapes::MapShape.new(name: 'TagsMap')
    Target = Shapes::ListShape.new(name: 'Target')
    TaskProcessingDetails = Shapes::StructureShape.new(name: 'TaskProcessingDetails')
    ThirdPartyUserId = Shapes::StringShape.new(name: 'ThirdPartyUserId')
    ThresholdPercentage = Shapes::FloatShape.new(name: 'ThresholdPercentage')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TokenEndpointAuthenticationScheme = Shapes::StringShape.new(name: 'TokenEndpointAuthenticationScheme')
    TokenUrl = Shapes::StringShape.new(name: 'TokenUrl')
    TraceId = Shapes::StringShape.new(name: 'TraceId')
    UnauthorizedException = Shapes::StructureShape.new(name: 'UnauthorizedException')
    UniversalProductCode = Shapes::StringShape.new(name: 'UniversalProductCode')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAccountAssociationRequest = Shapes::StructureShape.new(name: 'UpdateAccountAssociationRequest')
    UpdateCloudConnectorRequest = Shapes::StructureShape.new(name: 'UpdateCloudConnectorRequest')
    UpdateConnectorDestinationRequest = Shapes::StructureShape.new(name: 'UpdateConnectorDestinationRequest')
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

    AccountAssociationItem.add_member(:account_association_id, Shapes::ShapeRef.new(shape: AccountAssociationId, required: true, location_name: "AccountAssociationId"))
    AccountAssociationItem.add_member(:association_state, Shapes::ShapeRef.new(shape: AssociationState, required: true, location_name: "AssociationState"))
    AccountAssociationItem.add_member(:error_message, Shapes::ShapeRef.new(shape: AccountAssociationErrorMessage, location_name: "ErrorMessage"))
    AccountAssociationItem.add_member(:connector_destination_id, Shapes::ShapeRef.new(shape: ConnectorDestinationId, location_name: "ConnectorDestinationId"))
    AccountAssociationItem.add_member(:name, Shapes::ShapeRef.new(shape: AccountAssociationName, location_name: "Name"))
    AccountAssociationItem.add_member(:description, Shapes::ShapeRef.new(shape: AccountAssociationDescription, location_name: "Description"))
    AccountAssociationItem.add_member(:arn, Shapes::ShapeRef.new(shape: AccountAssociationArn, location_name: "Arn"))
    AccountAssociationItem.struct_class = Types::AccountAssociationItem

    AccountAssociationListDefinition.member = Shapes::ShapeRef.new(shape: AccountAssociationItem)

    AuthConfig.add_member(:o_auth, Shapes::ShapeRef.new(shape: OAuthConfig, location_name: "oAuth"))
    AuthConfig.struct_class = Types::AuthConfig

    AuthConfigUpdate.add_member(:o_auth_update, Shapes::ShapeRef.new(shape: OAuthUpdate, location_name: "oAuthUpdate"))
    AuthConfigUpdate.struct_class = Types::AuthConfigUpdate

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

    CapabilitySchemaItem.add_member(:format, Shapes::ShapeRef.new(shape: SchemaVersionFormat, required: true, location_name: "Format"))
    CapabilitySchemaItem.add_member(:capability_id, Shapes::ShapeRef.new(shape: SchemaVersionedId, required: true, location_name: "CapabilityId"))
    CapabilitySchemaItem.add_member(:extrinsic_id, Shapes::ShapeRef.new(shape: ExtrinsicSchemaId, required: true, location_name: "ExtrinsicId"))
    CapabilitySchemaItem.add_member(:extrinsic_version, Shapes::ShapeRef.new(shape: MatterCapabilityReportClusterRevisionId, required: true, location_name: "ExtrinsicVersion"))
    CapabilitySchemaItem.add_member(:schema, Shapes::ShapeRef.new(shape: ValidationSchema, required: true, location_name: "Schema"))
    CapabilitySchemaItem.struct_class = Types::CapabilitySchemaItem

    CapabilitySchemas.member = Shapes::ShapeRef.new(shape: CapabilitySchemaItem)

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

    ConnectorDestinationListDefinition.member = Shapes::ShapeRef.new(shape: ConnectorDestinationSummary)

    ConnectorDestinationSummary.add_member(:name, Shapes::ShapeRef.new(shape: ConnectorDestinationName, location_name: "Name"))
    ConnectorDestinationSummary.add_member(:description, Shapes::ShapeRef.new(shape: ConnectorDestinationDescription, location_name: "Description"))
    ConnectorDestinationSummary.add_member(:cloud_connector_id, Shapes::ShapeRef.new(shape: CloudConnectorId, location_name: "CloudConnectorId"))
    ConnectorDestinationSummary.add_member(:id, Shapes::ShapeRef.new(shape: ConnectorDestinationId, location_name: "Id"))
    ConnectorDestinationSummary.struct_class = Types::ConnectorDestinationSummary

    ConnectorItem.add_member(:name, Shapes::ShapeRef.new(shape: DisplayName, required: true, location_name: "Name"))
    ConnectorItem.add_member(:endpoint_config, Shapes::ShapeRef.new(shape: EndpointConfig, required: true, location_name: "EndpointConfig"))
    ConnectorItem.add_member(:description, Shapes::ShapeRef.new(shape: CloudConnectorDescription, location_name: "Description"))
    ConnectorItem.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: EndpointType, location_name: "EndpointType"))
    ConnectorItem.add_member(:id, Shapes::ShapeRef.new(shape: CloudConnectorId, location_name: "Id"))
    ConnectorItem.add_member(:type, Shapes::ShapeRef.new(shape: CloudConnectorType, location_name: "Type"))
    ConnectorItem.struct_class = Types::ConnectorItem

    ConnectorList.member = Shapes::ShapeRef.new(shape: ConnectorItem)

    CreateAccountAssociationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateAccountAssociationRequest.add_member(:connector_destination_id, Shapes::ShapeRef.new(shape: ConnectorDestinationId, required: true, location_name: "ConnectorDestinationId"))
    CreateAccountAssociationRequest.add_member(:name, Shapes::ShapeRef.new(shape: AccountAssociationName, location_name: "Name"))
    CreateAccountAssociationRequest.add_member(:description, Shapes::ShapeRef.new(shape: AccountAssociationDescription, location_name: "Description"))
    CreateAccountAssociationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    CreateAccountAssociationRequest.struct_class = Types::CreateAccountAssociationRequest

    CreateAccountAssociationResponse.add_member(:o_auth_authorization_url, Shapes::ShapeRef.new(shape: OAuthAuthorizationUrl, required: true, location_name: "OAuthAuthorizationUrl"))
    CreateAccountAssociationResponse.add_member(:account_association_id, Shapes::ShapeRef.new(shape: AccountAssociationId, required: true, location_name: "AccountAssociationId"))
    CreateAccountAssociationResponse.add_member(:association_state, Shapes::ShapeRef.new(shape: AssociationState, required: true, location_name: "AssociationState"))
    CreateAccountAssociationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: AccountAssociationArn, location_name: "Arn"))
    CreateAccountAssociationResponse.struct_class = Types::CreateAccountAssociationResponse

    CreateCloudConnectorRequest.add_member(:name, Shapes::ShapeRef.new(shape: DisplayName, required: true, location_name: "Name"))
    CreateCloudConnectorRequest.add_member(:endpoint_config, Shapes::ShapeRef.new(shape: EndpointConfig, required: true, location_name: "EndpointConfig"))
    CreateCloudConnectorRequest.add_member(:description, Shapes::ShapeRef.new(shape: CloudConnectorDescription, location_name: "Description"))
    CreateCloudConnectorRequest.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: EndpointType, location_name: "EndpointType"))
    CreateCloudConnectorRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateCloudConnectorRequest.struct_class = Types::CreateCloudConnectorRequest

    CreateCloudConnectorResponse.add_member(:id, Shapes::ShapeRef.new(shape: CloudConnectorId, location_name: "Id"))
    CreateCloudConnectorResponse.struct_class = Types::CreateCloudConnectorResponse

    CreateConnectorDestinationRequest.add_member(:name, Shapes::ShapeRef.new(shape: ConnectorDestinationName, location_name: "Name"))
    CreateConnectorDestinationRequest.add_member(:description, Shapes::ShapeRef.new(shape: ConnectorDestinationDescription, location_name: "Description"))
    CreateConnectorDestinationRequest.add_member(:cloud_connector_id, Shapes::ShapeRef.new(shape: CloudConnectorId, required: true, location_name: "CloudConnectorId"))
    CreateConnectorDestinationRequest.add_member(:auth_type, Shapes::ShapeRef.new(shape: AuthType, required: true, location_name: "AuthType"))
    CreateConnectorDestinationRequest.add_member(:auth_config, Shapes::ShapeRef.new(shape: AuthConfig, required: true, location_name: "AuthConfig"))
    CreateConnectorDestinationRequest.add_member(:secrets_manager, Shapes::ShapeRef.new(shape: SecretsManager, required: true, location_name: "SecretsManager"))
    CreateConnectorDestinationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateConnectorDestinationRequest.struct_class = Types::CreateConnectorDestinationRequest

    CreateConnectorDestinationResponse.add_member(:id, Shapes::ShapeRef.new(shape: ConnectorDestinationId, location_name: "Id"))
    CreateConnectorDestinationResponse.struct_class = Types::CreateConnectorDestinationResponse

    CreateCredentialLockerRequest.add_member(:name, Shapes::ShapeRef.new(shape: CredentialLockerName, location_name: "Name"))
    CreateCredentialLockerRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
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
    CreateDestinationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateDestinationRequest.add_member(:description, Shapes::ShapeRef.new(shape: DestinationDescription, location_name: "Description"))
    CreateDestinationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, deprecated: true, location_name: "Tags", metadata: {"deprecatedMessage" => "Tags have been deprecated from this api", "deprecatedSince" => "06-25-2025"}))
    CreateDestinationRequest.struct_class = Types::CreateDestinationRequest

    CreateDestinationResponse.add_member(:name, Shapes::ShapeRef.new(shape: DestinationName, location_name: "Name"))
    CreateDestinationResponse.struct_class = Types::CreateDestinationResponse

    CreateEventLogConfigurationRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: SmartHomeResourceType, required: true, location_name: "ResourceType"))
    CreateEventLogConfigurationRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: SmartHomeResourceId, location_name: "ResourceId"))
    CreateEventLogConfigurationRequest.add_member(:event_log_level, Shapes::ShapeRef.new(shape: LogLevel, required: true, location_name: "EventLogLevel"))
    CreateEventLogConfigurationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
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
    CreateManagedThingRequest.add_member(:capability_schemas, Shapes::ShapeRef.new(shape: CapabilitySchemas, location_name: "CapabilitySchemas"))
    CreateManagedThingRequest.add_member(:capabilities, Shapes::ShapeRef.new(shape: Capabilities, location_name: "Capabilities"))
    CreateManagedThingRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
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
    CreateNotificationConfigurationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateNotificationConfigurationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, deprecated: true, location_name: "Tags", metadata: {"deprecatedMessage" => "Tags has been deprecated from this api", "deprecatedSince" => "06-25-2025"}))
    CreateNotificationConfigurationRequest.struct_class = Types::CreateNotificationConfigurationRequest

    CreateNotificationConfigurationResponse.add_member(:event_type, Shapes::ShapeRef.new(shape: EventType, location_name: "EventType"))
    CreateNotificationConfigurationResponse.struct_class = Types::CreateNotificationConfigurationResponse

    CreateOtaTaskConfigurationRequest.add_member(:description, Shapes::ShapeRef.new(shape: OtaDescription, location_name: "Description"))
    CreateOtaTaskConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: OtaTaskConfigurationName, location_name: "Name"))
    CreateOtaTaskConfigurationRequest.add_member(:push_config, Shapes::ShapeRef.new(shape: PushConfig, location_name: "PushConfig"))
    CreateOtaTaskConfigurationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
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
    CreateOtaTaskRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
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
    CreateProvisioningProfileRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
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

    CustomProtocolDetail.key = Shapes::ShapeRef.new(shape: CustomProtocolDetailKey)
    CustomProtocolDetail.value = Shapes::ShapeRef.new(shape: CustomProtocolDetailValue)

    DeleteAccountAssociationRequest.add_member(:account_association_id, Shapes::ShapeRef.new(shape: AccountAssociationId, required: true, location: "uri", location_name: "AccountAssociationId"))
    DeleteAccountAssociationRequest.struct_class = Types::DeleteAccountAssociationRequest

    DeleteCloudConnectorRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: CloudConnectorId, required: true, location: "uri", location_name: "Identifier"))
    DeleteCloudConnectorRequest.struct_class = Types::DeleteCloudConnectorRequest

    DeleteConnectorDestinationRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ConnectorDestinationId, required: true, location: "uri", location_name: "Identifier"))
    DeleteConnectorDestinationRequest.struct_class = Types::DeleteConnectorDestinationRequest

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

    DeregisterAccountAssociationRequest.add_member(:managed_thing_id, Shapes::ShapeRef.new(shape: ManagedThingId, required: true, location_name: "ManagedThingId"))
    DeregisterAccountAssociationRequest.add_member(:account_association_id, Shapes::ShapeRef.new(shape: AccountAssociationId, required: true, location_name: "AccountAssociationId"))
    DeregisterAccountAssociationRequest.struct_class = Types::DeregisterAccountAssociationRequest

    DestinationListDefinition.member = Shapes::ShapeRef.new(shape: DestinationSummary)

    DestinationSummary.add_member(:description, Shapes::ShapeRef.new(shape: DestinationDescription, location_name: "Description"))
    DestinationSummary.add_member(:delivery_destination_arn, Shapes::ShapeRef.new(shape: DeliveryDestinationArn, location_name: "DeliveryDestinationArn"))
    DestinationSummary.add_member(:delivery_destination_type, Shapes::ShapeRef.new(shape: DeliveryDestinationType, location_name: "DeliveryDestinationType"))
    DestinationSummary.add_member(:name, Shapes::ShapeRef.new(shape: DestinationName, location_name: "Name"))
    DestinationSummary.add_member(:role_arn, Shapes::ShapeRef.new(shape: DeliveryDestinationRoleArn, location_name: "RoleArn"))
    DestinationSummary.struct_class = Types::DestinationSummary

    Device.add_member(:connector_device_id, Shapes::ShapeRef.new(shape: ConnectorDeviceId, required: true, location_name: "ConnectorDeviceId"))
    Device.add_member(:connector_device_name, Shapes::ShapeRef.new(shape: ConnectorDeviceName, location_name: "ConnectorDeviceName"))
    Device.add_member(:capability_report, Shapes::ShapeRef.new(shape: MatterCapabilityReport, required: true, location_name: "CapabilityReport"))
    Device.add_member(:capability_schemas, Shapes::ShapeRef.new(shape: CapabilitySchemas, location_name: "CapabilitySchemas"))
    Device.add_member(:device_metadata, Shapes::ShapeRef.new(shape: DeviceMetadata, location_name: "DeviceMetadata"))
    Device.struct_class = Types::Device

    DeviceDiscoveryListDefinition.member = Shapes::ShapeRef.new(shape: DeviceDiscoverySummary)

    DeviceDiscoverySummary.add_member(:id, Shapes::ShapeRef.new(shape: DeviceDiscoveryId, location_name: "Id"))
    DeviceDiscoverySummary.add_member(:discovery_type, Shapes::ShapeRef.new(shape: DiscoveryType, location_name: "DiscoveryType"))
    DeviceDiscoverySummary.add_member(:status, Shapes::ShapeRef.new(shape: DeviceDiscoveryStatus, location_name: "Status"))
    DeviceDiscoverySummary.struct_class = Types::DeviceDiscoverySummary

    DeviceTypeList.member = Shapes::ShapeRef.new(shape: DeviceType)

    DeviceTypes.member = Shapes::ShapeRef.new(shape: DeviceType)

    Devices.member = Shapes::ShapeRef.new(shape: Device)

    DiscoveredDeviceListDefinition.member = Shapes::ShapeRef.new(shape: DiscoveredDeviceSummary)

    DiscoveredDeviceSummary.add_member(:connector_device_id, Shapes::ShapeRef.new(shape: ConnectorDeviceId, location_name: "ConnectorDeviceId"))
    DiscoveredDeviceSummary.add_member(:connector_device_name, Shapes::ShapeRef.new(shape: ConnectorDeviceName, location_name: "ConnectorDeviceName"))
    DiscoveredDeviceSummary.add_member(:device_types, Shapes::ShapeRef.new(shape: DeviceTypeList, location_name: "DeviceTypes"))
    DiscoveredDeviceSummary.add_member(:managed_thing_id, Shapes::ShapeRef.new(shape: ManagedThingId, location_name: "ManagedThingId"))
    DiscoveredDeviceSummary.add_member(:modification, Shapes::ShapeRef.new(shape: DiscoveryModification, location_name: "Modification"))
    DiscoveredDeviceSummary.add_member(:discovered_at, Shapes::ShapeRef.new(shape: DiscoveredAt, location_name: "DiscoveredAt"))
    DiscoveredDeviceSummary.add_member(:brand, Shapes::ShapeRef.new(shape: Brand, location_name: "Brand"))
    DiscoveredDeviceSummary.add_member(:model, Shapes::ShapeRef.new(shape: Model, location_name: "Model"))
    DiscoveredDeviceSummary.add_member(:authentication_material, Shapes::ShapeRef.new(shape: AuthMaterialString, location_name: "AuthenticationMaterial"))
    DiscoveredDeviceSummary.struct_class = Types::DiscoveredDeviceSummary

    EndpointConfig.add_member(:lambda, Shapes::ShapeRef.new(shape: LambdaConfig, location_name: "lambda"))
    EndpointConfig.struct_class = Types::EndpointConfig

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

    GetAccountAssociationRequest.add_member(:account_association_id, Shapes::ShapeRef.new(shape: AccountAssociationId, required: true, location: "uri", location_name: "AccountAssociationId"))
    GetAccountAssociationRequest.struct_class = Types::GetAccountAssociationRequest

    GetAccountAssociationResponse.add_member(:account_association_id, Shapes::ShapeRef.new(shape: AccountAssociationId, required: true, location_name: "AccountAssociationId"))
    GetAccountAssociationResponse.add_member(:association_state, Shapes::ShapeRef.new(shape: AssociationState, required: true, location_name: "AssociationState"))
    GetAccountAssociationResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: AccountAssociationErrorMessage, location_name: "ErrorMessage"))
    GetAccountAssociationResponse.add_member(:connector_destination_id, Shapes::ShapeRef.new(shape: ConnectorDestinationId, location_name: "ConnectorDestinationId"))
    GetAccountAssociationResponse.add_member(:name, Shapes::ShapeRef.new(shape: AccountAssociationName, location_name: "Name"))
    GetAccountAssociationResponse.add_member(:description, Shapes::ShapeRef.new(shape: AccountAssociationDescription, location_name: "Description"))
    GetAccountAssociationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: AccountAssociationArn, location_name: "Arn"))
    GetAccountAssociationResponse.add_member(:o_auth_authorization_url, Shapes::ShapeRef.new(shape: OAuthAuthorizationUrl, required: true, location_name: "OAuthAuthorizationUrl"))
    GetAccountAssociationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    GetAccountAssociationResponse.struct_class = Types::GetAccountAssociationResponse

    GetCloudConnectorRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: CloudConnectorId, required: true, location: "uri", location_name: "Identifier"))
    GetCloudConnectorRequest.struct_class = Types::GetCloudConnectorRequest

    GetCloudConnectorResponse.add_member(:name, Shapes::ShapeRef.new(shape: DisplayName, required: true, location_name: "Name"))
    GetCloudConnectorResponse.add_member(:endpoint_config, Shapes::ShapeRef.new(shape: EndpointConfig, required: true, location_name: "EndpointConfig"))
    GetCloudConnectorResponse.add_member(:description, Shapes::ShapeRef.new(shape: CloudConnectorDescription, location_name: "Description"))
    GetCloudConnectorResponse.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: EndpointType, location_name: "EndpointType"))
    GetCloudConnectorResponse.add_member(:id, Shapes::ShapeRef.new(shape: CloudConnectorId, location_name: "Id"))
    GetCloudConnectorResponse.add_member(:type, Shapes::ShapeRef.new(shape: CloudConnectorType, location_name: "Type"))
    GetCloudConnectorResponse.struct_class = Types::GetCloudConnectorResponse

    GetConnectorDestinationRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ConnectorDestinationId, required: true, location: "uri", location_name: "Identifier"))
    GetConnectorDestinationRequest.struct_class = Types::GetConnectorDestinationRequest

    GetConnectorDestinationResponse.add_member(:name, Shapes::ShapeRef.new(shape: ConnectorDestinationName, location_name: "Name"))
    GetConnectorDestinationResponse.add_member(:description, Shapes::ShapeRef.new(shape: ConnectorDestinationDescription, location_name: "Description"))
    GetConnectorDestinationResponse.add_member(:cloud_connector_id, Shapes::ShapeRef.new(shape: CloudConnectorId, location_name: "CloudConnectorId"))
    GetConnectorDestinationResponse.add_member(:id, Shapes::ShapeRef.new(shape: ConnectorDestinationId, location_name: "Id"))
    GetConnectorDestinationResponse.add_member(:auth_type, Shapes::ShapeRef.new(shape: AuthType, location_name: "AuthType"))
    GetConnectorDestinationResponse.add_member(:auth_config, Shapes::ShapeRef.new(shape: AuthConfig, location_name: "AuthConfig"))
    GetConnectorDestinationResponse.add_member(:secrets_manager, Shapes::ShapeRef.new(shape: SecretsManager, location_name: "SecretsManager"))
    GetConnectorDestinationResponse.add_member(:o_auth_complete_redirect_url, Shapes::ShapeRef.new(shape: OAuthCompleteRedirectUrl, location_name: "OAuthCompleteRedirectUrl"))
    GetConnectorDestinationResponse.struct_class = Types::GetConnectorDestinationResponse

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
    GetDestinationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, deprecated: true, location_name: "Tags", metadata: {"deprecatedMessage" => "Tags has been deprecated from this api", "deprecatedSince" => "06-25-2025"}))
    GetDestinationResponse.struct_class = Types::GetDestinationResponse

    GetDeviceDiscoveryRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: DeviceDiscoveryId, required: true, location: "uri", location_name: "Identifier"))
    GetDeviceDiscoveryRequest.struct_class = Types::GetDeviceDiscoveryRequest

    GetDeviceDiscoveryResponse.add_member(:id, Shapes::ShapeRef.new(shape: DeviceDiscoveryId, required: true, location_name: "Id"))
    GetDeviceDiscoveryResponse.add_member(:arn, Shapes::ShapeRef.new(shape: DeviceDiscoveryArn, required: true, location_name: "Arn"))
    GetDeviceDiscoveryResponse.add_member(:discovery_type, Shapes::ShapeRef.new(shape: DiscoveryType, required: true, location_name: "DiscoveryType"))
    GetDeviceDiscoveryResponse.add_member(:status, Shapes::ShapeRef.new(shape: DeviceDiscoveryStatus, required: true, location_name: "Status"))
    GetDeviceDiscoveryResponse.add_member(:started_at, Shapes::ShapeRef.new(shape: DiscoveryStartedAt, required: true, location_name: "StartedAt"))
    GetDeviceDiscoveryResponse.add_member(:controller_id, Shapes::ShapeRef.new(shape: ManagedThingId, location_name: "ControllerId"))
    GetDeviceDiscoveryResponse.add_member(:connector_association_id, Shapes::ShapeRef.new(shape: ConnectorAssociationId, deprecated: true, location_name: "ConnectorAssociationId", metadata: {"deprecatedMessage" => "ConnectorAssociationId has been deprecated", "deprecatedSince" => "2025-06-25"}))
    GetDeviceDiscoveryResponse.add_member(:account_association_id, Shapes::ShapeRef.new(shape: AccountAssociationId, location_name: "AccountAssociationId"))
    GetDeviceDiscoveryResponse.add_member(:finished_at, Shapes::ShapeRef.new(shape: DiscoveryFinishedAt, location_name: "FinishedAt"))
    GetDeviceDiscoveryResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, deprecated: true, location_name: "Tags", metadata: {"deprecatedMessage" => "Tags have been deprecated from this api", "deprecatedSince" => "06-25-2025"}))
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

    GetManagedThingCertificateRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ManagedThingId, required: true, location: "uri", location_name: "Identifier"))
    GetManagedThingCertificateRequest.struct_class = Types::GetManagedThingCertificateRequest

    GetManagedThingCertificateResponse.add_member(:managed_thing_id, Shapes::ShapeRef.new(shape: ManagedThingId, location_name: "ManagedThingId"))
    GetManagedThingCertificateResponse.add_member(:certificate_pem, Shapes::ShapeRef.new(shape: CertificatePem, location_name: "CertificatePem"))
    GetManagedThingCertificateResponse.struct_class = Types::GetManagedThingCertificateResponse

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
    GetManagedThingResponse.add_member(:connector_policy_id, Shapes::ShapeRef.new(shape: ConnectorPolicyId, deprecated: true, location_name: "ConnectorPolicyId", metadata: {"deprecatedMessage" => "ConnectorPolicyId is deprecated", "deprecatedSince" => "2025-06-25"}))
    GetManagedThingResponse.add_member(:connector_destination_id, Shapes::ShapeRef.new(shape: ConnectorDestinationId, location_name: "ConnectorDestinationId"))
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
    GetNotificationConfigurationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, deprecated: true, location_name: "Tags", metadata: {"deprecatedMessage" => "Tags has been deprecated for this api", "deprecatedSince" => "06-25-2025"}))
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
    GetOtaTaskResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
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

    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    LambdaConfig.add_member(:arn, Shapes::ShapeRef.new(shape: LambdaArn, required: true, location_name: "arn"))
    LambdaConfig.struct_class = Types::LambdaConfig

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListAccountAssociationsRequest.add_member(:connector_destination_id, Shapes::ShapeRef.new(shape: ConnectorDestinationId, location: "querystring", location_name: "ConnectorDestinationId"))
    ListAccountAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListAccountAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListAccountAssociationsRequest.struct_class = Types::ListAccountAssociationsRequest

    ListAccountAssociationsResponse.add_member(:items, Shapes::ShapeRef.new(shape: AccountAssociationListDefinition, location_name: "Items"))
    ListAccountAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAccountAssociationsResponse.struct_class = Types::ListAccountAssociationsResponse

    ListCloudConnectorsRequest.add_member(:type, Shapes::ShapeRef.new(shape: CloudConnectorType, location: "querystring", location_name: "Type"))
    ListCloudConnectorsRequest.add_member(:lambda_arn, Shapes::ShapeRef.new(shape: LambdaArn, location: "querystring", location_name: "LambdaArn"))
    ListCloudConnectorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListCloudConnectorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListCloudConnectorsRequest.struct_class = Types::ListCloudConnectorsRequest

    ListCloudConnectorsResponse.add_member(:items, Shapes::ShapeRef.new(shape: ConnectorList, location_name: "Items"))
    ListCloudConnectorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCloudConnectorsResponse.struct_class = Types::ListCloudConnectorsResponse

    ListConnectorDestinationsRequest.add_member(:cloud_connector_id, Shapes::ShapeRef.new(shape: CloudConnectorId, location: "querystring", location_name: "CloudConnectorId"))
    ListConnectorDestinationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListConnectorDestinationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListConnectorDestinationsRequest.struct_class = Types::ListConnectorDestinationsRequest

    ListConnectorDestinationsResponse.add_member(:connector_destination_list, Shapes::ShapeRef.new(shape: ConnectorDestinationListDefinition, location_name: "ConnectorDestinationList"))
    ListConnectorDestinationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListConnectorDestinationsResponse.struct_class = Types::ListConnectorDestinationsResponse

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

    ListDeviceDiscoveriesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListDeviceDiscoveriesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListDeviceDiscoveriesRequest.add_member(:type_filter, Shapes::ShapeRef.new(shape: DiscoveryType, location: "querystring", location_name: "TypeFilter"))
    ListDeviceDiscoveriesRequest.add_member(:status_filter, Shapes::ShapeRef.new(shape: DeviceDiscoveryStatus, location: "querystring", location_name: "StatusFilter"))
    ListDeviceDiscoveriesRequest.struct_class = Types::ListDeviceDiscoveriesRequest

    ListDeviceDiscoveriesResponse.add_member(:items, Shapes::ShapeRef.new(shape: DeviceDiscoveryListDefinition, location_name: "Items"))
    ListDeviceDiscoveriesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDeviceDiscoveriesResponse.struct_class = Types::ListDeviceDiscoveriesResponse

    ListDiscoveredDevicesRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: DeviceDiscoveryId, required: true, location: "uri", location_name: "Identifier"))
    ListDiscoveredDevicesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListDiscoveredDevicesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListDiscoveredDevicesRequest.struct_class = Types::ListDiscoveredDevicesRequest

    ListDiscoveredDevicesResponse.add_member(:items, Shapes::ShapeRef.new(shape: DiscoveredDeviceListDefinition, location_name: "Items"))
    ListDiscoveredDevicesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDiscoveredDevicesResponse.struct_class = Types::ListDiscoveredDevicesResponse

    ListEventLogConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListEventLogConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListEventLogConfigurationsRequest.struct_class = Types::ListEventLogConfigurationsRequest

    ListEventLogConfigurationsResponse.add_member(:event_log_configuration_list, Shapes::ShapeRef.new(shape: EventLogConfigurationListDefinition, location_name: "EventLogConfigurationList"))
    ListEventLogConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEventLogConfigurationsResponse.struct_class = Types::ListEventLogConfigurationsResponse

    ListManagedThingAccountAssociationsRequest.add_member(:managed_thing_id, Shapes::ShapeRef.new(shape: ManagedThingId, location: "querystring", location_name: "ManagedThingId"))
    ListManagedThingAccountAssociationsRequest.add_member(:account_association_id, Shapes::ShapeRef.new(shape: AccountAssociationId, location: "querystring", location_name: "AccountAssociationId"))
    ListManagedThingAccountAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListManagedThingAccountAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListManagedThingAccountAssociationsRequest.struct_class = Types::ListManagedThingAccountAssociationsRequest

    ListManagedThingAccountAssociationsResponse.add_member(:items, Shapes::ShapeRef.new(shape: ManagedThingAssociationList, location_name: "Items"))
    ListManagedThingAccountAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListManagedThingAccountAssociationsResponse.struct_class = Types::ListManagedThingAccountAssociationsResponse

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
    ListManagedThingsRequest.add_member(:connector_policy_id_filter, Shapes::ShapeRef.new(shape: ConnectorPolicyId, deprecated: true, location: "querystring", location_name: "ConnectorPolicyIdFilter", metadata: {"deprecatedMessage" => "ConnectorPolicyIdFilter is deprecated", "deprecatedSince" => "06-25-2025"}))
    ListManagedThingsRequest.add_member(:connector_destination_id_filter, Shapes::ShapeRef.new(shape: ConnectorDestinationId, location: "querystring", location_name: "ConnectorDestinationIdFilter"))
    ListManagedThingsRequest.add_member(:connector_device_id_filter, Shapes::ShapeRef.new(shape: ConnectorDeviceId, location: "querystring", location_name: "ConnectorDeviceIdFilter"))
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

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: IoTManagedIntegrationsResourceARN, required: true, location: "uri", location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ManagedThingAssociation.add_member(:managed_thing_id, Shapes::ShapeRef.new(shape: ManagedThingId, location_name: "ManagedThingId"))
    ManagedThingAssociation.add_member(:account_association_id, Shapes::ShapeRef.new(shape: AccountAssociationId, location_name: "AccountAssociationId"))
    ManagedThingAssociation.struct_class = Types::ManagedThingAssociation

    ManagedThingAssociationList.member = Shapes::ShapeRef.new(shape: ManagedThingAssociation)

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
    ManagedThingSummary.add_member(:connector_policy_id, Shapes::ShapeRef.new(shape: ConnectorPolicyId, deprecated: true, location_name: "ConnectorPolicyId", metadata: {"deprecatedMessage" => "ConnectorPolicyId has been deprecated", "deprecatedSince" => "06-25-2025"}))
    ManagedThingSummary.add_member(:connector_destination_id, Shapes::ShapeRef.new(shape: ConnectorDestinationId, location_name: "ConnectorDestinationId"))
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

    MatterCapabilityReport.add_member(:version, Shapes::ShapeRef.new(shape: CapabilityReportVersion, required: true, location_name: "version"))
    MatterCapabilityReport.add_member(:node_id, Shapes::ShapeRef.new(shape: NodeId, location_name: "nodeId"))
    MatterCapabilityReport.add_member(:endpoints, Shapes::ShapeRef.new(shape: MatterCapabilityReportEndpoints, required: true, location_name: "endpoints"))
    MatterCapabilityReport.struct_class = Types::MatterCapabilityReport

    MatterCapabilityReportAttribute.add_member(:id, Shapes::ShapeRef.new(shape: MatterAttributeId, location_name: "id"))
    MatterCapabilityReportAttribute.add_member(:name, Shapes::ShapeRef.new(shape: ActionName, location_name: "name"))
    MatterCapabilityReportAttribute.add_member(:value, Shapes::ShapeRef.new(shape: MatterCapabilityReportAttributeValue, location_name: "value"))
    MatterCapabilityReportAttribute.struct_class = Types::MatterCapabilityReportAttribute

    MatterCapabilityReportAttributes.member = Shapes::ShapeRef.new(shape: MatterCapabilityReportAttribute)

    MatterCapabilityReportCluster.add_member(:id, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "id"))
    MatterCapabilityReportCluster.add_member(:revision, Shapes::ShapeRef.new(shape: MatterCapabilityReportClusterRevisionId, required: true, location_name: "revision"))
    MatterCapabilityReportCluster.add_member(:public_id, Shapes::ShapeRef.new(shape: SchemaVersionedId, location_name: "publicId"))
    MatterCapabilityReportCluster.add_member(:name, Shapes::ShapeRef.new(shape: CapabilityName, location_name: "name"))
    MatterCapabilityReportCluster.add_member(:spec_version, Shapes::ShapeRef.new(shape: SpecVersion, location_name: "specVersion"))
    MatterCapabilityReportCluster.add_member(:attributes, Shapes::ShapeRef.new(shape: MatterCapabilityReportAttributes, location_name: "attributes"))
    MatterCapabilityReportCluster.add_member(:commands, Shapes::ShapeRef.new(shape: MatterCapabilityReportCommands, location_name: "commands"))
    MatterCapabilityReportCluster.add_member(:events, Shapes::ShapeRef.new(shape: MatterCapabilityReportEvents, location_name: "events"))
    MatterCapabilityReportCluster.add_member(:feature_map, Shapes::ShapeRef.new(shape: MatterCapabilityReportFeatureMap, location_name: "featureMap"))
    MatterCapabilityReportCluster.add_member(:generated_commands, Shapes::ShapeRef.new(shape: MatterCapabilityReportGeneratedCommands, location_name: "generatedCommands"))
    MatterCapabilityReportCluster.add_member(:fabric_index, Shapes::ShapeRef.new(shape: MatterCapabilityReportFabricIndex, location_name: "fabricIndex"))
    MatterCapabilityReportCluster.struct_class = Types::MatterCapabilityReportCluster

    MatterCapabilityReportClusters.member = Shapes::ShapeRef.new(shape: MatterCapabilityReportCluster)

    MatterCapabilityReportCommands.member = Shapes::ShapeRef.new(shape: MatterCommandId)

    MatterCapabilityReportEndpoint.add_member(:id, Shapes::ShapeRef.new(shape: EndpointId, required: true, location_name: "id"))
    MatterCapabilityReportEndpoint.add_member(:device_types, Shapes::ShapeRef.new(shape: DeviceTypes, required: true, location_name: "deviceTypes"))
    MatterCapabilityReportEndpoint.add_member(:clusters, Shapes::ShapeRef.new(shape: MatterCapabilityReportClusters, required: true, location_name: "clusters"))
    MatterCapabilityReportEndpoint.add_member(:parts, Shapes::ShapeRef.new(shape: MatterCapabilityReportEndpointParts, location_name: "parts"))
    MatterCapabilityReportEndpoint.add_member(:semantic_tags, Shapes::ShapeRef.new(shape: MatterCapabilityReportEndpointSemanticTags, location_name: "semanticTags"))
    MatterCapabilityReportEndpoint.add_member(:client_clusters, Shapes::ShapeRef.new(shape: MatterCapabilityReportEndpointClientClusters, location_name: "clientClusters"))
    MatterCapabilityReportEndpoint.struct_class = Types::MatterCapabilityReportEndpoint

    MatterCapabilityReportEndpointClientClusters.member = Shapes::ShapeRef.new(shape: ClusterId)

    MatterCapabilityReportEndpointParts.member = Shapes::ShapeRef.new(shape: EndpointId)

    MatterCapabilityReportEndpointSemanticTags.member = Shapes::ShapeRef.new(shape: EndpointSemanticTag)

    MatterCapabilityReportEndpoints.member = Shapes::ShapeRef.new(shape: MatterCapabilityReportEndpoint)

    MatterCapabilityReportEvents.member = Shapes::ShapeRef.new(shape: MatterEventId)

    MatterCapabilityReportGeneratedCommands.member = Shapes::ShapeRef.new(shape: MatterCommandId)

    MatterCluster.add_member(:id, Shapes::ShapeRef.new(shape: ClusterId, location_name: "id"))
    MatterCluster.add_member(:attributes, Shapes::ShapeRef.new(shape: MatterAttributes, location_name: "attributes"))
    MatterCluster.add_member(:commands, Shapes::ShapeRef.new(shape: MatterCommands, location_name: "commands"))
    MatterCluster.add_member(:events, Shapes::ShapeRef.new(shape: MatterEvents, location_name: "events"))
    MatterCluster.struct_class = Types::MatterCluster

    MatterClusters.member = Shapes::ShapeRef.new(shape: MatterCluster)

    MatterCommands.key = Shapes::ShapeRef.new(shape: MatterCommandId)
    MatterCommands.value = Shapes::ShapeRef.new(shape: MatterFields)

    MatterEndpoint.add_member(:id, Shapes::ShapeRef.new(shape: EndpointId, location_name: "id"))
    MatterEndpoint.add_member(:clusters, Shapes::ShapeRef.new(shape: MatterClusters, location_name: "clusters"))
    MatterEndpoint.struct_class = Types::MatterEndpoint

    MatterEvents.key = Shapes::ShapeRef.new(shape: MatterEventId)
    MatterEvents.value = Shapes::ShapeRef.new(shape: MatterFields)

    MetaData.key = Shapes::ShapeRef.new(shape: AttributeName)
    MetaData.value = Shapes::ShapeRef.new(shape: AttributeValue)

    NotificationConfigurationListDefinition.member = Shapes::ShapeRef.new(shape: NotificationConfigurationSummary)

    NotificationConfigurationSummary.add_member(:event_type, Shapes::ShapeRef.new(shape: EventType, location_name: "EventType"))
    NotificationConfigurationSummary.add_member(:destination_name, Shapes::ShapeRef.new(shape: DestinationName, location_name: "DestinationName"))
    NotificationConfigurationSummary.struct_class = Types::NotificationConfigurationSummary

    OAuthConfig.add_member(:auth_url, Shapes::ShapeRef.new(shape: AuthUrl, required: true, location_name: "authUrl"))
    OAuthConfig.add_member(:token_url, Shapes::ShapeRef.new(shape: TokenUrl, required: true, location_name: "tokenUrl"))
    OAuthConfig.add_member(:scope, Shapes::ShapeRef.new(shape: String, location_name: "scope"))
    OAuthConfig.add_member(:token_endpoint_authentication_scheme, Shapes::ShapeRef.new(shape: TokenEndpointAuthenticationScheme, required: true, location_name: "tokenEndpointAuthenticationScheme"))
    OAuthConfig.add_member(:o_auth_complete_redirect_url, Shapes::ShapeRef.new(shape: String, location_name: "oAuthCompleteRedirectUrl"))
    OAuthConfig.add_member(:proactive_refresh_token_renewal, Shapes::ShapeRef.new(shape: ProactiveRefreshTokenRenewal, location_name: "proactiveRefreshTokenRenewal"))
    OAuthConfig.struct_class = Types::OAuthConfig

    OAuthUpdate.add_member(:o_auth_complete_redirect_url, Shapes::ShapeRef.new(shape: String, location_name: "oAuthCompleteRedirectUrl"))
    OAuthUpdate.add_member(:proactive_refresh_token_renewal, Shapes::ShapeRef.new(shape: ProactiveRefreshTokenRenewal, location_name: "proactiveRefreshTokenRenewal"))
    OAuthUpdate.struct_class = Types::OAuthUpdate

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

    ProactiveRefreshTokenRenewal.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "enabled"))
    ProactiveRefreshTokenRenewal.add_member(:days_before_renewal, Shapes::ShapeRef.new(shape: ProactiveRefreshTokenRenewalDaysBeforeRenewalInteger, location_name: "DaysBeforeRenewal"))
    ProactiveRefreshTokenRenewal.struct_class = Types::ProactiveRefreshTokenRenewal

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

    RegisterAccountAssociationRequest.add_member(:managed_thing_id, Shapes::ShapeRef.new(shape: ManagedThingId, required: true, location_name: "ManagedThingId"))
    RegisterAccountAssociationRequest.add_member(:account_association_id, Shapes::ShapeRef.new(shape: AccountAssociationId, required: true, location_name: "AccountAssociationId"))
    RegisterAccountAssociationRequest.add_member(:device_discovery_id, Shapes::ShapeRef.new(shape: DeviceDiscoveryId, required: true, location_name: "DeviceDiscoveryId"))
    RegisterAccountAssociationRequest.struct_class = Types::RegisterAccountAssociationRequest

    RegisterAccountAssociationResponse.add_member(:account_association_id, Shapes::ShapeRef.new(shape: AccountAssociationId, location_name: "AccountAssociationId"))
    RegisterAccountAssociationResponse.add_member(:device_discovery_id, Shapes::ShapeRef.new(shape: DeviceDiscoveryId, location_name: "DeviceDiscoveryId"))
    RegisterAccountAssociationResponse.add_member(:managed_thing_id, Shapes::ShapeRef.new(shape: ManagedThingId, location_name: "ManagedThingId"))
    RegisterAccountAssociationResponse.struct_class = Types::RegisterAccountAssociationResponse

    RegisterCustomEndpointRequest.struct_class = Types::RegisterCustomEndpointRequest

    RegisterCustomEndpointResponse.add_member(:endpoint_address, Shapes::ShapeRef.new(shape: EndpointAddress, required: true, location_name: "EndpointAddress"))
    RegisterCustomEndpointResponse.struct_class = Types::RegisterCustomEndpointResponse

    ResetRuntimeLogConfigurationRequest.add_member(:managed_thing_id, Shapes::ShapeRef.new(shape: ManagedThingId, required: true, location: "uri", location_name: "ManagedThingId"))
    ResetRuntimeLogConfigurationRequest.struct_class = Types::ResetRuntimeLogConfigurationRequest

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ErrorResourceId, location_name: "ResourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ErrorResourceType, location_name: "ResourceType"))
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

    SecretsManager.add_member(:arn, Shapes::ShapeRef.new(shape: SecretsManagerArn, required: true, location_name: "arn"))
    SecretsManager.add_member(:version_id, Shapes::ShapeRef.new(shape: SecretsManagerVersionId, required: true, location_name: "versionId"))
    SecretsManager.struct_class = Types::SecretsManager

    SendConnectorEventRequest.add_member(:connector_id, Shapes::ShapeRef.new(shape: ConnectorId, required: true, location: "uri", location_name: "ConnectorId"))
    SendConnectorEventRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: ThirdPartyUserId, location_name: "UserId"))
    SendConnectorEventRequest.add_member(:operation, Shapes::ShapeRef.new(shape: ConnectorEventOperation, required: true, location_name: "Operation"))
    SendConnectorEventRequest.add_member(:operation_version, Shapes::ShapeRef.new(shape: ConnectorEventOperationVersion, location_name: "OperationVersion"))
    SendConnectorEventRequest.add_member(:status_code, Shapes::ShapeRef.new(shape: ConnectorEventStatusCode, location_name: "StatusCode"))
    SendConnectorEventRequest.add_member(:message, Shapes::ShapeRef.new(shape: ConnectorEventMessage, location_name: "Message"))
    SendConnectorEventRequest.add_member(:device_discovery_id, Shapes::ShapeRef.new(shape: DeviceDiscoveryId, location_name: "DeviceDiscoveryId"))
    SendConnectorEventRequest.add_member(:connector_device_id, Shapes::ShapeRef.new(shape: ConnectorDeviceId, location_name: "ConnectorDeviceId"))
    SendConnectorEventRequest.add_member(:trace_id, Shapes::ShapeRef.new(shape: TraceId, location_name: "TraceId"))
    SendConnectorEventRequest.add_member(:devices, Shapes::ShapeRef.new(shape: Devices, location_name: "Devices"))
    SendConnectorEventRequest.add_member(:matter_endpoint, Shapes::ShapeRef.new(shape: MatterEndpoint, location_name: "MatterEndpoint"))
    SendConnectorEventRequest.struct_class = Types::SendConnectorEventRequest

    SendConnectorEventResponse.add_member(:connector_id, Shapes::ShapeRef.new(shape: ConnectorId, required: true, location_name: "ConnectorId"))
    SendConnectorEventResponse.struct_class = Types::SendConnectorEventResponse

    SendManagedThingCommandRequest.add_member(:managed_thing_id, Shapes::ShapeRef.new(shape: ManagedThingId, required: true, location: "uri", location_name: "ManagedThingId"))
    SendManagedThingCommandRequest.add_member(:endpoints, Shapes::ShapeRef.new(shape: CommandEndpoints, required: true, location_name: "Endpoints"))
    SendManagedThingCommandRequest.add_member(:connector_association_id, Shapes::ShapeRef.new(shape: ConnectorAssociationId, deprecated: true, location_name: "ConnectorAssociationId", metadata: {"deprecatedMessage" => "ConnectorAssociationId has been deprecated", "deprecatedSince" => "06-25-2025"}))
    SendManagedThingCommandRequest.add_member(:account_association_id, Shapes::ShapeRef.new(shape: AccountAssociationId, location_name: "AccountAssociationId"))
    SendManagedThingCommandRequest.struct_class = Types::SendManagedThingCommandRequest

    SendManagedThingCommandResponse.add_member(:trace_id, Shapes::ShapeRef.new(shape: TraceId, location_name: "TraceId"))
    SendManagedThingCommandResponse.struct_class = Types::SendManagedThingCommandResponse

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    StartAccountAssociationRefreshRequest.add_member(:account_association_id, Shapes::ShapeRef.new(shape: AccountAssociationId, required: true, location: "uri", location_name: "AccountAssociationId"))
    StartAccountAssociationRefreshRequest.struct_class = Types::StartAccountAssociationRefreshRequest

    StartAccountAssociationRefreshResponse.add_member(:o_auth_authorization_url, Shapes::ShapeRef.new(shape: OAuthAuthorizationUrl, required: true, location_name: "OAuthAuthorizationUrl"))
    StartAccountAssociationRefreshResponse.struct_class = Types::StartAccountAssociationRefreshResponse

    StartDeviceDiscoveryRequest.add_member(:discovery_type, Shapes::ShapeRef.new(shape: DiscoveryType, required: true, location_name: "DiscoveryType"))
    StartDeviceDiscoveryRequest.add_member(:custom_protocol_detail, Shapes::ShapeRef.new(shape: CustomProtocolDetail, location_name: "CustomProtocolDetail"))
    StartDeviceDiscoveryRequest.add_member(:controller_identifier, Shapes::ShapeRef.new(shape: ManagedThingId, location_name: "ControllerIdentifier"))
    StartDeviceDiscoveryRequest.add_member(:connector_association_identifier, Shapes::ShapeRef.new(shape: ConnectorAssociationId, deprecated: true, location_name: "ConnectorAssociationIdentifier", metadata: {"deprecatedMessage" => "ConnectorAssociationIdentifier is deprecated", "deprecatedSince" => "06-25-2025"}))
    StartDeviceDiscoveryRequest.add_member(:account_association_id, Shapes::ShapeRef.new(shape: AccountAssociationId, location_name: "AccountAssociationId"))
    StartDeviceDiscoveryRequest.add_member(:authentication_material, Shapes::ShapeRef.new(shape: DiscoveryAuthMaterialString, location_name: "AuthenticationMaterial"))
    StartDeviceDiscoveryRequest.add_member(:authentication_material_type, Shapes::ShapeRef.new(shape: DiscoveryAuthMaterialType, location_name: "AuthenticationMaterialType"))
    StartDeviceDiscoveryRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken"))
    StartDeviceDiscoveryRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, deprecated: true, location_name: "Tags", metadata: {"deprecatedMessage" => "Tags have been deprecated from this api", "deprecatedSince" => "06-25-2025"}))
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

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: IoTManagedIntegrationsResourceARN, required: true, location: "uri", location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

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

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: IoTManagedIntegrationsResourceARN, required: true, location: "uri", location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAccountAssociationRequest.add_member(:account_association_id, Shapes::ShapeRef.new(shape: AccountAssociationId, required: true, location: "uri", location_name: "AccountAssociationId"))
    UpdateAccountAssociationRequest.add_member(:name, Shapes::ShapeRef.new(shape: AccountAssociationName, location_name: "Name"))
    UpdateAccountAssociationRequest.add_member(:description, Shapes::ShapeRef.new(shape: AccountAssociationDescription, location_name: "Description"))
    UpdateAccountAssociationRequest.struct_class = Types::UpdateAccountAssociationRequest

    UpdateCloudConnectorRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: CloudConnectorId, required: true, location: "uri", location_name: "Identifier"))
    UpdateCloudConnectorRequest.add_member(:name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "Name"))
    UpdateCloudConnectorRequest.add_member(:description, Shapes::ShapeRef.new(shape: CloudConnectorDescription, location_name: "Description"))
    UpdateCloudConnectorRequest.struct_class = Types::UpdateCloudConnectorRequest

    UpdateConnectorDestinationRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ConnectorDestinationId, required: true, location: "uri", location_name: "Identifier"))
    UpdateConnectorDestinationRequest.add_member(:description, Shapes::ShapeRef.new(shape: ConnectorDestinationDescription, location_name: "Description"))
    UpdateConnectorDestinationRequest.add_member(:name, Shapes::ShapeRef.new(shape: ConnectorDestinationName, location_name: "Name"))
    UpdateConnectorDestinationRequest.add_member(:auth_type, Shapes::ShapeRef.new(shape: AuthType, location_name: "AuthType"))
    UpdateConnectorDestinationRequest.add_member(:auth_config, Shapes::ShapeRef.new(shape: AuthConfigUpdate, location_name: "AuthConfig"))
    UpdateConnectorDestinationRequest.add_member(:secrets_manager, Shapes::ShapeRef.new(shape: SecretsManager, location_name: "SecretsManager"))
    UpdateConnectorDestinationRequest.struct_class = Types::UpdateConnectorDestinationRequest

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
    UpdateManagedThingRequest.add_member(:capability_schemas, Shapes::ShapeRef.new(shape: CapabilitySchemas, location_name: "CapabilitySchemas"))
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

      api.add_operation(:create_account_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAccountAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/account-associations"
        o.input = Shapes::ShapeRef.new(shape: CreateAccountAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAccountAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_cloud_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCloudConnector"
        o.http_method = "POST"
        o.http_request_uri = "/cloud-connectors"
        o.input = Shapes::ShapeRef.new(shape: CreateCloudConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCloudConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_connector_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConnectorDestination"
        o.http_method = "POST"
        o.http_request_uri = "/connector-destinations"
        o.input = Shapes::ShapeRef.new(shape: CreateConnectorDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateConnectorDestinationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

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
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_account_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAccountAssociation"
        o.http_method = "DELETE"
        o.http_request_uri = "/account-associations/{AccountAssociationId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAccountAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_cloud_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCloudConnector"
        o.http_method = "DELETE"
        o.http_request_uri = "/cloud-connectors/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteCloudConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_connector_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConnectorDestination"
        o.http_method = "DELETE"
        o.http_request_uri = "/connector-destinations/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteConnectorDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
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

      api.add_operation(:deregister_account_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterAccountAssociation"
        o.http_method = "PUT"
        o.http_request_uri = "/managed-thing-associations/deregister"
        o.input = Shapes::ShapeRef.new(shape: DeregisterAccountAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_account_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccountAssociation"
        o.http_method = "GET"
        o.http_request_uri = "/account-associations/{AccountAssociationId}"
        o.input = Shapes::ShapeRef.new(shape: GetAccountAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAccountAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_cloud_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCloudConnector"
        o.http_method = "GET"
        o.http_request_uri = "/cloud-connectors/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetCloudConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCloudConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_connector_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConnectorDestination"
        o.http_method = "GET"
        o.http_request_uri = "/connector-destinations/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetConnectorDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetConnectorDestinationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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

      api.add_operation(:get_managed_thing_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetManagedThingCertificate"
        o.http_method = "GET"
        o.http_request_uri = "/managed-things-certificate/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetManagedThingCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetManagedThingCertificateResponse)
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

      api.add_operation(:list_account_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccountAssociations"
        o.http_method = "GET"
        o.http_request_uri = "/account-associations"
        o.input = Shapes::ShapeRef.new(shape: ListAccountAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAccountAssociationsResponse)
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

      api.add_operation(:list_cloud_connectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCloudConnectors"
        o.http_method = "GET"
        o.http_request_uri = "/cloud-connectors"
        o.input = Shapes::ShapeRef.new(shape: ListCloudConnectorsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCloudConnectorsResponse)
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

      api.add_operation(:list_connector_destinations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConnectorDestinations"
        o.http_method = "GET"
        o.http_request_uri = "/connector-destinations"
        o.input = Shapes::ShapeRef.new(shape: ListConnectorDestinationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListConnectorDestinationsResponse)
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

      api.add_operation(:list_device_discoveries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDeviceDiscoveries"
        o.http_method = "GET"
        o.http_request_uri = "/device-discoveries"
        o.input = Shapes::ShapeRef.new(shape: ListDeviceDiscoveriesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDeviceDiscoveriesResponse)
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

      api.add_operation(:list_discovered_devices, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDiscoveredDevices"
        o.http_method = "GET"
        o.http_request_uri = "/device-discoveries/{Identifier}/devices"
        o.input = Shapes::ShapeRef.new(shape: ListDiscoveredDevicesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDiscoveredDevicesResponse)
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

      api.add_operation(:list_managed_thing_account_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListManagedThingAccountAssociations"
        o.http_method = "GET"
        o.http_request_uri = "/managed-thing-associations"
        o.input = Shapes::ShapeRef.new(shape: ListManagedThingAccountAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListManagedThingAccountAssociationsResponse)
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
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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

      api.add_operation(:register_account_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterAccountAssociation"
        o.http_method = "PUT"
        o.http_request_uri = "/managed-thing-associations/register"
        o.input = Shapes::ShapeRef.new(shape: RegisterAccountAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterAccountAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:send_connector_event, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendConnectorEvent"
        o.http_method = "POST"
        o.http_request_uri = "/connector-event/{ConnectorId}"
        o.input = Shapes::ShapeRef.new(shape: SendConnectorEventRequest)
        o.output = Shapes::ShapeRef.new(shape: SendConnectorEventResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
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
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:start_account_association_refresh, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartAccountAssociationRefresh"
        o.http_method = "POST"
        o.http_request_uri = "/account-associations/{AccountAssociationId}/refresh"
        o.input = Shapes::ShapeRef.new(shape: StartAccountAssociationRefreshRequest)
        o.output = Shapes::ShapeRef.new(shape: StartAccountAssociationRefreshResponse)
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

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_account_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAccountAssociation"
        o.http_method = "PUT"
        o.http_request_uri = "/account-associations/{AccountAssociationId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateAccountAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_cloud_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCloudConnector"
        o.http_method = "PUT"
        o.http_request_uri = "/cloud-connectors/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateCloudConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_connector_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateConnectorDestination"
        o.http_method = "PUT"
        o.http_request_uri = "/connector-destinations/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateConnectorDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
