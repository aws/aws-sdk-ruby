# frozen_string_literal: true

# This is generated code!

module Aws::IoTManagedIntegrations
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AbortConfigCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#AbortConfigCriteria", name: "AbortConfigCriteria")
    AbortConfigCriteriaList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#AbortConfigCriteriaList", name: "AbortConfigCriteriaList")
    AbortCriteriaAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotmanagedintegrations#AbortCriteriaAction", name: "AbortCriteriaAction")
    AbortCriteriaFailureType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotmanagedintegrations#AbortCriteriaFailureType", name: "AbortCriteriaFailureType")
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountAssociationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#AccountAssociationArn", name: "AccountAssociationArn", traits: {"aws.api#arnReference" => {}, "smithy.api#length" => {"min" => 67, "max" => 1011}, "smithy.api#pattern" => "^arn:aws:iotmanagedintegrations:[0-9a-zA-Z-]+:[0-9]+:account-association/[0-9a-zA-Z]+$"})
    AccountAssociationDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#AccountAssociationDescription", name: "AccountAssociationDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^[A-Za-z0-9-_ ]+$"})
    AccountAssociationErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#AccountAssociationErrorMessage", name: "AccountAssociationErrorMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^[A-Za-z0-9-_ ]+$"})
    AccountAssociationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#AccountAssociationId", name: "AccountAssociationId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[0-9a-zA-Z]+$"})
    AccountAssociationItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#AccountAssociationItem", name: "AccountAssociationItem")
    AccountAssociationListDefinition = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#AccountAssociationListDefinition", name: "AccountAssociationListDefinition")
    AccountAssociationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#AccountAssociationName", name: "AccountAssociationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9-_ ]+$"})
    ActionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#ActionName", name: "ActionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[/a-zA-Z0-9\\._ ]+$"})
    ActionReference = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#ActionReference", name: "ActionReference", traits: {"smithy.api#pattern" => "^[a-zA-Z.]+$"})
    ActionTraceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#ActionTraceId", name: "ActionTraceId", traits: {"smithy.api#length" => {"min" => 16, "max" => 20}, "smithy.api#pattern" => "^[a-zA-Z0-9]+=(?:_[0-9]+)?$"})
    AdvertisedProductId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#AdvertisedProductId", name: "AdvertisedProductId", traits: {"smithy.api#length" => {"min" => 5, "max" => 5}, "smithy.api#pattern" => "^([A-Za-z0-9!\#$%&()*\\+\\-;<=>?@^_`{|}~])+$"})
    AssociationState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotmanagedintegrations#AssociationState", name: "AssociationState")
    AttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#AttributeName", name: "AttributeName", traits: {"smithy.api#length" => {"max" => 128}, "smithy.api#pattern" => "[a-zA-Z0-9_.,@/:#-]+"})
    AttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#AttributeValue", name: "AttributeValue", traits: {"smithy.api#length" => {"max" => 800}, "smithy.api#pattern" => "[a-zA-Z0-9_.,@/:#-]*"})
    AuthConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#AuthConfig", name: "AuthConfig")
    AuthConfigUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#AuthConfigUpdate", name: "AuthConfigUpdate")
    AuthMaterialString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#AuthMaterialString", name: "AuthMaterialString", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[0-9A-Za-z!\#$%&()*\\+\\-;<=>?@^_`{|}~\\/: {},\\\\\"]+$", "smithy.api#sensitive" => {}})
    AuthMaterialType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotmanagedintegrations#AuthMaterialType", name: "AuthMaterialType")
    AuthType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotmanagedintegrations#AuthType", name: "AuthType")
    AuthUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#AuthUrl", name: "AuthUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^https?:\\/\\/(www\\.)?[-a-zA-Z0-9@:%._\\+~#=]{1,256}\\.[a-zA-Z0-9()]{1,6}([-a-zA-Z0-9()@:%_\\+.~#?&\\/=]*)$"})
    BaseRatePerMinute = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotmanagedintegrations#BaseRatePerMinute", name: "BaseRatePerMinute", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    Brand = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#Brand", name: "Brand", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9-_ ]+$", "smithy.api#sensitive" => {}})
    CaCertificate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#CaCertificate", name: "CaCertificate", traits: {"smithy.api#pattern" => "^-----BEGIN CERTIFICATE-----.*(.|\\n)*-----END CERTIFICATE-----\\n?$", "smithy.api#sensitive" => {}})
    Capabilities = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#Capabilities", name: "Capabilities", traits: {"smithy.api#length" => {"min" => 1, "max" => 65535}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s'\\x{0022},.:\\\\\\/{$}\\[\\]=_\\-\\+]+$"})
    CapabilityAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#CapabilityAction", name: "CapabilityAction")
    CapabilityActionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#CapabilityActionName", name: "CapabilityActionName", traits: {"smithy.api#pattern" => "^[/a-zA-Z]+$"})
    CapabilityActions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#CapabilityActions", name: "CapabilityActions", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    CapabilityId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#CapabilityId", name: "CapabilityId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9./]+(@\\d+\\.\\d+)?$"})
    CapabilityName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#CapabilityName", name: "CapabilityName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[/a-zA-Z0-9\\._ ]+$"})
    CapabilityProperties = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.iotmanagedintegrations#CapabilityProperties", name: "CapabilityProperties", traits: {"smithy.api#sensitive" => {}})
    CapabilityReport = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#CapabilityReport", name: "CapabilityReport")
    CapabilityReportActions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#CapabilityReportActions", name: "CapabilityReportActions", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    CapabilityReportCapabilities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#CapabilityReportCapabilities", name: "CapabilityReportCapabilities", traits: {"smithy.api#length" => {"min" => 0, "max" => 40}})
    CapabilityReportCapability = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#CapabilityReportCapability", name: "CapabilityReportCapability")
    CapabilityReportEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#CapabilityReportEndpoint", name: "CapabilityReportEndpoint")
    CapabilityReportEndpoints = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#CapabilityReportEndpoints", name: "CapabilityReportEndpoints", traits: {"smithy.api#length" => {"min" => 0, "max" => 40}})
    CapabilityReportEvents = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#CapabilityReportEvents", name: "CapabilityReportEvents", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    CapabilityReportProperties = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#CapabilityReportProperties", name: "CapabilityReportProperties", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    CapabilityReportVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#CapabilityReportVersion", name: "CapabilityReportVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#pattern" => "^1\\.0\\.0$"})
    CapabilitySchemaItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#CapabilitySchemaItem", name: "CapabilitySchemaItem")
    CapabilitySchemas = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#CapabilitySchemas", name: "CapabilitySchemas", traits: {"smithy.api#length" => {"min" => 0, "max" => 40}})
    CapabilityVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#CapabilityVersion", name: "CapabilityVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^(0|[1-9][0-9]*)$"})
    ClaimCertificate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#ClaimCertificate", name: "ClaimCertificate", traits: {"smithy.api#sensitive" => {}})
    ClaimCertificatePrivateKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#ClaimCertificatePrivateKey", name: "ClaimCertificatePrivateKey", traits: {"smithy.api#sensitive" => {}})
    Classification = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#Classification", name: "Classification", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#sensitive" => {}})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9=_-]+$"})
    CloudConnectorDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#CloudConnectorDescription", name: "CloudConnectorDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[0-9A-Za-z_\\- ]+$"})
    CloudConnectorId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#CloudConnectorId", name: "CloudConnectorId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9-_]+$"})
    CloudConnectorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotmanagedintegrations#CloudConnectorType", name: "CloudConnectorType")
    ClusterId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#ClusterId", name: "ClusterId", traits: {"smithy.api#length" => {"min" => 1, "max" => 24}, "smithy.api#pattern" => "^0[xX][0-9a-fA-F]+$|^[0-9]+$"})
    CommandCapabilities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#CommandCapabilities", name: "CommandCapabilities", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    CommandCapability = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#CommandCapability", name: "CommandCapability")
    CommandEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#CommandEndpoint", name: "CommandEndpoint")
    CommandEndpoints = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#CommandEndpoints", name: "CommandEndpoints", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ConfigurationError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ConfigurationError", name: "ConfigurationError")
    ConfigurationErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#ConfigurationErrorCode", name: "ConfigurationErrorCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    ConfigurationErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#ConfigurationErrorMessage", name: "ConfigurationErrorMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 65535}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-._,]+$"})
    ConfigurationState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotmanagedintegrations#ConfigurationState", name: "ConfigurationState")
    ConfigurationStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ConfigurationStatus", name: "ConfigurationStatus")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectivityStatus = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotmanagedintegrations#ConnectivityStatus", name: "ConnectivityStatus")
    ConnectivityTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.iotmanagedintegrations#ConnectivityTimestamp", name: "ConnectivityTimestamp")
    ConnectorAssociationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#ConnectorAssociationId", name: "ConnectorAssociationId", traits: {"smithy.api#deprecated" => {"message" => "ConnectorAssociationId is deprecated", "since" => "2025-06-25"}, "smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[0-9a-zA-Z]+$"})
    ConnectorDestinationDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#ConnectorDestinationDescription", name: "ConnectorDestinationDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[0-9A-Za-z_\\- ]+$"})
    ConnectorDestinationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#ConnectorDestinationId", name: "ConnectorDestinationId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9-_]+$"})
    ConnectorDestinationListDefinition = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#ConnectorDestinationListDefinition", name: "ConnectorDestinationListDefinition")
    ConnectorDestinationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#ConnectorDestinationName", name: "ConnectorDestinationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9-_ ]+$"})
    ConnectorDestinationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ConnectorDestinationSummary", name: "ConnectorDestinationSummary")
    ConnectorDeviceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#ConnectorDeviceId", name: "ConnectorDeviceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_.,@-]+$", "smithy.api#sensitive" => {}})
    ConnectorDeviceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#ConnectorDeviceName", name: "ConnectorDeviceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}\\p{N} ._-]+$", "smithy.api#sensitive" => {}})
    ConnectorEventMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#ConnectorEventMessage", name: "ConnectorEventMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\sa-zA-Z0-9_.,@-]+$", "smithy.api#sensitive" => {}})
    ConnectorEventOperation = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotmanagedintegrations#ConnectorEventOperation", name: "ConnectorEventOperation")
    ConnectorEventOperationVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#ConnectorEventOperationVersion", name: "ConnectorEventOperationVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 6}, "smithy.api#pattern" => "^[0-9.]+$", "smithy.api#sensitive" => {}})
    ConnectorEventStatusCode = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotmanagedintegrations#ConnectorEventStatusCode", name: "ConnectorEventStatusCode", traits: {"smithy.api#range" => {"min" => 100, "max" => 550}, "smithy.api#sensitive" => {}})
    ConnectorId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#ConnectorId", name: "ConnectorId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9-_]+$"})
    ConnectorItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ConnectorItem", name: "ConnectorItem")
    ConnectorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#ConnectorList", name: "ConnectorList")
    ConnectorPolicyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#ConnectorPolicyId", name: "ConnectorPolicyId", traits: {"smithy.api#deprecated" => {"message" => "ConnectorPolicyId is deprecated", "since" => "2025-06-25"}, "smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9-_]+$"})
    CreateAccountAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#CreateAccountAssociationRequest", name: "CreateAccountAssociationRequest")
    CreateAccountAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#CreateAccountAssociationResponse", name: "CreateAccountAssociationResponse")
    CreateCloudConnectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#CreateCloudConnectorRequest", name: "CreateCloudConnectorRequest")
    CreateCloudConnectorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#CreateCloudConnectorResponse", name: "CreateCloudConnectorResponse")
    CreateConnectorDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#CreateConnectorDestinationRequest", name: "CreateConnectorDestinationRequest")
    CreateConnectorDestinationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#CreateConnectorDestinationResponse", name: "CreateConnectorDestinationResponse")
    CreateCredentialLockerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#CreateCredentialLockerRequest", name: "CreateCredentialLockerRequest")
    CreateCredentialLockerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#CreateCredentialLockerResponse", name: "CreateCredentialLockerResponse")
    CreateDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#CreateDestinationRequest", name: "CreateDestinationRequest")
    CreateDestinationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#CreateDestinationResponse", name: "CreateDestinationResponse")
    CreateEventLogConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#CreateEventLogConfigurationRequest", name: "CreateEventLogConfigurationRequest")
    CreateEventLogConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#CreateEventLogConfigurationResponse", name: "CreateEventLogConfigurationResponse")
    CreateManagedThingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#CreateManagedThingRequest", name: "CreateManagedThingRequest")
    CreateManagedThingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#CreateManagedThingResponse", name: "CreateManagedThingResponse")
    CreateNotificationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#CreateNotificationConfigurationRequest", name: "CreateNotificationConfigurationRequest")
    CreateNotificationConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#CreateNotificationConfigurationResponse", name: "CreateNotificationConfigurationResponse")
    CreateOtaTaskConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#CreateOtaTaskConfigurationRequest", name: "CreateOtaTaskConfigurationRequest")
    CreateOtaTaskConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#CreateOtaTaskConfigurationResponse", name: "CreateOtaTaskConfigurationResponse")
    CreateOtaTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#CreateOtaTaskRequest", name: "CreateOtaTaskRequest")
    CreateOtaTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#CreateOtaTaskResponse", name: "CreateOtaTaskResponse")
    CreateProvisioningProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#CreateProvisioningProfileRequest", name: "CreateProvisioningProfileRequest")
    CreateProvisioningProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#CreateProvisioningProfileResponse", name: "CreateProvisioningProfileResponse")
    CreatedAt = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.iotmanagedintegrations#CreatedAt", name: "CreatedAt")
    CredentialLockerArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#CredentialLockerArn", name: "CredentialLockerArn", traits: {"aws.api#arnReference" => {"service" => "com.amazon.services.iotsmarthomeservice#IotSmartHomeService", "resource" => "com.amazonaws.iotmanagedintegrations#CredentialLockerResource"}, "smithy.api#length" => {"min" => 32, "max" => 1011}, "smithy.api#pattern" => "^arn:aws:iotmanagedintegrations:[0-9a-zA-Z-]+:[0-9]+:credential-locker/[0-9a-zA-Z]+$"})
    CredentialLockerCreatedAt = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.iotmanagedintegrations#CredentialLockerCreatedAt", name: "CredentialLockerCreatedAt")
    CredentialLockerId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#CredentialLockerId", name: "CredentialLockerId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9]*$"})
    CredentialLockerListDefinition = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#CredentialLockerListDefinition", name: "CredentialLockerListDefinition")
    CredentialLockerName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#CredentialLockerName", name: "CredentialLockerName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9-_ ]+$", "smithy.api#sensitive" => {}})
    CredentialLockerSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#CredentialLockerSummary", name: "CredentialLockerSummary")
    CustomProtocolDetail = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iotmanagedintegrations#CustomProtocolDetail", name: "CustomProtocolDetail", traits: {"smithy.api#length" => {"max" => 50}})
    CustomProtocolDetailKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#CustomProtocolDetailKey", name: "CustomProtocolDetailKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9 _.-]+$"})
    CustomProtocolDetailValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#CustomProtocolDetailValue", name: "CustomProtocolDetailValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[a-zA-Z0-9 _.{}:\"-]+$"})
    DeleteAccountAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#DeleteAccountAssociationRequest", name: "DeleteAccountAssociationRequest")
    DeleteCloudConnectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#DeleteCloudConnectorRequest", name: "DeleteCloudConnectorRequest")
    DeleteConnectorDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#DeleteConnectorDestinationRequest", name: "DeleteConnectorDestinationRequest")
    DeleteCredentialLockerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#DeleteCredentialLockerRequest", name: "DeleteCredentialLockerRequest")
    DeleteDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#DeleteDestinationRequest", name: "DeleteDestinationRequest")
    DeleteEventLogConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#DeleteEventLogConfigurationRequest", name: "DeleteEventLogConfigurationRequest")
    DeleteLocalStoreAfterUpload = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotmanagedintegrations#DeleteLocalStoreAfterUpload", name: "DeleteLocalStoreAfterUpload")
    DeleteManagedThingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#DeleteManagedThingRequest", name: "DeleteManagedThingRequest")
    DeleteNotificationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#DeleteNotificationConfigurationRequest", name: "DeleteNotificationConfigurationRequest")
    DeleteOtaTaskConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#DeleteOtaTaskConfigurationRequest", name: "DeleteOtaTaskConfigurationRequest")
    DeleteOtaTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#DeleteOtaTaskRequest", name: "DeleteOtaTaskRequest")
    DeleteProvisioningProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#DeleteProvisioningProfileRequest", name: "DeleteProvisioningProfileRequest")
    DeliveryDestinationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#DeliveryDestinationArn", name: "DeliveryDestinationArn", traits: {"aws.api#arnReference" => {}, "smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:[0-9a-zA-Z]+:[0-9a-zA-Z-]+:[0-9]+:[0-9a-zA-Z]+/[0-9a-zA-Z._-]+$"})
    DeliveryDestinationRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#DeliveryDestinationRoleArn", name: "DeliveryDestinationRoleArn", traits: {"aws.api#arnReference" => {"type" => "AWS::IAM::Role"}})
    DeliveryDestinationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotmanagedintegrations#DeliveryDestinationType", name: "DeliveryDestinationType")
    DeregisterAccountAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#DeregisterAccountAssociationRequest", name: "DeregisterAccountAssociationRequest")
    DestinationCreatedAt = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.iotmanagedintegrations#DestinationCreatedAt", name: "DestinationCreatedAt")
    DestinationDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#DestinationDescription", name: "DestinationDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[0-9A-Za-z_\\- ]+$"})
    DestinationListDefinition = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#DestinationListDefinition", name: "DestinationListDefinition")
    DestinationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#DestinationName", name: "DestinationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}\\p{N} ._-]+$"})
    DestinationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#DestinationSummary", name: "DestinationSummary")
    DestinationUpdatedAt = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.iotmanagedintegrations#DestinationUpdatedAt", name: "DestinationUpdatedAt")
    Device = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#Device", name: "Device")
    DeviceDiscoveryArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#DeviceDiscoveryArn", name: "DeviceDiscoveryArn", traits: {"aws.api#arnReference" => {}, "smithy.api#pattern" => "^arn:aws:iotmanagedintegrations:[0-9a-zA-Z-]+:[0-9]+:device-discovery/[0-9a-zA-Z]+$"})
    DeviceDiscoveryId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#DeviceDiscoveryId", name: "DeviceDiscoveryId", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[A-Za-z0-9]+$"})
    DeviceDiscoveryListDefinition = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#DeviceDiscoveryListDefinition", name: "DeviceDiscoveryListDefinition")
    DeviceDiscoveryStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotmanagedintegrations#DeviceDiscoveryStatus", name: "DeviceDiscoveryStatus")
    DeviceDiscoverySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#DeviceDiscoverySummary", name: "DeviceDiscoverySummary")
    DeviceMetadata = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.iotmanagedintegrations#DeviceMetadata", name: "DeviceMetadata")
    DeviceSpecificKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#DeviceSpecificKey", name: "DeviceSpecificKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9=_.,@\\+\\-]+$", "smithy.api#sensitive" => {}})
    DeviceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#DeviceType", name: "DeviceType", traits: {"smithy.api#length" => {"max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9=_. ,@\\+\\-/]+$"})
    DeviceTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#DeviceTypeList", name: "DeviceTypeList")
    DeviceTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#DeviceTypes", name: "DeviceTypes", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    Devices = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#Devices", name: "Devices")
    DisconnectReasonValue = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotmanagedintegrations#DisconnectReasonValue", name: "DisconnectReasonValue")
    DiscoveredAt = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.iotmanagedintegrations#DiscoveredAt", name: "DiscoveredAt")
    DiscoveredDeviceListDefinition = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#DiscoveredDeviceListDefinition", name: "DiscoveredDeviceListDefinition")
    DiscoveredDeviceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#DiscoveredDeviceSummary", name: "DiscoveredDeviceSummary")
    DiscoveryAuthMaterialString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#DiscoveryAuthMaterialString", name: "DiscoveryAuthMaterialString", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[0-9A-Za-z_\\-\\+=\\/:; ]+$", "smithy.api#sensitive" => {}})
    DiscoveryAuthMaterialType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotmanagedintegrations#DiscoveryAuthMaterialType", name: "DiscoveryAuthMaterialType")
    DiscoveryFinishedAt = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.iotmanagedintegrations#DiscoveryFinishedAt", name: "DiscoveryFinishedAt")
    DiscoveryModification = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotmanagedintegrations#DiscoveryModification", name: "DiscoveryModification")
    DiscoveryStartedAt = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.iotmanagedintegrations#DiscoveryStartedAt", name: "DiscoveryStartedAt")
    DiscoveryType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotmanagedintegrations#DiscoveryType", name: "DiscoveryType")
    DisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#DisplayName", name: "DisplayName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9-_ ]+$"})
    DurationInMinutes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotmanagedintegrations#DurationInMinutes", name: "DurationInMinutes", traits: {"smithy.api#range" => {"min" => 1, "max" => 1430}})
    EncryptionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotmanagedintegrations#EncryptionType", name: "EncryptionType")
    EndTime = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#EndTime", name: "EndTime")
    EndpointAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#EndpointAddress", name: "EndpointAddress", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9._@-]+$"})
    EndpointConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#EndpointConfig", name: "EndpointConfig")
    EndpointId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#EndpointId", name: "EndpointId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[0-9a-zA-Z]+$"})
    EndpointSemanticTag = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#EndpointSemanticTag", name: "EndpointSemanticTag", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[0-9a-zA-Z._-]+$"})
    EndpointType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotmanagedintegrations#EndpointType", name: "EndpointType")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#ErrorMessage", name: "ErrorMessage")
    ErrorResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#ErrorResourceId", name: "ErrorResourceId")
    ErrorResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#ErrorResourceType", name: "ErrorResourceType")
    EventLogConfigurationListDefinition = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#EventLogConfigurationListDefinition", name: "EventLogConfigurationListDefinition")
    EventLogConfigurationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#EventLogConfigurationSummary", name: "EventLogConfigurationSummary")
    EventName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#EventName", name: "EventName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[/a-zA-Z0-9\\._ ]+$"})
    EventType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotmanagedintegrations#EventType", name: "EventType")
    ExecutionNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotmanagedintegrations#ExecutionNumber", name: "ExecutionNumber")
    ExponentialRolloutRate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ExponentialRolloutRate", name: "ExponentialRolloutRate")
    ExtrinsicSchemaId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#ExtrinsicSchemaId", name: "ExtrinsicSchemaId", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#pattern" => "^0[xX][0-9a-fA-F]+$|^[0-9]+$"})
    GetAccountAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetAccountAssociationRequest", name: "GetAccountAssociationRequest")
    GetAccountAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetAccountAssociationResponse", name: "GetAccountAssociationResponse")
    GetCloudConnectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetCloudConnectorRequest", name: "GetCloudConnectorRequest")
    GetCloudConnectorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetCloudConnectorResponse", name: "GetCloudConnectorResponse")
    GetConnectorDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetConnectorDestinationRequest", name: "GetConnectorDestinationRequest")
    GetConnectorDestinationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetConnectorDestinationResponse", name: "GetConnectorDestinationResponse")
    GetCredentialLockerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetCredentialLockerRequest", name: "GetCredentialLockerRequest")
    GetCredentialLockerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetCredentialLockerResponse", name: "GetCredentialLockerResponse")
    GetCustomEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetCustomEndpointRequest", name: "GetCustomEndpointRequest")
    GetCustomEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetCustomEndpointResponse", name: "GetCustomEndpointResponse")
    GetDefaultEncryptionConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetDefaultEncryptionConfigurationRequest", name: "GetDefaultEncryptionConfigurationRequest")
    GetDefaultEncryptionConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetDefaultEncryptionConfigurationResponse", name: "GetDefaultEncryptionConfigurationResponse")
    GetDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetDestinationRequest", name: "GetDestinationRequest")
    GetDestinationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetDestinationResponse", name: "GetDestinationResponse")
    GetDeviceDiscoveryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetDeviceDiscoveryRequest", name: "GetDeviceDiscoveryRequest")
    GetDeviceDiscoveryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetDeviceDiscoveryResponse", name: "GetDeviceDiscoveryResponse")
    GetEventLogConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetEventLogConfigurationRequest", name: "GetEventLogConfigurationRequest")
    GetEventLogConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetEventLogConfigurationResponse", name: "GetEventLogConfigurationResponse")
    GetHubConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetHubConfigurationRequest", name: "GetHubConfigurationRequest")
    GetHubConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetHubConfigurationResponse", name: "GetHubConfigurationResponse")
    GetManagedThingCapabilitiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetManagedThingCapabilitiesRequest", name: "GetManagedThingCapabilitiesRequest")
    GetManagedThingCapabilitiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetManagedThingCapabilitiesResponse", name: "GetManagedThingCapabilitiesResponse")
    GetManagedThingConnectivityDataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetManagedThingConnectivityDataRequest", name: "GetManagedThingConnectivityDataRequest")
    GetManagedThingConnectivityDataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetManagedThingConnectivityDataResponse", name: "GetManagedThingConnectivityDataResponse")
    GetManagedThingMetaDataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetManagedThingMetaDataRequest", name: "GetManagedThingMetaDataRequest")
    GetManagedThingMetaDataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetManagedThingMetaDataResponse", name: "GetManagedThingMetaDataResponse")
    GetManagedThingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetManagedThingRequest", name: "GetManagedThingRequest")
    GetManagedThingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetManagedThingResponse", name: "GetManagedThingResponse")
    GetManagedThingStateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetManagedThingStateRequest", name: "GetManagedThingStateRequest")
    GetManagedThingStateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetManagedThingStateResponse", name: "GetManagedThingStateResponse")
    GetNotificationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetNotificationConfigurationRequest", name: "GetNotificationConfigurationRequest")
    GetNotificationConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetNotificationConfigurationResponse", name: "GetNotificationConfigurationResponse")
    GetOtaTaskConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetOtaTaskConfigurationRequest", name: "GetOtaTaskConfigurationRequest")
    GetOtaTaskConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetOtaTaskConfigurationResponse", name: "GetOtaTaskConfigurationResponse")
    GetOtaTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetOtaTaskRequest", name: "GetOtaTaskRequest")
    GetOtaTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetOtaTaskResponse", name: "GetOtaTaskResponse")
    GetProvisioningProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetProvisioningProfileRequest", name: "GetProvisioningProfileRequest")
    GetProvisioningProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetProvisioningProfileResponse", name: "GetProvisioningProfileResponse")
    GetRuntimeLogConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetRuntimeLogConfigurationRequest", name: "GetRuntimeLogConfigurationRequest")
    GetRuntimeLogConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetRuntimeLogConfigurationResponse", name: "GetRuntimeLogConfigurationResponse")
    GetSchemaVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetSchemaVersionRequest", name: "GetSchemaVersionRequest")
    GetSchemaVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#GetSchemaVersionResponse", name: "GetSchemaVersionResponse")
    HubConfigurationUpdatedAt = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.iotmanagedintegrations#HubConfigurationUpdatedAt", name: "HubConfigurationUpdatedAt")
    HubNetworkMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotmanagedintegrations#HubNetworkMode", name: "HubNetworkMode")
    HubTokenTimerExpirySettingInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotmanagedintegrations#HubTokenTimerExpirySettingInSeconds", name: "HubTokenTimerExpirySettingInSeconds", traits: {"smithy.api#range" => {"min" => 1}})
    InProgressTimeoutInMinutes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotmanagedintegrations#InProgressTimeoutInMinutes", name: "InProgressTimeoutInMinutes", traits: {"smithy.api#range" => {"min" => 1, "max" => 10080}})
    IncrementFactor = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.iotmanagedintegrations#IncrementFactor", name: "IncrementFactor", traits: {"smithy.api#range" => {"min" => 1.1, "max" => 5}})
    InternalFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#InternalFailureException", name: "InternalFailureException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InternationalArticleNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#InternationalArticleNumber", name: "InternationalArticleNumber", traits: {"smithy.api#length" => {"min" => 8, "max" => 13}, "smithy.api#pattern" => "^[0-9]+$", "smithy.api#sensitive" => {}})
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#InvalidRequestException", name: "InvalidRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IoTManagedIntegrationsResourceARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#IoTManagedIntegrationsResourceARN", name: "IoTManagedIntegrationsResourceARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^arn:aws:iotmanagedintegrations:[0-9a-zA-Z-]+:[0-9]+:(managed-thing|provisioning-profile|ota-task|credential-locker|account-association)/[0-9a-zA-Z]+$"})
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#KmsKeyArn", name: "KmsKeyArn", traits: {"aws.api#arnReference" => {}, "smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^arn:aws:kms:[0-9a-zA-Z-]+:[0-9]+:key/[0-9a-zA-Z-]+$"})
    LambdaArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#LambdaArn", name: "LambdaArn", traits: {"smithy.api#pattern" => "^(arn:aws:lambda:[0-9a-zA-Z-]+:[0-9]+:function:)?([a-zA-Z0-9-_]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?)$"})
    LambdaConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#LambdaConfig", name: "LambdaConfig")
    LastUpdatedAt = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.iotmanagedintegrations#LastUpdatedAt", name: "LastUpdatedAt")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 410})
    ListAccountAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ListAccountAssociationsRequest", name: "ListAccountAssociationsRequest")
    ListAccountAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ListAccountAssociationsResponse", name: "ListAccountAssociationsResponse")
    ListCloudConnectorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ListCloudConnectorsRequest", name: "ListCloudConnectorsRequest")
    ListCloudConnectorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ListCloudConnectorsResponse", name: "ListCloudConnectorsResponse")
    ListConnectorDestinationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ListConnectorDestinationsRequest", name: "ListConnectorDestinationsRequest")
    ListConnectorDestinationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ListConnectorDestinationsResponse", name: "ListConnectorDestinationsResponse")
    ListCredentialLockersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ListCredentialLockersRequest", name: "ListCredentialLockersRequest")
    ListCredentialLockersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ListCredentialLockersResponse", name: "ListCredentialLockersResponse")
    ListDestinationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ListDestinationsRequest", name: "ListDestinationsRequest")
    ListDestinationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ListDestinationsResponse", name: "ListDestinationsResponse")
    ListDeviceDiscoveriesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ListDeviceDiscoveriesRequest", name: "ListDeviceDiscoveriesRequest")
    ListDeviceDiscoveriesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ListDeviceDiscoveriesResponse", name: "ListDeviceDiscoveriesResponse")
    ListDiscoveredDevicesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ListDiscoveredDevicesRequest", name: "ListDiscoveredDevicesRequest")
    ListDiscoveredDevicesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ListDiscoveredDevicesResponse", name: "ListDiscoveredDevicesResponse")
    ListEventLogConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ListEventLogConfigurationsRequest", name: "ListEventLogConfigurationsRequest")
    ListEventLogConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ListEventLogConfigurationsResponse", name: "ListEventLogConfigurationsResponse")
    ListManagedThingAccountAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ListManagedThingAccountAssociationsRequest", name: "ListManagedThingAccountAssociationsRequest")
    ListManagedThingAccountAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ListManagedThingAccountAssociationsResponse", name: "ListManagedThingAccountAssociationsResponse")
    ListManagedThingSchemasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ListManagedThingSchemasRequest", name: "ListManagedThingSchemasRequest")
    ListManagedThingSchemasResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ListManagedThingSchemasResponse", name: "ListManagedThingSchemasResponse")
    ListManagedThingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ListManagedThingsRequest", name: "ListManagedThingsRequest")
    ListManagedThingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ListManagedThingsResponse", name: "ListManagedThingsResponse")
    ListNotificationConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ListNotificationConfigurationsRequest", name: "ListNotificationConfigurationsRequest")
    ListNotificationConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ListNotificationConfigurationsResponse", name: "ListNotificationConfigurationsResponse")
    ListOtaTaskConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ListOtaTaskConfigurationsRequest", name: "ListOtaTaskConfigurationsRequest")
    ListOtaTaskConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ListOtaTaskConfigurationsResponse", name: "ListOtaTaskConfigurationsResponse")
    ListOtaTaskExecutionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ListOtaTaskExecutionsRequest", name: "ListOtaTaskExecutionsRequest")
    ListOtaTaskExecutionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ListOtaTaskExecutionsResponse", name: "ListOtaTaskExecutionsResponse")
    ListOtaTasksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ListOtaTasksRequest", name: "ListOtaTasksRequest")
    ListOtaTasksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ListOtaTasksResponse", name: "ListOtaTasksResponse")
    ListProvisioningProfilesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ListProvisioningProfilesRequest", name: "ListProvisioningProfilesRequest")
    ListProvisioningProfilesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ListProvisioningProfilesResponse", name: "ListProvisioningProfilesResponse")
    ListSchemaVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ListSchemaVersionsRequest", name: "ListSchemaVersionsRequest")
    ListSchemaVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ListSchemaVersionsResponse", name: "ListSchemaVersionsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    LocalStoreFileRotationMaxBytes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotmanagedintegrations#LocalStoreFileRotationMaxBytes", name: "LocalStoreFileRotationMaxBytes")
    LocalStoreFileRotationMaxFiles = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotmanagedintegrations#LocalStoreFileRotationMaxFiles", name: "LocalStoreFileRotationMaxFiles")
    LocalStoreLocation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#LocalStoreLocation", name: "LocalStoreLocation")
    LogConfigurationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#LogConfigurationId", name: "LogConfigurationId", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[A-Za-z0-9]+$"})
    LogLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotmanagedintegrations#LogLevel", name: "LogLevel")
    MacAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#MacAddress", name: "MacAddress", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#sensitive" => {}})
    ManagedThingArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#ManagedThingArn", name: "ManagedThingArn", traits: {"aws.api#arnReference" => {}, "smithy.api#length" => {"min" => 32, "max" => 1011}, "smithy.api#pattern" => "^arn:aws:iotmanagedintegrations:[0-9a-zA-Z-]+:[0-9]+:managed-thing/([0-9a-zA-Z:_-])+$"})
    ManagedThingAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ManagedThingAssociation", name: "ManagedThingAssociation")
    ManagedThingAssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#ManagedThingAssociationList", name: "ManagedThingAssociationList")
    ManagedThingId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#ManagedThingId", name: "ManagedThingId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9:_-]*$"})
    ManagedThingListDefinition = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#ManagedThingListDefinition", name: "ManagedThingListDefinition")
    ManagedThingSchemaListDefinition = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#ManagedThingSchemaListDefinition", name: "ManagedThingSchemaListDefinition")
    ManagedThingSchemaListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ManagedThingSchemaListItem", name: "ManagedThingSchemaListItem")
    ManagedThingSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ManagedThingSummary", name: "ManagedThingSummary")
    MatterAttributeId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#MatterAttributeId", name: "MatterAttributeId", traits: {"smithy.api#length" => {"min" => 1, "max" => 24}, "smithy.api#pattern" => "^0[xX][0-9a-fA-F]+$|^[0-9]+$"})
    MatterAttributes = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.iotmanagedintegrations#MatterAttributes", name: "MatterAttributes", traits: {"smithy.api#sensitive" => {}})
    MatterCapabilityReport = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#MatterCapabilityReport", name: "MatterCapabilityReport")
    MatterCapabilityReportAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#MatterCapabilityReportAttribute", name: "MatterCapabilityReportAttribute")
    MatterCapabilityReportAttributeValue = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.iotmanagedintegrations#MatterCapabilityReportAttributeValue", name: "MatterCapabilityReportAttributeValue")
    MatterCapabilityReportAttributes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#MatterCapabilityReportAttributes", name: "MatterCapabilityReportAttributes", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    MatterCapabilityReportCluster = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#MatterCapabilityReportCluster", name: "MatterCapabilityReportCluster")
    MatterCapabilityReportClusterRevisionId = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotmanagedintegrations#MatterCapabilityReportClusterRevisionId", name: "MatterCapabilityReportClusterRevisionId", traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    MatterCapabilityReportClusters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#MatterCapabilityReportClusters", name: "MatterCapabilityReportClusters", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    MatterCapabilityReportCommands = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#MatterCapabilityReportCommands", name: "MatterCapabilityReportCommands", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    MatterCapabilityReportEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#MatterCapabilityReportEndpoint", name: "MatterCapabilityReportEndpoint")
    MatterCapabilityReportEndpointClientClusters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#MatterCapabilityReportEndpointClientClusters", name: "MatterCapabilityReportEndpointClientClusters", traits: {"smithy.api#length" => {"min" => 0, "max" => 32}})
    MatterCapabilityReportEndpointParts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#MatterCapabilityReportEndpointParts", name: "MatterCapabilityReportEndpointParts", traits: {"smithy.api#length" => {"min" => 0, "max" => 32}})
    MatterCapabilityReportEndpointSemanticTags = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#MatterCapabilityReportEndpointSemanticTags", name: "MatterCapabilityReportEndpointSemanticTags", traits: {"smithy.api#length" => {"min" => 0, "max" => 32}})
    MatterCapabilityReportEndpoints = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#MatterCapabilityReportEndpoints", name: "MatterCapabilityReportEndpoints", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    MatterCapabilityReportEvents = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#MatterCapabilityReportEvents", name: "MatterCapabilityReportEvents", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    MatterCapabilityReportFabricIndex = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotmanagedintegrations#MatterCapabilityReportFabricIndex", name: "MatterCapabilityReportFabricIndex", traits: {"smithy.api#range" => {"min" => 0, "max" => 4096}})
    MatterCapabilityReportFeatureMap = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotmanagedintegrations#MatterCapabilityReportFeatureMap", name: "MatterCapabilityReportFeatureMap", traits: {"smithy.api#range" => {"min" => 0, "max" => 4294967295}})
    MatterCapabilityReportGeneratedCommands = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#MatterCapabilityReportGeneratedCommands", name: "MatterCapabilityReportGeneratedCommands", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    MatterCluster = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#MatterCluster", name: "MatterCluster")
    MatterClusters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#MatterClusters", name: "MatterClusters", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    MatterCommandId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#MatterCommandId", name: "MatterCommandId", traits: {"smithy.api#length" => {"min" => 1, "max" => 24}, "smithy.api#pattern" => "^0[xX][0-9a-fA-F]+$|^[0-9]+$"})
    MatterCommands = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iotmanagedintegrations#MatterCommands", name: "MatterCommands", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    MatterEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#MatterEndpoint", name: "MatterEndpoint")
    MatterEventId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#MatterEventId", name: "MatterEventId", traits: {"smithy.api#length" => {"min" => 1, "max" => 24}, "smithy.api#pattern" => "^0[xX][0-9a-fA-F]+$|^[0-9]+$"})
    MatterEvents = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iotmanagedintegrations#MatterEvents", name: "MatterEvents", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    MatterFields = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.iotmanagedintegrations#MatterFields", name: "MatterFields", traits: {"smithy.api#sensitive" => {}})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotmanagedintegrations#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MaximumPerMinute = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotmanagedintegrations#MaximumPerMinute", name: "MaximumPerMinute", traits: {"smithy.api#range" => {"min" => 1}})
    MetaData = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iotmanagedintegrations#MetaData", name: "MetaData", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    MinNumberOfExecutedThings = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotmanagedintegrations#MinNumberOfExecutedThings", name: "MinNumberOfExecutedThings", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MinNumberOfRetries = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotmanagedintegrations#MinNumberOfRetries", name: "MinNumberOfRetries", traits: {"smithy.api#range" => {"min" => 0, "max" => 10}})
    Model = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#Model", name: "Model", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9-_ ]+$", "smithy.api#sensitive" => {}})
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#Name", name: "Name", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}\\p{N} ._-]+$"})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 65535}, "smithy.api#pattern" => "^[a-zA-Z0-9=_-]+$"})
    NodeId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#NodeId", name: "NodeId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9=_.,@\\+\\-/]+$"})
    NotificationConfigurationCreatedAt = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.iotmanagedintegrations#NotificationConfigurationCreatedAt", name: "NotificationConfigurationCreatedAt")
    NotificationConfigurationListDefinition = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#NotificationConfigurationListDefinition", name: "NotificationConfigurationListDefinition")
    NotificationConfigurationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#NotificationConfigurationSummary", name: "NotificationConfigurationSummary")
    NotificationConfigurationUpdatedAt = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.iotmanagedintegrations#NotificationConfigurationUpdatedAt", name: "NotificationConfigurationUpdatedAt")
    NumberOfNotifiedThings = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotmanagedintegrations#NumberOfNotifiedThings", name: "NumberOfNotifiedThings", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    NumberOfSucceededThings = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotmanagedintegrations#NumberOfSucceededThings", name: "NumberOfSucceededThings", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    OAuthAuthorizationUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#OAuthAuthorizationUrl", name: "OAuthAuthorizationUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^(https)://.*$", "smithy.api#sensitive" => {}})
    OAuthCompleteRedirectUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#OAuthCompleteRedirectUrl", name: "OAuthCompleteRedirectUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^(http|https)://.*$"})
    OAuthConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#OAuthConfig", name: "OAuthConfig")
    OAuthUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#OAuthUpdate", name: "OAuthUpdate")
    OtaDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#OtaDescription", name: "OtaDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[0-9A-Za-z_\\- ]+$"})
    OtaMechanism = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotmanagedintegrations#OtaMechanism", name: "OtaMechanism")
    OtaNextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#OtaNextToken", name: "OtaNextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 65535}, "smithy.api#pattern" => "^[a-zA-Z0-9=_+/-]+$"})
    OtaProtocol = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotmanagedintegrations#OtaProtocol", name: "OtaProtocol")
    OtaStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotmanagedintegrations#OtaStatus", name: "OtaStatus")
    OtaTargetQueryString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#OtaTargetQueryString", name: "OtaTargetQueryString")
    OtaTaskAbortConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#OtaTaskAbortConfig", name: "OtaTaskAbortConfig")
    OtaTaskArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#OtaTaskArn", name: "OtaTaskArn", traits: {"aws.api#arnReference" => {}, "smithy.api#length" => {"min" => 32, "max" => 1011}, "smithy.api#pattern" => "^arn:aws:iotmanagedintegrations:[0-9a-zA-Z-]+:[0-9]+:ota-task/[0-9a-zA-Z]+$"})
    OtaTaskConfigurationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#OtaTaskConfigurationId", name: "OtaTaskConfigurationId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9]*$"})
    OtaTaskConfigurationListDefinition = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#OtaTaskConfigurationListDefinition", name: "OtaTaskConfigurationListDefinition")
    OtaTaskConfigurationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#OtaTaskConfigurationName", name: "OtaTaskConfigurationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9-_ ]+$", "smithy.api#sensitive" => {}})
    OtaTaskConfigurationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#OtaTaskConfigurationSummary", name: "OtaTaskConfigurationSummary")
    OtaTaskExecutionRetryConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#OtaTaskExecutionRetryConfig", name: "OtaTaskExecutionRetryConfig")
    OtaTaskExecutionRolloutConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#OtaTaskExecutionRolloutConfig", name: "OtaTaskExecutionRolloutConfig")
    OtaTaskExecutionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotmanagedintegrations#OtaTaskExecutionStatus", name: "OtaTaskExecutionStatus")
    OtaTaskExecutionSummaries = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#OtaTaskExecutionSummaries", name: "OtaTaskExecutionSummaries")
    OtaTaskExecutionSummariesListDefinition = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#OtaTaskExecutionSummariesListDefinition", name: "OtaTaskExecutionSummariesListDefinition")
    OtaTaskExecutionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#OtaTaskExecutionSummary", name: "OtaTaskExecutionSummary")
    OtaTaskId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#OtaTaskId", name: "OtaTaskId", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[A-Za-z0-9]+$"})
    OtaTaskListDefinition = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#OtaTaskListDefinition", name: "OtaTaskListDefinition")
    OtaTaskSchedulingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#OtaTaskSchedulingConfig", name: "OtaTaskSchedulingConfig")
    OtaTaskSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#OtaTaskSummary", name: "OtaTaskSummary")
    OtaTaskTimeoutConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#OtaTaskTimeoutConfig", name: "OtaTaskTimeoutConfig")
    OtaType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotmanagedintegrations#OtaType", name: "OtaType")
    Owner = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#Owner", name: "Owner", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_.,@-]+$", "smithy.api#sensitive" => {}})
    ParentControllerId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#ParentControllerId", name: "ParentControllerId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9]+$"})
    ProactiveRefreshTokenRenewal = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ProactiveRefreshTokenRenewal", name: "ProactiveRefreshTokenRenewal")
    PropertyName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#PropertyName", name: "PropertyName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[/a-zA-Z0-9\\._ ]+$"})
    ProvisioningProfileArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#ProvisioningProfileArn", name: "ProvisioningProfileArn", traits: {"aws.api#arnReference" => {"service" => "com.amazon.services.iotsmarthomeservice#IotSmartHomeService", "resource" => "com.amazonaws.iotmanagedintegrations#ProvisioningProfileResource"}, "smithy.api#length" => {"min" => 32, "max" => 64}, "smithy.api#pattern" => "^arn:aws:iotmanagedintegrations:[0-9a-zA-Z-]+:[0-9]+:provisioning-profile/[0-9a-zA-Z]+$"})
    ProvisioningProfileId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#ProvisioningProfileId", name: "ProvisioningProfileId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9-_]+$"})
    ProvisioningProfileListDefinition = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#ProvisioningProfileListDefinition", name: "ProvisioningProfileListDefinition")
    ProvisioningProfileName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#ProvisioningProfileName", name: "ProvisioningProfileName", traits: {"smithy.api#length" => {"min" => 1, "max" => 36}, "smithy.api#pattern" => "^[0-9A-Za-z_-]+$"})
    ProvisioningProfileSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ProvisioningProfileSummary", name: "ProvisioningProfileSummary")
    ProvisioningStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotmanagedintegrations#ProvisioningStatus", name: "ProvisioningStatus")
    ProvisioningType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotmanagedintegrations#ProvisioningType", name: "ProvisioningType")
    PushConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#PushConfig", name: "PushConfig")
    PutDefaultEncryptionConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#PutDefaultEncryptionConfigurationRequest", name: "PutDefaultEncryptionConfigurationRequest")
    PutDefaultEncryptionConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#PutDefaultEncryptionConfigurationResponse", name: "PutDefaultEncryptionConfigurationResponse")
    PutHubConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#PutHubConfigurationRequest", name: "PutHubConfigurationRequest")
    PutHubConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#PutHubConfigurationResponse", name: "PutHubConfigurationResponse")
    PutRuntimeLogConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#PutRuntimeLogConfigurationRequest", name: "PutRuntimeLogConfigurationRequest")
    QueuedAt = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.iotmanagedintegrations#QueuedAt", name: "QueuedAt")
    RegisterAccountAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#RegisterAccountAssociationRequest", name: "RegisterAccountAssociationRequest")
    RegisterAccountAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#RegisterAccountAssociationResponse", name: "RegisterAccountAssociationResponse")
    RegisterCustomEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#RegisterCustomEndpointRequest", name: "RegisterCustomEndpointRequest")
    RegisterCustomEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#RegisterCustomEndpointResponse", name: "RegisterCustomEndpointResponse")
    ResetRuntimeLogConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ResetRuntimeLogConfigurationRequest", name: "ResetRuntimeLogConfigurationRequest")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RetryAttempt = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotmanagedintegrations#RetryAttempt", name: "RetryAttempt")
    RetryConfigCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#RetryConfigCriteria", name: "RetryConfigCriteria")
    RetryConfigCriteriaList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#RetryConfigCriteriaList", name: "RetryConfigCriteriaList")
    RetryCriteriaFailureType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotmanagedintegrations#RetryCriteriaFailureType", name: "RetryCriteriaFailureType")
    Role = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotmanagedintegrations#Role", name: "Role")
    RolloutRateIncreaseCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#RolloutRateIncreaseCriteria", name: "RolloutRateIncreaseCriteria")
    RuntimeLogConfigurations = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#RuntimeLogConfigurations", name: "RuntimeLogConfigurations")
    S3Url = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#S3Url", name: "S3Url", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    ScheduleMaintenanceWindow = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ScheduleMaintenanceWindow", name: "ScheduleMaintenanceWindow")
    ScheduleMaintenanceWindowList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#ScheduleMaintenanceWindowList", name: "ScheduleMaintenanceWindowList")
    ScheduleStartTime = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#ScheduleStartTime", name: "ScheduleStartTime")
    SchedulingConfigEndBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotmanagedintegrations#SchedulingConfigEndBehavior", name: "SchedulingConfigEndBehavior")
    SchemaId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#SchemaId", name: "SchemaId", traits: {"smithy.api#length" => {"min" => 3, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9.]+$"})
    SchemaVersionDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#SchemaVersionDescription", name: "SchemaVersionDescription", traits: {"smithy.api#length" => {"min" => 10, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9.,/ -]+$"})
    SchemaVersionFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotmanagedintegrations#SchemaVersionFormat", name: "SchemaVersionFormat")
    SchemaVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#SchemaVersionList", name: "SchemaVersionList")
    SchemaVersionListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#SchemaVersionListItem", name: "SchemaVersionListItem")
    SchemaVersionNamespaceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#SchemaVersionNamespaceName", name: "SchemaVersionNamespaceName", traits: {"smithy.api#length" => {"min" => 3, "max" => 12}, "smithy.api#pattern" => "^[a-z0-9]+$"})
    SchemaVersionSchema = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.iotmanagedintegrations#SchemaVersionSchema", name: "SchemaVersionSchema")
    SchemaVersionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotmanagedintegrations#SchemaVersionType", name: "SchemaVersionType")
    SchemaVersionVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#SchemaVersionVersion", name: "SchemaVersionVersion", traits: {"smithy.api#length" => {"min" => 3, "max" => 12}, "smithy.api#pattern" => "^(\\d+\\.\\d+(\\.\\d+)?|\\$latest)$"})
    SchemaVersionVisibility = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotmanagedintegrations#SchemaVersionVisibility", name: "SchemaVersionVisibility")
    SchemaVersionedId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#SchemaVersionedId", name: "SchemaVersionedId", traits: {"smithy.api#length" => {"min" => 7, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9.]+@(\\d+\\.\\d+(\\.\\d+)?|\\$latest)$"})
    SecretsManager = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#SecretsManager", name: "SecretsManager")
    SecretsManagerArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#SecretsManagerArn", name: "SecretsManagerArn", traits: {"aws.api#arnReference" => {}, "smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:secretsmanager:[0-9a-zA-Z-]{1,32}:\\d{12}:secret:[A-Za-z0-9/_+=.@-]{8,520}$"})
    SecretsManagerVersionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#SecretsManagerVersionId", name: "SecretsManagerVersionId", traits: {"smithy.api#length" => {"min" => 32, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]+$"})
    SendConnectorEventRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#SendConnectorEventRequest", name: "SendConnectorEventRequest")
    SendConnectorEventResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#SendConnectorEventResponse", name: "SendConnectorEventResponse")
    SendManagedThingCommandRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#SendManagedThingCommandRequest", name: "SendManagedThingCommandRequest")
    SendManagedThingCommandResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#SendManagedThingCommandResponse", name: "SendManagedThingCommandResponse")
    SerialNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#SerialNumber", name: "SerialNumber", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9-_ ]+$", "smithy.api#sensitive" => {}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ServiceUnavailableException", name: "ServiceUnavailableException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SetupAt = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.iotmanagedintegrations#SetupAt", name: "SetupAt")
    SmartHomeResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#SmartHomeResourceId", name: "SmartHomeResourceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[a-zA-Z0-9+*]*$"})
    SmartHomeResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#SmartHomeResourceType", name: "SmartHomeResourceType", traits: {"smithy.api#pattern" => "^[*]$|^(managed-thing|credential-locker|provisioning-profile|ota-task|account-association)$"})
    SpecVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#SpecVersion", name: "SpecVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^\\d+\\.\\d+$"})
    StartAccountAssociationRefreshRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#StartAccountAssociationRefreshRequest", name: "StartAccountAssociationRefreshRequest")
    StartAccountAssociationRefreshResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#StartAccountAssociationRefreshResponse", name: "StartAccountAssociationRefreshResponse")
    StartDeviceDiscoveryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#StartDeviceDiscoveryRequest", name: "StartDeviceDiscoveryRequest")
    StartDeviceDiscoveryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#StartDeviceDiscoveryResponse", name: "StartDeviceDiscoveryResponse")
    StartTime = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#StartTime", name: "StartTime")
    StartedAt = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.iotmanagedintegrations#StartedAt", name: "StartedAt")
    StateCapabilities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#StateCapabilities", name: "StateCapabilities", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    StateCapability = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#StateCapability", name: "StateCapability")
    StateEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#StateEndpoint", name: "StateEndpoint")
    StateEndpoints = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#StateEndpoints", name: "StateEndpoints", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TagsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iotmanagedintegrations#TagsMap", name: "TagsMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#sensitive" => {}})
    Target = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotmanagedintegrations#Target", name: "Target")
    TaskProcessingDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#TaskProcessingDetails", name: "TaskProcessingDetails")
    ThirdPartyUserId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#ThirdPartyUserId", name: "ThirdPartyUserId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_.,@-]+$", "smithy.api#sensitive" => {}})
    ThresholdPercentage = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.iotmanagedintegrations#ThresholdPercentage", name: "ThresholdPercentage", traits: {"smithy.api#range" => {"max" => 100}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TokenEndpointAuthenticationScheme = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotmanagedintegrations#TokenEndpointAuthenticationScheme", name: "TokenEndpointAuthenticationScheme")
    TokenUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#TokenUrl", name: "TokenUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^https?:\\/\\/(www\\.)?[-a-zA-Z0-9@:%._\\+~#=]{1,256}\\.[a-zA-Z0-9()]{1,6}([-a-zA-Z0-9()@:%_\\+.~#?&\\/=]*)$"})
    TraceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#TraceId", name: "TraceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9:=_-]+$"})
    UnauthorizedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#UnauthorizedException", name: "UnauthorizedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UniversalProductCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotmanagedintegrations#UniversalProductCode", name: "UniversalProductCode", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]+$", "smithy.api#sensitive" => {}})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateAccountAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#UpdateAccountAssociationRequest", name: "UpdateAccountAssociationRequest")
    UpdateCloudConnectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#UpdateCloudConnectorRequest", name: "UpdateCloudConnectorRequest")
    UpdateConnectorDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#UpdateConnectorDestinationRequest", name: "UpdateConnectorDestinationRequest")
    UpdateDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#UpdateDestinationRequest", name: "UpdateDestinationRequest")
    UpdateEventLogConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#UpdateEventLogConfigurationRequest", name: "UpdateEventLogConfigurationRequest")
    UpdateManagedThingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#UpdateManagedThingRequest", name: "UpdateManagedThingRequest")
    UpdateNotificationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#UpdateNotificationConfigurationRequest", name: "UpdateNotificationConfigurationRequest")
    UpdateOtaTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#UpdateOtaTaskRequest", name: "UpdateOtaTaskRequest")
    UpdatedAt = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.iotmanagedintegrations#UpdatedAt", name: "UpdatedAt")
    UploadLog = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotmanagedintegrations#UploadLog", name: "UploadLog")
    UploadPeriodMinutes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotmanagedintegrations#UploadPeriodMinutes", name: "UploadPeriodMinutes")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotmanagedintegrations#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationSchema = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.iotmanagedintegrations#ValidationSchema", name: "ValidationSchema")

    AbortConfigCriteria.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: AbortCriteriaAction, location_name: "Action"))
    AbortConfigCriteria.add_member(:failure_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AbortCriteriaFailureType, location_name: "FailureType"))
    AbortConfigCriteria.add_member(:min_number_of_executed_things, ::Smithy::Schema::Shapes::MemberShape.new(target: MinNumberOfExecutedThings, location_name: "MinNumberOfExecutedThings"))
    AbortConfigCriteria.add_member(:threshold_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ThresholdPercentage, location_name: "ThresholdPercentage"))
    AbortConfigCriteria.type = Types::AbortConfigCriteria
    AbortConfigCriteriaList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AbortConfigCriteria)
    AbortCriteriaAction.add_member(:cancel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANCEL", traits: {"smithy.api#enumValue" => "CANCEL"}))
    AbortCriteriaFailureType.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    AbortCriteriaFailureType.add_member(:rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REJECTED", traits: {"smithy.api#enumValue" => "REJECTED"}))
    AbortCriteriaFailureType.add_member(:timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TIMED_OUT", traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    AbortCriteriaFailureType.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountAssociationItem.add_member(:account_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssociationId, location_name: "AccountAssociationId", traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#required" => {}}))
    AccountAssociationItem.add_member(:association_state, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationState, location_name: "AssociationState", traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#required" => {}}))
    AccountAssociationItem.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssociationErrorMessage, location_name: "ErrorMessage", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    AccountAssociationItem.add_member(:connector_destination_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorDestinationId, location_name: "ConnectorDestinationId", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    AccountAssociationItem.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssociationName, location_name: "Name", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    AccountAssociationItem.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssociationDescription, location_name: "Description", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    AccountAssociationItem.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssociationArn, location_name: "Arn", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    AccountAssociationItem.type = Types::AccountAssociationItem
    AccountAssociationListDefinition.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssociationItem)
    AssociationState.add_member(:association_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ASSOCIATION_IN_PROGRESS", traits: {"smithy.api#enumValue" => "ASSOCIATION_IN_PROGRESS"}))
    AssociationState.add_member(:association_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ASSOCIATION_FAILED", traits: {"smithy.api#enumValue" => "ASSOCIATION_FAILED"}))
    AssociationState.add_member(:association_succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ASSOCIATION_SUCCEEDED", traits: {"smithy.api#enumValue" => "ASSOCIATION_SUCCEEDED"}))
    AssociationState.add_member(:association_deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ASSOCIATION_DELETING", traits: {"smithy.api#enumValue" => "ASSOCIATION_DELETING"}))
    AssociationState.add_member(:refresh_token_expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REFRESH_TOKEN_EXPIRED", traits: {"smithy.api#enumValue" => "REFRESH_TOKEN_EXPIRED"}))
    AuthConfig.add_member(:o_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuthConfig, location_name: "oAuth"))
    AuthConfig.type = Types::AuthConfig
    AuthConfigUpdate.add_member(:o_auth_update, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuthUpdate, location_name: "oAuthUpdate"))
    AuthConfigUpdate.type = Types::AuthConfigUpdate
    AuthMaterialType.add_member(:custom_protocol_qr_bar_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CUSTOM_PROTOCOL_QR_BAR_CODE", traits: {"smithy.api#enumValue" => "CUSTOM_PROTOCOL_QR_BAR_CODE"}))
    AuthMaterialType.add_member(:wifi_setup_qr_bar_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WIFI_SETUP_QR_BAR_CODE", traits: {"smithy.api#enumValue" => "WIFI_SETUP_QR_BAR_CODE"}))
    AuthMaterialType.add_member(:zwave_qr_bar_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ZWAVE_QR_BAR_CODE", traits: {"smithy.api#enumValue" => "ZWAVE_QR_BAR_CODE"}))
    AuthMaterialType.add_member(:zigbee_qr_bar_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ZIGBEE_QR_BAR_CODE", traits: {"smithy.api#enumValue" => "ZIGBEE_QR_BAR_CODE"}))
    AuthMaterialType.add_member(:discovered_device, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISCOVERED_DEVICE", traits: {"smithy.api#enumValue" => "DISCOVERED_DEVICE"}))
    AuthType.add_member(:oauth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OAUTH", traits: {"smithy.api#enumValue" => "OAUTH"}))
    CapabilityAction.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityActionName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CapabilityAction.add_member(:ref, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionReference, location_name: "ref"))
    CapabilityAction.add_member(:action_trace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTraceId, location_name: "actionTraceId"))
    CapabilityAction.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityProperties, location_name: "parameters"))
    CapabilityAction.type = Types::CapabilityAction
    CapabilityActions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityAction)
    CapabilityReport.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityReportVersion, location_name: "version", traits: {"smithy.api#required" => {}}))
    CapabilityReport.add_member(:node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeId, location_name: "nodeId"))
    CapabilityReport.add_member(:endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityReportEndpoints, location_name: "endpoints", traits: {"smithy.api#required" => {}}))
    CapabilityReport.type = Types::CapabilityReport
    CapabilityReportActions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ActionName)
    CapabilityReportCapabilities.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityReportCapability)
    CapabilityReportCapability.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaVersionedId, location_name: "id", traits: {"smithy.api#required" => {}}))
    CapabilityReportCapability.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CapabilityReportCapability.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityVersion, location_name: "version", traits: {"smithy.api#required" => {}}))
    CapabilityReportCapability.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityReportProperties, location_name: "properties", traits: {"smithy.api#required" => {}}))
    CapabilityReportCapability.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityReportActions, location_name: "actions", traits: {"smithy.api#required" => {}}))
    CapabilityReportCapability.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityReportEvents, location_name: "events", traits: {"smithy.api#required" => {}}))
    CapabilityReportCapability.type = Types::CapabilityReportCapability
    CapabilityReportEndpoint.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointId, location_name: "id", traits: {"smithy.api#required" => {}}))
    CapabilityReportEndpoint.add_member(:device_types, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceTypes, location_name: "deviceTypes", traits: {"smithy.api#required" => {}}))
    CapabilityReportEndpoint.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityReportCapabilities, location_name: "capabilities", traits: {"smithy.api#required" => {}}))
    CapabilityReportEndpoint.type = Types::CapabilityReportEndpoint
    CapabilityReportEndpoints.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityReportEndpoint)
    CapabilityReportEvents.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EventName)
    CapabilityReportProperties.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyName)
    CapabilitySchemaItem.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaVersionFormat, location_name: "Format", traits: {"smithy.api#required" => {}}))
    CapabilitySchemaItem.add_member(:capability_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaVersionedId, location_name: "CapabilityId", traits: {"smithy.api#required" => {}}))
    CapabilitySchemaItem.add_member(:extrinsic_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtrinsicSchemaId, location_name: "ExtrinsicId", traits: {"smithy.api#required" => {}}))
    CapabilitySchemaItem.add_member(:extrinsic_version, ::Smithy::Schema::Shapes::MemberShape.new(target: MatterCapabilityReportClusterRevisionId, location_name: "ExtrinsicVersion", traits: {"smithy.api#required" => {}}))
    CapabilitySchemaItem.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationSchema, location_name: "Schema", traits: {"smithy.api#required" => {}}))
    CapabilitySchemaItem.type = Types::CapabilitySchemaItem
    CapabilitySchemas.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilitySchemaItem)
    CloudConnectorType.add_member(:listed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LISTED", traits: {"smithy.api#enumValue" => "LISTED"}))
    CloudConnectorType.add_member(:unlisted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNLISTED", traits: {"smithy.api#enumValue" => "UNLISTED"}))
    CommandCapabilities.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CommandCapability)
    CommandCapability.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaVersionedId, location_name: "id", traits: {"smithy.api#required" => {}}))
    CommandCapability.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CommandCapability.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityVersion, location_name: "version", traits: {"smithy.api#required" => {}}))
    CommandCapability.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityActions, location_name: "actions", traits: {"smithy.api#required" => {}}))
    CommandCapability.type = Types::CommandCapability
    CommandEndpoint.add_member(:endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointId, location_name: "endpointId", traits: {"smithy.api#required" => {}}))
    CommandEndpoint.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandCapabilities, location_name: "capabilities", traits: {"smithy.api#required" => {}}))
    CommandEndpoint.type = Types::CommandEndpoint
    CommandEndpoints.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CommandEndpoint)
    ConfigurationError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationErrorCode, location_name: "code"))
    ConfigurationError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationErrorMessage, location_name: "message"))
    ConfigurationError.type = Types::ConfigurationError
    ConfigurationState.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ConfigurationState.add_member(:update_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "UPDATE_IN_PROGRESS"}))
    ConfigurationState.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    ConfigurationStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationError, location_name: "error"))
    ConfigurationStatus.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationState, location_name: "state", traits: {"smithy.api#required" => {}}))
    ConfigurationStatus.type = Types::ConfigurationStatus
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    ConflictException.type = Types::ConflictException
    ConnectorDestinationListDefinition.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorDestinationSummary)
    ConnectorDestinationSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorDestinationName, location_name: "Name"))
    ConnectorDestinationSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorDestinationDescription, location_name: "Description"))
    ConnectorDestinationSummary.add_member(:cloud_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorId, location_name: "CloudConnectorId"))
    ConnectorDestinationSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorDestinationId, location_name: "Id"))
    ConnectorDestinationSummary.type = Types::ConnectorDestinationSummary
    ConnectorEventOperation.add_member(:device_command_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEVICE_COMMAND_RESPONSE", traits: {"smithy.api#enumValue" => "DEVICE_COMMAND_RESPONSE"}))
    ConnectorEventOperation.add_member(:device_discovery, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEVICE_DISCOVERY", traits: {"smithy.api#enumValue" => "DEVICE_DISCOVERY"}))
    ConnectorEventOperation.add_member(:device_event, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEVICE_EVENT", traits: {"smithy.api#enumValue" => "DEVICE_EVENT"}))
    ConnectorEventOperation.add_member(:device_command_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEVICE_COMMAND_REQUEST", traits: {"smithy.api#enumValue" => "DEVICE_COMMAND_REQUEST"}))
    ConnectorItem.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    ConnectorItem.add_member(:endpoint_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointConfig, location_name: "EndpointConfig", traits: {"smithy.api#required" => {}}))
    ConnectorItem.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorDescription, location_name: "Description"))
    ConnectorItem.add_member(:endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointType, location_name: "EndpointType"))
    ConnectorItem.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorId, location_name: "Id"))
    ConnectorItem.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorType, location_name: "Type"))
    ConnectorItem.type = Types::ConnectorItem
    ConnectorList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorItem)
    CreateAccountAssociationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "ClientToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    CreateAccountAssociationRequest.add_member(:connector_destination_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorDestinationId, location_name: "ConnectorDestinationId", traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#required" => {}}))
    CreateAccountAssociationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssociationName, location_name: "Name", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreateAccountAssociationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssociationDescription, location_name: "Description", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreateAccountAssociationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "Tags", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreateAccountAssociationRequest.type = Types::CreateAccountAssociationRequest
    CreateAccountAssociationResponse.add_member(:o_auth_authorization_url, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuthAuthorizationUrl, location_name: "OAuthAuthorizationUrl", traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#required" => {}}))
    CreateAccountAssociationResponse.add_member(:account_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssociationId, location_name: "AccountAssociationId", traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#required" => {}}))
    CreateAccountAssociationResponse.add_member(:association_state, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationState, location_name: "AssociationState", traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#required" => {}}))
    CreateAccountAssociationResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssociationArn, location_name: "Arn", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    CreateAccountAssociationResponse.type = Types::CreateAccountAssociationResponse
    CreateCloudConnectorRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateCloudConnectorRequest.add_member(:endpoint_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointConfig, location_name: "EndpointConfig", traits: {"smithy.api#required" => {}}))
    CreateCloudConnectorRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorDescription, location_name: "Description"))
    CreateCloudConnectorRequest.add_member(:endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointType, location_name: "EndpointType"))
    CreateCloudConnectorRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateCloudConnectorRequest.type = Types::CreateCloudConnectorRequest
    CreateCloudConnectorResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorId, location_name: "Id"))
    CreateCloudConnectorResponse.type = Types::CreateCloudConnectorResponse
    CreateConnectorDestinationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorDestinationName, location_name: "Name"))
    CreateConnectorDestinationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorDestinationDescription, location_name: "Description"))
    CreateConnectorDestinationRequest.add_member(:cloud_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorId, location_name: "CloudConnectorId", traits: {"smithy.api#required" => {}}))
    CreateConnectorDestinationRequest.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthType, location_name: "AuthType", traits: {"smithy.api#required" => {}}))
    CreateConnectorDestinationRequest.add_member(:auth_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthConfig, location_name: "AuthConfig", traits: {"smithy.api#required" => {}}))
    CreateConnectorDestinationRequest.add_member(:secrets_manager, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretsManager, location_name: "SecretsManager", traits: {"smithy.api#required" => {}}))
    CreateConnectorDestinationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateConnectorDestinationRequest.type = Types::CreateConnectorDestinationRequest
    CreateConnectorDestinationResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorDestinationId, location_name: "Id"))
    CreateConnectorDestinationResponse.type = Types::CreateConnectorDestinationResponse
    CreateCredentialLockerRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialLockerName, location_name: "Name", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreateCredentialLockerRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "ClientToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    CreateCredentialLockerRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "Tags", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreateCredentialLockerRequest.type = Types::CreateCredentialLockerRequest
    CreateCredentialLockerResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialLockerId, location_name: "Id", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    CreateCredentialLockerResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialLockerArn, location_name: "Arn", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    CreateCredentialLockerResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialLockerCreatedAt, location_name: "CreatedAt", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    CreateCredentialLockerResponse.type = Types::CreateCredentialLockerResponse
    CreateDestinationRequest.add_member(:delivery_destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryDestinationArn, location_name: "DeliveryDestinationArn", traits: {"smithy.api#required" => {}}))
    CreateDestinationRequest.add_member(:delivery_destination_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryDestinationType, location_name: "DeliveryDestinationType", traits: {"smithy.api#required" => {}}))
    CreateDestinationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateDestinationRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryDestinationRoleArn, location_name: "RoleArn", traits: {"smithy.api#required" => {}}))
    CreateDestinationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateDestinationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationDescription, location_name: "Description"))
    CreateDestinationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "Tags", traits: {"smithy.api#deprecated" => {"message" => "Tags have been deprecated from this api", "since" => "06-25-2025"}}))
    CreateDestinationRequest.type = Types::CreateDestinationRequest
    CreateDestinationResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationName, location_name: "Name"))
    CreateDestinationResponse.type = Types::CreateDestinationResponse
    CreateEventLogConfigurationRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SmartHomeResourceType, location_name: "ResourceType", traits: {"smithy.api#required" => {}}))
    CreateEventLogConfigurationRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SmartHomeResourceId, location_name: "ResourceId"))
    CreateEventLogConfigurationRequest.add_member(:event_log_level, ::Smithy::Schema::Shapes::MemberShape.new(target: LogLevel, location_name: "EventLogLevel", traits: {"smithy.api#required" => {}}))
    CreateEventLogConfigurationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateEventLogConfigurationRequest.type = Types::CreateEventLogConfigurationRequest
    CreateEventLogConfigurationResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfigurationId, location_name: "Id"))
    CreateEventLogConfigurationResponse.type = Types::CreateEventLogConfigurationResponse
    CreateManagedThingRequest.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: Role, location_name: "Role", traits: {"aws.cloudformation#cfnMutability" => "create-and-read", "smithy.api#required" => {}}))
    CreateManagedThingRequest.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Owner, location_name: "Owner", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreateManagedThingRequest.add_member(:credential_locker_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialLockerId, location_name: "CredentialLockerId", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreateManagedThingRequest.add_member(:authentication_material, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthMaterialString, location_name: "AuthenticationMaterial", traits: {"aws.cloudformation#cfnMutability" => "create", "smithy.api#required" => {}}))
    CreateManagedThingRequest.add_member(:authentication_material_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthMaterialType, location_name: "AuthenticationMaterialType", traits: {"aws.cloudformation#cfnMutability" => "create", "smithy.api#required" => {}}))
    CreateManagedThingRequest.add_member(:serial_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SerialNumber, location_name: "SerialNumber", traits: {"aws.cloudformation#cfnMutability" => "create-and-read"}))
    CreateManagedThingRequest.add_member(:brand, ::Smithy::Schema::Shapes::MemberShape.new(target: Brand, location_name: "Brand", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreateManagedThingRequest.add_member(:model, ::Smithy::Schema::Shapes::MemberShape.new(target: Model, location_name: "Model", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreateManagedThingRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "Name", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreateManagedThingRequest.add_member(:capability_report, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityReport, location_name: "CapabilityReport", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreateManagedThingRequest.add_member(:capability_schemas, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilitySchemas, location_name: "CapabilitySchemas", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreateManagedThingRequest.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: Capabilities, location_name: "Capabilities", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    CreateManagedThingRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "ClientToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    CreateManagedThingRequest.add_member(:classification, ::Smithy::Schema::Shapes::MemberShape.new(target: Classification, location_name: "Classification", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreateManagedThingRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "Tags", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreateManagedThingRequest.add_member(:meta_data, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaData, location_name: "MetaData", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreateManagedThingRequest.type = Types::CreateManagedThingRequest
    CreateManagedThingResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedThingId, location_name: "Id", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    CreateManagedThingResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedThingArn, location_name: "Arn", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    CreateManagedThingResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, location_name: "CreatedAt", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    CreateManagedThingResponse.type = Types::CreateManagedThingResponse
    CreateNotificationConfigurationRequest.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EventType, location_name: "EventType", traits: {"smithy.api#required" => {}}))
    CreateNotificationConfigurationRequest.add_member(:destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationName, location_name: "DestinationName", traits: {"smithy.api#required" => {}}))
    CreateNotificationConfigurationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateNotificationConfigurationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "Tags", traits: {"smithy.api#deprecated" => {"message" => "Tags has been deprecated from this api", "since" => "06-25-2025"}}))
    CreateNotificationConfigurationRequest.type = Types::CreateNotificationConfigurationRequest
    CreateNotificationConfigurationResponse.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EventType, location_name: "EventType"))
    CreateNotificationConfigurationResponse.type = Types::CreateNotificationConfigurationResponse
    CreateOtaTaskConfigurationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaDescription, location_name: "Description"))
    CreateOtaTaskConfigurationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaTaskConfigurationName, location_name: "Name"))
    CreateOtaTaskConfigurationRequest.add_member(:push_config, ::Smithy::Schema::Shapes::MemberShape.new(target: PushConfig, location_name: "PushConfig"))
    CreateOtaTaskConfigurationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateOtaTaskConfigurationRequest.type = Types::CreateOtaTaskConfigurationRequest
    CreateOtaTaskConfigurationResponse.add_member(:task_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaTaskConfigurationId, location_name: "TaskConfigurationId"))
    CreateOtaTaskConfigurationResponse.type = Types::CreateOtaTaskConfigurationResponse
    CreateOtaTaskRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaDescription, location_name: "Description"))
    CreateOtaTaskRequest.add_member(:s3_url, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Url, location_name: "S3Url", traits: {"smithy.api#required" => {}}))
    CreateOtaTaskRequest.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaProtocol, location_name: "Protocol"))
    CreateOtaTaskRequest.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: Target, location_name: "Target"))
    CreateOtaTaskRequest.add_member(:task_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaTaskConfigurationId, location_name: "TaskConfigurationId"))
    CreateOtaTaskRequest.add_member(:ota_mechanism, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaMechanism, location_name: "OtaMechanism"))
    CreateOtaTaskRequest.add_member(:ota_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaType, location_name: "OtaType", traits: {"smithy.api#required" => {}}))
    CreateOtaTaskRequest.add_member(:ota_target_query_string, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaTargetQueryString, location_name: "OtaTargetQueryString"))
    CreateOtaTaskRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateOtaTaskRequest.add_member(:ota_scheduling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaTaskSchedulingConfig, location_name: "OtaSchedulingConfig"))
    CreateOtaTaskRequest.add_member(:ota_task_execution_retry_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaTaskExecutionRetryConfig, location_name: "OtaTaskExecutionRetryConfig"))
    CreateOtaTaskRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "Tags"))
    CreateOtaTaskRequest.type = Types::CreateOtaTaskRequest
    CreateOtaTaskResponse.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaTaskId, location_name: "TaskId"))
    CreateOtaTaskResponse.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaTaskArn, location_name: "TaskArn"))
    CreateOtaTaskResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaDescription, location_name: "Description"))
    CreateOtaTaskResponse.type = Types::CreateOtaTaskResponse
    CreateProvisioningProfileRequest.add_member(:provisioning_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningType, location_name: "ProvisioningType", traits: {"aws.cloudformation#cfnMutability" => "create-and-read", "smithy.api#required" => {}}))
    CreateProvisioningProfileRequest.add_member(:ca_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: CaCertificate, location_name: "CaCertificate", traits: {"aws.cloudformation#cfnMutability" => "create-and-read"}))
    CreateProvisioningProfileRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningProfileName, location_name: "Name", traits: {"aws.cloudformation#cfnMutability" => "create-and-read"}))
    CreateProvisioningProfileRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "ClientToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    CreateProvisioningProfileRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "Tags", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreateProvisioningProfileRequest.type = Types::CreateProvisioningProfileRequest
    CreateProvisioningProfileResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningProfileArn, location_name: "Arn", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    CreateProvisioningProfileResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningProfileName, location_name: "Name", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreateProvisioningProfileResponse.add_member(:provisioning_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningType, location_name: "ProvisioningType", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    CreateProvisioningProfileResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningProfileId, location_name: "Id", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    CreateProvisioningProfileResponse.add_member(:claim_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: ClaimCertificate, location_name: "ClaimCertificate", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    CreateProvisioningProfileResponse.add_member(:claim_certificate_private_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ClaimCertificatePrivateKey, location_name: "ClaimCertificatePrivateKey", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    CreateProvisioningProfileResponse.type = Types::CreateProvisioningProfileResponse
    CredentialLockerListDefinition.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialLockerSummary)
    CredentialLockerSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialLockerId, location_name: "Id", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    CredentialLockerSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialLockerArn, location_name: "Arn", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    CredentialLockerSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialLockerName, location_name: "Name", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CredentialLockerSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialLockerCreatedAt, location_name: "CreatedAt", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    CredentialLockerSummary.type = Types::CredentialLockerSummary
    CustomProtocolDetail.key = ::Smithy::Schema::Shapes::MemberShape.new(target: CustomProtocolDetailKey)
    CustomProtocolDetail.value = ::Smithy::Schema::Shapes::MemberShape.new(target: CustomProtocolDetailValue)
    DeleteAccountAssociationRequest.add_member(:account_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssociationId, location_name: "AccountAssociationId", traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAccountAssociationRequest.type = Types::DeleteAccountAssociationRequest
    DeleteCloudConnectorRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorId, location_name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCloudConnectorRequest.type = Types::DeleteCloudConnectorRequest
    DeleteConnectorDestinationRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorDestinationId, location_name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConnectorDestinationRequest.type = Types::DeleteConnectorDestinationRequest
    DeleteCredentialLockerRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialLockerId, location_name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCredentialLockerRequest.type = Types::DeleteCredentialLockerRequest
    DeleteDestinationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDestinationRequest.type = Types::DeleteDestinationRequest
    DeleteEventLogConfigurationRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfigurationId, location_name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEventLogConfigurationRequest.type = Types::DeleteEventLogConfigurationRequest
    DeleteManagedThingRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedThingId, location_name: "Identifier", traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteManagedThingRequest.add_member(:force, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "Force", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpQuery" => "Force"}))
    DeleteManagedThingRequest.type = Types::DeleteManagedThingRequest
    DeleteNotificationConfigurationRequest.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EventType, location_name: "EventType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteNotificationConfigurationRequest.type = Types::DeleteNotificationConfigurationRequest
    DeleteOtaTaskConfigurationRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaTaskConfigurationId, location_name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteOtaTaskConfigurationRequest.type = Types::DeleteOtaTaskConfigurationRequest
    DeleteOtaTaskRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaTaskId, location_name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteOtaTaskRequest.type = Types::DeleteOtaTaskRequest
    DeleteProvisioningProfileRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningProfileId, location_name: "Identifier", traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteProvisioningProfileRequest.type = Types::DeleteProvisioningProfileRequest
    DeliveryDestinationType.add_member(:kinesis, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KINESIS", traits: {"smithy.api#enumValue" => "KINESIS"}))
    DeregisterAccountAssociationRequest.add_member(:managed_thing_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedThingId, location_name: "ManagedThingId", traits: {"smithy.api#required" => {}}))
    DeregisterAccountAssociationRequest.add_member(:account_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssociationId, location_name: "AccountAssociationId", traits: {"smithy.api#required" => {}}))
    DeregisterAccountAssociationRequest.type = Types::DeregisterAccountAssociationRequest
    DestinationListDefinition.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationSummary)
    DestinationSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationDescription, location_name: "Description"))
    DestinationSummary.add_member(:delivery_destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryDestinationArn, location_name: "DeliveryDestinationArn"))
    DestinationSummary.add_member(:delivery_destination_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryDestinationType, location_name: "DeliveryDestinationType"))
    DestinationSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationName, location_name: "Name"))
    DestinationSummary.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryDestinationRoleArn, location_name: "RoleArn"))
    DestinationSummary.type = Types::DestinationSummary
    Device.add_member(:connector_device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorDeviceId, location_name: "ConnectorDeviceId", traits: {"smithy.api#required" => {}}))
    Device.add_member(:connector_device_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorDeviceName, location_name: "ConnectorDeviceName"))
    Device.add_member(:capability_report, ::Smithy::Schema::Shapes::MemberShape.new(target: MatterCapabilityReport, location_name: "CapabilityReport", traits: {"smithy.api#required" => {}}))
    Device.add_member(:capability_schemas, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilitySchemas, location_name: "CapabilitySchemas"))
    Device.add_member(:device_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceMetadata, location_name: "DeviceMetadata"))
    Device.type = Types::Device
    DeviceDiscoveryListDefinition.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceDiscoverySummary)
    DeviceDiscoveryStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    DeviceDiscoveryStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    DeviceDiscoveryStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DeviceDiscoveryStatus.add_member(:timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TIMED_OUT", traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    DeviceDiscoverySummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceDiscoveryId, location_name: "Id"))
    DeviceDiscoverySummary.add_member(:discovery_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscoveryType, location_name: "DiscoveryType"))
    DeviceDiscoverySummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceDiscoveryStatus, location_name: "Status"))
    DeviceDiscoverySummary.type = Types::DeviceDiscoverySummary
    DeviceTypeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceType)
    DeviceTypes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceType)
    Devices.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Device)
    DisconnectReasonValue.add_member(:auth_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AUTH_ERROR", traits: {"smithy.api#enumValue" => "AUTH_ERROR"}))
    DisconnectReasonValue.add_member(:client_initiated_disconnect, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CLIENT_INITIATED_DISCONNECT", traits: {"smithy.api#enumValue" => "CLIENT_INITIATED_DISCONNECT"}))
    DisconnectReasonValue.add_member(:client_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CLIENT_ERROR", traits: {"smithy.api#enumValue" => "CLIENT_ERROR"}))
    DisconnectReasonValue.add_member(:connection_lost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONNECTION_LOST", traits: {"smithy.api#enumValue" => "CONNECTION_LOST"}))
    DisconnectReasonValue.add_member(:duplicate_clientid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DUPLICATE_CLIENTID", traits: {"smithy.api#enumValue" => "DUPLICATE_CLIENTID"}))
    DisconnectReasonValue.add_member(:forbidden_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FORBIDDEN_ACCESS", traits: {"smithy.api#enumValue" => "FORBIDDEN_ACCESS"}))
    DisconnectReasonValue.add_member(:mqtt_keep_alive_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MQTT_KEEP_ALIVE_TIMEOUT", traits: {"smithy.api#enumValue" => "MQTT_KEEP_ALIVE_TIMEOUT"}))
    DisconnectReasonValue.add_member(:server_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SERVER_ERROR", traits: {"smithy.api#enumValue" => "SERVER_ERROR"}))
    DisconnectReasonValue.add_member(:server_initiated_disconnect, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SERVER_INITIATED_DISCONNECT", traits: {"smithy.api#enumValue" => "SERVER_INITIATED_DISCONNECT"}))
    DisconnectReasonValue.add_member(:throttled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "THROTTLED", traits: {"smithy.api#enumValue" => "THROTTLED"}))
    DisconnectReasonValue.add_member(:websocket_ttl_expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WEBSOCKET_TTL_EXPIRATION", traits: {"smithy.api#enumValue" => "WEBSOCKET_TTL_EXPIRATION"}))
    DisconnectReasonValue.add_member(:customauth_ttl_expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CUSTOMAUTH_TTL_EXPIRATION", traits: {"smithy.api#enumValue" => "CUSTOMAUTH_TTL_EXPIRATION"}))
    DisconnectReasonValue.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNKNOWN", traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    DisconnectReasonValue.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    DiscoveredDeviceListDefinition.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DiscoveredDeviceSummary)
    DiscoveredDeviceSummary.add_member(:connector_device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorDeviceId, location_name: "ConnectorDeviceId"))
    DiscoveredDeviceSummary.add_member(:connector_device_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorDeviceName, location_name: "ConnectorDeviceName"))
    DiscoveredDeviceSummary.add_member(:device_types, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceTypeList, location_name: "DeviceTypes"))
    DiscoveredDeviceSummary.add_member(:managed_thing_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedThingId, location_name: "ManagedThingId"))
    DiscoveredDeviceSummary.add_member(:modification, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscoveryModification, location_name: "Modification"))
    DiscoveredDeviceSummary.add_member(:discovered_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscoveredAt, location_name: "DiscoveredAt"))
    DiscoveredDeviceSummary.add_member(:brand, ::Smithy::Schema::Shapes::MemberShape.new(target: Brand, location_name: "Brand"))
    DiscoveredDeviceSummary.add_member(:model, ::Smithy::Schema::Shapes::MemberShape.new(target: Model, location_name: "Model"))
    DiscoveredDeviceSummary.add_member(:authentication_material, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthMaterialString, location_name: "AuthenticationMaterial"))
    DiscoveredDeviceSummary.type = Types::DiscoveredDeviceSummary
    DiscoveryAuthMaterialType.add_member(:zwave_install_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ZWAVE_INSTALL_CODE", traits: {"smithy.api#enumValue" => "ZWAVE_INSTALL_CODE"}))
    DiscoveryModification.add_member(:discovered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISCOVERED", traits: {"smithy.api#enumValue" => "DISCOVERED"}))
    DiscoveryModification.add_member(:updated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATED", traits: {"smithy.api#enumValue" => "UPDATED"}))
    DiscoveryModification.add_member(:no_change, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_CHANGE", traits: {"smithy.api#enumValue" => "NO_CHANGE"}))
    DiscoveryType.add_member(:zwave, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ZWAVE", traits: {"smithy.api#enumValue" => "ZWAVE"}))
    DiscoveryType.add_member(:zigbee, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ZIGBEE", traits: {"smithy.api#enumValue" => "ZIGBEE"}))
    DiscoveryType.add_member(:cloud, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CLOUD", traits: {"smithy.api#enumValue" => "CLOUD"}))
    DiscoveryType.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CUSTOM", traits: {"smithy.api#enumValue" => "CUSTOM"}))
    EncryptionType.add_member(:managed_integrations_default_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MANAGED_INTEGRATIONS_DEFAULT_ENCRYPTION", traits: {"smithy.api#enumValue" => "MANAGED_INTEGRATIONS_DEFAULT_ENCRYPTION"}))
    EncryptionType.add_member(:customer_key_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CUSTOMER_KEY_ENCRYPTION", traits: {"smithy.api#enumValue" => "CUSTOMER_KEY_ENCRYPTION"}))
    EndpointConfig.add_member(:lambda, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaConfig, location_name: "lambda"))
    EndpointConfig.type = Types::EndpointConfig
    EndpointType.add_member(:lambda, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LAMBDA", traits: {"smithy.api#enumValue" => "LAMBDA"}))
    EventLogConfigurationListDefinition.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EventLogConfigurationSummary)
    EventLogConfigurationSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfigurationId, location_name: "Id"))
    EventLogConfigurationSummary.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SmartHomeResourceType, location_name: "ResourceType"))
    EventLogConfigurationSummary.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SmartHomeResourceId, location_name: "ResourceId"))
    EventLogConfigurationSummary.add_member(:event_log_level, ::Smithy::Schema::Shapes::MemberShape.new(target: LogLevel, location_name: "EventLogLevel"))
    EventLogConfigurationSummary.type = Types::EventLogConfigurationSummary
    EventType.add_member(:device_command, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEVICE_COMMAND", traits: {"smithy.api#enumValue" => "DEVICE_COMMAND"}))
    EventType.add_member(:device_command_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEVICE_COMMAND_REQUEST", traits: {"smithy.api#enumValue" => "DEVICE_COMMAND_REQUEST"}))
    EventType.add_member(:device_discovery_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEVICE_DISCOVERY_STATUS", traits: {"smithy.api#enumValue" => "DEVICE_DISCOVERY_STATUS"}))
    EventType.add_member(:device_event, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEVICE_EVENT", traits: {"smithy.api#enumValue" => "DEVICE_EVENT"}))
    EventType.add_member(:device_life_cycle, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEVICE_LIFE_CYCLE", traits: {"smithy.api#enumValue" => "DEVICE_LIFE_CYCLE"}))
    EventType.add_member(:device_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEVICE_STATE", traits: {"smithy.api#enumValue" => "DEVICE_STATE"}))
    EventType.add_member(:device_ota, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEVICE_OTA", traits: {"smithy.api#enumValue" => "DEVICE_OTA"}))
    EventType.add_member(:connector_association, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONNECTOR_ASSOCIATION", traits: {"smithy.api#deprecated" => {"message" => "CONNECTOR_ASSOCIATION is deprecated", "since" => "2025-06-25"}, "smithy.api#enumValue" => "CONNECTOR_ASSOCIATION"}))
    EventType.add_member(:account_association, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACCOUNT_ASSOCIATION", traits: {"smithy.api#enumValue" => "ACCOUNT_ASSOCIATION"}))
    EventType.add_member(:connector_error_report, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONNECTOR_ERROR_REPORT", traits: {"smithy.api#enumValue" => "CONNECTOR_ERROR_REPORT"}))
    ExponentialRolloutRate.add_member(:base_rate_per_minute, ::Smithy::Schema::Shapes::MemberShape.new(target: BaseRatePerMinute, location_name: "BaseRatePerMinute"))
    ExponentialRolloutRate.add_member(:increment_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: IncrementFactor, location_name: "IncrementFactor"))
    ExponentialRolloutRate.add_member(:rate_increase_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: RolloutRateIncreaseCriteria, location_name: "RateIncreaseCriteria"))
    ExponentialRolloutRate.type = Types::ExponentialRolloutRate
    GetAccountAssociationRequest.add_member(:account_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssociationId, location_name: "AccountAssociationId", traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAccountAssociationRequest.type = Types::GetAccountAssociationRequest
    GetAccountAssociationResponse.add_member(:account_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssociationId, location_name: "AccountAssociationId", traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#required" => {}}))
    GetAccountAssociationResponse.add_member(:association_state, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationState, location_name: "AssociationState", traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#required" => {}}))
    GetAccountAssociationResponse.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssociationErrorMessage, location_name: "ErrorMessage", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    GetAccountAssociationResponse.add_member(:connector_destination_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorDestinationId, location_name: "ConnectorDestinationId", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    GetAccountAssociationResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssociationName, location_name: "Name", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    GetAccountAssociationResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssociationDescription, location_name: "Description", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    GetAccountAssociationResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssociationArn, location_name: "Arn", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    GetAccountAssociationResponse.add_member(:o_auth_authorization_url, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuthAuthorizationUrl, location_name: "OAuthAuthorizationUrl", traits: {"smithy.api#required" => {}}))
    GetAccountAssociationResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "Tags", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    GetAccountAssociationResponse.type = Types::GetAccountAssociationResponse
    GetCloudConnectorRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorId, location_name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCloudConnectorRequest.type = Types::GetCloudConnectorRequest
    GetCloudConnectorResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    GetCloudConnectorResponse.add_member(:endpoint_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointConfig, location_name: "EndpointConfig", traits: {"smithy.api#required" => {}}))
    GetCloudConnectorResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorDescription, location_name: "Description"))
    GetCloudConnectorResponse.add_member(:endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointType, location_name: "EndpointType"))
    GetCloudConnectorResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorId, location_name: "Id"))
    GetCloudConnectorResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorType, location_name: "Type"))
    GetCloudConnectorResponse.type = Types::GetCloudConnectorResponse
    GetConnectorDestinationRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorDestinationId, location_name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConnectorDestinationRequest.type = Types::GetConnectorDestinationRequest
    GetConnectorDestinationResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorDestinationName, location_name: "Name"))
    GetConnectorDestinationResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorDestinationDescription, location_name: "Description"))
    GetConnectorDestinationResponse.add_member(:cloud_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorId, location_name: "CloudConnectorId"))
    GetConnectorDestinationResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorDestinationId, location_name: "Id"))
    GetConnectorDestinationResponse.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthType, location_name: "AuthType"))
    GetConnectorDestinationResponse.add_member(:auth_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthConfig, location_name: "AuthConfig"))
    GetConnectorDestinationResponse.add_member(:secrets_manager, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretsManager, location_name: "SecretsManager"))
    GetConnectorDestinationResponse.add_member(:o_auth_complete_redirect_url, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuthCompleteRedirectUrl, location_name: "OAuthCompleteRedirectUrl"))
    GetConnectorDestinationResponse.type = Types::GetConnectorDestinationResponse
    GetCredentialLockerRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialLockerId, location_name: "Identifier", traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCredentialLockerRequest.type = Types::GetCredentialLockerRequest
    GetCredentialLockerResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialLockerId, location_name: "Id", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    GetCredentialLockerResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialLockerArn, location_name: "Arn", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    GetCredentialLockerResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialLockerName, location_name: "Name", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    GetCredentialLockerResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialLockerCreatedAt, location_name: "CreatedAt", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    GetCredentialLockerResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "Tags", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    GetCredentialLockerResponse.type = Types::GetCredentialLockerResponse
    GetCustomEndpointRequest.type = Types::GetCustomEndpointRequest
    GetCustomEndpointResponse.add_member(:endpoint_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointAddress, location_name: "EndpointAddress", traits: {"smithy.api#required" => {}}))
    GetCustomEndpointResponse.type = Types::GetCustomEndpointResponse
    GetDefaultEncryptionConfigurationRequest.type = Types::GetDefaultEncryptionConfigurationRequest
    GetDefaultEncryptionConfigurationResponse.add_member(:configuration_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationStatus, location_name: "configurationStatus", traits: {"smithy.api#required" => {}}))
    GetDefaultEncryptionConfigurationResponse.add_member(:encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionType, location_name: "encryptionType", traits: {"smithy.api#required" => {}}))
    GetDefaultEncryptionConfigurationResponse.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, location_name: "kmsKeyArn"))
    GetDefaultEncryptionConfigurationResponse.type = Types::GetDefaultEncryptionConfigurationResponse
    GetDestinationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDestinationRequest.type = Types::GetDestinationRequest
    GetDestinationResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationDescription, location_name: "Description"))
    GetDestinationResponse.add_member(:delivery_destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryDestinationArn, location_name: "DeliveryDestinationArn"))
    GetDestinationResponse.add_member(:delivery_destination_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryDestinationType, location_name: "DeliveryDestinationType"))
    GetDestinationResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationName, location_name: "Name"))
    GetDestinationResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryDestinationRoleArn, location_name: "RoleArn"))
    GetDestinationResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationCreatedAt, location_name: "CreatedAt"))
    GetDestinationResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationUpdatedAt, location_name: "UpdatedAt"))
    GetDestinationResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "Tags", traits: {"smithy.api#deprecated" => {"message" => "Tags has been deprecated from this api", "since" => "06-25-2025"}}))
    GetDestinationResponse.type = Types::GetDestinationResponse
    GetDeviceDiscoveryRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceDiscoveryId, location_name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDeviceDiscoveryRequest.type = Types::GetDeviceDiscoveryRequest
    GetDeviceDiscoveryResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceDiscoveryId, location_name: "Id", traits: {"smithy.api#required" => {}}))
    GetDeviceDiscoveryResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceDiscoveryArn, location_name: "Arn", traits: {"smithy.api#required" => {}}))
    GetDeviceDiscoveryResponse.add_member(:discovery_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscoveryType, location_name: "DiscoveryType", traits: {"smithy.api#required" => {}}))
    GetDeviceDiscoveryResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceDiscoveryStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    GetDeviceDiscoveryResponse.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscoveryStartedAt, location_name: "StartedAt", traits: {"smithy.api#required" => {}}))
    GetDeviceDiscoveryResponse.add_member(:controller_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedThingId, location_name: "ControllerId"))
    GetDeviceDiscoveryResponse.add_member(:connector_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorAssociationId, location_name: "ConnectorAssociationId", traits: {"smithy.api#deprecated" => {"message" => "ConnectorAssociationId has been deprecated", "since" => "2025-06-25"}}))
    GetDeviceDiscoveryResponse.add_member(:account_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssociationId, location_name: "AccountAssociationId"))
    GetDeviceDiscoveryResponse.add_member(:finished_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscoveryFinishedAt, location_name: "FinishedAt"))
    GetDeviceDiscoveryResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "Tags", traits: {"smithy.api#deprecated" => {"message" => "Tags have been deprecated from this api", "since" => "06-25-2025"}}))
    GetDeviceDiscoveryResponse.type = Types::GetDeviceDiscoveryResponse
    GetEventLogConfigurationRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfigurationId, location_name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEventLogConfigurationRequest.type = Types::GetEventLogConfigurationRequest
    GetEventLogConfigurationResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfigurationId, location_name: "Id"))
    GetEventLogConfigurationResponse.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SmartHomeResourceType, location_name: "ResourceType"))
    GetEventLogConfigurationResponse.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SmartHomeResourceId, location_name: "ResourceId"))
    GetEventLogConfigurationResponse.add_member(:event_log_level, ::Smithy::Schema::Shapes::MemberShape.new(target: LogLevel, location_name: "EventLogLevel"))
    GetEventLogConfigurationResponse.type = Types::GetEventLogConfigurationResponse
    GetHubConfigurationRequest.type = Types::GetHubConfigurationRequest
    GetHubConfigurationResponse.add_member(:hub_token_timer_expiry_setting_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: HubTokenTimerExpirySettingInSeconds, location_name: "HubTokenTimerExpirySettingInSeconds"))
    GetHubConfigurationResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: HubConfigurationUpdatedAt, location_name: "UpdatedAt"))
    GetHubConfigurationResponse.type = Types::GetHubConfigurationResponse
    GetManagedThingCapabilitiesRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedThingId, location_name: "Identifier", traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetManagedThingCapabilitiesRequest.type = Types::GetManagedThingCapabilitiesRequest
    GetManagedThingCapabilitiesResponse.add_member(:managed_thing_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedThingId, location_name: "ManagedThingId", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    GetManagedThingCapabilitiesResponse.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: Capabilities, location_name: "Capabilities", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetManagedThingCapabilitiesResponse.add_member(:capability_report, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityReport, location_name: "CapabilityReport", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    GetManagedThingCapabilitiesResponse.type = Types::GetManagedThingCapabilitiesResponse
    GetManagedThingConnectivityDataRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedThingId, location_name: "Identifier", traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetManagedThingConnectivityDataRequest.type = Types::GetManagedThingConnectivityDataRequest
    GetManagedThingConnectivityDataResponse.add_member(:managed_thing_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedThingId, location_name: "ManagedThingId", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    GetManagedThingConnectivityDataResponse.add_member(:connected, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectivityStatus, location_name: "Connected", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetManagedThingConnectivityDataResponse.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectivityTimestamp, location_name: "Timestamp", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetManagedThingConnectivityDataResponse.add_member(:disconnect_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: DisconnectReasonValue, location_name: "DisconnectReason", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetManagedThingConnectivityDataResponse.type = Types::GetManagedThingConnectivityDataResponse
    GetManagedThingMetaDataRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedThingId, location_name: "Identifier", traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetManagedThingMetaDataRequest.type = Types::GetManagedThingMetaDataRequest
    GetManagedThingMetaDataResponse.add_member(:managed_thing_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedThingId, location_name: "ManagedThingId", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    GetManagedThingMetaDataResponse.add_member(:meta_data, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaData, location_name: "MetaData", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    GetManagedThingMetaDataResponse.type = Types::GetManagedThingMetaDataResponse
    GetManagedThingRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedThingId, location_name: "Identifier", traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetManagedThingRequest.type = Types::GetManagedThingRequest
    GetManagedThingResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedThingId, location_name: "Id"))
    GetManagedThingResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedThingArn, location_name: "Arn"))
    GetManagedThingResponse.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Owner, location_name: "Owner"))
    GetManagedThingResponse.add_member(:credential_locker_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialLockerId, location_name: "CredentialLockerId"))
    GetManagedThingResponse.add_member(:advertised_product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AdvertisedProductId, location_name: "AdvertisedProductId"))
    GetManagedThingResponse.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: Role, location_name: "Role"))
    GetManagedThingResponse.add_member(:provisioning_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningStatus, location_name: "ProvisioningStatus"))
    GetManagedThingResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "Name"))
    GetManagedThingResponse.add_member(:model, ::Smithy::Schema::Shapes::MemberShape.new(target: Model, location_name: "Model"))
    GetManagedThingResponse.add_member(:brand, ::Smithy::Schema::Shapes::MemberShape.new(target: Brand, location_name: "Brand"))
    GetManagedThingResponse.add_member(:serial_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SerialNumber, location_name: "SerialNumber"))
    GetManagedThingResponse.add_member(:universal_product_code, ::Smithy::Schema::Shapes::MemberShape.new(target: UniversalProductCode, location_name: "UniversalProductCode"))
    GetManagedThingResponse.add_member(:international_article_number, ::Smithy::Schema::Shapes::MemberShape.new(target: InternationalArticleNumber, location_name: "InternationalArticleNumber"))
    GetManagedThingResponse.add_member(:connector_policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorPolicyId, location_name: "ConnectorPolicyId", traits: {"smithy.api#deprecated" => {"message" => "ConnectorPolicyId is deprecated", "since" => "2025-06-25"}}))
    GetManagedThingResponse.add_member(:connector_destination_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorDestinationId, location_name: "ConnectorDestinationId"))
    GetManagedThingResponse.add_member(:connector_device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorDeviceId, location_name: "ConnectorDeviceId"))
    GetManagedThingResponse.add_member(:device_specific_key, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceSpecificKey, location_name: "DeviceSpecificKey"))
    GetManagedThingResponse.add_member(:mac_address, ::Smithy::Schema::Shapes::MemberShape.new(target: MacAddress, location_name: "MacAddress"))
    GetManagedThingResponse.add_member(:parent_controller_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ParentControllerId, location_name: "ParentControllerId"))
    GetManagedThingResponse.add_member(:classification, ::Smithy::Schema::Shapes::MemberShape.new(target: Classification, location_name: "Classification"))
    GetManagedThingResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, location_name: "CreatedAt"))
    GetManagedThingResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAt, location_name: "UpdatedAt"))
    GetManagedThingResponse.add_member(:activated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: SetupAt, location_name: "ActivatedAt"))
    GetManagedThingResponse.add_member(:hub_network_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: HubNetworkMode, location_name: "HubNetworkMode"))
    GetManagedThingResponse.add_member(:meta_data, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaData, location_name: "MetaData"))
    GetManagedThingResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "Tags", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    GetManagedThingResponse.type = Types::GetManagedThingResponse
    GetManagedThingStateRequest.add_member(:managed_thing_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedThingId, location_name: "ManagedThingId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetManagedThingStateRequest.type = Types::GetManagedThingStateRequest
    GetManagedThingStateResponse.add_member(:endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: StateEndpoints, location_name: "Endpoints", traits: {"smithy.api#required" => {}}))
    GetManagedThingStateResponse.type = Types::GetManagedThingStateResponse
    GetNotificationConfigurationRequest.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EventType, location_name: "EventType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetNotificationConfigurationRequest.type = Types::GetNotificationConfigurationRequest
    GetNotificationConfigurationResponse.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EventType, location_name: "EventType"))
    GetNotificationConfigurationResponse.add_member(:destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationName, location_name: "DestinationName"))
    GetNotificationConfigurationResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationConfigurationCreatedAt, location_name: "CreatedAt"))
    GetNotificationConfigurationResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationConfigurationUpdatedAt, location_name: "UpdatedAt"))
    GetNotificationConfigurationResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "Tags", traits: {"smithy.api#deprecated" => {"message" => "Tags has been deprecated for this api", "since" => "06-25-2025"}}))
    GetNotificationConfigurationResponse.type = Types::GetNotificationConfigurationResponse
    GetOtaTaskConfigurationRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaTaskConfigurationId, location_name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetOtaTaskConfigurationRequest.type = Types::GetOtaTaskConfigurationRequest
    GetOtaTaskConfigurationResponse.add_member(:task_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaTaskConfigurationId, location_name: "TaskConfigurationId"))
    GetOtaTaskConfigurationResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaTaskConfigurationName, location_name: "Name"))
    GetOtaTaskConfigurationResponse.add_member(:push_config, ::Smithy::Schema::Shapes::MemberShape.new(target: PushConfig, location_name: "PushConfig"))
    GetOtaTaskConfigurationResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaDescription, location_name: "Description"))
    GetOtaTaskConfigurationResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, location_name: "CreatedAt"))
    GetOtaTaskConfigurationResponse.type = Types::GetOtaTaskConfigurationResponse
    GetOtaTaskRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaTaskId, location_name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetOtaTaskRequest.type = Types::GetOtaTaskRequest
    GetOtaTaskResponse.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaTaskId, location_name: "TaskId"))
    GetOtaTaskResponse.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaTaskArn, location_name: "TaskArn"))
    GetOtaTaskResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaDescription, location_name: "Description"))
    GetOtaTaskResponse.add_member(:s3_url, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Url, location_name: "S3Url"))
    GetOtaTaskResponse.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaProtocol, location_name: "Protocol"))
    GetOtaTaskResponse.add_member(:ota_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaType, location_name: "OtaType"))
    GetOtaTaskResponse.add_member(:ota_target_query_string, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaTargetQueryString, location_name: "OtaTargetQueryString"))
    GetOtaTaskResponse.add_member(:ota_mechanism, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaMechanism, location_name: "OtaMechanism"))
    GetOtaTaskResponse.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: Target, location_name: "Target"))
    GetOtaTaskResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, location_name: "CreatedAt"))
    GetOtaTaskResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdatedAt, location_name: "LastUpdatedAt"))
    GetOtaTaskResponse.add_member(:task_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaTaskConfigurationId, location_name: "TaskConfigurationId"))
    GetOtaTaskResponse.add_member(:task_processing_details, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskProcessingDetails, location_name: "TaskProcessingDetails"))
    GetOtaTaskResponse.add_member(:ota_scheduling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaTaskSchedulingConfig, location_name: "OtaSchedulingConfig"))
    GetOtaTaskResponse.add_member(:ota_task_execution_retry_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaTaskExecutionRetryConfig, location_name: "OtaTaskExecutionRetryConfig"))
    GetOtaTaskResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaStatus, location_name: "Status"))
    GetOtaTaskResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "Tags"))
    GetOtaTaskResponse.type = Types::GetOtaTaskResponse
    GetProvisioningProfileRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningProfileId, location_name: "Identifier", traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetProvisioningProfileRequest.type = Types::GetProvisioningProfileRequest
    GetProvisioningProfileResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningProfileArn, location_name: "Arn", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    GetProvisioningProfileResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningProfileName, location_name: "Name", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    GetProvisioningProfileResponse.add_member(:provisioning_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningType, location_name: "ProvisioningType", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    GetProvisioningProfileResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningProfileId, location_name: "Id", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    GetProvisioningProfileResponse.add_member(:claim_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: ClaimCertificate, location_name: "ClaimCertificate", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    GetProvisioningProfileResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "Tags"))
    GetProvisioningProfileResponse.type = Types::GetProvisioningProfileResponse
    GetRuntimeLogConfigurationRequest.add_member(:managed_thing_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedThingId, location_name: "ManagedThingId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRuntimeLogConfigurationRequest.type = Types::GetRuntimeLogConfigurationRequest
    GetRuntimeLogConfigurationResponse.add_member(:managed_thing_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedThingId, location_name: "ManagedThingId"))
    GetRuntimeLogConfigurationResponse.add_member(:runtime_log_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeLogConfigurations, location_name: "RuntimeLogConfigurations"))
    GetRuntimeLogConfigurationResponse.type = Types::GetRuntimeLogConfigurationResponse
    GetSchemaVersionRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaVersionType, location_name: "Type", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSchemaVersionRequest.add_member(:schema_versioned_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaVersionedId, location_name: "SchemaVersionedId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSchemaVersionRequest.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaVersionFormat, location_name: "Format", traits: {"smithy.api#httpQuery" => "Format"}))
    GetSchemaVersionRequest.type = Types::GetSchemaVersionRequest
    GetSchemaVersionResponse.add_member(:schema_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaId, location_name: "SchemaId"))
    GetSchemaVersionResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaVersionType, location_name: "Type"))
    GetSchemaVersionResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaVersionDescription, location_name: "Description"))
    GetSchemaVersionResponse.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaVersionNamespaceName, location_name: "Namespace"))
    GetSchemaVersionResponse.add_member(:semantic_version, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaVersionVersion, location_name: "SemanticVersion"))
    GetSchemaVersionResponse.add_member(:visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaVersionVisibility, location_name: "Visibility"))
    GetSchemaVersionResponse.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaVersionSchema, location_name: "Schema"))
    GetSchemaVersionResponse.type = Types::GetSchemaVersionResponse
    HubNetworkMode.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    HubNetworkMode.add_member(:network_wide_exclusion, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NETWORK_WIDE_EXCLUSION", traits: {"smithy.api#enumValue" => "NETWORK_WIDE_EXCLUSION"}))
    InternalFailureException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InternalFailureException.type = Types::InternalFailureException
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InternalServerException.type = Types::InternalServerException
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InvalidRequestException.type = Types::InvalidRequestException
    LambdaConfig.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    LambdaConfig.type = Types::LambdaConfig
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    LimitExceededException.type = Types::LimitExceededException
    ListAccountAssociationsRequest.add_member(:connector_destination_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorDestinationId, location_name: "ConnectorDestinationId", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpQuery" => "ConnectorDestinationId"}))
    ListAccountAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpQuery" => "MaxResults"}))
    ListAccountAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpQuery" => "NextToken"}))
    ListAccountAssociationsRequest.type = Types::ListAccountAssociationsRequest
    ListAccountAssociationsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssociationListDefinition, location_name: "Items", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    ListAccountAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    ListAccountAssociationsResponse.type = Types::ListAccountAssociationsResponse
    ListCloudConnectorsRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorType, location_name: "Type", traits: {"smithy.api#httpQuery" => "Type"}))
    ListCloudConnectorsRequest.add_member(:lambda_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaArn, location_name: "LambdaArn", traits: {"smithy.api#httpQuery" => "LambdaArn"}))
    ListCloudConnectorsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListCloudConnectorsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListCloudConnectorsRequest.type = Types::ListCloudConnectorsRequest
    ListCloudConnectorsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorList, location_name: "Items"))
    ListCloudConnectorsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListCloudConnectorsResponse.type = Types::ListCloudConnectorsResponse
    ListConnectorDestinationsRequest.add_member(:cloud_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorId, location_name: "CloudConnectorId", traits: {"smithy.api#httpQuery" => "CloudConnectorId"}))
    ListConnectorDestinationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListConnectorDestinationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListConnectorDestinationsRequest.type = Types::ListConnectorDestinationsRequest
    ListConnectorDestinationsResponse.add_member(:connector_destination_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorDestinationListDefinition, location_name: "ConnectorDestinationList"))
    ListConnectorDestinationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListConnectorDestinationsResponse.type = Types::ListConnectorDestinationsResponse
    ListCredentialLockersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpQuery" => "NextToken"}))
    ListCredentialLockersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpQuery" => "MaxResults"}))
    ListCredentialLockersRequest.type = Types::ListCredentialLockersRequest
    ListCredentialLockersResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialLockerListDefinition, location_name: "Items"))
    ListCredentialLockersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    ListCredentialLockersResponse.type = Types::ListCredentialLockersResponse
    ListDestinationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListDestinationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListDestinationsRequest.type = Types::ListDestinationsRequest
    ListDestinationsResponse.add_member(:destination_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationListDefinition, location_name: "DestinationList"))
    ListDestinationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListDestinationsResponse.type = Types::ListDestinationsResponse
    ListDeviceDiscoveriesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListDeviceDiscoveriesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListDeviceDiscoveriesRequest.add_member(:type_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscoveryType, location_name: "TypeFilter", traits: {"smithy.api#httpQuery" => "TypeFilter"}))
    ListDeviceDiscoveriesRequest.add_member(:status_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceDiscoveryStatus, location_name: "StatusFilter", traits: {"smithy.api#httpQuery" => "StatusFilter"}))
    ListDeviceDiscoveriesRequest.type = Types::ListDeviceDiscoveriesRequest
    ListDeviceDiscoveriesResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceDiscoveryListDefinition, location_name: "Items"))
    ListDeviceDiscoveriesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListDeviceDiscoveriesResponse.type = Types::ListDeviceDiscoveriesResponse
    ListDiscoveredDevicesRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceDiscoveryId, location_name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDiscoveredDevicesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListDiscoveredDevicesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListDiscoveredDevicesRequest.type = Types::ListDiscoveredDevicesRequest
    ListDiscoveredDevicesResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscoveredDeviceListDefinition, location_name: "Items"))
    ListDiscoveredDevicesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListDiscoveredDevicesResponse.type = Types::ListDiscoveredDevicesResponse
    ListEventLogConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListEventLogConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListEventLogConfigurationsRequest.type = Types::ListEventLogConfigurationsRequest
    ListEventLogConfigurationsResponse.add_member(:event_log_configuration_list, ::Smithy::Schema::Shapes::MemberShape.new(target: EventLogConfigurationListDefinition, location_name: "EventLogConfigurationList"))
    ListEventLogConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListEventLogConfigurationsResponse.type = Types::ListEventLogConfigurationsResponse
    ListManagedThingAccountAssociationsRequest.add_member(:managed_thing_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedThingId, location_name: "ManagedThingId", traits: {"smithy.api#httpQuery" => "ManagedThingId"}))
    ListManagedThingAccountAssociationsRequest.add_member(:account_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssociationId, location_name: "AccountAssociationId", traits: {"smithy.api#httpQuery" => "AccountAssociationId"}))
    ListManagedThingAccountAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListManagedThingAccountAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListManagedThingAccountAssociationsRequest.type = Types::ListManagedThingAccountAssociationsRequest
    ListManagedThingAccountAssociationsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedThingAssociationList, location_name: "Items"))
    ListManagedThingAccountAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "NextToken"))
    ListManagedThingAccountAssociationsResponse.type = Types::ListManagedThingAccountAssociationsResponse
    ListManagedThingSchemasRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedThingId, location_name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListManagedThingSchemasRequest.add_member(:endpoint_id_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointId, location_name: "EndpointIdFilter", traits: {"smithy.api#httpQuery" => "EndpointIdFilter"}))
    ListManagedThingSchemasRequest.add_member(:capability_id_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityId, location_name: "CapabilityIdFilter", traits: {"smithy.api#httpQuery" => "CapabilityIdFilter"}))
    ListManagedThingSchemasRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListManagedThingSchemasRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListManagedThingSchemasRequest.type = Types::ListManagedThingSchemasRequest
    ListManagedThingSchemasResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedThingSchemaListDefinition, location_name: "Items"))
    ListManagedThingSchemasResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListManagedThingSchemasResponse.type = Types::ListManagedThingSchemasResponse
    ListManagedThingsRequest.add_member(:owner_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: Owner, location_name: "OwnerFilter", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpQuery" => "OwnerFilter"}))
    ListManagedThingsRequest.add_member(:credential_locker_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialLockerId, location_name: "CredentialLockerFilter", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpQuery" => "CredentialLockerFilter"}))
    ListManagedThingsRequest.add_member(:role_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: Role, location_name: "RoleFilter", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpQuery" => "RoleFilter"}))
    ListManagedThingsRequest.add_member(:parent_controller_identifier_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ParentControllerId, location_name: "ParentControllerIdentifierFilter", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpQuery" => "ParentControllerIdentifierFilter"}))
    ListManagedThingsRequest.add_member(:connector_policy_id_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorPolicyId, location_name: "ConnectorPolicyIdFilter", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#deprecated" => {"message" => "ConnectorPolicyIdFilter is deprecated", "since" => "06-25-2025"}, "smithy.api#httpQuery" => "ConnectorPolicyIdFilter"}))
    ListManagedThingsRequest.add_member(:connector_destination_id_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorDestinationId, location_name: "ConnectorDestinationIdFilter", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpQuery" => "ConnectorDestinationIdFilter"}))
    ListManagedThingsRequest.add_member(:connector_device_id_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorDeviceId, location_name: "ConnectorDeviceIdFilter", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpQuery" => "ConnectorDeviceIdFilter"}))
    ListManagedThingsRequest.add_member(:serial_number_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: SerialNumber, location_name: "SerialNumberFilter", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpQuery" => "SerialNumberFilter"}))
    ListManagedThingsRequest.add_member(:provisioning_status_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningStatus, location_name: "ProvisioningStatusFilter", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpQuery" => "ProvisioningStatusFilter"}))
    ListManagedThingsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpQuery" => "NextToken"}))
    ListManagedThingsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpQuery" => "MaxResults"}))
    ListManagedThingsRequest.type = Types::ListManagedThingsRequest
    ListManagedThingsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedThingListDefinition, location_name: "Items", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    ListManagedThingsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    ListManagedThingsResponse.type = Types::ListManagedThingsResponse
    ListNotificationConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListNotificationConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListNotificationConfigurationsRequest.type = Types::ListNotificationConfigurationsRequest
    ListNotificationConfigurationsResponse.add_member(:notification_configuration_list, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationConfigurationListDefinition, location_name: "NotificationConfigurationList"))
    ListNotificationConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListNotificationConfigurationsResponse.type = Types::ListNotificationConfigurationsResponse
    ListOtaTaskConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListOtaTaskConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListOtaTaskConfigurationsRequest.type = Types::ListOtaTaskConfigurationsRequest
    ListOtaTaskConfigurationsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaTaskConfigurationListDefinition, location_name: "Items"))
    ListOtaTaskConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListOtaTaskConfigurationsResponse.type = Types::ListOtaTaskConfigurationsResponse
    ListOtaTaskExecutionsRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaTaskId, location_name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListOtaTaskExecutionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaNextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListOtaTaskExecutionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListOtaTaskExecutionsRequest.type = Types::ListOtaTaskExecutionsRequest
    ListOtaTaskExecutionsResponse.add_member(:execution_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaTaskExecutionSummariesListDefinition, location_name: "ExecutionSummaries"))
    ListOtaTaskExecutionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaNextToken, location_name: "NextToken"))
    ListOtaTaskExecutionsResponse.type = Types::ListOtaTaskExecutionsResponse
    ListOtaTasksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaNextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListOtaTasksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListOtaTasksRequest.type = Types::ListOtaTasksRequest
    ListOtaTasksResponse.add_member(:tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaTaskListDefinition, location_name: "Tasks"))
    ListOtaTasksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaNextToken, location_name: "NextToken"))
    ListOtaTasksResponse.type = Types::ListOtaTasksResponse
    ListProvisioningProfilesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpQuery" => "NextToken"}))
    ListProvisioningProfilesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpQuery" => "MaxResults"}))
    ListProvisioningProfilesRequest.type = Types::ListProvisioningProfilesRequest
    ListProvisioningProfilesResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningProfileListDefinition, location_name: "Items"))
    ListProvisioningProfilesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    ListProvisioningProfilesResponse.type = Types::ListProvisioningProfilesResponse
    ListSchemaVersionsRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaVersionType, location_name: "Type", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSchemaVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListSchemaVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListSchemaVersionsRequest.add_member(:schema_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaId, location_name: "SchemaId", traits: {"smithy.api#httpQuery" => "SchemaIdFilter"}))
    ListSchemaVersionsRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaVersionNamespaceName, location_name: "Namespace", traits: {"smithy.api#httpQuery" => "NamespaceFilter"}))
    ListSchemaVersionsRequest.add_member(:visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaVersionVisibility, location_name: "Visibility", traits: {"smithy.api#httpQuery" => "VisibilityFilter"}))
    ListSchemaVersionsRequest.add_member(:semantic_version, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaVersionVersion, location_name: "SemanticVersion", traits: {"smithy.api#httpQuery" => "SemanticVersionFilter"}))
    ListSchemaVersionsRequest.type = Types::ListSchemaVersionsRequest
    ListSchemaVersionsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaVersionList, location_name: "Items"))
    ListSchemaVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListSchemaVersionsResponse.type = Types::ListSchemaVersionsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IoTManagedIntegrationsResourceARN, location_name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LogLevel.add_member(:debug, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEBUG", traits: {"smithy.api#enumValue" => "DEBUG"}))
    LogLevel.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    LogLevel.add_member(:info, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INFO", traits: {"smithy.api#enumValue" => "INFO"}))
    LogLevel.add_member(:warn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WARN", traits: {"smithy.api#enumValue" => "WARN"}))
    ManagedThingAssociation.add_member(:managed_thing_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedThingId, location_name: "ManagedThingId"))
    ManagedThingAssociation.add_member(:account_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssociationId, location_name: "AccountAssociationId"))
    ManagedThingAssociation.type = Types::ManagedThingAssociation
    ManagedThingAssociationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedThingAssociation)
    ManagedThingListDefinition.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedThingSummary)
    ManagedThingSchemaListDefinition.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedThingSchemaListItem)
    ManagedThingSchemaListItem.add_member(:endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointId, location_name: "EndpointId"))
    ManagedThingSchemaListItem.add_member(:capability_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityId, location_name: "CapabilityId"))
    ManagedThingSchemaListItem.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationSchema, location_name: "Schema"))
    ManagedThingSchemaListItem.type = Types::ManagedThingSchemaListItem
    ManagedThingSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedThingId, location_name: "Id", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    ManagedThingSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedThingArn, location_name: "Arn", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    ManagedThingSummary.add_member(:advertised_product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AdvertisedProductId, location_name: "AdvertisedProductId", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    ManagedThingSummary.add_member(:brand, ::Smithy::Schema::Shapes::MemberShape.new(target: Brand, location_name: "Brand", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    ManagedThingSummary.add_member(:classification, ::Smithy::Schema::Shapes::MemberShape.new(target: Classification, location_name: "Classification", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    ManagedThingSummary.add_member(:connector_device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorDeviceId, location_name: "ConnectorDeviceId", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    ManagedThingSummary.add_member(:connector_policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorPolicyId, location_name: "ConnectorPolicyId", traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#deprecated" => {"message" => "ConnectorPolicyId has been deprecated", "since" => "06-25-2025"}}))
    ManagedThingSummary.add_member(:connector_destination_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorDestinationId, location_name: "ConnectorDestinationId", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    ManagedThingSummary.add_member(:model, ::Smithy::Schema::Shapes::MemberShape.new(target: Model, location_name: "Model", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    ManagedThingSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "Name", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    ManagedThingSummary.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Owner, location_name: "Owner", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    ManagedThingSummary.add_member(:credential_locker_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialLockerId, location_name: "CredentialLockerId", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    ManagedThingSummary.add_member(:parent_controller_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ParentControllerId, location_name: "ParentControllerId", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    ManagedThingSummary.add_member(:provisioning_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningStatus, location_name: "ProvisioningStatus", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    ManagedThingSummary.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: Role, location_name: "Role", traits: {"aws.cloudformation#cfnMutability" => "create-and-read"}))
    ManagedThingSummary.add_member(:serial_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SerialNumber, location_name: "SerialNumber", traits: {"aws.cloudformation#cfnMutability" => "create-and-read"}))
    ManagedThingSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, location_name: "CreatedAt", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    ManagedThingSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, location_name: "UpdatedAt", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    ManagedThingSummary.add_member(:activated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: SetupAt, location_name: "ActivatedAt", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    ManagedThingSummary.type = Types::ManagedThingSummary
    MatterCapabilityReport.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityReportVersion, location_name: "version", traits: {"smithy.api#required" => {}}))
    MatterCapabilityReport.add_member(:node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeId, location_name: "nodeId"))
    MatterCapabilityReport.add_member(:endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: MatterCapabilityReportEndpoints, location_name: "endpoints", traits: {"smithy.api#required" => {}}))
    MatterCapabilityReport.type = Types::MatterCapabilityReport
    MatterCapabilityReportAttribute.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: MatterAttributeId, location_name: "id"))
    MatterCapabilityReportAttribute.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionName, location_name: "name"))
    MatterCapabilityReportAttribute.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MatterCapabilityReportAttributeValue, location_name: "value"))
    MatterCapabilityReportAttribute.type = Types::MatterCapabilityReportAttribute
    MatterCapabilityReportAttributes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MatterCapabilityReportAttribute)
    MatterCapabilityReportCluster.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, location_name: "id", traits: {"smithy.api#required" => {}}))
    MatterCapabilityReportCluster.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: MatterCapabilityReportClusterRevisionId, location_name: "revision", traits: {"smithy.api#required" => {}}))
    MatterCapabilityReportCluster.add_member(:public_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaVersionedId, location_name: "publicId"))
    MatterCapabilityReportCluster.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityName, location_name: "name"))
    MatterCapabilityReportCluster.add_member(:spec_version, ::Smithy::Schema::Shapes::MemberShape.new(target: SpecVersion, location_name: "specVersion"))
    MatterCapabilityReportCluster.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: MatterCapabilityReportAttributes, location_name: "attributes"))
    MatterCapabilityReportCluster.add_member(:commands, ::Smithy::Schema::Shapes::MemberShape.new(target: MatterCapabilityReportCommands, location_name: "commands"))
    MatterCapabilityReportCluster.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: MatterCapabilityReportEvents, location_name: "events"))
    MatterCapabilityReportCluster.add_member(:feature_map, ::Smithy::Schema::Shapes::MemberShape.new(target: MatterCapabilityReportFeatureMap, location_name: "featureMap"))
    MatterCapabilityReportCluster.add_member(:generated_commands, ::Smithy::Schema::Shapes::MemberShape.new(target: MatterCapabilityReportGeneratedCommands, location_name: "generatedCommands"))
    MatterCapabilityReportCluster.add_member(:fabric_index, ::Smithy::Schema::Shapes::MemberShape.new(target: MatterCapabilityReportFabricIndex, location_name: "fabricIndex"))
    MatterCapabilityReportCluster.type = Types::MatterCapabilityReportCluster
    MatterCapabilityReportClusters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MatterCapabilityReportCluster)
    MatterCapabilityReportCommands.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MatterCommandId)
    MatterCapabilityReportEndpoint.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointId, location_name: "id", traits: {"smithy.api#required" => {}}))
    MatterCapabilityReportEndpoint.add_member(:device_types, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceTypes, location_name: "deviceTypes", traits: {"smithy.api#required" => {}}))
    MatterCapabilityReportEndpoint.add_member(:clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: MatterCapabilityReportClusters, location_name: "clusters", traits: {"smithy.api#required" => {}}))
    MatterCapabilityReportEndpoint.add_member(:parts, ::Smithy::Schema::Shapes::MemberShape.new(target: MatterCapabilityReportEndpointParts, location_name: "parts"))
    MatterCapabilityReportEndpoint.add_member(:semantic_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MatterCapabilityReportEndpointSemanticTags, location_name: "semanticTags"))
    MatterCapabilityReportEndpoint.add_member(:client_clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: MatterCapabilityReportEndpointClientClusters, location_name: "clientClusters"))
    MatterCapabilityReportEndpoint.type = Types::MatterCapabilityReportEndpoint
    MatterCapabilityReportEndpointClientClusters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId)
    MatterCapabilityReportEndpointParts.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointId)
    MatterCapabilityReportEndpointSemanticTags.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointSemanticTag)
    MatterCapabilityReportEndpoints.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MatterCapabilityReportEndpoint)
    MatterCapabilityReportEvents.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MatterEventId)
    MatterCapabilityReportGeneratedCommands.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MatterCommandId)
    MatterCluster.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, location_name: "id"))
    MatterCluster.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: MatterAttributes, location_name: "attributes"))
    MatterCluster.add_member(:commands, ::Smithy::Schema::Shapes::MemberShape.new(target: MatterCommands, location_name: "commands"))
    MatterCluster.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: MatterEvents, location_name: "events"))
    MatterCluster.type = Types::MatterCluster
    MatterClusters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MatterCluster)
    MatterCommands.key = ::Smithy::Schema::Shapes::MemberShape.new(target: MatterCommandId)
    MatterCommands.value = ::Smithy::Schema::Shapes::MemberShape.new(target: MatterFields)
    MatterEndpoint.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointId, location_name: "id"))
    MatterEndpoint.add_member(:clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: MatterClusters, location_name: "clusters"))
    MatterEndpoint.type = Types::MatterEndpoint
    MatterEvents.key = ::Smithy::Schema::Shapes::MemberShape.new(target: MatterEventId)
    MatterEvents.value = ::Smithy::Schema::Shapes::MemberShape.new(target: MatterFields)
    MetaData.key = ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName)
    MetaData.value = ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue)
    NotificationConfigurationListDefinition.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationConfigurationSummary)
    NotificationConfigurationSummary.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EventType, location_name: "EventType"))
    NotificationConfigurationSummary.add_member(:destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationName, location_name: "DestinationName"))
    NotificationConfigurationSummary.type = Types::NotificationConfigurationSummary
    OAuthConfig.add_member(:auth_url, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthUrl, location_name: "authUrl", traits: {"smithy.api#required" => {}}))
    OAuthConfig.add_member(:token_url, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenUrl, location_name: "tokenUrl", traits: {"smithy.api#required" => {}}))
    OAuthConfig.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "scope"))
    OAuthConfig.add_member(:token_endpoint_authentication_scheme, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenEndpointAuthenticationScheme, location_name: "tokenEndpointAuthenticationScheme", traits: {"smithy.api#required" => {}}))
    OAuthConfig.add_member(:o_auth_complete_redirect_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "oAuthCompleteRedirectUrl"))
    OAuthConfig.add_member(:proactive_refresh_token_renewal, ::Smithy::Schema::Shapes::MemberShape.new(target: ProactiveRefreshTokenRenewal, location_name: "proactiveRefreshTokenRenewal"))
    OAuthConfig.type = Types::OAuthConfig
    OAuthUpdate.add_member(:o_auth_complete_redirect_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "oAuthCompleteRedirectUrl"))
    OAuthUpdate.add_member(:proactive_refresh_token_renewal, ::Smithy::Schema::Shapes::MemberShape.new(target: ProactiveRefreshTokenRenewal, location_name: "proactiveRefreshTokenRenewal"))
    OAuthUpdate.type = Types::OAuthUpdate
    OtaMechanism.add_member(:push, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PUSH", traits: {"smithy.api#enumValue" => "PUSH"}))
    OtaProtocol.add_member(:http, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HTTP", traits: {"smithy.api#enumValue" => "HTTP"}))
    OtaStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    OtaStatus.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    OtaStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    OtaStatus.add_member(:deletion_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETION_IN_PROGRESS", traits: {"smithy.api#enumValue" => "DELETION_IN_PROGRESS"}))
    OtaStatus.add_member(:scheduled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SCHEDULED", traits: {"smithy.api#enumValue" => "SCHEDULED"}))
    OtaTaskAbortConfig.add_member(:abort_config_criteria_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AbortConfigCriteriaList, location_name: "AbortConfigCriteriaList"))
    OtaTaskAbortConfig.type = Types::OtaTaskAbortConfig
    OtaTaskConfigurationListDefinition.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OtaTaskConfigurationSummary)
    OtaTaskConfigurationSummary.add_member(:task_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaTaskConfigurationId, location_name: "TaskConfigurationId"))
    OtaTaskConfigurationSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaTaskConfigurationName, location_name: "Name"))
    OtaTaskConfigurationSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, location_name: "CreatedAt"))
    OtaTaskConfigurationSummary.type = Types::OtaTaskConfigurationSummary
    OtaTaskExecutionRetryConfig.add_member(:retry_config_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryConfigCriteriaList, location_name: "RetryConfigCriteria"))
    OtaTaskExecutionRetryConfig.type = Types::OtaTaskExecutionRetryConfig
    OtaTaskExecutionRolloutConfig.add_member(:exponential_rollout_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: ExponentialRolloutRate, location_name: "ExponentialRolloutRate"))
    OtaTaskExecutionRolloutConfig.add_member(:maximum_per_minute, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumPerMinute, location_name: "MaximumPerMinute"))
    OtaTaskExecutionRolloutConfig.type = Types::OtaTaskExecutionRolloutConfig
    OtaTaskExecutionStatus.add_member(:queued, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "QUEUED", traits: {"smithy.api#enumValue" => "QUEUED"}))
    OtaTaskExecutionStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    OtaTaskExecutionStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    OtaTaskExecutionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    OtaTaskExecutionStatus.add_member(:timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TIMED_OUT", traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    OtaTaskExecutionStatus.add_member(:rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REJECTED", traits: {"smithy.api#enumValue" => "REJECTED"}))
    OtaTaskExecutionStatus.add_member(:removed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REMOVED", traits: {"smithy.api#enumValue" => "REMOVED"}))
    OtaTaskExecutionStatus.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    OtaTaskExecutionSummaries.add_member(:task_execution_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaTaskExecutionSummary, location_name: "TaskExecutionSummary"))
    OtaTaskExecutionSummaries.add_member(:managed_thing_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedThingId, location_name: "ManagedThingId"))
    OtaTaskExecutionSummaries.type = Types::OtaTaskExecutionSummaries
    OtaTaskExecutionSummariesListDefinition.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OtaTaskExecutionSummaries)
    OtaTaskExecutionSummary.add_member(:execution_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionNumber, location_name: "ExecutionNumber"))
    OtaTaskExecutionSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdatedAt, location_name: "LastUpdatedAt"))
    OtaTaskExecutionSummary.add_member(:queued_at, ::Smithy::Schema::Shapes::MemberShape.new(target: QueuedAt, location_name: "QueuedAt"))
    OtaTaskExecutionSummary.add_member(:retry_attempt, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryAttempt, location_name: "RetryAttempt"))
    OtaTaskExecutionSummary.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: StartedAt, location_name: "StartedAt"))
    OtaTaskExecutionSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaTaskExecutionStatus, location_name: "Status"))
    OtaTaskExecutionSummary.type = Types::OtaTaskExecutionSummary
    OtaTaskListDefinition.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OtaTaskSummary)
    OtaTaskSchedulingConfig.add_member(:end_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: SchedulingConfigEndBehavior, location_name: "EndBehavior"))
    OtaTaskSchedulingConfig.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: EndTime, location_name: "EndTime"))
    OtaTaskSchedulingConfig.add_member(:maintenance_windows, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleMaintenanceWindowList, location_name: "MaintenanceWindows"))
    OtaTaskSchedulingConfig.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleStartTime, location_name: "StartTime"))
    OtaTaskSchedulingConfig.type = Types::OtaTaskSchedulingConfig
    OtaTaskSummary.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaTaskId, location_name: "TaskId"))
    OtaTaskSummary.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaTaskArn, location_name: "TaskArn"))
    OtaTaskSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, location_name: "CreatedAt"))
    OtaTaskSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdatedAt, location_name: "LastUpdatedAt"))
    OtaTaskSummary.add_member(:task_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaTaskConfigurationId, location_name: "TaskConfigurationId"))
    OtaTaskSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaStatus, location_name: "Status"))
    OtaTaskSummary.type = Types::OtaTaskSummary
    OtaTaskTimeoutConfig.add_member(:in_progress_timeout_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: InProgressTimeoutInMinutes, location_name: "InProgressTimeoutInMinutes"))
    OtaTaskTimeoutConfig.type = Types::OtaTaskTimeoutConfig
    OtaType.add_member(:one_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ONE_TIME", traits: {"smithy.api#enumValue" => "ONE_TIME"}))
    OtaType.add_member(:continuous, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONTINUOUS", traits: {"smithy.api#enumValue" => "CONTINUOUS"}))
    ProactiveRefreshTokenRenewal.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "enabled"))
    ProactiveRefreshTokenRenewal.add_member(:days_before_renewal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "DaysBeforeRenewal", traits: {"smithy.api#range" => {"min" => 30}}))
    ProactiveRefreshTokenRenewal.type = Types::ProactiveRefreshTokenRenewal
    ProvisioningProfileListDefinition.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningProfileSummary)
    ProvisioningProfileSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningProfileName, location_name: "Name", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    ProvisioningProfileSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningProfileId, location_name: "Id", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    ProvisioningProfileSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningProfileArn, location_name: "Arn", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    ProvisioningProfileSummary.add_member(:provisioning_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningType, location_name: "ProvisioningType", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    ProvisioningProfileSummary.type = Types::ProvisioningProfileSummary
    ProvisioningStatus.add_member(:unassociated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNASSOCIATED", traits: {"smithy.api#enumValue" => "UNASSOCIATED"}))
    ProvisioningStatus.add_member(:pre_associated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRE_ASSOCIATED", traits: {"smithy.api#enumValue" => "PRE_ASSOCIATED"}))
    ProvisioningStatus.add_member(:discovered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISCOVERED", traits: {"smithy.api#enumValue" => "DISCOVERED"}))
    ProvisioningStatus.add_member(:activated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVATED", traits: {"smithy.api#enumValue" => "ACTIVATED"}))
    ProvisioningStatus.add_member(:deletion_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETION_FAILED", traits: {"smithy.api#enumValue" => "DELETION_FAILED"}))
    ProvisioningStatus.add_member(:delete_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    ProvisioningStatus.add_member(:isolated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ISOLATED", traits: {"smithy.api#enumValue" => "ISOLATED"}))
    ProvisioningStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    ProvisioningType.add_member(:fleet_provisioning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FLEET_PROVISIONING", traits: {"smithy.api#enumValue" => "FLEET_PROVISIONING"}))
    ProvisioningType.add_member(:jitr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JITR", traits: {"smithy.api#enumValue" => "JITR"}))
    PushConfig.add_member(:abort_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaTaskAbortConfig, location_name: "AbortConfig"))
    PushConfig.add_member(:rollout_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaTaskExecutionRolloutConfig, location_name: "RolloutConfig"))
    PushConfig.add_member(:timeout_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaTaskTimeoutConfig, location_name: "TimeoutConfig"))
    PushConfig.type = Types::PushConfig
    PutDefaultEncryptionConfigurationRequest.add_member(:encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionType, location_name: "encryptionType", traits: {"smithy.api#required" => {}}))
    PutDefaultEncryptionConfigurationRequest.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, location_name: "kmsKeyArn"))
    PutDefaultEncryptionConfigurationRequest.type = Types::PutDefaultEncryptionConfigurationRequest
    PutDefaultEncryptionConfigurationResponse.add_member(:configuration_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationStatus, location_name: "configurationStatus", traits: {"smithy.api#required" => {}}))
    PutDefaultEncryptionConfigurationResponse.add_member(:encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionType, location_name: "encryptionType", traits: {"smithy.api#required" => {}}))
    PutDefaultEncryptionConfigurationResponse.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, location_name: "kmsKeyArn"))
    PutDefaultEncryptionConfigurationResponse.type = Types::PutDefaultEncryptionConfigurationResponse
    PutHubConfigurationRequest.add_member(:hub_token_timer_expiry_setting_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: HubTokenTimerExpirySettingInSeconds, location_name: "HubTokenTimerExpirySettingInSeconds", traits: {"smithy.api#required" => {}}))
    PutHubConfigurationRequest.type = Types::PutHubConfigurationRequest
    PutHubConfigurationResponse.add_member(:hub_token_timer_expiry_setting_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: HubTokenTimerExpirySettingInSeconds, location_name: "HubTokenTimerExpirySettingInSeconds"))
    PutHubConfigurationResponse.type = Types::PutHubConfigurationResponse
    PutRuntimeLogConfigurationRequest.add_member(:managed_thing_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedThingId, location_name: "ManagedThingId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutRuntimeLogConfigurationRequest.add_member(:runtime_log_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeLogConfigurations, location_name: "RuntimeLogConfigurations", traits: {"smithy.api#required" => {}}))
    PutRuntimeLogConfigurationRequest.type = Types::PutRuntimeLogConfigurationRequest
    RegisterAccountAssociationRequest.add_member(:managed_thing_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedThingId, location_name: "ManagedThingId", traits: {"smithy.api#required" => {}}))
    RegisterAccountAssociationRequest.add_member(:account_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssociationId, location_name: "AccountAssociationId", traits: {"smithy.api#required" => {}}))
    RegisterAccountAssociationRequest.add_member(:device_discovery_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceDiscoveryId, location_name: "DeviceDiscoveryId", traits: {"smithy.api#required" => {}}))
    RegisterAccountAssociationRequest.type = Types::RegisterAccountAssociationRequest
    RegisterAccountAssociationResponse.add_member(:account_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssociationId, location_name: "AccountAssociationId"))
    RegisterAccountAssociationResponse.add_member(:device_discovery_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceDiscoveryId, location_name: "DeviceDiscoveryId"))
    RegisterAccountAssociationResponse.add_member(:managed_thing_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedThingId, location_name: "ManagedThingId"))
    RegisterAccountAssociationResponse.type = Types::RegisterAccountAssociationResponse
    RegisterCustomEndpointRequest.type = Types::RegisterCustomEndpointRequest
    RegisterCustomEndpointResponse.add_member(:endpoint_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointAddress, location_name: "EndpointAddress", traits: {"smithy.api#required" => {}}))
    RegisterCustomEndpointResponse.type = Types::RegisterCustomEndpointResponse
    ResetRuntimeLogConfigurationRequest.add_member(:managed_thing_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedThingId, location_name: "ManagedThingId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ResetRuntimeLogConfigurationRequest.type = Types::ResetRuntimeLogConfigurationRequest
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorResourceId, location_name: "ResourceId"))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorResourceType, location_name: "ResourceType"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RetryConfigCriteria.add_member(:failure_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryCriteriaFailureType, location_name: "FailureType"))
    RetryConfigCriteria.add_member(:min_number_of_retries, ::Smithy::Schema::Shapes::MemberShape.new(target: MinNumberOfRetries, location_name: "MinNumberOfRetries"))
    RetryConfigCriteria.type = Types::RetryConfigCriteria
    RetryConfigCriteriaList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RetryConfigCriteria)
    RetryCriteriaFailureType.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    RetryCriteriaFailureType.add_member(:timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TIMED_OUT", traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    RetryCriteriaFailureType.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    Role.add_member(:controller, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONTROLLER", traits: {"smithy.api#enumValue" => "CONTROLLER"}))
    Role.add_member(:device, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEVICE", traits: {"smithy.api#enumValue" => "DEVICE"}))
    RolloutRateIncreaseCriteria.add_member(:number_of_notified_things, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberOfNotifiedThings, location_name: "numberOfNotifiedThings"))
    RolloutRateIncreaseCriteria.add_member(:number_of_succeeded_things, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberOfSucceededThings, location_name: "numberOfSucceededThings"))
    RolloutRateIncreaseCriteria.type = Types::RolloutRateIncreaseCriteria
    RuntimeLogConfigurations.add_member(:log_level, ::Smithy::Schema::Shapes::MemberShape.new(target: LogLevel, location_name: "LogLevel"))
    RuntimeLogConfigurations.add_member(:log_flush_level, ::Smithy::Schema::Shapes::MemberShape.new(target: LogLevel, location_name: "LogFlushLevel"))
    RuntimeLogConfigurations.add_member(:local_store_location, ::Smithy::Schema::Shapes::MemberShape.new(target: LocalStoreLocation, location_name: "LocalStoreLocation"))
    RuntimeLogConfigurations.add_member(:local_store_file_rotation_max_files, ::Smithy::Schema::Shapes::MemberShape.new(target: LocalStoreFileRotationMaxFiles, location_name: "LocalStoreFileRotationMaxFiles"))
    RuntimeLogConfigurations.add_member(:local_store_file_rotation_max_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: LocalStoreFileRotationMaxBytes, location_name: "LocalStoreFileRotationMaxBytes"))
    RuntimeLogConfigurations.add_member(:upload_log, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadLog, location_name: "UploadLog"))
    RuntimeLogConfigurations.add_member(:upload_period_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadPeriodMinutes, location_name: "UploadPeriodMinutes"))
    RuntimeLogConfigurations.add_member(:delete_local_store_after_upload, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteLocalStoreAfterUpload, location_name: "DeleteLocalStoreAfterUpload"))
    RuntimeLogConfigurations.type = Types::RuntimeLogConfigurations
    ScheduleMaintenanceWindow.add_member(:duration_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInMinutes, location_name: "DurationInMinutes"))
    ScheduleMaintenanceWindow.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: StartTime, location_name: "StartTime"))
    ScheduleMaintenanceWindow.type = Types::ScheduleMaintenanceWindow
    ScheduleMaintenanceWindowList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleMaintenanceWindow)
    SchedulingConfigEndBehavior.add_member(:stop_rollout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOP_ROLLOUT", traits: {"smithy.api#enumValue" => "STOP_ROLLOUT"}))
    SchedulingConfigEndBehavior.add_member(:cancel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANCEL", traits: {"smithy.api#enumValue" => "CANCEL"}))
    SchedulingConfigEndBehavior.add_member(:force_cancel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FORCE_CANCEL", traits: {"smithy.api#enumValue" => "FORCE_CANCEL"}))
    SchemaVersionFormat.add_member(:aws, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS", traits: {"smithy.api#enumValue" => "AWS"}))
    SchemaVersionFormat.add_member(:zcl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ZCL", traits: {"smithy.api#enumValue" => "ZCL"}))
    SchemaVersionFormat.add_member(:connector, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONNECTOR", traits: {"smithy.api#enumValue" => "CONNECTOR"}))
    SchemaVersionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaVersionListItem)
    SchemaVersionListItem.add_member(:schema_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaId, location_name: "SchemaId"))
    SchemaVersionListItem.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaVersionType, location_name: "Type"))
    SchemaVersionListItem.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaVersionDescription, location_name: "Description"))
    SchemaVersionListItem.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaVersionNamespaceName, location_name: "Namespace"))
    SchemaVersionListItem.add_member(:semantic_version, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaVersionVersion, location_name: "SemanticVersion"))
    SchemaVersionListItem.add_member(:visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaVersionVisibility, location_name: "Visibility"))
    SchemaVersionListItem.type = Types::SchemaVersionListItem
    SchemaVersionType.add_member(:capability, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CAPABILITY", traits: {"smithy.api#enumValue" => "capability"}))
    SchemaVersionType.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEFINITION", traits: {"smithy.api#enumValue" => "definition"}))
    SchemaVersionVisibility.add_member(:public, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PUBLIC", traits: {"smithy.api#enumValue" => "PUBLIC"}))
    SchemaVersionVisibility.add_member(:private, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRIVATE", traits: {"smithy.api#enumValue" => "PRIVATE"}))
    SecretsManager.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretsManagerArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    SecretsManager.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretsManagerVersionId, location_name: "versionId", traits: {"smithy.api#required" => {}}))
    SecretsManager.type = Types::SecretsManager
    SendConnectorEventRequest.add_member(:connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorId, location_name: "ConnectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SendConnectorEventRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ThirdPartyUserId, location_name: "UserId"))
    SendConnectorEventRequest.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorEventOperation, location_name: "Operation", traits: {"smithy.api#required" => {}}))
    SendConnectorEventRequest.add_member(:operation_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorEventOperationVersion, location_name: "OperationVersion"))
    SendConnectorEventRequest.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorEventStatusCode, location_name: "StatusCode"))
    SendConnectorEventRequest.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorEventMessage, location_name: "Message"))
    SendConnectorEventRequest.add_member(:device_discovery_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceDiscoveryId, location_name: "DeviceDiscoveryId"))
    SendConnectorEventRequest.add_member(:connector_device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorDeviceId, location_name: "ConnectorDeviceId"))
    SendConnectorEventRequest.add_member(:trace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceId, location_name: "TraceId"))
    SendConnectorEventRequest.add_member(:devices, ::Smithy::Schema::Shapes::MemberShape.new(target: Devices, location_name: "Devices"))
    SendConnectorEventRequest.add_member(:matter_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: MatterEndpoint, location_name: "MatterEndpoint"))
    SendConnectorEventRequest.type = Types::SendConnectorEventRequest
    SendConnectorEventResponse.add_member(:connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorId, location_name: "ConnectorId", traits: {"smithy.api#required" => {}}))
    SendConnectorEventResponse.type = Types::SendConnectorEventResponse
    SendManagedThingCommandRequest.add_member(:managed_thing_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedThingId, location_name: "ManagedThingId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SendManagedThingCommandRequest.add_member(:endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandEndpoints, location_name: "Endpoints", traits: {"smithy.api#required" => {}}))
    SendManagedThingCommandRequest.add_member(:connector_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorAssociationId, location_name: "ConnectorAssociationId", traits: {"smithy.api#deprecated" => {"message" => "ConnectorAssociationId has been deprecated", "since" => "06-25-2025"}}))
    SendManagedThingCommandRequest.add_member(:account_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssociationId, location_name: "AccountAssociationId"))
    SendManagedThingCommandRequest.type = Types::SendManagedThingCommandRequest
    SendManagedThingCommandResponse.add_member(:trace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceId, location_name: "TraceId"))
    SendManagedThingCommandResponse.type = Types::SendManagedThingCommandResponse
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    StartAccountAssociationRefreshRequest.add_member(:account_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssociationId, location_name: "AccountAssociationId", traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartAccountAssociationRefreshRequest.type = Types::StartAccountAssociationRefreshRequest
    StartAccountAssociationRefreshResponse.add_member(:o_auth_authorization_url, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuthAuthorizationUrl, location_name: "OAuthAuthorizationUrl", traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#required" => {}}))
    StartAccountAssociationRefreshResponse.type = Types::StartAccountAssociationRefreshResponse
    StartDeviceDiscoveryRequest.add_member(:discovery_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscoveryType, location_name: "DiscoveryType", traits: {"smithy.api#required" => {}}))
    StartDeviceDiscoveryRequest.add_member(:custom_protocol_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomProtocolDetail, location_name: "CustomProtocolDetail"))
    StartDeviceDiscoveryRequest.add_member(:controller_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedThingId, location_name: "ControllerIdentifier"))
    StartDeviceDiscoveryRequest.add_member(:connector_association_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorAssociationId, location_name: "ConnectorAssociationIdentifier", traits: {"smithy.api#deprecated" => {"message" => "ConnectorAssociationIdentifier is deprecated", "since" => "06-25-2025"}}))
    StartDeviceDiscoveryRequest.add_member(:account_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssociationId, location_name: "AccountAssociationId"))
    StartDeviceDiscoveryRequest.add_member(:authentication_material, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscoveryAuthMaterialString, location_name: "AuthenticationMaterial"))
    StartDeviceDiscoveryRequest.add_member(:authentication_material_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscoveryAuthMaterialType, location_name: "AuthenticationMaterialType"))
    StartDeviceDiscoveryRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "ClientToken"))
    StartDeviceDiscoveryRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "Tags", traits: {"smithy.api#deprecated" => {"message" => "Tags have been deprecated from this api", "since" => "06-25-2025"}}))
    StartDeviceDiscoveryRequest.type = Types::StartDeviceDiscoveryRequest
    StartDeviceDiscoveryResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceDiscoveryId, location_name: "Id"))
    StartDeviceDiscoveryResponse.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscoveryStartedAt, location_name: "StartedAt"))
    StartDeviceDiscoveryResponse.type = Types::StartDeviceDiscoveryResponse
    StateCapabilities.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StateCapability)
    StateCapability.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaVersionedId, location_name: "id", traits: {"smithy.api#required" => {}}))
    StateCapability.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityName, location_name: "name", traits: {"smithy.api#required" => {}}))
    StateCapability.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityVersion, location_name: "version", traits: {"smithy.api#required" => {}}))
    StateCapability.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityProperties, location_name: "properties"))
    StateCapability.type = Types::StateCapability
    StateEndpoint.add_member(:endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointId, location_name: "endpointId", traits: {"smithy.api#required" => {}}))
    StateEndpoint.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: StateCapabilities, location_name: "capabilities", traits: {"smithy.api#required" => {}}))
    StateEndpoint.type = Types::StateEndpoint
    StateEndpoints.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StateEndpoint)
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IoTManagedIntegrationsResourceARN, location_name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TagsMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagsMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue)
    Target.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String)
    TaskProcessingDetails.add_member(:number_of_canceled_things, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "NumberOfCanceledThings"))
    TaskProcessingDetails.add_member(:number_of_failed_things, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "NumberOfFailedThings"))
    TaskProcessingDetails.add_member(:number_of_in_progress_things, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "NumberOfInProgressThings"))
    TaskProcessingDetails.add_member(:number_of_queued_things, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "numberOfQueuedThings"))
    TaskProcessingDetails.add_member(:number_of_rejected_things, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "numberOfRejectedThings"))
    TaskProcessingDetails.add_member(:number_of_removed_things, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "numberOfRemovedThings"))
    TaskProcessingDetails.add_member(:number_of_succeeded_things, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "numberOfSucceededThings"))
    TaskProcessingDetails.add_member(:number_of_timed_out_things, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "numberOfTimedOutThings"))
    TaskProcessingDetails.add_member(:processing_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: Target, location_name: "processingTargets"))
    TaskProcessingDetails.type = Types::TaskProcessingDetails
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    ThrottlingException.type = Types::ThrottlingException
    TokenEndpointAuthenticationScheme.add_member(:http_basic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HTTP_BASIC", traits: {"smithy.api#enumValue" => "HTTP_BASIC"}))
    TokenEndpointAuthenticationScheme.add_member(:request_body_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REQUEST_BODY_CREDENTIALS", traits: {"smithy.api#enumValue" => "REQUEST_BODY_CREDENTIALS"}))
    UnauthorizedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    UnauthorizedException.type = Types::UnauthorizedException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IoTManagedIntegrationsResourceARN, location_name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, location_name: "TagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAccountAssociationRequest.add_member(:account_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssociationId, location_name: "AccountAssociationId", traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAccountAssociationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssociationName, location_name: "Name", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    UpdateAccountAssociationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssociationDescription, location_name: "Description", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    UpdateAccountAssociationRequest.type = Types::UpdateAccountAssociationRequest
    UpdateCloudConnectorRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorId, location_name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCloudConnectorRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, location_name: "Name"))
    UpdateCloudConnectorRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorDescription, location_name: "Description"))
    UpdateCloudConnectorRequest.type = Types::UpdateCloudConnectorRequest
    UpdateConnectorDestinationRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorDestinationId, location_name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConnectorDestinationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorDestinationDescription, location_name: "Description"))
    UpdateConnectorDestinationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorDestinationName, location_name: "Name"))
    UpdateConnectorDestinationRequest.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthType, location_name: "AuthType"))
    UpdateConnectorDestinationRequest.add_member(:auth_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthConfigUpdate, location_name: "AuthConfig"))
    UpdateConnectorDestinationRequest.add_member(:secrets_manager, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretsManager, location_name: "SecretsManager"))
    UpdateConnectorDestinationRequest.type = Types::UpdateConnectorDestinationRequest
    UpdateDestinationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDestinationRequest.add_member(:delivery_destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryDestinationArn, location_name: "DeliveryDestinationArn"))
    UpdateDestinationRequest.add_member(:delivery_destination_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryDestinationType, location_name: "DeliveryDestinationType"))
    UpdateDestinationRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryDestinationRoleArn, location_name: "RoleArn"))
    UpdateDestinationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationDescription, location_name: "Description"))
    UpdateDestinationRequest.type = Types::UpdateDestinationRequest
    UpdateEventLogConfigurationRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfigurationId, location_name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEventLogConfigurationRequest.add_member(:event_log_level, ::Smithy::Schema::Shapes::MemberShape.new(target: LogLevel, location_name: "EventLogLevel", traits: {"smithy.api#required" => {}}))
    UpdateEventLogConfigurationRequest.type = Types::UpdateEventLogConfigurationRequest
    UpdateManagedThingRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedThingId, location_name: "Identifier", traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateManagedThingRequest.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Owner, location_name: "Owner", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    UpdateManagedThingRequest.add_member(:credential_locker_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialLockerId, location_name: "CredentialLockerId", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    UpdateManagedThingRequest.add_member(:serial_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SerialNumber, location_name: "SerialNumber", traits: {"aws.cloudformation#cfnMutability" => "create-and-read"}))
    UpdateManagedThingRequest.add_member(:brand, ::Smithy::Schema::Shapes::MemberShape.new(target: Brand, location_name: "Brand", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    UpdateManagedThingRequest.add_member(:model, ::Smithy::Schema::Shapes::MemberShape.new(target: Model, location_name: "Model", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    UpdateManagedThingRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "Name", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    UpdateManagedThingRequest.add_member(:capability_report, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityReport, location_name: "CapabilityReport", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    UpdateManagedThingRequest.add_member(:capability_schemas, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilitySchemas, location_name: "CapabilitySchemas", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    UpdateManagedThingRequest.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: Capabilities, location_name: "Capabilities", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    UpdateManagedThingRequest.add_member(:classification, ::Smithy::Schema::Shapes::MemberShape.new(target: Classification, location_name: "Classification", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    UpdateManagedThingRequest.add_member(:hub_network_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: HubNetworkMode, location_name: "HubNetworkMode", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    UpdateManagedThingRequest.add_member(:meta_data, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaData, location_name: "MetaData", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    UpdateManagedThingRequest.type = Types::UpdateManagedThingRequest
    UpdateNotificationConfigurationRequest.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EventType, location_name: "EventType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateNotificationConfigurationRequest.add_member(:destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationName, location_name: "DestinationName", traits: {"smithy.api#required" => {}}))
    UpdateNotificationConfigurationRequest.type = Types::UpdateNotificationConfigurationRequest
    UpdateOtaTaskRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaTaskId, location_name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateOtaTaskRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaDescription, location_name: "Description"))
    UpdateOtaTaskRequest.add_member(:task_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaTaskConfigurationId, location_name: "TaskConfigurationId"))
    UpdateOtaTaskRequest.type = Types::UpdateOtaTaskRequest
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    ValidationException.type = Types::ValidationException

    IotManagedIntegrations = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.iotmanagedintegrations#IotManagedIntegrations"
      service.name = "IotManagedIntegrations"
      service.version = "2025-03-03"
      service.traits = {"aws.api#service" => {"sdkId" => "IoT Managed Integrations", "arnNamespace" => "iotmanagedintegrations", "endpointPrefix" => "api.iotmanagedintegrations"}, "aws.auth#sigv4" => {"name" => "iotmanagedintegrations"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardRegionalEndpoints" => {}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Managed integrations for AWS IoT Device Management"}
      service.add_operation(:create_account_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#CreateAccountAssociation"
        operation.name = "CreateAccountAssociation"
        operation.input = CreateAccountAssociationRequest
        operation.output = CreateAccountAssociationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/account-associations", "code" => 201}}
      end)
      service.add_operation(:create_cloud_connector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#CreateCloudConnector"
        operation.name = "CreateCloudConnector"
        operation.input = CreateCloudConnectorRequest
        operation.output = CreateCloudConnectorResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/cloud-connectors", "code" => 201}}
      end)
      service.add_operation(:create_connector_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#CreateConnectorDestination"
        operation.name = "CreateConnectorDestination"
        operation.input = CreateConnectorDestinationRequest
        operation.output = CreateConnectorDestinationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/connector-destinations", "code" => 201}}
      end)
      service.add_operation(:create_credential_locker, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#CreateCredentialLocker"
        operation.name = "CreateCredentialLocker"
        operation.input = CreateCredentialLockerRequest
        operation.output = CreateCredentialLockerResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/credential-lockers", "code" => 201}}
      end)
      service.add_operation(:create_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#CreateDestination"
        operation.name = "CreateDestination"
        operation.input = CreateDestinationRequest
        operation.output = CreateDestinationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/destinations", "code" => 201}}
      end)
      service.add_operation(:create_event_log_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#CreateEventLogConfiguration"
        operation.name = "CreateEventLogConfiguration"
        operation.input = CreateEventLogConfigurationRequest
        operation.output = CreateEventLogConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/event-log-configurations", "code" => 201}}
      end)
      service.add_operation(:create_managed_thing, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#CreateManagedThing"
        operation.name = "CreateManagedThing"
        operation.input = CreateManagedThingRequest
        operation.output = CreateManagedThingResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/managed-things", "code" => 201}}
      end)
      service.add_operation(:create_notification_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#CreateNotificationConfiguration"
        operation.name = "CreateNotificationConfiguration"
        operation.input = CreateNotificationConfigurationRequest
        operation.output = CreateNotificationConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/notification-configurations", "code" => 201}}
      end)
      service.add_operation(:create_ota_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#CreateOtaTask"
        operation.name = "CreateOtaTask"
        operation.input = CreateOtaTaskRequest
        operation.output = CreateOtaTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ota-tasks", "code" => 201}}
      end)
      service.add_operation(:create_ota_task_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#CreateOtaTaskConfiguration"
        operation.name = "CreateOtaTaskConfiguration"
        operation.input = CreateOtaTaskConfigurationRequest
        operation.output = CreateOtaTaskConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ota-task-configurations", "code" => 201}}
      end)
      service.add_operation(:create_provisioning_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#CreateProvisioningProfile"
        operation.name = "CreateProvisioningProfile"
        operation.input = CreateProvisioningProfileRequest
        operation.output = CreateProvisioningProfileResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/provisioning-profiles", "code" => 201}}
      end)
      service.add_operation(:delete_account_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#DeleteAccountAssociation"
        operation.name = "DeleteAccountAssociation"
        operation.input = DeleteAccountAssociationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/account-associations/{AccountAssociationId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_cloud_connector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#DeleteCloudConnector"
        operation.name = "DeleteCloudConnector"
        operation.input = DeleteCloudConnectorRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/cloud-connectors/{Identifier}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_connector_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#DeleteConnectorDestination"
        operation.name = "DeleteConnectorDestination"
        operation.input = DeleteConnectorDestinationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/connector-destinations/{Identifier}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_credential_locker, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#DeleteCredentialLocker"
        operation.name = "DeleteCredentialLocker"
        operation.input = DeleteCredentialLockerRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/credential-lockers/{Identifier}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#DeleteDestination"
        operation.name = "DeleteDestination"
        operation.input = DeleteDestinationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/destinations/{Name}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_event_log_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#DeleteEventLogConfiguration"
        operation.name = "DeleteEventLogConfiguration"
        operation.input = DeleteEventLogConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/event-log-configurations/{Id}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_managed_thing, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#DeleteManagedThing"
        operation.name = "DeleteManagedThing"
        operation.input = DeleteManagedThingRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/managed-things/{Identifier}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_notification_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#DeleteNotificationConfiguration"
        operation.name = "DeleteNotificationConfiguration"
        operation.input = DeleteNotificationConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/notification-configurations/{EventType}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_ota_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#DeleteOtaTask"
        operation.name = "DeleteOtaTask"
        operation.input = DeleteOtaTaskRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/ota-tasks/{Identifier}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_ota_task_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#DeleteOtaTaskConfiguration"
        operation.name = "DeleteOtaTaskConfiguration"
        operation.input = DeleteOtaTaskConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/ota-task-configurations/{Identifier}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_provisioning_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#DeleteProvisioningProfile"
        operation.name = "DeleteProvisioningProfile"
        operation.input = DeleteProvisioningProfileRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/provisioning-profiles/{Identifier}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:deregister_account_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#DeregisterAccountAssociation"
        operation.name = "DeregisterAccountAssociation"
        operation.input = DeregisterAccountAssociationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/managed-thing-associations/deregister", "code" => 200}, "smithy.api#idempotent" => {}, "smithy.test#smokeTests" => [{"id" => "DeregisterAccountAssociationSuccess", "params" => {"ManagedThingId" => "mt-12345abcdef", "AccountAssociationId" => "aa167890wxyz"}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}, {"id" => "DeregisterAccountAssociationInvalidAssociationId", "params" => {"ManagedThingId" => "mt-12345abcdef", "AccountAssociationId" => "nonExistentId"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.iotmanagedintegrations#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_account_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#GetAccountAssociation"
        operation.name = "GetAccountAssociation"
        operation.input = GetAccountAssociationRequest
        operation.output = GetAccountAssociationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/account-associations/{AccountAssociationId}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetAccountAssociationNotFound", "params" => {"AccountAssociationId" => "abc123def456"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.iotmanagedintegrations#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_cloud_connector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#GetCloudConnector"
        operation.name = "GetCloudConnector"
        operation.input = GetCloudConnectorRequest
        operation.output = GetCloudConnectorResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/cloud-connectors/{Identifier}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetCloudConnectorNotFound", "params" => {"Identifier" => "123456789012"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.iotmanagedintegrations#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_connector_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#GetConnectorDestination"
        operation.name = "GetConnectorDestination"
        operation.input = GetConnectorDestinationRequest
        operation.output = GetConnectorDestinationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/connector-destinations/{Identifier}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetConnectorDestinationNotFound", "params" => {"Identifier" => "nonExistentDestination"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.iotmanagedintegrations#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_credential_locker, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#GetCredentialLocker"
        operation.name = "GetCredentialLocker"
        operation.input = GetCredentialLockerRequest
        operation.output = GetCredentialLockerResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/credential-lockers/{Identifier}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetCredentialLockerNotFound", "params" => {"Identifier" => "nonExistentId"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.iotmanagedintegrations#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_custom_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#GetCustomEndpoint"
        operation.name = "GetCustomEndpoint"
        operation.input = GetCustomEndpointRequest
        operation.output = GetCustomEndpointResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/custom-endpoint", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetCustomEndpointSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_default_encryption_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#GetDefaultEncryptionConfiguration"
        operation.name = "GetDefaultEncryptionConfiguration"
        operation.input = GetDefaultEncryptionConfigurationRequest
        operation.output = GetDefaultEncryptionConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalFailureException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/configuration/account/encryption", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetDefaultEncryptionConfigurationSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}, {"id" => "GetDefaultEncryptionConfigurationNotFound", "params" => {}, "expect" => {"failure" => {"errorId" => "com.amazonaws.iotmanagedintegrations#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#GetDestination"
        operation.name = "GetDestination"
        operation.input = GetDestinationRequest
        operation.output = GetDestinationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/destinations/{Name}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetDestinationNotFound", "params" => {"Name" => "nonExistentDestination"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.iotmanagedintegrations#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_device_discovery, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#GetDeviceDiscovery"
        operation.name = "GetDeviceDiscovery"
        operation.input = GetDeviceDiscoveryRequest
        operation.output = GetDeviceDiscoveryResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/device-discoveries/{Identifier}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetDeviceDiscoveryNotFound", "params" => {"Identifier" => "nonExistentId"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.iotmanagedintegrations#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_event_log_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#GetEventLogConfiguration"
        operation.name = "GetEventLogConfiguration"
        operation.input = GetEventLogConfigurationRequest
        operation.output = GetEventLogConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/event-log-configurations/{Id}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetEventLogConfigurationNotFound", "params" => {"Id" => "nonExistentId"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.iotmanagedintegrations#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_hub_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#GetHubConfiguration"
        operation.name = "GetHubConfiguration"
        operation.input = GetHubConfigurationRequest
        operation.output = GetHubConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/hub-configuration", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetHubConfigurationSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_managed_thing, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#GetManagedThing"
        operation.name = "GetManagedThing"
        operation.input = GetManagedThingRequest
        operation.output = GetManagedThingResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/managed-things/{Identifier}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetManagedThingNotFound", "params" => {"Identifier" => "nonExistentId"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.iotmanagedintegrations#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_managed_thing_capabilities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#GetManagedThingCapabilities"
        operation.name = "GetManagedThingCapabilities"
        operation.input = GetManagedThingCapabilitiesRequest
        operation.output = GetManagedThingCapabilitiesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/managed-things-capabilities/{Identifier}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetManagedThingCapabilitiesNotFound", "params" => {"Identifier" => "nonExistentId"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.iotmanagedintegrations#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_managed_thing_connectivity_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#GetManagedThingConnectivityData"
        operation.name = "GetManagedThingConnectivityData"
        operation.input = GetManagedThingConnectivityDataRequest
        operation.output = GetManagedThingConnectivityDataResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/managed-things-connectivity-data/{Identifier}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetManagedThingConnectivityDataNotFound", "params" => {"Identifier" => "nonExistentId"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.iotmanagedintegrations#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_managed_thing_meta_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#GetManagedThingMetaData"
        operation.name = "GetManagedThingMetaData"
        operation.input = GetManagedThingMetaDataRequest
        operation.output = GetManagedThingMetaDataResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/managed-things-metadata/{Identifier}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetManagedThingMetaDataNotFound", "params" => {"Identifier" => "nonExistentId"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.iotmanagedintegrations#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_managed_thing_state, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#GetManagedThingState"
        operation.name = "GetManagedThingState"
        operation.input = GetManagedThingStateRequest
        operation.output = GetManagedThingStateResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalFailureException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/managed-thing-states/{ManagedThingId}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetManagedThingStateNotFound", "params" => {"ManagedThingId" => "nonExistentId"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.iotmanagedintegrations#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_notification_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#GetNotificationConfiguration"
        operation.name = "GetNotificationConfiguration"
        operation.input = GetNotificationConfigurationRequest
        operation.output = GetNotificationConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/notification-configurations/{EventType}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetNotificationConfigurationNotFound", "params" => {"EventType" => "DEVICE_EVENT"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.iotmanagedintegrations#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_ota_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#GetOtaTask"
        operation.name = "GetOtaTask"
        operation.input = GetOtaTaskRequest
        operation.output = GetOtaTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ota-tasks/{Identifier}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetOtaTaskNotFound", "params" => {"Identifier" => "nonExistentTaskId"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.iotmanagedintegrations#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_ota_task_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#GetOtaTaskConfiguration"
        operation.name = "GetOtaTaskConfiguration"
        operation.input = GetOtaTaskConfigurationRequest
        operation.output = GetOtaTaskConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ota-task-configurations/{Identifier}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetOtaTaskConfigurationNotFound", "params" => {"Identifier" => "nonExistentConfigId"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.iotmanagedintegrations#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_provisioning_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#GetProvisioningProfile"
        operation.name = "GetProvisioningProfile"
        operation.input = GetProvisioningProfileRequest
        operation.output = GetProvisioningProfileResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/provisioning-profiles/{Identifier}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetProvisioningProfileNotFound", "params" => {"Identifier" => "nonExistentProfileId"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.iotmanagedintegrations#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_runtime_log_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#GetRuntimeLogConfiguration"
        operation.name = "GetRuntimeLogConfiguration"
        operation.input = GetRuntimeLogConfigurationRequest
        operation.output = GetRuntimeLogConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/runtime-log-configurations/{ManagedThingId}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetRuntimeLogConfigurationNotFound", "params" => {"ManagedThingId" => "nonExistentId"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.iotmanagedintegrations#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_schema_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#GetSchemaVersion"
        operation.name = "GetSchemaVersion"
        operation.input = GetSchemaVersionRequest
        operation.output = GetSchemaVersionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/schema-versions/{Type}/{SchemaVersionedId}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetSchemaVersionNotFound", "params" => {"Type" => "capability", "SchemaVersionedId" => "non.existent.schema@1.0"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.iotmanagedintegrations#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:list_account_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#ListAccountAssociations"
        operation.name = "ListAccountAssociations"
        operation.input = ListAccountAssociationsRequest
        operation.output = ListAccountAssociationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/account-associations", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListAccountAssociationsSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}, {"id" => "ListAccountAssociationsWithPagination", "params" => {"MaxResults" => 5}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListAccountAssociations.new
      end)
      service.add_operation(:list_cloud_connectors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#ListCloudConnectors"
        operation.name = "ListCloudConnectors"
        operation.input = ListCloudConnectorsRequest
        operation.output = ListCloudConnectorsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/cloud-connectors", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListCloudConnectorsSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}, {"id" => "ListCloudConnectorsWithPagination", "params" => {"MaxResults" => 5}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListCloudConnectors.new
      end)
      service.add_operation(:list_connector_destinations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#ListConnectorDestinations"
        operation.name = "ListConnectorDestinations"
        operation.input = ListConnectorDestinationsRequest
        operation.output = ListConnectorDestinationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/connector-destinations", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListConnectorDestinationsSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}, {"id" => "ListConnectorDestinationsWithPagination", "params" => {"MaxResults" => 5}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListConnectorDestinations.new
      end)
      service.add_operation(:list_credential_lockers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#ListCredentialLockers"
        operation.name = "ListCredentialLockers"
        operation.input = ListCredentialLockersRequest
        operation.output = ListCredentialLockersResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/credential-lockers", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListCredentialLockersSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}, {"id" => "ListCredentialLockersWithPagination", "params" => {"MaxResults" => 5}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListCredentialLockers.new
      end)
      service.add_operation(:list_destinations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#ListDestinations"
        operation.name = "ListDestinations"
        operation.input = ListDestinationsRequest
        operation.output = ListDestinationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/destinations", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListDestinationsSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}, {"id" => "ListDestinationsWithPagination", "params" => {"MaxResults" => 5}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListDestinations.new
      end)
      service.add_operation(:list_device_discoveries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#ListDeviceDiscoveries"
        operation.name = "ListDeviceDiscoveries"
        operation.input = ListDeviceDiscoveriesRequest
        operation.output = ListDeviceDiscoveriesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/device-discoveries", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDeviceDiscoveries.new
      end)
      service.add_operation(:list_discovered_devices, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#ListDiscoveredDevices"
        operation.name = "ListDiscoveredDevices"
        operation.input = ListDiscoveredDevicesRequest
        operation.output = ListDiscoveredDevicesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/device-discoveries/{Identifier}/devices", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListDiscoveredDevicesNotFound", "params" => {"Identifier" => "nonExistentId"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.iotmanagedintegrations#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}, {"id" => "ListDiscoveredDevicesWithPagination", "params" => {"Identifier" => "testDiscoveryId", "MaxResults" => 5}, "expect" => {"failure" => {"errorId" => "com.amazonaws.iotmanagedintegrations#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListDiscoveredDevices.new
      end)
      service.add_operation(:list_event_log_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#ListEventLogConfigurations"
        operation.name = "ListEventLogConfigurations"
        operation.input = ListEventLogConfigurationsRequest
        operation.output = ListEventLogConfigurationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/event-log-configurations", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListEventLogConfigurationsSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}, {"id" => "ListEventLogConfigurationsWithPagination", "params" => {"MaxResults" => 5}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListEventLogConfigurations.new
      end)
      service.add_operation(:list_managed_thing_account_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#ListManagedThingAccountAssociations"
        operation.name = "ListManagedThingAccountAssociations"
        operation.input = ListManagedThingAccountAssociationsRequest
        operation.output = ListManagedThingAccountAssociationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/managed-thing-associations", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListManagedThingAccountAssociationsSuccess", "params" => {"ManagedThingId" => "sample-thing-id"}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}, {"id" => "ListManagedAccountAssociationsWithPagination", "params" => {"ManagedThingId" => "sample-thing-id", "MaxResults" => 5}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListManagedThingAccountAssociations.new
      end)
      service.add_operation(:list_managed_thing_schemas, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#ListManagedThingSchemas"
        operation.name = "ListManagedThingSchemas"
        operation.input = ListManagedThingSchemasRequest
        operation.output = ListManagedThingSchemasResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/managed-thing-schemas/{Identifier}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListManagedThingSchemasNotFound", "params" => {"Identifier" => "nonExistentId"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.iotmanagedintegrations#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}, {"id" => "ListManagedThingSchemasWithPagination", "params" => {"Identifier" => "testId", "MaxResults" => 5}, "expect" => {"failure" => {"errorId" => "com.amazonaws.iotmanagedintegrations#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListManagedThingSchemas.new
      end)
      service.add_operation(:list_managed_things, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#ListManagedThings"
        operation.name = "ListManagedThings"
        operation.input = ListManagedThingsRequest
        operation.output = ListManagedThingsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/managed-things", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListManagedThingsSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}, {"id" => "ListManagedThingsWithPagination", "params" => {"MaxResults" => 5}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListManagedThings.new
      end)
      service.add_operation(:list_notification_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#ListNotificationConfigurations"
        operation.name = "ListNotificationConfigurations"
        operation.input = ListNotificationConfigurationsRequest
        operation.output = ListNotificationConfigurationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/notification-configurations", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListNotificationConfigurationsSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}, {"id" => "ListNotificationConfigurationsWithPagination", "params" => {"MaxResults" => 5}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListNotificationConfigurations.new
      end)
      service.add_operation(:list_ota_task_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#ListOtaTaskConfigurations"
        operation.name = "ListOtaTaskConfigurations"
        operation.input = ListOtaTaskConfigurationsRequest
        operation.output = ListOtaTaskConfigurationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ota-task-configurations", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListOtaTaskConfigurationsSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}, {"id" => "ListOtaTaskConfigurationsWithPagination", "params" => {"MaxResults" => 5}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListOtaTaskConfigurations.new
      end)
      service.add_operation(:list_ota_task_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#ListOtaTaskExecutions"
        operation.name = "ListOtaTaskExecutions"
        operation.input = ListOtaTaskExecutionsRequest
        operation.output = ListOtaTaskExecutionsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ota-tasks/{Identifier}/devices", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListOtaTaskExecutionsNotFound", "params" => {"Identifier" => "nonExistentTaskId"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.iotmanagedintegrations#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListOtaTaskExecutions.new
      end)
      service.add_operation(:list_ota_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#ListOtaTasks"
        operation.name = "ListOtaTasks"
        operation.input = ListOtaTasksRequest
        operation.output = ListOtaTasksResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ota-tasks", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListOtaTasksSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}, {"id" => "ListOtaTasksWithPagination", "params" => {"MaxResults" => 5}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListOtaTasks.new
      end)
      service.add_operation(:list_provisioning_profiles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#ListProvisioningProfiles"
        operation.name = "ListProvisioningProfiles"
        operation.input = ListProvisioningProfilesRequest
        operation.output = ListProvisioningProfilesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/provisioning-profiles", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListProvisioningProfilesSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}, {"id" => "ListProvisioningProfilesWithPagination", "params" => {"MaxResults" => 5}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListProvisioningProfiles.new
      end)
      service.add_operation(:list_schema_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#ListSchemaVersions"
        operation.name = "ListSchemaVersions"
        operation.input = ListSchemaVersionsRequest
        operation.output = ListSchemaVersionsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/schema-versions/{Type}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListSchemaVersionsSuccess", "params" => {"Type" => "capability"}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListSchemaVersions.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{ResourceArn}", "method" => "GET"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListTagsForResourceNotFound", "params" => {"ResourceArn" => "arn:aws:iotmanagedintegrations:us-east-1:123456789012:managed-thing/nonexistent"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.iotmanagedintegrations#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}, {"id" => "ListTagsForResourceSuccess", "params" => {"ResourceArn" => "arn:aws:iotmanagedintegrations:us-east-1:123456789012:managed-thing/test123"}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:put_default_encryption_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#PutDefaultEncryptionConfiguration"
        operation.name = "PutDefaultEncryptionConfiguration"
        operation.input = PutDefaultEncryptionConfigurationRequest
        operation.output = PutDefaultEncryptionConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalFailureException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/configuration/account/encryption", "code" => 201}}
      end)
      service.add_operation(:put_hub_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#PutHubConfiguration"
        operation.name = "PutHubConfiguration"
        operation.input = PutHubConfigurationRequest
        operation.output = PutHubConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/hub-configuration", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_runtime_log_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#PutRuntimeLogConfiguration"
        operation.name = "PutRuntimeLogConfiguration"
        operation.input = PutRuntimeLogConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/runtime-log-configurations/{ManagedThingId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:register_account_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#RegisterAccountAssociation"
        operation.name = "RegisterAccountAssociation"
        operation.input = RegisterAccountAssociationRequest
        operation.output = RegisterAccountAssociationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/managed-thing-associations/register", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:register_custom_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#RegisterCustomEndpoint"
        operation.name = "RegisterCustomEndpoint"
        operation.input = RegisterCustomEndpointRequest
        operation.output = RegisterCustomEndpointResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/custom-endpoint", "code" => 201}}
      end)
      service.add_operation(:reset_runtime_log_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#ResetRuntimeLogConfiguration"
        operation.name = "ResetRuntimeLogConfiguration"
        operation.input = ResetRuntimeLogConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/runtime-log-configurations/{ManagedThingId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:send_connector_event, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#SendConnectorEvent"
        operation.name = "SendConnectorEvent"
        operation.input = SendConnectorEventRequest
        operation.output = SendConnectorEventResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/connector-event/{ConnectorId}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:send_managed_thing_command, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#SendManagedThingCommand"
        operation.name = "SendManagedThingCommand"
        operation.input = SendManagedThingCommandRequest
        operation.output = SendManagedThingCommandResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/managed-things-command/{ManagedThingId}", "code" => 202}}
      end)
      service.add_operation(:start_account_association_refresh, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#StartAccountAssociationRefresh"
        operation.name = "StartAccountAssociationRefresh"
        operation.input = StartAccountAssociationRefreshRequest
        operation.output = StartAccountAssociationRefreshResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/account-associations/{AccountAssociationId}/refresh", "code" => 200}}
      end)
      service.add_operation(:start_device_discovery, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#StartDeviceDiscovery"
        operation.name = "StartDeviceDiscovery"
        operation.input = StartDeviceDiscoveryRequest
        operation.output = StartDeviceDiscoveryResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/device-discoveries", "code" => 201}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << ConflictException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{ResourceArn}", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << ConflictException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{ResourceArn}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_account_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#UpdateAccountAssociation"
        operation.name = "UpdateAccountAssociation"
        operation.input = UpdateAccountAssociationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/account-associations/{AccountAssociationId}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_cloud_connector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#UpdateCloudConnector"
        operation.name = "UpdateCloudConnector"
        operation.input = UpdateCloudConnectorRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/cloud-connectors/{Identifier}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_connector_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#UpdateConnectorDestination"
        operation.name = "UpdateConnectorDestination"
        operation.input = UpdateConnectorDestinationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/connector-destinations/{Identifier}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#UpdateDestination"
        operation.name = "UpdateDestination"
        operation.input = UpdateDestinationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/destinations/{Name}", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_event_log_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#UpdateEventLogConfiguration"
        operation.name = "UpdateEventLogConfiguration"
        operation.input = UpdateEventLogConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/event-log-configurations/{Id}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_managed_thing, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#UpdateManagedThing"
        operation.name = "UpdateManagedThing"
        operation.input = UpdateManagedThingRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/managed-things/{Identifier}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_notification_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#UpdateNotificationConfiguration"
        operation.name = "UpdateNotificationConfiguration"
        operation.input = UpdateNotificationConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/notification-configurations/{EventType}", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_ota_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotmanagedintegrations#UpdateOtaTask"
        operation.name = "UpdateOtaTask"
        operation.input = UpdateOtaTaskRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/ota-tasks/{Identifier}", "code" => 204}, "smithy.api#idempotent" => {}}
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
