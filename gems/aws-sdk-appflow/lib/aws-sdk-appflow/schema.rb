# frozen_string_literal: true

# This is generated code!

module Aws::Appflow
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#ARN", name: "ARN", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^arn:aws:.*:.*:[0-9]+:"})
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#AccessKeyId", name: "AccessKeyId", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^\\S+$", "smithy.api#sensitive" => {}})
    AccessToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#AccessToken", name: "AccessToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#pattern" => "^\\S+$", "smithy.api#sensitive" => {}})
    AccountName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#AccountName", name: "AccountName", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^\\S+$"})
    AggregationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#AggregationConfig", name: "AggregationConfig")
    AggregationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#AggregationType", name: "AggregationType")
    AmplitudeConnectorOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#AmplitudeConnectorOperator", name: "AmplitudeConnectorOperator")
    AmplitudeConnectorProfileCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#AmplitudeConnectorProfileCredentials", name: "AmplitudeConnectorProfileCredentials")
    AmplitudeConnectorProfileProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#AmplitudeConnectorProfileProperties", name: "AmplitudeConnectorProfileProperties")
    AmplitudeMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#AmplitudeMetadata", name: "AmplitudeMetadata")
    AmplitudeSourceProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#AmplitudeSourceProperties", name: "AmplitudeSourceProperties")
    ApiKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#ApiKey", name: "ApiKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^\\S+$", "smithy.api#sensitive" => {}})
    ApiKeyCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ApiKeyCredentials", name: "ApiKeyCredentials")
    ApiSecretKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#ApiSecretKey", name: "ApiSecretKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^\\S+$", "smithy.api#sensitive" => {}})
    ApiToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#ApiToken", name: "ApiToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^\\S+$"})
    ApiVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#ApiVersion", name: "ApiVersion", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^\\S+$"})
    ApplicationHostUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#ApplicationHostUrl", name: "ApplicationHostUrl", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^(https?)://[-a-zA-Z0-9+&@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&@#/%=~_|]$"})
    ApplicationKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#ApplicationKey", name: "ApplicationKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^\\S+$"})
    ApplicationServicePath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#ApplicationServicePath", name: "ApplicationServicePath", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^\\S+$"})
    ApplicationType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#ApplicationType", name: "ApplicationType", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^\\S+$"})
    AuthCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#AuthCode", name: "AuthCode", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#pattern" => "^\\S+$"})
    AuthCodeUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#AuthCodeUrl", name: "AuthCodeUrl", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^(https?)://[-a-zA-Z0-9+&@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&@#/%=~_|]$"})
    AuthCodeUrlList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appflow#AuthCodeUrlList", name: "AuthCodeUrlList")
    AuthParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#AuthParameter", name: "AuthParameter")
    AuthParameterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appflow#AuthParameterList", name: "AuthParameterList")
    AuthenticationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#AuthenticationConfig", name: "AuthenticationConfig")
    AuthenticationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#AuthenticationType", name: "AuthenticationType")
    BasicAuthCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#BasicAuthCredentials", name: "BasicAuthCredentials")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.appflow#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#BucketName", name: "BucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^\\S+$"})
    BucketPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#BucketPrefix", name: "BucketPrefix", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => ".*"})
    BusinessUnitId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#BusinessUnitId", name: "BusinessUnitId", traits: {"smithy.api#length" => {"min" => 0, "max" => 18}, "smithy.api#pattern" => "^\\S+$"})
    CancelFlowExecutionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#CancelFlowExecutionsRequest", name: "CancelFlowExecutionsRequest")
    CancelFlowExecutionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#CancelFlowExecutionsResponse", name: "CancelFlowExecutionsResponse")
    CatalogType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#CatalogType", name: "CatalogType")
    ClientCredentialsArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#ClientCredentialsArn", name: "ClientCredentialsArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:secretsmanager:.*:[0-9]+:", "smithy.api#sensitive" => {}})
    ClientId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#ClientId", name: "ClientId", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^\\S+$"})
    ClientNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#ClientNumber", name: "ClientNumber", traits: {"smithy.api#length" => {"min" => 3, "max" => 3}, "smithy.api#pattern" => "^\\d{3}$"})
    ClientSecret = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#ClientSecret", name: "ClientSecret", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^\\S+$", "smithy.api#sensitive" => {}})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[ -~]+$"})
    ClusterIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#ClusterIdentifier", name: "ClusterIdentifier", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^\\S+$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectionMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#ConnectionMode", name: "ConnectionMode")
    ConnectorAuthenticationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ConnectorAuthenticationException", name: "ConnectorAuthenticationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    ConnectorConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ConnectorConfiguration", name: "ConnectorConfiguration")
    ConnectorConfigurationsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.appflow#ConnectorConfigurationsMap", name: "ConnectorConfigurationsMap")
    ConnectorDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#ConnectorDescription", name: "ConnectorDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^[\\w!@#\\-.?,\\s]*$"})
    ConnectorDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ConnectorDetail", name: "ConnectorDetail")
    ConnectorEntity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ConnectorEntity", name: "ConnectorEntity")
    ConnectorEntityField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ConnectorEntityField", name: "ConnectorEntityField")
    ConnectorEntityFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appflow#ConnectorEntityFieldList", name: "ConnectorEntityFieldList")
    ConnectorEntityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appflow#ConnectorEntityList", name: "ConnectorEntityList")
    ConnectorEntityMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.appflow#ConnectorEntityMap", name: "ConnectorEntityMap")
    ConnectorLabel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#ConnectorLabel", name: "ConnectorLabel", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9][\\w!@#.-]+$"})
    ConnectorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appflow#ConnectorList", name: "ConnectorList")
    ConnectorMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ConnectorMetadata", name: "ConnectorMetadata")
    ConnectorMode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#ConnectorMode", name: "ConnectorMode", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^\\S+$"})
    ConnectorModeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appflow#ConnectorModeList", name: "ConnectorModeList")
    ConnectorName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#ConnectorName", name: "ConnectorName", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => ".*"})
    ConnectorOAuthRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ConnectorOAuthRequest", name: "ConnectorOAuthRequest")
    ConnectorOperator = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ConnectorOperator", name: "ConnectorOperator")
    ConnectorOwner = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#ConnectorOwner", name: "ConnectorOwner", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => ".*"})
    ConnectorProfile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ConnectorProfile", name: "ConnectorProfile")
    ConnectorProfileArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#ConnectorProfileArn", name: "ConnectorProfileArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^arn:aws:appflow:.*:[0-9]+:"})
    ConnectorProfileConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ConnectorProfileConfig", name: "ConnectorProfileConfig")
    ConnectorProfileCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ConnectorProfileCredentials", name: "ConnectorProfileCredentials")
    ConnectorProfileDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appflow#ConnectorProfileDetailList", name: "ConnectorProfileDetailList")
    ConnectorProfileName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#ConnectorProfileName", name: "ConnectorProfileName", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\w/!@#+=.-]+$"})
    ConnectorProfileNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appflow#ConnectorProfileNameList", name: "ConnectorProfileNameList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ConnectorProfileProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ConnectorProfileProperties", name: "ConnectorProfileProperties")
    ConnectorProvisioningConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ConnectorProvisioningConfig", name: "ConnectorProvisioningConfig")
    ConnectorProvisioningType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#ConnectorProvisioningType", name: "ConnectorProvisioningType")
    ConnectorRuntimeSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ConnectorRuntimeSetting", name: "ConnectorRuntimeSetting")
    ConnectorRuntimeSettingDataType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#ConnectorRuntimeSettingDataType", name: "ConnectorRuntimeSettingDataType", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^\\S+$"})
    ConnectorRuntimeSettingList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appflow#ConnectorRuntimeSettingList", name: "ConnectorRuntimeSettingList")
    ConnectorRuntimeSettingScope = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#ConnectorRuntimeSettingScope", name: "ConnectorRuntimeSettingScope", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^\\S+$"})
    ConnectorServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ConnectorServerException", name: "ConnectorServerException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ConnectorSuppliedValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#ConnectorSuppliedValue", name: "ConnectorSuppliedValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^\\S+$"})
    ConnectorSuppliedValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appflow#ConnectorSuppliedValueList", name: "ConnectorSuppliedValueList")
    ConnectorSuppliedValueOptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appflow#ConnectorSuppliedValueOptionList", name: "ConnectorSuppliedValueOptionList")
    ConnectorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#ConnectorType", name: "ConnectorType")
    ConnectorTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appflow#ConnectorTypeList", name: "ConnectorTypeList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ConnectorVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#ConnectorVersion", name: "ConnectorVersion", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^\\S+$"})
    CreateConnectorProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#CreateConnectorProfileRequest", name: "CreateConnectorProfileRequest")
    CreateConnectorProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#CreateConnectorProfileResponse", name: "CreateConnectorProfileResponse")
    CreateFlowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#CreateFlowRequest", name: "CreateFlowRequest")
    CreateFlowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#CreateFlowResponse", name: "CreateFlowResponse")
    CreatedBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#CreatedBy", name: "CreatedBy", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^\\S+$"})
    CredentialsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.appflow#CredentialsMap", name: "CredentialsMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    CredentialsMapKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#CredentialsMapKey", name: "CredentialsMapKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w]+$", "smithy.api#sensitive" => {}})
    CredentialsMapValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#CredentialsMapValue", name: "CredentialsMapValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^\\S+$", "smithy.api#sensitive" => {}})
    CustomAuthConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#CustomAuthConfig", name: "CustomAuthConfig")
    CustomAuthConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appflow#CustomAuthConfigList", name: "CustomAuthConfigList")
    CustomAuthCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#CustomAuthCredentials", name: "CustomAuthCredentials")
    CustomAuthenticationType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#CustomAuthenticationType", name: "CustomAuthenticationType", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^\\S+$"})
    CustomConnectorDestinationProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#CustomConnectorDestinationProperties", name: "CustomConnectorDestinationProperties")
    CustomConnectorProfileCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#CustomConnectorProfileCredentials", name: "CustomConnectorProfileCredentials")
    CustomConnectorProfileProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#CustomConnectorProfileProperties", name: "CustomConnectorProfileProperties")
    CustomConnectorSourceProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#CustomConnectorSourceProperties", name: "CustomConnectorSourceProperties")
    CustomProperties = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.appflow#CustomProperties", name: "CustomProperties", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    CustomPropertyKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#CustomPropertyKey", name: "CustomPropertyKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w]+$"})
    CustomPropertyValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#CustomPropertyValue", name: "CustomPropertyValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^\\S+$"})
    CustomerProfilesDestinationProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#CustomerProfilesDestinationProperties", name: "CustomerProfilesDestinationProperties")
    CustomerProfilesMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#CustomerProfilesMetadata", name: "CustomerProfilesMetadata")
    DataApiRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#DataApiRoleArn", name: "DataApiRoleArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^arn:aws:iam:.*:[0-9]+:"})
    DataPullMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#DataPullMode", name: "DataPullMode")
    DataTransferApi = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#DataTransferApi", name: "DataTransferApi")
    DataTransferApiType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#DataTransferApiType", name: "DataTransferApiType")
    DataTransferApiTypeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#DataTransferApiTypeName", name: "DataTransferApiTypeName", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\w/-]+$"})
    DatabaseName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#DatabaseName", name: "DatabaseName", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^\\S+$"})
    DatabaseUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#DatabaseUrl", name: "DatabaseUrl", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^\\S+$"})
    DatadogConnectorOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#DatadogConnectorOperator", name: "DatadogConnectorOperator")
    DatadogConnectorProfileCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#DatadogConnectorProfileCredentials", name: "DatadogConnectorProfileCredentials")
    DatadogConnectorProfileProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#DatadogConnectorProfileProperties", name: "DatadogConnectorProfileProperties")
    DatadogMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#DatadogMetadata", name: "DatadogMetadata")
    DatadogSourceProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#DatadogSourceProperties", name: "DatadogSourceProperties")
    Date = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.appflow#Date", name: "Date")
    DatetimeTypeFieldName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#DatetimeTypeFieldName", name: "DatetimeTypeFieldName", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => ".*"})
    DeleteConnectorProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#DeleteConnectorProfileRequest", name: "DeleteConnectorProfileRequest")
    DeleteConnectorProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#DeleteConnectorProfileResponse", name: "DeleteConnectorProfileResponse")
    DeleteFlowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#DeleteFlowRequest", name: "DeleteFlowRequest")
    DeleteFlowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#DeleteFlowResponse", name: "DeleteFlowResponse")
    DescribeConnectorEntityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#DescribeConnectorEntityRequest", name: "DescribeConnectorEntityRequest")
    DescribeConnectorEntityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#DescribeConnectorEntityResponse", name: "DescribeConnectorEntityResponse")
    DescribeConnectorProfilesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#DescribeConnectorProfilesRequest", name: "DescribeConnectorProfilesRequest")
    DescribeConnectorProfilesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#DescribeConnectorProfilesResponse", name: "DescribeConnectorProfilesResponse")
    DescribeConnectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#DescribeConnectorRequest", name: "DescribeConnectorRequest")
    DescribeConnectorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#DescribeConnectorResponse", name: "DescribeConnectorResponse")
    DescribeConnectorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#DescribeConnectorsRequest", name: "DescribeConnectorsRequest")
    DescribeConnectorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#DescribeConnectorsResponse", name: "DescribeConnectorsResponse")
    DescribeFlowExecutionRecordsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#DescribeFlowExecutionRecordsRequest", name: "DescribeFlowExecutionRecordsRequest")
    DescribeFlowExecutionRecordsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#DescribeFlowExecutionRecordsResponse", name: "DescribeFlowExecutionRecordsResponse")
    DescribeFlowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#DescribeFlowRequest", name: "DescribeFlowRequest")
    DescribeFlowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#DescribeFlowResponse", name: "DescribeFlowResponse")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\s\\w/!@#+=.-]*$"})
    DestinationConnectorProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#DestinationConnectorProperties", name: "DestinationConnectorProperties")
    DestinationField = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#DestinationField", name: "DestinationField", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => ".*"})
    DestinationFieldProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#DestinationFieldProperties", name: "DestinationFieldProperties")
    DestinationFlowConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#DestinationFlowConfig", name: "DestinationFlowConfig")
    DestinationFlowConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appflow#DestinationFlowConfigList", name: "DestinationFlowConfigList")
    DocumentType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#DocumentType", name: "DocumentType", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[\\s\\w_-]+$"})
    DomainName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#DomainName", name: "DomainName", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^\\S+$"})
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.appflow#Double", name: "Double", traits: {"smithy.api#default" => 0})
    DynatraceConnectorOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#DynatraceConnectorOperator", name: "DynatraceConnectorOperator")
    DynatraceConnectorProfileCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#DynatraceConnectorProfileCredentials", name: "DynatraceConnectorProfileCredentials")
    DynatraceConnectorProfileProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#DynatraceConnectorProfileProperties", name: "DynatraceConnectorProfileProperties")
    DynatraceMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#DynatraceMetadata", name: "DynatraceMetadata")
    DynatraceSourceProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#DynatraceSourceProperties", name: "DynatraceSourceProperties")
    EntitiesPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#EntitiesPath", name: "EntitiesPath", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\s\\w/!@#+=,.-]*$"})
    EntityName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#EntityName", name: "EntityName", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^\\S+$"})
    ErrorHandlingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ErrorHandlingConfig", name: "ErrorHandlingConfig")
    ErrorInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ErrorInfo", name: "ErrorInfo")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#ErrorMessage", name: "ErrorMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^[\\s\\w/!@#+=.-]*$"})
    EventBridgeDestinationProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#EventBridgeDestinationProperties", name: "EventBridgeDestinationProperties")
    EventBridgeMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#EventBridgeMetadata", name: "EventBridgeMetadata")
    ExecutionDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ExecutionDetails", name: "ExecutionDetails")
    ExecutionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#ExecutionId", name: "ExecutionId", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^\\S+$"})
    ExecutionIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appflow#ExecutionIds", name: "ExecutionIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ExecutionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#ExecutionMessage", name: "ExecutionMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^[\\s\\w/!@#+=.-]*$"})
    ExecutionRecord = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ExecutionRecord", name: "ExecutionRecord")
    ExecutionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ExecutionResult", name: "ExecutionResult")
    ExecutionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#ExecutionStatus", name: "ExecutionStatus")
    FieldType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#FieldType", name: "FieldType")
    FieldTypeDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#FieldTypeDetails", name: "FieldTypeDetails")
    FileType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#FileType", name: "FileType")
    FilterOperatorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appflow#FilterOperatorList", name: "FilterOperatorList")
    FlowArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#FlowArn", name: "FlowArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^arn:aws:appflow:.*:[0-9]+:"})
    FlowDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#FlowDefinition", name: "FlowDefinition")
    FlowDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#FlowDescription", name: "FlowDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^[\\w!@#\\-.?,\\s]*$"})
    FlowErrorDeactivationThreshold = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appflow#FlowErrorDeactivationThreshold", name: "FlowErrorDeactivationThreshold", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    FlowExecutionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appflow#FlowExecutionList", name: "FlowExecutionList")
    FlowList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appflow#FlowList", name: "FlowList")
    FlowName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#FlowName", name: "FlowName", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9][\\w!@#.-]+$"})
    FlowStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#FlowStatus", name: "FlowStatus")
    FlowStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#FlowStatusMessage", name: "FlowStatusMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^[\\s\\w/!@#+=.-]*$"})
    GlueDataCatalogConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#GlueDataCatalogConfig", name: "GlueDataCatalogConfig")
    GlueDataCatalogDatabaseName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#GlueDataCatalogDatabaseName", name: "GlueDataCatalogDatabaseName", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*$"})
    GlueDataCatalogIAMRole = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#GlueDataCatalogIAMRole", name: "GlueDataCatalogIAMRole", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^arn:aws:iam:.*:[0-9]+:"})
    GlueDataCatalogTablePrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#GlueDataCatalogTablePrefix", name: "GlueDataCatalogTablePrefix", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*$"})
    GoogleAnalyticsConnectorOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#GoogleAnalyticsConnectorOperator", name: "GoogleAnalyticsConnectorOperator")
    GoogleAnalyticsConnectorProfileCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#GoogleAnalyticsConnectorProfileCredentials", name: "GoogleAnalyticsConnectorProfileCredentials")
    GoogleAnalyticsConnectorProfileProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#GoogleAnalyticsConnectorProfileProperties", name: "GoogleAnalyticsConnectorProfileProperties")
    GoogleAnalyticsMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#GoogleAnalyticsMetadata", name: "GoogleAnalyticsMetadata")
    GoogleAnalyticsSourceProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#GoogleAnalyticsSourceProperties", name: "GoogleAnalyticsSourceProperties")
    Group = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#Group", name: "Group", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^\\S+$"})
    HoneycodeConnectorProfileCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#HoneycodeConnectorProfileCredentials", name: "HoneycodeConnectorProfileCredentials")
    HoneycodeConnectorProfileProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#HoneycodeConnectorProfileProperties", name: "HoneycodeConnectorProfileProperties")
    HoneycodeDestinationProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#HoneycodeDestinationProperties", name: "HoneycodeDestinationProperties")
    HoneycodeMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#HoneycodeMetadata", name: "HoneycodeMetadata")
    IdFieldNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appflow#IdFieldNameList", name: "IdFieldNameList", traits: {"smithy.api#length" => {"min" => 0}})
    Identifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#Identifier", name: "Identifier", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^\\S+$"})
    IncrementalPullConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#IncrementalPullConfig", name: "IncrementalPullConfig")
    InforNexusConnectorOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#InforNexusConnectorOperator", name: "InforNexusConnectorOperator")
    InforNexusConnectorProfileCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#InforNexusConnectorProfileCredentials", name: "InforNexusConnectorProfileCredentials")
    InforNexusConnectorProfileProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#InforNexusConnectorProfileProperties", name: "InforNexusConnectorProfileProperties")
    InforNexusMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#InforNexusMetadata", name: "InforNexusMetadata")
    InforNexusSourceProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#InforNexusSourceProperties", name: "InforNexusSourceProperties")
    InstanceUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#InstanceUrl", name: "InstanceUrl", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^\\S+$"})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    JavaBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.appflow#JavaBoolean", name: "JavaBoolean")
    JwtToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#JwtToken", name: "JwtToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 8000}, "smithy.api#pattern" => "^([a-zA-Z0-9_=]+)\\.([a-zA-Z0-9_=]+)\\.([a-zA-Z0-9_\\-\\+\\/=]*)$", "smithy.api#sensitive" => {}})
    KMSArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#KMSArn", name: "KMSArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:kms:.*:[0-9]+:"})
    Key = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#Key", name: "Key", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^\\S+$"})
    Label = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#Label", name: "Label", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => ".*"})
    LambdaConnectorProvisioningConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#LambdaConnectorProvisioningConfig", name: "LambdaConnectorProvisioningConfig")
    ListConnectorEntitiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ListConnectorEntitiesRequest", name: "ListConnectorEntitiesRequest")
    ListConnectorEntitiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ListConnectorEntitiesResponse", name: "ListConnectorEntitiesResponse")
    ListConnectorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ListConnectorsRequest", name: "ListConnectorsRequest")
    ListConnectorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ListConnectorsResponse", name: "ListConnectorsResponse")
    ListEntitiesMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appflow#ListEntitiesMaxResults", name: "ListEntitiesMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}})
    ListFlowsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ListFlowsRequest", name: "ListFlowsRequest")
    ListFlowsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ListFlowsResponse", name: "ListFlowsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    LogoURL = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#LogoURL", name: "LogoURL", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^(https?|ftp|file)://[-a-zA-Z0-9+&@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&@#/%=~_|]$"})
    LogonLanguage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#LogonLanguage", name: "LogonLanguage", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}, "smithy.api#pattern" => "^[a-zA-Z0-9_]*$"})
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appflow#Long", name: "Long")
    LookoutMetricsDestinationProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#LookoutMetricsDestinationProperties", name: "LookoutMetricsDestinationProperties")
    MarketoConnectorOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#MarketoConnectorOperator", name: "MarketoConnectorOperator")
    MarketoConnectorProfileCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#MarketoConnectorProfileCredentials", name: "MarketoConnectorProfileCredentials")
    MarketoConnectorProfileProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#MarketoConnectorProfileProperties", name: "MarketoConnectorProfileProperties")
    MarketoDestinationProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#MarketoDestinationProperties", name: "MarketoDestinationProperties")
    MarketoMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#MarketoMetadata", name: "MarketoMetadata")
    MarketoSourceProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#MarketoSourceProperties", name: "MarketoSourceProperties")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appflow#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MetadataCatalogConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#MetadataCatalogConfig", name: "MetadataCatalogConfig")
    MetadataCatalogDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#MetadataCatalogDetail", name: "MetadataCatalogDetail")
    MetadataCatalogDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appflow#MetadataCatalogDetails", name: "MetadataCatalogDetails")
    MostRecentExecutionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#MostRecentExecutionMessage", name: "MostRecentExecutionMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^[\\w!@#\\-.?,\\s]*$"})
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#Name", name: "Name", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^\\S+$"})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^\\S+$"})
    OAuth2Credentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#OAuth2Credentials", name: "OAuth2Credentials")
    OAuth2CustomParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#OAuth2CustomParameter", name: "OAuth2CustomParameter")
    OAuth2CustomPropType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#OAuth2CustomPropType", name: "OAuth2CustomPropType")
    OAuth2CustomPropertiesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appflow#OAuth2CustomPropertiesList", name: "OAuth2CustomPropertiesList")
    OAuth2Defaults = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#OAuth2Defaults", name: "OAuth2Defaults")
    OAuth2GrantType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#OAuth2GrantType", name: "OAuth2GrantType")
    OAuth2GrantTypeSupportedList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appflow#OAuth2GrantTypeSupportedList", name: "OAuth2GrantTypeSupportedList")
    OAuth2Properties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#OAuth2Properties", name: "OAuth2Properties")
    OAuthCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#OAuthCredentials", name: "OAuthCredentials")
    OAuthProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#OAuthProperties", name: "OAuthProperties")
    OAuthScope = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#OAuthScope", name: "OAuthScope", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^\\S+$"})
    OAuthScopeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appflow#OAuthScopeList", name: "OAuthScopeList")
    Object = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#Object", name: "Object", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^\\S+$"})
    ObjectTypeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#ObjectTypeName", name: "ObjectTypeName", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^\\S+$"})
    Operator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#Operator", name: "Operator")
    OperatorPropertiesKeys = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#OperatorPropertiesKeys", name: "OperatorPropertiesKeys")
    Operators = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#Operators", name: "Operators")
    PardotConnectorOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#PardotConnectorOperator", name: "PardotConnectorOperator")
    PardotConnectorProfileCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#PardotConnectorProfileCredentials", name: "PardotConnectorProfileCredentials")
    PardotConnectorProfileProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#PardotConnectorProfileProperties", name: "PardotConnectorProfileProperties")
    PardotMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#PardotMetadata", name: "PardotMetadata")
    PardotSourceProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#PardotSourceProperties", name: "PardotSourceProperties")
    Password = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#Password", name: "Password", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => ".*", "smithy.api#sensitive" => {}})
    PathPrefix = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#PathPrefix", name: "PathPrefix")
    PathPrefixHierarchy = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appflow#PathPrefixHierarchy", name: "PathPrefixHierarchy")
    PortNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appflow#PortNumber", name: "PortNumber", traits: {"smithy.api#range" => {"min" => 1, "max" => 65535}})
    PrefixConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#PrefixConfig", name: "PrefixConfig")
    PrefixFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#PrefixFormat", name: "PrefixFormat")
    PrefixType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#PrefixType", name: "PrefixType")
    PrivateConnectionProvisioningFailureCause = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#PrivateConnectionProvisioningFailureCause", name: "PrivateConnectionProvisioningFailureCause")
    PrivateConnectionProvisioningFailureMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#PrivateConnectionProvisioningFailureMessage", name: "PrivateConnectionProvisioningFailureMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^[\\s\\w/!@#+=.-]*$"})
    PrivateConnectionProvisioningState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#PrivateConnectionProvisioningState", name: "PrivateConnectionProvisioningState")
    PrivateConnectionProvisioningStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#PrivateConnectionProvisioningStatus", name: "PrivateConnectionProvisioningStatus")
    PrivateLinkServiceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#PrivateLinkServiceName", name: "PrivateLinkServiceName", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^$|com.amazonaws.vpce.[\\w/!:@#.\\-]+$"})
    ProfilePropertiesMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.appflow#ProfilePropertiesMap", name: "ProfilePropertiesMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ProfilePropertyKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#ProfilePropertyKey", name: "ProfilePropertyKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w]+$"})
    ProfilePropertyValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#ProfilePropertyValue", name: "ProfilePropertyValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^\\S+$"})
    Property = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#Property", name: "Property", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^.+$"})
    Range = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#Range", name: "Range")
    RedirectUri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#RedirectUri", name: "RedirectUri", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^\\S+$"})
    RedshiftConnectorProfileCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#RedshiftConnectorProfileCredentials", name: "RedshiftConnectorProfileCredentials")
    RedshiftConnectorProfileProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#RedshiftConnectorProfileProperties", name: "RedshiftConnectorProfileProperties")
    RedshiftDestinationProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#RedshiftDestinationProperties", name: "RedshiftDestinationProperties")
    RedshiftMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#RedshiftMetadata", name: "RedshiftMetadata")
    RefreshToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#RefreshToken", name: "RefreshToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#pattern" => "^\\S+$"})
    Region = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#Region", name: "Region", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^\\S+$"})
    RegionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appflow#RegionList", name: "RegionList")
    RegisterConnectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#RegisterConnectorRequest", name: "RegisterConnectorRequest")
    RegisterConnectorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#RegisterConnectorResponse", name: "RegisterConnectorResponse")
    RegisteredBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#RegisteredBy", name: "RegisteredBy", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^\\S+$"})
    RegistrationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#RegistrationOutput", name: "RegistrationOutput")
    ResetConnectorMetadataCacheRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ResetConnectorMetadataCacheRequest", name: "ResetConnectorMetadataCacheRequest")
    ResetConnectorMetadataCacheResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ResetConnectorMetadataCacheResponse", name: "ResetConnectorMetadataCacheResponse")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^arn:aws:iam:.*:[0-9]+:"})
    S3ConnectorOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#S3ConnectorOperator", name: "S3ConnectorOperator")
    S3DestinationProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#S3DestinationProperties", name: "S3DestinationProperties")
    S3InputFileType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#S3InputFileType", name: "S3InputFileType")
    S3InputFormatConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#S3InputFormatConfig", name: "S3InputFormatConfig")
    S3Metadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#S3Metadata", name: "S3Metadata")
    S3OutputFormatConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#S3OutputFormatConfig", name: "S3OutputFormatConfig")
    S3SourceProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#S3SourceProperties", name: "S3SourceProperties")
    SAPODataConnectorOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#SAPODataConnectorOperator", name: "SAPODataConnectorOperator")
    SAPODataConnectorProfileCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#SAPODataConnectorProfileCredentials", name: "SAPODataConnectorProfileCredentials")
    SAPODataConnectorProfileProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#SAPODataConnectorProfileProperties", name: "SAPODataConnectorProfileProperties")
    SAPODataDestinationProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#SAPODataDestinationProperties", name: "SAPODataDestinationProperties")
    SAPODataMaxPageSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appflow#SAPODataMaxPageSize", name: "SAPODataMaxPageSize", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}})
    SAPODataMaxParallelism = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appflow#SAPODataMaxParallelism", name: "SAPODataMaxParallelism", traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    SAPODataMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#SAPODataMetadata", name: "SAPODataMetadata")
    SAPODataPaginationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#SAPODataPaginationConfig", name: "SAPODataPaginationConfig")
    SAPODataParallelismConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#SAPODataParallelismConfig", name: "SAPODataParallelismConfig")
    SAPODataSourceProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#SAPODataSourceProperties", name: "SAPODataSourceProperties")
    SalesforceConnectorOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#SalesforceConnectorOperator", name: "SalesforceConnectorOperator")
    SalesforceConnectorProfileCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#SalesforceConnectorProfileCredentials", name: "SalesforceConnectorProfileCredentials")
    SalesforceConnectorProfileProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#SalesforceConnectorProfileProperties", name: "SalesforceConnectorProfileProperties")
    SalesforceDataTransferApi = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#SalesforceDataTransferApi", name: "SalesforceDataTransferApi")
    SalesforceDataTransferApiList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appflow#SalesforceDataTransferApiList", name: "SalesforceDataTransferApiList")
    SalesforceDestinationProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#SalesforceDestinationProperties", name: "SalesforceDestinationProperties")
    SalesforceMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#SalesforceMetadata", name: "SalesforceMetadata")
    SalesforceSourceProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#SalesforceSourceProperties", name: "SalesforceSourceProperties")
    ScheduleExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#ScheduleExpression", name: "ScheduleExpression", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => ".*"})
    ScheduleFrequencyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#ScheduleFrequencyType", name: "ScheduleFrequencyType")
    ScheduleOffset = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appflow#ScheduleOffset", name: "ScheduleOffset", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 36000}})
    ScheduledTriggerProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ScheduledTriggerProperties", name: "ScheduledTriggerProperties")
    SchedulingFrequencyTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appflow#SchedulingFrequencyTypeList", name: "SchedulingFrequencyTypeList")
    SecretKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#SecretKey", name: "SecretKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^\\S+$", "smithy.api#sensitive" => {}})
    ServiceNowConnectorOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#ServiceNowConnectorOperator", name: "ServiceNowConnectorOperator")
    ServiceNowConnectorProfileCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ServiceNowConnectorProfileCredentials", name: "ServiceNowConnectorProfileCredentials")
    ServiceNowConnectorProfileProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ServiceNowConnectorProfileProperties", name: "ServiceNowConnectorProfileProperties")
    ServiceNowMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ServiceNowMetadata", name: "ServiceNowMetadata")
    ServiceNowSourceProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ServiceNowSourceProperties", name: "ServiceNowSourceProperties")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SingularConnectorOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#SingularConnectorOperator", name: "SingularConnectorOperator")
    SingularConnectorProfileCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#SingularConnectorProfileCredentials", name: "SingularConnectorProfileCredentials")
    SingularConnectorProfileProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#SingularConnectorProfileProperties", name: "SingularConnectorProfileProperties")
    SingularMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#SingularMetadata", name: "SingularMetadata")
    SingularSourceProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#SingularSourceProperties", name: "SingularSourceProperties")
    SlackConnectorOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#SlackConnectorOperator", name: "SlackConnectorOperator")
    SlackConnectorProfileCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#SlackConnectorProfileCredentials", name: "SlackConnectorProfileCredentials")
    SlackConnectorProfileProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#SlackConnectorProfileProperties", name: "SlackConnectorProfileProperties")
    SlackMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#SlackMetadata", name: "SlackMetadata")
    SlackSourceProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#SlackSourceProperties", name: "SlackSourceProperties")
    SnowflakeConnectorProfileCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#SnowflakeConnectorProfileCredentials", name: "SnowflakeConnectorProfileCredentials")
    SnowflakeConnectorProfileProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#SnowflakeConnectorProfileProperties", name: "SnowflakeConnectorProfileProperties")
    SnowflakeDestinationProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#SnowflakeDestinationProperties", name: "SnowflakeDestinationProperties")
    SnowflakeMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#SnowflakeMetadata", name: "SnowflakeMetadata")
    SourceConnectorProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#SourceConnectorProperties", name: "SourceConnectorProperties")
    SourceFieldProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#SourceFieldProperties", name: "SourceFieldProperties")
    SourceFields = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appflow#SourceFields", name: "SourceFields")
    SourceFlowConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#SourceFlowConfig", name: "SourceFlowConfig")
    Stage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#Stage", name: "Stage", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^\\S+$"})
    StartFlowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#StartFlowRequest", name: "StartFlowRequest")
    StartFlowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#StartFlowResponse", name: "StartFlowResponse")
    StopFlowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#StopFlowRequest", name: "StopFlowRequest")
    StopFlowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#StopFlowResponse", name: "StopFlowResponse")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#String", name: "String", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => ".*"})
    SuccessResponseHandlingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#SuccessResponseHandlingConfig", name: "SuccessResponseHandlingConfig")
    SupportedApiVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#SupportedApiVersion", name: "SupportedApiVersion", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^\\S+$"})
    SupportedApiVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appflow#SupportedApiVersionList", name: "SupportedApiVersionList")
    SupportedDataTransferApis = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appflow#SupportedDataTransferApis", name: "SupportedDataTransferApis")
    SupportedDataTransferType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#SupportedDataTransferType", name: "SupportedDataTransferType")
    SupportedDataTransferTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appflow#SupportedDataTransferTypeList", name: "SupportedDataTransferTypeList")
    SupportedFieldTypeDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#SupportedFieldTypeDetails", name: "SupportedFieldTypeDetails")
    SupportedOperatorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appflow#SupportedOperatorList", name: "SupportedOperatorList")
    SupportedValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appflow#SupportedValueList", name: "SupportedValueList")
    SupportedWriteOperationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appflow#SupportedWriteOperationList", name: "SupportedWriteOperationList")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appflow#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.appflow#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\s\\w+-=\\.:/@]*$"})
    Task = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#Task", name: "Task")
    TaskPropertiesMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.appflow#TaskPropertiesMap", name: "TaskPropertiesMap")
    TaskType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#TaskType", name: "TaskType")
    Tasks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appflow#Tasks", name: "Tasks")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timezone = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#Timezone", name: "Timezone", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => ".*"})
    TokenUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#TokenUrl", name: "TokenUrl", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^(https?)://[-a-zA-Z0-9+&@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&@#/%=~_|]$"})
    TokenUrlCustomProperties = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.appflow#TokenUrlCustomProperties", name: "TokenUrlCustomProperties", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TokenUrlList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appflow#TokenUrlList", name: "TokenUrlList")
    TrendmicroConnectorOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#TrendmicroConnectorOperator", name: "TrendmicroConnectorOperator")
    TrendmicroConnectorProfileCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#TrendmicroConnectorProfileCredentials", name: "TrendmicroConnectorProfileCredentials")
    TrendmicroConnectorProfileProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#TrendmicroConnectorProfileProperties", name: "TrendmicroConnectorProfileProperties")
    TrendmicroMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#TrendmicroMetadata", name: "TrendmicroMetadata")
    TrendmicroSourceProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#TrendmicroSourceProperties", name: "TrendmicroSourceProperties")
    TriggerConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#TriggerConfig", name: "TriggerConfig")
    TriggerProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#TriggerProperties", name: "TriggerProperties")
    TriggerType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#TriggerType", name: "TriggerType")
    TriggerTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appflow#TriggerTypeList", name: "TriggerTypeList")
    UnregisterConnectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#UnregisterConnectorRequest", name: "UnregisterConnectorRequest")
    UnregisterConnectorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#UnregisterConnectorResponse", name: "UnregisterConnectorResponse")
    UnsupportedOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#UnsupportedOperationException", name: "UnsupportedOperationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateConnectorProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#UpdateConnectorProfileRequest", name: "UpdateConnectorProfileRequest")
    UpdateConnectorProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#UpdateConnectorProfileResponse", name: "UpdateConnectorProfileResponse")
    UpdateConnectorRegistrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#UpdateConnectorRegistrationRequest", name: "UpdateConnectorRegistrationRequest")
    UpdateConnectorRegistrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#UpdateConnectorRegistrationResponse", name: "UpdateConnectorRegistrationResponse")
    UpdateFlowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#UpdateFlowRequest", name: "UpdateFlowRequest")
    UpdateFlowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#UpdateFlowResponse", name: "UpdateFlowResponse")
    UpdatedBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#UpdatedBy", name: "UpdatedBy", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^\\S+$"})
    UpsolverBucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#UpsolverBucketName", name: "UpsolverBucketName", traits: {"smithy.api#length" => {"min" => 16, "max" => 63}, "smithy.api#pattern" => "^(upsolver-appflow)\\S*$"})
    UpsolverDestinationProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#UpsolverDestinationProperties", name: "UpsolverDestinationProperties")
    UpsolverMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#UpsolverMetadata", name: "UpsolverMetadata")
    UpsolverS3OutputFormatConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#UpsolverS3OutputFormatConfig", name: "UpsolverS3OutputFormatConfig")
    Username = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#Username", name: "Username", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^\\S+$"})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Value = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#Value", name: "Value", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^\\S+$"})
    VeevaConnectorOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#VeevaConnectorOperator", name: "VeevaConnectorOperator")
    VeevaConnectorProfileCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#VeevaConnectorProfileCredentials", name: "VeevaConnectorProfileCredentials")
    VeevaConnectorProfileProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#VeevaConnectorProfileProperties", name: "VeevaConnectorProfileProperties")
    VeevaMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#VeevaMetadata", name: "VeevaMetadata")
    VeevaSourceProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#VeevaSourceProperties", name: "VeevaSourceProperties")
    Warehouse = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#Warehouse", name: "Warehouse", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[\\s\\w/!@#+=.-]*$"})
    WorkgroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appflow#WorkgroupName", name: "WorkgroupName", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^\\S+$"})
    WriteOperationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#WriteOperationType", name: "WriteOperationType")
    ZendeskConnectorOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appflow#ZendeskConnectorOperator", name: "ZendeskConnectorOperator")
    ZendeskConnectorProfileCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ZendeskConnectorProfileCredentials", name: "ZendeskConnectorProfileCredentials")
    ZendeskConnectorProfileProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ZendeskConnectorProfileProperties", name: "ZendeskConnectorProfileProperties")
    ZendeskDestinationProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ZendeskDestinationProperties", name: "ZendeskDestinationProperties")
    ZendeskMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ZendeskMetadata", name: "ZendeskMetadata")
    ZendeskSourceProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appflow#ZendeskSourceProperties", name: "ZendeskSourceProperties")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AggregationConfig.add_member(:aggregation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregationType, location_name: "aggregationType"))
    AggregationConfig.add_member(:target_file_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, location_name: "targetFileSize"))
    AggregationConfig.type = Types::AggregationConfig
    AggregationType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "None"}))
    AggregationType.add_member(:single_file, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SINGLE_FILE", traits: {"smithy.api#enumValue" => "SingleFile"}))
    AmplitudeConnectorOperator.add_member(:between, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BETWEEN", traits: {"smithy.api#enumValue" => "BETWEEN"}))
    AmplitudeConnectorProfileCredentials.add_member(:api_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKey, location_name: "apiKey", traits: {"smithy.api#required" => {}}))
    AmplitudeConnectorProfileCredentials.add_member(:secret_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretKey, location_name: "secretKey", traits: {"smithy.api#required" => {}}))
    AmplitudeConnectorProfileCredentials.type = Types::AmplitudeConnectorProfileCredentials
    AmplitudeConnectorProfileProperties.type = Types::AmplitudeConnectorProfileProperties
    AmplitudeMetadata.type = Types::AmplitudeMetadata
    AmplitudeSourceProperties.add_member(:object, ::Smithy::Schema::Shapes::MemberShape.new(target: Object, location_name: "object", traits: {"smithy.api#required" => {}}))
    AmplitudeSourceProperties.type = Types::AmplitudeSourceProperties
    ApiKeyCredentials.add_member(:api_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKey, location_name: "apiKey", traits: {"smithy.api#required" => {}}))
    ApiKeyCredentials.add_member(:api_secret_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiSecretKey, location_name: "apiSecretKey"))
    ApiKeyCredentials.type = Types::ApiKeyCredentials
    AuthCodeUrlList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AuthCodeUrl)
    AuthParameter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Key, location_name: "key"))
    AuthParameter.add_member(:is_required, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "isRequired", traits: {"smithy.api#default" => false}))
    AuthParameter.add_member(:label, ::Smithy::Schema::Shapes::MemberShape.new(target: Label, location_name: "label"))
    AuthParameter.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description"))
    AuthParameter.add_member(:is_sensitive_field, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "isSensitiveField", traits: {"smithy.api#default" => false}))
    AuthParameter.add_member(:connector_supplied_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorSuppliedValueList, location_name: "connectorSuppliedValues"))
    AuthParameter.type = Types::AuthParameter
    AuthParameterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AuthParameter)
    AuthenticationConfig.add_member(:is_basic_auth_supported, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "isBasicAuthSupported", traits: {"smithy.api#default" => false}))
    AuthenticationConfig.add_member(:is_api_key_auth_supported, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "isApiKeyAuthSupported", traits: {"smithy.api#default" => false}))
    AuthenticationConfig.add_member(:is_o_auth2_supported, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "isOAuth2Supported", traits: {"smithy.api#default" => false}))
    AuthenticationConfig.add_member(:is_custom_auth_supported, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "isCustomAuthSupported", traits: {"smithy.api#default" => false}))
    AuthenticationConfig.add_member(:o_auth2_defaults, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuth2Defaults, location_name: "oAuth2Defaults"))
    AuthenticationConfig.add_member(:custom_auth_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomAuthConfigList, location_name: "customAuthConfigs"))
    AuthenticationConfig.type = Types::AuthenticationConfig
    AuthenticationType.add_member(:oauth2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OAUTH2", traits: {"smithy.api#enumValue" => "OAUTH2"}))
    AuthenticationType.add_member(:apikey, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "APIKEY", traits: {"smithy.api#enumValue" => "APIKEY"}))
    AuthenticationType.add_member(:basic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BASIC", traits: {"smithy.api#enumValue" => "BASIC"}))
    AuthenticationType.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CUSTOM", traits: {"smithy.api#enumValue" => "CUSTOM"}))
    BasicAuthCredentials.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: Username, location_name: "username", traits: {"smithy.api#required" => {}}))
    BasicAuthCredentials.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: Password, location_name: "password", traits: {"smithy.api#required" => {}}))
    BasicAuthCredentials.type = Types::BasicAuthCredentials
    CancelFlowExecutionsRequest.add_member(:flow_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowName, location_name: "flowName", traits: {"smithy.api#required" => {}}))
    CancelFlowExecutionsRequest.add_member(:execution_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionIds, location_name: "executionIds"))
    CancelFlowExecutionsRequest.type = Types::CancelFlowExecutionsRequest
    CancelFlowExecutionsResponse.add_member(:invalid_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionIds, location_name: "invalidExecutions"))
    CancelFlowExecutionsResponse.type = Types::CancelFlowExecutionsResponse
    CatalogType.add_member(:glue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GLUE", traits: {"smithy.api#enumValue" => "GLUE"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    ConflictException.type = Types::ConflictException
    ConnectionMode.add_member(:public, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PUBLIC", traits: {"smithy.api#enumValue" => "Public"}))
    ConnectionMode.add_member(:private, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRIVATE", traits: {"smithy.api#enumValue" => "Private"}))
    ConnectorAuthenticationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    ConnectorAuthenticationException.type = Types::ConnectorAuthenticationException
    ConnectorConfiguration.add_member(:can_use_as_source, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "canUseAsSource", traits: {"smithy.api#default" => false}))
    ConnectorConfiguration.add_member(:can_use_as_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "canUseAsDestination", traits: {"smithy.api#default" => false}))
    ConnectorConfiguration.add_member(:supported_destination_connectors, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorTypeList, location_name: "supportedDestinationConnectors"))
    ConnectorConfiguration.add_member(:supported_scheduling_frequencies, ::Smithy::Schema::Shapes::MemberShape.new(target: SchedulingFrequencyTypeList, location_name: "supportedSchedulingFrequencies"))
    ConnectorConfiguration.add_member(:is_private_link_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "isPrivateLinkEnabled", traits: {"smithy.api#default" => false}))
    ConnectorConfiguration.add_member(:is_private_link_endpoint_url_required, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "isPrivateLinkEndpointUrlRequired", traits: {"smithy.api#default" => false}))
    ConnectorConfiguration.add_member(:supported_trigger_types, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerTypeList, location_name: "supportedTriggerTypes"))
    ConnectorConfiguration.add_member(:connector_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorMetadata, location_name: "connectorMetadata"))
    ConnectorConfiguration.add_member(:connector_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorType, location_name: "connectorType"))
    ConnectorConfiguration.add_member(:connector_label, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorLabel, location_name: "connectorLabel"))
    ConnectorConfiguration.add_member(:connector_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorDescription, location_name: "connectorDescription"))
    ConnectorConfiguration.add_member(:connector_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorOwner, location_name: "connectorOwner"))
    ConnectorConfiguration.add_member(:connector_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorName, location_name: "connectorName"))
    ConnectorConfiguration.add_member(:connector_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorVersion, location_name: "connectorVersion"))
    ConnectorConfiguration.add_member(:connector_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "connectorArn"))
    ConnectorConfiguration.add_member(:connector_modes, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorModeList, location_name: "connectorModes"))
    ConnectorConfiguration.add_member(:authentication_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationConfig, location_name: "authenticationConfig"))
    ConnectorConfiguration.add_member(:connector_runtime_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorRuntimeSettingList, location_name: "connectorRuntimeSettings"))
    ConnectorConfiguration.add_member(:supported_api_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedApiVersionList, location_name: "supportedApiVersions"))
    ConnectorConfiguration.add_member(:supported_operators, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedOperatorList, location_name: "supportedOperators"))
    ConnectorConfiguration.add_member(:supported_write_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedWriteOperationList, location_name: "supportedWriteOperations"))
    ConnectorConfiguration.add_member(:connector_provisioning_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorProvisioningType, location_name: "connectorProvisioningType"))
    ConnectorConfiguration.add_member(:connector_provisioning_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorProvisioningConfig, location_name: "connectorProvisioningConfig"))
    ConnectorConfiguration.add_member(:logo_url, ::Smithy::Schema::Shapes::MemberShape.new(target: LogoURL, location_name: "logoURL"))
    ConnectorConfiguration.add_member(:registered_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "registeredAt"))
    ConnectorConfiguration.add_member(:registered_by, ::Smithy::Schema::Shapes::MemberShape.new(target: RegisteredBy, location_name: "registeredBy"))
    ConnectorConfiguration.add_member(:supported_data_transfer_types, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedDataTransferTypeList, location_name: "supportedDataTransferTypes"))
    ConnectorConfiguration.add_member(:supported_data_transfer_apis, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedDataTransferApis, location_name: "supportedDataTransferApis"))
    ConnectorConfiguration.type = Types::ConnectorConfiguration
    ConnectorConfigurationsMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorType)
    ConnectorConfigurationsMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorConfiguration)
    ConnectorDetail.add_member(:connector_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorDescription, location_name: "connectorDescription"))
    ConnectorDetail.add_member(:connector_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorName, location_name: "connectorName"))
    ConnectorDetail.add_member(:connector_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorOwner, location_name: "connectorOwner"))
    ConnectorDetail.add_member(:connector_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorVersion, location_name: "connectorVersion"))
    ConnectorDetail.add_member(:application_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationType, location_name: "applicationType"))
    ConnectorDetail.add_member(:connector_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorType, location_name: "connectorType"))
    ConnectorDetail.add_member(:connector_label, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorLabel, location_name: "connectorLabel"))
    ConnectorDetail.add_member(:registered_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "registeredAt"))
    ConnectorDetail.add_member(:registered_by, ::Smithy::Schema::Shapes::MemberShape.new(target: RegisteredBy, location_name: "registeredBy"))
    ConnectorDetail.add_member(:connector_provisioning_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorProvisioningType, location_name: "connectorProvisioningType"))
    ConnectorDetail.add_member(:connector_modes, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorModeList, location_name: "connectorModes"))
    ConnectorDetail.add_member(:supported_data_transfer_types, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedDataTransferTypeList, location_name: "supportedDataTransferTypes"))
    ConnectorDetail.type = Types::ConnectorDetail
    ConnectorEntity.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "name", traits: {"smithy.api#required" => {}}))
    ConnectorEntity.add_member(:label, ::Smithy::Schema::Shapes::MemberShape.new(target: Label, location_name: "label"))
    ConnectorEntity.add_member(:has_nested_entities, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "hasNestedEntities", traits: {"smithy.api#default" => false}))
    ConnectorEntity.type = Types::ConnectorEntity
    ConnectorEntityField.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, location_name: "identifier", traits: {"smithy.api#required" => {}}))
    ConnectorEntityField.add_member(:parent_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, location_name: "parentIdentifier"))
    ConnectorEntityField.add_member(:label, ::Smithy::Schema::Shapes::MemberShape.new(target: Label, location_name: "label"))
    ConnectorEntityField.add_member(:is_primary_key, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "isPrimaryKey", traits: {"smithy.api#default" => false}))
    ConnectorEntityField.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "defaultValue"))
    ConnectorEntityField.add_member(:is_deprecated, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "isDeprecated", traits: {"smithy.api#default" => false}))
    ConnectorEntityField.add_member(:supported_field_type_details, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedFieldTypeDetails, location_name: "supportedFieldTypeDetails"))
    ConnectorEntityField.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description"))
    ConnectorEntityField.add_member(:source_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceFieldProperties, location_name: "sourceProperties"))
    ConnectorEntityField.add_member(:destination_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationFieldProperties, location_name: "destinationProperties"))
    ConnectorEntityField.add_member(:custom_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomProperties, location_name: "customProperties"))
    ConnectorEntityField.type = Types::ConnectorEntityField
    ConnectorEntityFieldList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorEntityField)
    ConnectorEntityList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorEntity)
    ConnectorEntityMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: Group)
    ConnectorEntityMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorEntityList)
    ConnectorList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorDetail)
    ConnectorMetadata.add_member(:amplitude, ::Smithy::Schema::Shapes::MemberShape.new(target: AmplitudeMetadata, location_name: "Amplitude"))
    ConnectorMetadata.add_member(:datadog, ::Smithy::Schema::Shapes::MemberShape.new(target: DatadogMetadata, location_name: "Datadog"))
    ConnectorMetadata.add_member(:dynatrace, ::Smithy::Schema::Shapes::MemberShape.new(target: DynatraceMetadata, location_name: "Dynatrace"))
    ConnectorMetadata.add_member(:google_analytics, ::Smithy::Schema::Shapes::MemberShape.new(target: GoogleAnalyticsMetadata, location_name: "GoogleAnalytics"))
    ConnectorMetadata.add_member(:infor_nexus, ::Smithy::Schema::Shapes::MemberShape.new(target: InforNexusMetadata, location_name: "InforNexus"))
    ConnectorMetadata.add_member(:marketo, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketoMetadata, location_name: "Marketo"))
    ConnectorMetadata.add_member(:redshift, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftMetadata, location_name: "Redshift"))
    ConnectorMetadata.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Metadata, location_name: "S3"))
    ConnectorMetadata.add_member(:salesforce, ::Smithy::Schema::Shapes::MemberShape.new(target: SalesforceMetadata, location_name: "Salesforce"))
    ConnectorMetadata.add_member(:service_now, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNowMetadata, location_name: "ServiceNow"))
    ConnectorMetadata.add_member(:singular, ::Smithy::Schema::Shapes::MemberShape.new(target: SingularMetadata, location_name: "Singular"))
    ConnectorMetadata.add_member(:slack, ::Smithy::Schema::Shapes::MemberShape.new(target: SlackMetadata, location_name: "Slack"))
    ConnectorMetadata.add_member(:snowflake, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeMetadata, location_name: "Snowflake"))
    ConnectorMetadata.add_member(:trendmicro, ::Smithy::Schema::Shapes::MemberShape.new(target: TrendmicroMetadata, location_name: "Trendmicro"))
    ConnectorMetadata.add_member(:veeva, ::Smithy::Schema::Shapes::MemberShape.new(target: VeevaMetadata, location_name: "Veeva"))
    ConnectorMetadata.add_member(:zendesk, ::Smithy::Schema::Shapes::MemberShape.new(target: ZendeskMetadata, location_name: "Zendesk"))
    ConnectorMetadata.add_member(:event_bridge, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBridgeMetadata, location_name: "EventBridge"))
    ConnectorMetadata.add_member(:upsolver, ::Smithy::Schema::Shapes::MemberShape.new(target: UpsolverMetadata, location_name: "Upsolver"))
    ConnectorMetadata.add_member(:customer_profiles, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerProfilesMetadata, location_name: "CustomerProfiles"))
    ConnectorMetadata.add_member(:honeycode, ::Smithy::Schema::Shapes::MemberShape.new(target: HoneycodeMetadata, location_name: "Honeycode"))
    ConnectorMetadata.add_member(:sapo_data, ::Smithy::Schema::Shapes::MemberShape.new(target: SAPODataMetadata, location_name: "SAPOData"))
    ConnectorMetadata.add_member(:pardot, ::Smithy::Schema::Shapes::MemberShape.new(target: PardotMetadata, location_name: "Pardot"))
    ConnectorMetadata.type = Types::ConnectorMetadata
    ConnectorModeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorMode)
    ConnectorOAuthRequest.add_member(:auth_code, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthCode, location_name: "authCode"))
    ConnectorOAuthRequest.add_member(:redirect_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: RedirectUri, location_name: "redirectUri"))
    ConnectorOAuthRequest.type = Types::ConnectorOAuthRequest
    ConnectorOperator.add_member(:amplitude, ::Smithy::Schema::Shapes::MemberShape.new(target: AmplitudeConnectorOperator, location_name: "Amplitude"))
    ConnectorOperator.add_member(:datadog, ::Smithy::Schema::Shapes::MemberShape.new(target: DatadogConnectorOperator, location_name: "Datadog"))
    ConnectorOperator.add_member(:dynatrace, ::Smithy::Schema::Shapes::MemberShape.new(target: DynatraceConnectorOperator, location_name: "Dynatrace"))
    ConnectorOperator.add_member(:google_analytics, ::Smithy::Schema::Shapes::MemberShape.new(target: GoogleAnalyticsConnectorOperator, location_name: "GoogleAnalytics"))
    ConnectorOperator.add_member(:infor_nexus, ::Smithy::Schema::Shapes::MemberShape.new(target: InforNexusConnectorOperator, location_name: "InforNexus"))
    ConnectorOperator.add_member(:marketo, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketoConnectorOperator, location_name: "Marketo"))
    ConnectorOperator.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ConnectorOperator, location_name: "S3"))
    ConnectorOperator.add_member(:salesforce, ::Smithy::Schema::Shapes::MemberShape.new(target: SalesforceConnectorOperator, location_name: "Salesforce"))
    ConnectorOperator.add_member(:service_now, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNowConnectorOperator, location_name: "ServiceNow"))
    ConnectorOperator.add_member(:singular, ::Smithy::Schema::Shapes::MemberShape.new(target: SingularConnectorOperator, location_name: "Singular"))
    ConnectorOperator.add_member(:slack, ::Smithy::Schema::Shapes::MemberShape.new(target: SlackConnectorOperator, location_name: "Slack"))
    ConnectorOperator.add_member(:trendmicro, ::Smithy::Schema::Shapes::MemberShape.new(target: TrendmicroConnectorOperator, location_name: "Trendmicro"))
    ConnectorOperator.add_member(:veeva, ::Smithy::Schema::Shapes::MemberShape.new(target: VeevaConnectorOperator, location_name: "Veeva"))
    ConnectorOperator.add_member(:zendesk, ::Smithy::Schema::Shapes::MemberShape.new(target: ZendeskConnectorOperator, location_name: "Zendesk"))
    ConnectorOperator.add_member(:sapo_data, ::Smithy::Schema::Shapes::MemberShape.new(target: SAPODataConnectorOperator, location_name: "SAPOData"))
    ConnectorOperator.add_member(:custom_connector, ::Smithy::Schema::Shapes::MemberShape.new(target: Operator, location_name: "CustomConnector"))
    ConnectorOperator.add_member(:pardot, ::Smithy::Schema::Shapes::MemberShape.new(target: PardotConnectorOperator, location_name: "Pardot"))
    ConnectorOperator.type = Types::ConnectorOperator
    ConnectorProfile.add_member(:connector_profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorProfileArn, location_name: "connectorProfileArn"))
    ConnectorProfile.add_member(:connector_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorProfileName, location_name: "connectorProfileName"))
    ConnectorProfile.add_member(:connector_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorType, location_name: "connectorType"))
    ConnectorProfile.add_member(:connector_label, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorLabel, location_name: "connectorLabel"))
    ConnectorProfile.add_member(:connection_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionMode, location_name: "connectionMode"))
    ConnectorProfile.add_member(:credentials_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "credentialsArn"))
    ConnectorProfile.add_member(:connector_profile_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorProfileProperties, location_name: "connectorProfileProperties"))
    ConnectorProfile.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "createdAt"))
    ConnectorProfile.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedAt"))
    ConnectorProfile.add_member(:private_connection_provisioning_state, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionProvisioningState, location_name: "privateConnectionProvisioningState"))
    ConnectorProfile.type = Types::ConnectorProfile
    ConnectorProfileConfig.add_member(:connector_profile_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorProfileProperties, location_name: "connectorProfileProperties", traits: {"smithy.api#required" => {}}))
    ConnectorProfileConfig.add_member(:connector_profile_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorProfileCredentials, location_name: "connectorProfileCredentials"))
    ConnectorProfileConfig.type = Types::ConnectorProfileConfig
    ConnectorProfileCredentials.add_member(:amplitude, ::Smithy::Schema::Shapes::MemberShape.new(target: AmplitudeConnectorProfileCredentials, location_name: "Amplitude"))
    ConnectorProfileCredentials.add_member(:datadog, ::Smithy::Schema::Shapes::MemberShape.new(target: DatadogConnectorProfileCredentials, location_name: "Datadog"))
    ConnectorProfileCredentials.add_member(:dynatrace, ::Smithy::Schema::Shapes::MemberShape.new(target: DynatraceConnectorProfileCredentials, location_name: "Dynatrace"))
    ConnectorProfileCredentials.add_member(:google_analytics, ::Smithy::Schema::Shapes::MemberShape.new(target: GoogleAnalyticsConnectorProfileCredentials, location_name: "GoogleAnalytics"))
    ConnectorProfileCredentials.add_member(:honeycode, ::Smithy::Schema::Shapes::MemberShape.new(target: HoneycodeConnectorProfileCredentials, location_name: "Honeycode"))
    ConnectorProfileCredentials.add_member(:infor_nexus, ::Smithy::Schema::Shapes::MemberShape.new(target: InforNexusConnectorProfileCredentials, location_name: "InforNexus"))
    ConnectorProfileCredentials.add_member(:marketo, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketoConnectorProfileCredentials, location_name: "Marketo"))
    ConnectorProfileCredentials.add_member(:redshift, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftConnectorProfileCredentials, location_name: "Redshift"))
    ConnectorProfileCredentials.add_member(:salesforce, ::Smithy::Schema::Shapes::MemberShape.new(target: SalesforceConnectorProfileCredentials, location_name: "Salesforce"))
    ConnectorProfileCredentials.add_member(:service_now, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNowConnectorProfileCredentials, location_name: "ServiceNow"))
    ConnectorProfileCredentials.add_member(:singular, ::Smithy::Schema::Shapes::MemberShape.new(target: SingularConnectorProfileCredentials, location_name: "Singular"))
    ConnectorProfileCredentials.add_member(:slack, ::Smithy::Schema::Shapes::MemberShape.new(target: SlackConnectorProfileCredentials, location_name: "Slack"))
    ConnectorProfileCredentials.add_member(:snowflake, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeConnectorProfileCredentials, location_name: "Snowflake"))
    ConnectorProfileCredentials.add_member(:trendmicro, ::Smithy::Schema::Shapes::MemberShape.new(target: TrendmicroConnectorProfileCredentials, location_name: "Trendmicro"))
    ConnectorProfileCredentials.add_member(:veeva, ::Smithy::Schema::Shapes::MemberShape.new(target: VeevaConnectorProfileCredentials, location_name: "Veeva"))
    ConnectorProfileCredentials.add_member(:zendesk, ::Smithy::Schema::Shapes::MemberShape.new(target: ZendeskConnectorProfileCredentials, location_name: "Zendesk"))
    ConnectorProfileCredentials.add_member(:sapo_data, ::Smithy::Schema::Shapes::MemberShape.new(target: SAPODataConnectorProfileCredentials, location_name: "SAPOData"))
    ConnectorProfileCredentials.add_member(:custom_connector, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomConnectorProfileCredentials, location_name: "CustomConnector"))
    ConnectorProfileCredentials.add_member(:pardot, ::Smithy::Schema::Shapes::MemberShape.new(target: PardotConnectorProfileCredentials, location_name: "Pardot"))
    ConnectorProfileCredentials.type = Types::ConnectorProfileCredentials
    ConnectorProfileDetailList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorProfile)
    ConnectorProfileNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorProfileName)
    ConnectorProfileProperties.add_member(:amplitude, ::Smithy::Schema::Shapes::MemberShape.new(target: AmplitudeConnectorProfileProperties, location_name: "Amplitude"))
    ConnectorProfileProperties.add_member(:datadog, ::Smithy::Schema::Shapes::MemberShape.new(target: DatadogConnectorProfileProperties, location_name: "Datadog"))
    ConnectorProfileProperties.add_member(:dynatrace, ::Smithy::Schema::Shapes::MemberShape.new(target: DynatraceConnectorProfileProperties, location_name: "Dynatrace"))
    ConnectorProfileProperties.add_member(:google_analytics, ::Smithy::Schema::Shapes::MemberShape.new(target: GoogleAnalyticsConnectorProfileProperties, location_name: "GoogleAnalytics"))
    ConnectorProfileProperties.add_member(:honeycode, ::Smithy::Schema::Shapes::MemberShape.new(target: HoneycodeConnectorProfileProperties, location_name: "Honeycode"))
    ConnectorProfileProperties.add_member(:infor_nexus, ::Smithy::Schema::Shapes::MemberShape.new(target: InforNexusConnectorProfileProperties, location_name: "InforNexus"))
    ConnectorProfileProperties.add_member(:marketo, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketoConnectorProfileProperties, location_name: "Marketo"))
    ConnectorProfileProperties.add_member(:redshift, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftConnectorProfileProperties, location_name: "Redshift"))
    ConnectorProfileProperties.add_member(:salesforce, ::Smithy::Schema::Shapes::MemberShape.new(target: SalesforceConnectorProfileProperties, location_name: "Salesforce"))
    ConnectorProfileProperties.add_member(:service_now, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNowConnectorProfileProperties, location_name: "ServiceNow"))
    ConnectorProfileProperties.add_member(:singular, ::Smithy::Schema::Shapes::MemberShape.new(target: SingularConnectorProfileProperties, location_name: "Singular"))
    ConnectorProfileProperties.add_member(:slack, ::Smithy::Schema::Shapes::MemberShape.new(target: SlackConnectorProfileProperties, location_name: "Slack"))
    ConnectorProfileProperties.add_member(:snowflake, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeConnectorProfileProperties, location_name: "Snowflake"))
    ConnectorProfileProperties.add_member(:trendmicro, ::Smithy::Schema::Shapes::MemberShape.new(target: TrendmicroConnectorProfileProperties, location_name: "Trendmicro"))
    ConnectorProfileProperties.add_member(:veeva, ::Smithy::Schema::Shapes::MemberShape.new(target: VeevaConnectorProfileProperties, location_name: "Veeva"))
    ConnectorProfileProperties.add_member(:zendesk, ::Smithy::Schema::Shapes::MemberShape.new(target: ZendeskConnectorProfileProperties, location_name: "Zendesk"))
    ConnectorProfileProperties.add_member(:sapo_data, ::Smithy::Schema::Shapes::MemberShape.new(target: SAPODataConnectorProfileProperties, location_name: "SAPOData"))
    ConnectorProfileProperties.add_member(:custom_connector, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomConnectorProfileProperties, location_name: "CustomConnector"))
    ConnectorProfileProperties.add_member(:pardot, ::Smithy::Schema::Shapes::MemberShape.new(target: PardotConnectorProfileProperties, location_name: "Pardot"))
    ConnectorProfileProperties.type = Types::ConnectorProfileProperties
    ConnectorProvisioningConfig.add_member(:lambda, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaConnectorProvisioningConfig, location_name: "lambda"))
    ConnectorProvisioningConfig.type = Types::ConnectorProvisioningConfig
    ConnectorProvisioningType.add_member(:lambda, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LAMBDA", traits: {"smithy.api#enumValue" => "LAMBDA"}))
    ConnectorRuntimeSetting.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Key, location_name: "key"))
    ConnectorRuntimeSetting.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorRuntimeSettingDataType, location_name: "dataType"))
    ConnectorRuntimeSetting.add_member(:is_required, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "isRequired", traits: {"smithy.api#default" => false}))
    ConnectorRuntimeSetting.add_member(:label, ::Smithy::Schema::Shapes::MemberShape.new(target: Label, location_name: "label"))
    ConnectorRuntimeSetting.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description"))
    ConnectorRuntimeSetting.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorRuntimeSettingScope, location_name: "scope"))
    ConnectorRuntimeSetting.add_member(:connector_supplied_value_options, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorSuppliedValueOptionList, location_name: "connectorSuppliedValueOptions"))
    ConnectorRuntimeSetting.type = Types::ConnectorRuntimeSetting
    ConnectorRuntimeSettingList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorRuntimeSetting)
    ConnectorServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    ConnectorServerException.type = Types::ConnectorServerException
    ConnectorSuppliedValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorSuppliedValue)
    ConnectorSuppliedValueOptionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorSuppliedValue)
    ConnectorType.add_member(:salesforce, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SALESFORCE", traits: {"smithy.api#enumValue" => "Salesforce"}))
    ConnectorType.add_member(:singular, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SINGULAR", traits: {"smithy.api#enumValue" => "Singular"}))
    ConnectorType.add_member(:slack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SLACK", traits: {"smithy.api#enumValue" => "Slack"}))
    ConnectorType.add_member(:redshift, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REDSHIFT", traits: {"smithy.api#enumValue" => "Redshift"}))
    ConnectorType.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "S3", traits: {"smithy.api#enumValue" => "S3"}))
    ConnectorType.add_member(:marketo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MARKETO", traits: {"smithy.api#enumValue" => "Marketo"}))
    ConnectorType.add_member(:googleanalytics, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GOOGLEANALYTICS", traits: {"smithy.api#enumValue" => "Googleanalytics"}))
    ConnectorType.add_member(:zendesk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ZENDESK", traits: {"smithy.api#enumValue" => "Zendesk"}))
    ConnectorType.add_member(:servicenow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SERVICENOW", traits: {"smithy.api#enumValue" => "Servicenow"}))
    ConnectorType.add_member(:datadog, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DATADOG", traits: {"smithy.api#enumValue" => "Datadog"}))
    ConnectorType.add_member(:trendmicro, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRENDMICRO", traits: {"smithy.api#enumValue" => "Trendmicro"}))
    ConnectorType.add_member(:snowflake, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SNOWFLAKE", traits: {"smithy.api#enumValue" => "Snowflake"}))
    ConnectorType.add_member(:dynatrace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DYNATRACE", traits: {"smithy.api#enumValue" => "Dynatrace"}))
    ConnectorType.add_member(:infornexus, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INFORNEXUS", traits: {"smithy.api#enumValue" => "Infornexus"}))
    ConnectorType.add_member(:amplitude, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AMPLITUDE", traits: {"smithy.api#enumValue" => "Amplitude"}))
    ConnectorType.add_member(:veeva, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VEEVA", traits: {"smithy.api#enumValue" => "Veeva"}))
    ConnectorType.add_member(:eventbridge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EVENTBRIDGE", traits: {"smithy.api#enumValue" => "EventBridge"}))
    ConnectorType.add_member(:lookoutmetrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOOKOUTMETRICS", traits: {"smithy.api#enumValue" => "LookoutMetrics"}))
    ConnectorType.add_member(:upsolver, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPSOLVER", traits: {"smithy.api#enumValue" => "Upsolver"}))
    ConnectorType.add_member(:honeycode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HONEYCODE", traits: {"smithy.api#enumValue" => "Honeycode"}))
    ConnectorType.add_member(:customerprofiles, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CUSTOMERPROFILES", traits: {"smithy.api#enumValue" => "CustomerProfiles"}))
    ConnectorType.add_member(:sapodata, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SAPODATA", traits: {"smithy.api#enumValue" => "SAPOData"}))
    ConnectorType.add_member(:customconnector, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CUSTOMCONNECTOR", traits: {"smithy.api#enumValue" => "CustomConnector"}))
    ConnectorType.add_member(:pardot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PARDOT", traits: {"smithy.api#enumValue" => "Pardot"}))
    ConnectorTypeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorType)
    CreateConnectorProfileRequest.add_member(:connector_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorProfileName, location_name: "connectorProfileName", traits: {"smithy.api#required" => {}}))
    CreateConnectorProfileRequest.add_member(:kms_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSArn, location_name: "kmsArn"))
    CreateConnectorProfileRequest.add_member(:connector_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorType, location_name: "connectorType", traits: {"smithy.api#required" => {}}))
    CreateConnectorProfileRequest.add_member(:connector_label, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorLabel, location_name: "connectorLabel"))
    CreateConnectorProfileRequest.add_member(:connection_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionMode, location_name: "connectionMode", traits: {"smithy.api#required" => {}}))
    CreateConnectorProfileRequest.add_member(:connector_profile_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorProfileConfig, location_name: "connectorProfileConfig", traits: {"smithy.api#required" => {}}))
    CreateConnectorProfileRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateConnectorProfileRequest.type = Types::CreateConnectorProfileRequest
    CreateConnectorProfileResponse.add_member(:connector_profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorProfileArn, location_name: "connectorProfileArn"))
    CreateConnectorProfileResponse.type = Types::CreateConnectorProfileResponse
    CreateFlowRequest.add_member(:flow_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowName, location_name: "flowName", traits: {"smithy.api#required" => {}}))
    CreateFlowRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowDescription, location_name: "description"))
    CreateFlowRequest.add_member(:kms_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSArn, location_name: "kmsArn"))
    CreateFlowRequest.add_member(:trigger_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerConfig, location_name: "triggerConfig", traits: {"smithy.api#required" => {}}))
    CreateFlowRequest.add_member(:source_flow_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceFlowConfig, location_name: "sourceFlowConfig", traits: {"smithy.api#required" => {}}))
    CreateFlowRequest.add_member(:destination_flow_config_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationFlowConfigList, location_name: "destinationFlowConfigList", traits: {"smithy.api#required" => {}}))
    CreateFlowRequest.add_member(:tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: Tasks, location_name: "tasks", traits: {"smithy.api#required" => {}}))
    CreateFlowRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    CreateFlowRequest.add_member(:metadata_catalog_config, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataCatalogConfig, location_name: "metadataCatalogConfig"))
    CreateFlowRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateFlowRequest.type = Types::CreateFlowRequest
    CreateFlowResponse.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, location_name: "flowArn"))
    CreateFlowResponse.add_member(:flow_status, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowStatus, location_name: "flowStatus"))
    CreateFlowResponse.type = Types::CreateFlowResponse
    CredentialsMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialsMapKey)
    CredentialsMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialsMapValue)
    CustomAuthConfig.add_member(:custom_authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomAuthenticationType, location_name: "customAuthenticationType"))
    CustomAuthConfig.add_member(:auth_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthParameterList, location_name: "authParameters"))
    CustomAuthConfig.type = Types::CustomAuthConfig
    CustomAuthConfigList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CustomAuthConfig)
    CustomAuthCredentials.add_member(:custom_authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomAuthenticationType, location_name: "customAuthenticationType", traits: {"smithy.api#required" => {}}))
    CustomAuthCredentials.add_member(:credentials_map, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialsMap, location_name: "credentialsMap"))
    CustomAuthCredentials.type = Types::CustomAuthCredentials
    CustomConnectorDestinationProperties.add_member(:entity_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, location_name: "entityName", traits: {"smithy.api#required" => {}}))
    CustomConnectorDestinationProperties.add_member(:error_handling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorHandlingConfig, location_name: "errorHandlingConfig"))
    CustomConnectorDestinationProperties.add_member(:write_operation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WriteOperationType, location_name: "writeOperationType"))
    CustomConnectorDestinationProperties.add_member(:id_field_names, ::Smithy::Schema::Shapes::MemberShape.new(target: IdFieldNameList, location_name: "idFieldNames"))
    CustomConnectorDestinationProperties.add_member(:custom_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomProperties, location_name: "customProperties"))
    CustomConnectorDestinationProperties.type = Types::CustomConnectorDestinationProperties
    CustomConnectorProfileCredentials.add_member(:authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationType, location_name: "authenticationType", traits: {"smithy.api#required" => {}}))
    CustomConnectorProfileCredentials.add_member(:basic, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicAuthCredentials, location_name: "basic"))
    CustomConnectorProfileCredentials.add_member(:oauth2, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuth2Credentials, location_name: "oauth2"))
    CustomConnectorProfileCredentials.add_member(:api_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKeyCredentials, location_name: "apiKey"))
    CustomConnectorProfileCredentials.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomAuthCredentials, location_name: "custom"))
    CustomConnectorProfileCredentials.type = Types::CustomConnectorProfileCredentials
    CustomConnectorProfileProperties.add_member(:profile_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfilePropertiesMap, location_name: "profileProperties"))
    CustomConnectorProfileProperties.add_member(:o_auth2_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuth2Properties, location_name: "oAuth2Properties"))
    CustomConnectorProfileProperties.type = Types::CustomConnectorProfileProperties
    CustomConnectorSourceProperties.add_member(:entity_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, location_name: "entityName", traits: {"smithy.api#required" => {}}))
    CustomConnectorSourceProperties.add_member(:custom_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomProperties, location_name: "customProperties"))
    CustomConnectorSourceProperties.add_member(:data_transfer_api, ::Smithy::Schema::Shapes::MemberShape.new(target: DataTransferApi, location_name: "dataTransferApi"))
    CustomConnectorSourceProperties.type = Types::CustomConnectorSourceProperties
    CustomProperties.key = ::Smithy::Schema::Shapes::MemberShape.new(target: CustomPropertyKey)
    CustomProperties.value = ::Smithy::Schema::Shapes::MemberShape.new(target: CustomPropertyValue)
    CustomerProfilesDestinationProperties.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "domainName", traits: {"smithy.api#required" => {}}))
    CustomerProfilesDestinationProperties.add_member(:object_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectTypeName, location_name: "objectTypeName"))
    CustomerProfilesDestinationProperties.type = Types::CustomerProfilesDestinationProperties
    CustomerProfilesMetadata.type = Types::CustomerProfilesMetadata
    DataPullMode.add_member(:incremental, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INCREMENTAL", traits: {"smithy.api#enumValue" => "Incremental"}))
    DataPullMode.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETE", traits: {"smithy.api#enumValue" => "Complete"}))
    DataTransferApi.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataTransferApiTypeName, location_name: "Name"))
    DataTransferApi.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataTransferApiType, location_name: "Type"))
    DataTransferApi.type = Types::DataTransferApi
    DataTransferApiType.add_member(:sync, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SYNC", traits: {"smithy.api#enumValue" => "SYNC"}))
    DataTransferApiType.add_member(:async, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ASYNC", traits: {"smithy.api#enumValue" => "ASYNC"}))
    DataTransferApiType.add_member(:automatic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AUTOMATIC", traits: {"smithy.api#enumValue" => "AUTOMATIC"}))
    DatadogConnectorOperator.add_member(:projection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROJECTION", traits: {"smithy.api#enumValue" => "PROJECTION"}))
    DatadogConnectorOperator.add_member(:between, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BETWEEN", traits: {"smithy.api#enumValue" => "BETWEEN"}))
    DatadogConnectorOperator.add_member(:equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EQUAL_TO", traits: {"smithy.api#enumValue" => "EQUAL_TO"}))
    DatadogConnectorOperator.add_member(:addition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ADDITION", traits: {"smithy.api#enumValue" => "ADDITION"}))
    DatadogConnectorOperator.add_member(:multiplication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MULTIPLICATION", traits: {"smithy.api#enumValue" => "MULTIPLICATION"}))
    DatadogConnectorOperator.add_member(:division, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DIVISION", traits: {"smithy.api#enumValue" => "DIVISION"}))
    DatadogConnectorOperator.add_member(:subtraction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUBTRACTION", traits: {"smithy.api#enumValue" => "SUBTRACTION"}))
    DatadogConnectorOperator.add_member(:mask_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_ALL", traits: {"smithy.api#enumValue" => "MASK_ALL"}))
    DatadogConnectorOperator.add_member(:mask_first_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_FIRST_N", traits: {"smithy.api#enumValue" => "MASK_FIRST_N"}))
    DatadogConnectorOperator.add_member(:mask_last_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_LAST_N", traits: {"smithy.api#enumValue" => "MASK_LAST_N"}))
    DatadogConnectorOperator.add_member(:validate_non_null, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_NULL", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NULL"}))
    DatadogConnectorOperator.add_member(:validate_non_zero, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_ZERO", traits: {"smithy.api#enumValue" => "VALIDATE_NON_ZERO"}))
    DatadogConnectorOperator.add_member(:validate_non_negative, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_NEGATIVE", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NEGATIVE"}))
    DatadogConnectorOperator.add_member(:validate_numeric, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NUMERIC", traits: {"smithy.api#enumValue" => "VALIDATE_NUMERIC"}))
    DatadogConnectorOperator.add_member(:no_op, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_OP", traits: {"smithy.api#enumValue" => "NO_OP"}))
    DatadogConnectorProfileCredentials.add_member(:api_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKey, location_name: "apiKey", traits: {"smithy.api#required" => {}}))
    DatadogConnectorProfileCredentials.add_member(:application_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationKey, location_name: "applicationKey", traits: {"smithy.api#required" => {}}))
    DatadogConnectorProfileCredentials.type = Types::DatadogConnectorProfileCredentials
    DatadogConnectorProfileProperties.add_member(:instance_url, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceUrl, location_name: "instanceUrl", traits: {"smithy.api#required" => {}}))
    DatadogConnectorProfileProperties.type = Types::DatadogConnectorProfileProperties
    DatadogMetadata.type = Types::DatadogMetadata
    DatadogSourceProperties.add_member(:object, ::Smithy::Schema::Shapes::MemberShape.new(target: Object, location_name: "object", traits: {"smithy.api#required" => {}}))
    DatadogSourceProperties.type = Types::DatadogSourceProperties
    DeleteConnectorProfileRequest.add_member(:connector_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorProfileName, location_name: "connectorProfileName", traits: {"smithy.api#required" => {}}))
    DeleteConnectorProfileRequest.add_member(:force_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "forceDelete", traits: {"smithy.api#default" => false}))
    DeleteConnectorProfileRequest.type = Types::DeleteConnectorProfileRequest
    DeleteConnectorProfileResponse.type = Types::DeleteConnectorProfileResponse
    DeleteFlowRequest.add_member(:flow_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowName, location_name: "flowName", traits: {"smithy.api#required" => {}}))
    DeleteFlowRequest.add_member(:force_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "forceDelete", traits: {"smithy.api#default" => false}))
    DeleteFlowRequest.type = Types::DeleteFlowRequest
    DeleteFlowResponse.type = Types::DeleteFlowResponse
    DescribeConnectorEntityRequest.add_member(:connector_entity_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, location_name: "connectorEntityName", traits: {"smithy.api#required" => {}}))
    DescribeConnectorEntityRequest.add_member(:connector_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorType, location_name: "connectorType"))
    DescribeConnectorEntityRequest.add_member(:connector_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorProfileName, location_name: "connectorProfileName"))
    DescribeConnectorEntityRequest.add_member(:api_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiVersion, location_name: "apiVersion"))
    DescribeConnectorEntityRequest.type = Types::DescribeConnectorEntityRequest
    DescribeConnectorEntityResponse.add_member(:connector_entity_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorEntityFieldList, location_name: "connectorEntityFields", traits: {"smithy.api#required" => {}}))
    DescribeConnectorEntityResponse.type = Types::DescribeConnectorEntityResponse
    DescribeConnectorProfilesRequest.add_member(:connector_profile_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorProfileNameList, location_name: "connectorProfileNames"))
    DescribeConnectorProfilesRequest.add_member(:connector_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorType, location_name: "connectorType"))
    DescribeConnectorProfilesRequest.add_member(:connector_label, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorLabel, location_name: "connectorLabel"))
    DescribeConnectorProfilesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults"))
    DescribeConnectorProfilesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeConnectorProfilesRequest.type = Types::DescribeConnectorProfilesRequest
    DescribeConnectorProfilesResponse.add_member(:connector_profile_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorProfileDetailList, location_name: "connectorProfileDetails"))
    DescribeConnectorProfilesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeConnectorProfilesResponse.type = Types::DescribeConnectorProfilesResponse
    DescribeConnectorRequest.add_member(:connector_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorType, location_name: "connectorType", traits: {"smithy.api#required" => {}}))
    DescribeConnectorRequest.add_member(:connector_label, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorLabel, location_name: "connectorLabel"))
    DescribeConnectorRequest.type = Types::DescribeConnectorRequest
    DescribeConnectorResponse.add_member(:connector_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorConfiguration, location_name: "connectorConfiguration"))
    DescribeConnectorResponse.type = Types::DescribeConnectorResponse
    DescribeConnectorsRequest.add_member(:connector_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorTypeList, location_name: "connectorTypes"))
    DescribeConnectorsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults"))
    DescribeConnectorsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeConnectorsRequest.type = Types::DescribeConnectorsRequest
    DescribeConnectorsResponse.add_member(:connector_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorConfigurationsMap, location_name: "connectorConfigurations"))
    DescribeConnectorsResponse.add_member(:connectors, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorList, location_name: "connectors"))
    DescribeConnectorsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeConnectorsResponse.type = Types::DescribeConnectorsResponse
    DescribeFlowExecutionRecordsRequest.add_member(:flow_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowName, location_name: "flowName", traits: {"smithy.api#required" => {}}))
    DescribeFlowExecutionRecordsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults"))
    DescribeFlowExecutionRecordsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeFlowExecutionRecordsRequest.type = Types::DescribeFlowExecutionRecordsRequest
    DescribeFlowExecutionRecordsResponse.add_member(:flow_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowExecutionList, location_name: "flowExecutions"))
    DescribeFlowExecutionRecordsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeFlowExecutionRecordsResponse.type = Types::DescribeFlowExecutionRecordsResponse
    DescribeFlowRequest.add_member(:flow_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowName, location_name: "flowName", traits: {"smithy.api#required" => {}}))
    DescribeFlowRequest.type = Types::DescribeFlowRequest
    DescribeFlowResponse.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, location_name: "flowArn"))
    DescribeFlowResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowDescription, location_name: "description"))
    DescribeFlowResponse.add_member(:flow_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowName, location_name: "flowName"))
    DescribeFlowResponse.add_member(:kms_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSArn, location_name: "kmsArn"))
    DescribeFlowResponse.add_member(:flow_status, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowStatus, location_name: "flowStatus"))
    DescribeFlowResponse.add_member(:flow_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowStatusMessage, location_name: "flowStatusMessage"))
    DescribeFlowResponse.add_member(:source_flow_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceFlowConfig, location_name: "sourceFlowConfig"))
    DescribeFlowResponse.add_member(:destination_flow_config_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationFlowConfigList, location_name: "destinationFlowConfigList"))
    DescribeFlowResponse.add_member(:last_run_execution_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionDetails, location_name: "lastRunExecutionDetails"))
    DescribeFlowResponse.add_member(:trigger_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerConfig, location_name: "triggerConfig"))
    DescribeFlowResponse.add_member(:tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: Tasks, location_name: "tasks"))
    DescribeFlowResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "createdAt"))
    DescribeFlowResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedAt"))
    DescribeFlowResponse.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, location_name: "createdBy"))
    DescribeFlowResponse.add_member(:last_updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedBy, location_name: "lastUpdatedBy"))
    DescribeFlowResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    DescribeFlowResponse.add_member(:metadata_catalog_config, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataCatalogConfig, location_name: "metadataCatalogConfig"))
    DescribeFlowResponse.add_member(:last_run_metadata_catalog_details, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataCatalogDetails, location_name: "lastRunMetadataCatalogDetails"))
    DescribeFlowResponse.add_member(:schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, location_name: "schemaVersion"))
    DescribeFlowResponse.type = Types::DescribeFlowResponse
    DestinationConnectorProperties.add_member(:redshift, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftDestinationProperties, location_name: "Redshift"))
    DestinationConnectorProperties.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationProperties, location_name: "S3"))
    DestinationConnectorProperties.add_member(:salesforce, ::Smithy::Schema::Shapes::MemberShape.new(target: SalesforceDestinationProperties, location_name: "Salesforce"))
    DestinationConnectorProperties.add_member(:snowflake, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeDestinationProperties, location_name: "Snowflake"))
    DestinationConnectorProperties.add_member(:event_bridge, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBridgeDestinationProperties, location_name: "EventBridge"))
    DestinationConnectorProperties.add_member(:lookout_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: LookoutMetricsDestinationProperties, location_name: "LookoutMetrics"))
    DestinationConnectorProperties.add_member(:upsolver, ::Smithy::Schema::Shapes::MemberShape.new(target: UpsolverDestinationProperties, location_name: "Upsolver"))
    DestinationConnectorProperties.add_member(:honeycode, ::Smithy::Schema::Shapes::MemberShape.new(target: HoneycodeDestinationProperties, location_name: "Honeycode"))
    DestinationConnectorProperties.add_member(:customer_profiles, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerProfilesDestinationProperties, location_name: "CustomerProfiles"))
    DestinationConnectorProperties.add_member(:zendesk, ::Smithy::Schema::Shapes::MemberShape.new(target: ZendeskDestinationProperties, location_name: "Zendesk"))
    DestinationConnectorProperties.add_member(:marketo, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketoDestinationProperties, location_name: "Marketo"))
    DestinationConnectorProperties.add_member(:custom_connector, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomConnectorDestinationProperties, location_name: "CustomConnector"))
    DestinationConnectorProperties.add_member(:sapo_data, ::Smithy::Schema::Shapes::MemberShape.new(target: SAPODataDestinationProperties, location_name: "SAPOData"))
    DestinationConnectorProperties.type = Types::DestinationConnectorProperties
    DestinationFieldProperties.add_member(:is_creatable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "isCreatable", traits: {"smithy.api#default" => false}))
    DestinationFieldProperties.add_member(:is_nullable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "isNullable", traits: {"smithy.api#default" => false}))
    DestinationFieldProperties.add_member(:is_upsertable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "isUpsertable", traits: {"smithy.api#default" => false}))
    DestinationFieldProperties.add_member(:is_updatable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "isUpdatable", traits: {"smithy.api#default" => false}))
    DestinationFieldProperties.add_member(:is_defaulted_on_create, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "isDefaultedOnCreate", traits: {"smithy.api#default" => false}))
    DestinationFieldProperties.add_member(:supported_write_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedWriteOperationList, location_name: "supportedWriteOperations"))
    DestinationFieldProperties.type = Types::DestinationFieldProperties
    DestinationFlowConfig.add_member(:connector_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorType, location_name: "connectorType", traits: {"smithy.api#required" => {}}))
    DestinationFlowConfig.add_member(:api_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiVersion, location_name: "apiVersion"))
    DestinationFlowConfig.add_member(:connector_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorProfileName, location_name: "connectorProfileName"))
    DestinationFlowConfig.add_member(:destination_connector_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConnectorProperties, location_name: "destinationConnectorProperties", traits: {"smithy.api#required" => {}}))
    DestinationFlowConfig.type = Types::DestinationFlowConfig
    DestinationFlowConfigList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationFlowConfig)
    DynatraceConnectorOperator.add_member(:projection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROJECTION", traits: {"smithy.api#enumValue" => "PROJECTION"}))
    DynatraceConnectorOperator.add_member(:between, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BETWEEN", traits: {"smithy.api#enumValue" => "BETWEEN"}))
    DynatraceConnectorOperator.add_member(:equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EQUAL_TO", traits: {"smithy.api#enumValue" => "EQUAL_TO"}))
    DynatraceConnectorOperator.add_member(:addition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ADDITION", traits: {"smithy.api#enumValue" => "ADDITION"}))
    DynatraceConnectorOperator.add_member(:multiplication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MULTIPLICATION", traits: {"smithy.api#enumValue" => "MULTIPLICATION"}))
    DynatraceConnectorOperator.add_member(:division, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DIVISION", traits: {"smithy.api#enumValue" => "DIVISION"}))
    DynatraceConnectorOperator.add_member(:subtraction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUBTRACTION", traits: {"smithy.api#enumValue" => "SUBTRACTION"}))
    DynatraceConnectorOperator.add_member(:mask_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_ALL", traits: {"smithy.api#enumValue" => "MASK_ALL"}))
    DynatraceConnectorOperator.add_member(:mask_first_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_FIRST_N", traits: {"smithy.api#enumValue" => "MASK_FIRST_N"}))
    DynatraceConnectorOperator.add_member(:mask_last_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_LAST_N", traits: {"smithy.api#enumValue" => "MASK_LAST_N"}))
    DynatraceConnectorOperator.add_member(:validate_non_null, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_NULL", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NULL"}))
    DynatraceConnectorOperator.add_member(:validate_non_zero, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_ZERO", traits: {"smithy.api#enumValue" => "VALIDATE_NON_ZERO"}))
    DynatraceConnectorOperator.add_member(:validate_non_negative, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_NEGATIVE", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NEGATIVE"}))
    DynatraceConnectorOperator.add_member(:validate_numeric, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NUMERIC", traits: {"smithy.api#enumValue" => "VALIDATE_NUMERIC"}))
    DynatraceConnectorOperator.add_member(:no_op, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_OP", traits: {"smithy.api#enumValue" => "NO_OP"}))
    DynatraceConnectorProfileCredentials.add_member(:api_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiToken, location_name: "apiToken", traits: {"smithy.api#required" => {}}))
    DynatraceConnectorProfileCredentials.type = Types::DynatraceConnectorProfileCredentials
    DynatraceConnectorProfileProperties.add_member(:instance_url, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceUrl, location_name: "instanceUrl", traits: {"smithy.api#required" => {}}))
    DynatraceConnectorProfileProperties.type = Types::DynatraceConnectorProfileProperties
    DynatraceMetadata.type = Types::DynatraceMetadata
    DynatraceSourceProperties.add_member(:object, ::Smithy::Schema::Shapes::MemberShape.new(target: Object, location_name: "object", traits: {"smithy.api#required" => {}}))
    DynatraceSourceProperties.type = Types::DynatraceSourceProperties
    ErrorHandlingConfig.add_member(:fail_on_first_destination_error, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "failOnFirstDestinationError", traits: {"smithy.api#default" => false}))
    ErrorHandlingConfig.add_member(:bucket_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketPrefix, location_name: "bucketPrefix"))
    ErrorHandlingConfig.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, location_name: "bucketName"))
    ErrorHandlingConfig.type = Types::ErrorHandlingConfig
    ErrorInfo.add_member(:put_failures_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, location_name: "putFailuresCount"))
    ErrorInfo.add_member(:execution_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionMessage, location_name: "executionMessage"))
    ErrorInfo.type = Types::ErrorInfo
    EventBridgeDestinationProperties.add_member(:object, ::Smithy::Schema::Shapes::MemberShape.new(target: Object, location_name: "object", traits: {"smithy.api#required" => {}}))
    EventBridgeDestinationProperties.add_member(:error_handling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorHandlingConfig, location_name: "errorHandlingConfig"))
    EventBridgeDestinationProperties.type = Types::EventBridgeDestinationProperties
    EventBridgeMetadata.type = Types::EventBridgeMetadata
    ExecutionDetails.add_member(:most_recent_execution_message, ::Smithy::Schema::Shapes::MemberShape.new(target: MostRecentExecutionMessage, location_name: "mostRecentExecutionMessage"))
    ExecutionDetails.add_member(:most_recent_execution_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "mostRecentExecutionTime"))
    ExecutionDetails.add_member(:most_recent_execution_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionStatus, location_name: "mostRecentExecutionStatus"))
    ExecutionDetails.type = Types::ExecutionDetails
    ExecutionIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionId)
    ExecutionRecord.add_member(:execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionId, location_name: "executionId"))
    ExecutionRecord.add_member(:execution_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionStatus, location_name: "executionStatus"))
    ExecutionRecord.add_member(:execution_result, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionResult, location_name: "executionResult"))
    ExecutionRecord.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "startedAt"))
    ExecutionRecord.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedAt"))
    ExecutionRecord.add_member(:data_pull_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "dataPullStartTime"))
    ExecutionRecord.add_member(:data_pull_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "dataPullEndTime"))
    ExecutionRecord.add_member(:metadata_catalog_details, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataCatalogDetails, location_name: "metadataCatalogDetails"))
    ExecutionRecord.type = Types::ExecutionRecord
    ExecutionResult.add_member(:error_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorInfo, location_name: "errorInfo"))
    ExecutionResult.add_member(:bytes_processed, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, location_name: "bytesProcessed"))
    ExecutionResult.add_member(:bytes_written, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, location_name: "bytesWritten"))
    ExecutionResult.add_member(:records_processed, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, location_name: "recordsProcessed"))
    ExecutionResult.add_member(:num_parallel_processes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, location_name: "numParallelProcesses"))
    ExecutionResult.add_member(:max_page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, location_name: "maxPageSize"))
    ExecutionResult.type = Types::ExecutionResult
    ExecutionStatus.add_member(:inprogress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INPROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    ExecutionStatus.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCESSFUL", traits: {"smithy.api#enumValue" => "Successful"}))
    ExecutionStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "Error"}))
    ExecutionStatus.add_member(:cancelstarted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANCELSTARTED", traits: {"smithy.api#enumValue" => "CancelStarted"}))
    ExecutionStatus.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANCELED", traits: {"smithy.api#enumValue" => "Canceled"}))
    FieldTypeDetails.add_member(:field_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldType, location_name: "fieldType", traits: {"smithy.api#required" => {}}))
    FieldTypeDetails.add_member(:filter_operators, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterOperatorList, location_name: "filterOperators", traits: {"smithy.api#required" => {}}))
    FieldTypeDetails.add_member(:supported_values, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedValueList, location_name: "supportedValues"))
    FieldTypeDetails.add_member(:value_regex_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "valueRegexPattern"))
    FieldTypeDetails.add_member(:supported_date_format, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "supportedDateFormat"))
    FieldTypeDetails.add_member(:field_value_range, ::Smithy::Schema::Shapes::MemberShape.new(target: Range, location_name: "fieldValueRange"))
    FieldTypeDetails.add_member(:field_length_range, ::Smithy::Schema::Shapes::MemberShape.new(target: Range, location_name: "fieldLengthRange"))
    FieldTypeDetails.type = Types::FieldTypeDetails
    FileType.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CSV", traits: {"smithy.api#enumValue" => "CSV"}))
    FileType.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JSON", traits: {"smithy.api#enumValue" => "JSON"}))
    FileType.add_member(:parquet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PARQUET", traits: {"smithy.api#enumValue" => "PARQUET"}))
    FilterOperatorList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Operator)
    FlowDefinition.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, location_name: "flowArn"))
    FlowDefinition.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowDescription, location_name: "description"))
    FlowDefinition.add_member(:flow_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowName, location_name: "flowName"))
    FlowDefinition.add_member(:flow_status, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowStatus, location_name: "flowStatus"))
    FlowDefinition.add_member(:source_connector_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorType, location_name: "sourceConnectorType"))
    FlowDefinition.add_member(:source_connector_label, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorLabel, location_name: "sourceConnectorLabel"))
    FlowDefinition.add_member(:destination_connector_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorType, location_name: "destinationConnectorType"))
    FlowDefinition.add_member(:destination_connector_label, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorLabel, location_name: "destinationConnectorLabel"))
    FlowDefinition.add_member(:trigger_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerType, location_name: "triggerType"))
    FlowDefinition.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "createdAt"))
    FlowDefinition.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "lastUpdatedAt"))
    FlowDefinition.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedBy, location_name: "createdBy"))
    FlowDefinition.add_member(:last_updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedBy, location_name: "lastUpdatedBy"))
    FlowDefinition.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    FlowDefinition.add_member(:last_run_execution_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionDetails, location_name: "lastRunExecutionDetails"))
    FlowDefinition.type = Types::FlowDefinition
    FlowExecutionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionRecord)
    FlowList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FlowDefinition)
    FlowStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "Active"}))
    FlowStatus.add_member(:deprecated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEPRECATED", traits: {"smithy.api#enumValue" => "Deprecated"}))
    FlowStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETED", traits: {"smithy.api#enumValue" => "Deleted"}))
    FlowStatus.add_member(:draft, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DRAFT", traits: {"smithy.api#enumValue" => "Draft"}))
    FlowStatus.add_member(:errored, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERRORED", traits: {"smithy.api#enumValue" => "Errored"}))
    FlowStatus.add_member(:suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUSPENDED", traits: {"smithy.api#enumValue" => "Suspended"}))
    GlueDataCatalogConfig.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GlueDataCatalogIAMRole, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    GlueDataCatalogConfig.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GlueDataCatalogDatabaseName, location_name: "databaseName", traits: {"smithy.api#required" => {}}))
    GlueDataCatalogConfig.add_member(:table_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: GlueDataCatalogTablePrefix, location_name: "tablePrefix", traits: {"smithy.api#required" => {}}))
    GlueDataCatalogConfig.type = Types::GlueDataCatalogConfig
    GoogleAnalyticsConnectorOperator.add_member(:projection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROJECTION", traits: {"smithy.api#enumValue" => "PROJECTION"}))
    GoogleAnalyticsConnectorOperator.add_member(:between, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BETWEEN", traits: {"smithy.api#enumValue" => "BETWEEN"}))
    GoogleAnalyticsConnectorProfileCredentials.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientId, location_name: "clientId", traits: {"smithy.api#required" => {}}))
    GoogleAnalyticsConnectorProfileCredentials.add_member(:client_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientSecret, location_name: "clientSecret", traits: {"smithy.api#required" => {}}))
    GoogleAnalyticsConnectorProfileCredentials.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessToken, location_name: "accessToken"))
    GoogleAnalyticsConnectorProfileCredentials.add_member(:refresh_token, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshToken, location_name: "refreshToken"))
    GoogleAnalyticsConnectorProfileCredentials.add_member(:o_auth_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorOAuthRequest, location_name: "oAuthRequest"))
    GoogleAnalyticsConnectorProfileCredentials.type = Types::GoogleAnalyticsConnectorProfileCredentials
    GoogleAnalyticsConnectorProfileProperties.type = Types::GoogleAnalyticsConnectorProfileProperties
    GoogleAnalyticsMetadata.add_member(:o_auth_scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuthScopeList, location_name: "oAuthScopes"))
    GoogleAnalyticsMetadata.type = Types::GoogleAnalyticsMetadata
    GoogleAnalyticsSourceProperties.add_member(:object, ::Smithy::Schema::Shapes::MemberShape.new(target: Object, location_name: "object", traits: {"smithy.api#required" => {}}))
    GoogleAnalyticsSourceProperties.type = Types::GoogleAnalyticsSourceProperties
    HoneycodeConnectorProfileCredentials.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessToken, location_name: "accessToken"))
    HoneycodeConnectorProfileCredentials.add_member(:refresh_token, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshToken, location_name: "refreshToken"))
    HoneycodeConnectorProfileCredentials.add_member(:o_auth_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorOAuthRequest, location_name: "oAuthRequest"))
    HoneycodeConnectorProfileCredentials.type = Types::HoneycodeConnectorProfileCredentials
    HoneycodeConnectorProfileProperties.type = Types::HoneycodeConnectorProfileProperties
    HoneycodeDestinationProperties.add_member(:object, ::Smithy::Schema::Shapes::MemberShape.new(target: Object, location_name: "object", traits: {"smithy.api#required" => {}}))
    HoneycodeDestinationProperties.add_member(:error_handling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorHandlingConfig, location_name: "errorHandlingConfig"))
    HoneycodeDestinationProperties.type = Types::HoneycodeDestinationProperties
    HoneycodeMetadata.add_member(:o_auth_scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuthScopeList, location_name: "oAuthScopes"))
    HoneycodeMetadata.type = Types::HoneycodeMetadata
    IdFieldNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Name)
    IncrementalPullConfig.add_member(:datetime_type_field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatetimeTypeFieldName, location_name: "datetimeTypeFieldName"))
    IncrementalPullConfig.type = Types::IncrementalPullConfig
    InforNexusConnectorOperator.add_member(:projection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROJECTION", traits: {"smithy.api#enumValue" => "PROJECTION"}))
    InforNexusConnectorOperator.add_member(:between, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BETWEEN", traits: {"smithy.api#enumValue" => "BETWEEN"}))
    InforNexusConnectorOperator.add_member(:equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EQUAL_TO", traits: {"smithy.api#enumValue" => "EQUAL_TO"}))
    InforNexusConnectorOperator.add_member(:addition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ADDITION", traits: {"smithy.api#enumValue" => "ADDITION"}))
    InforNexusConnectorOperator.add_member(:multiplication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MULTIPLICATION", traits: {"smithy.api#enumValue" => "MULTIPLICATION"}))
    InforNexusConnectorOperator.add_member(:division, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DIVISION", traits: {"smithy.api#enumValue" => "DIVISION"}))
    InforNexusConnectorOperator.add_member(:subtraction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUBTRACTION", traits: {"smithy.api#enumValue" => "SUBTRACTION"}))
    InforNexusConnectorOperator.add_member(:mask_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_ALL", traits: {"smithy.api#enumValue" => "MASK_ALL"}))
    InforNexusConnectorOperator.add_member(:mask_first_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_FIRST_N", traits: {"smithy.api#enumValue" => "MASK_FIRST_N"}))
    InforNexusConnectorOperator.add_member(:mask_last_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_LAST_N", traits: {"smithy.api#enumValue" => "MASK_LAST_N"}))
    InforNexusConnectorOperator.add_member(:validate_non_null, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_NULL", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NULL"}))
    InforNexusConnectorOperator.add_member(:validate_non_zero, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_ZERO", traits: {"smithy.api#enumValue" => "VALIDATE_NON_ZERO"}))
    InforNexusConnectorOperator.add_member(:validate_non_negative, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_NEGATIVE", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NEGATIVE"}))
    InforNexusConnectorOperator.add_member(:validate_numeric, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NUMERIC", traits: {"smithy.api#enumValue" => "VALIDATE_NUMERIC"}))
    InforNexusConnectorOperator.add_member(:no_op, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_OP", traits: {"smithy.api#enumValue" => "NO_OP"}))
    InforNexusConnectorProfileCredentials.add_member(:access_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessKeyId, location_name: "accessKeyId", traits: {"smithy.api#required" => {}}))
    InforNexusConnectorProfileCredentials.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Username, location_name: "userId", traits: {"smithy.api#required" => {}}))
    InforNexusConnectorProfileCredentials.add_member(:secret_access_key, ::Smithy::Schema::Shapes::MemberShape.new(target: Key, location_name: "secretAccessKey", traits: {"smithy.api#required" => {}}))
    InforNexusConnectorProfileCredentials.add_member(:datakey, ::Smithy::Schema::Shapes::MemberShape.new(target: Key, location_name: "datakey", traits: {"smithy.api#required" => {}}))
    InforNexusConnectorProfileCredentials.type = Types::InforNexusConnectorProfileCredentials
    InforNexusConnectorProfileProperties.add_member(:instance_url, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceUrl, location_name: "instanceUrl", traits: {"smithy.api#required" => {}}))
    InforNexusConnectorProfileProperties.type = Types::InforNexusConnectorProfileProperties
    InforNexusMetadata.type = Types::InforNexusMetadata
    InforNexusSourceProperties.add_member(:object, ::Smithy::Schema::Shapes::MemberShape.new(target: Object, location_name: "object", traits: {"smithy.api#required" => {}}))
    InforNexusSourceProperties.type = Types::InforNexusSourceProperties
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    InternalServerException.type = Types::InternalServerException
    LambdaConnectorProvisioningConfig.add_member(:lambda_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "lambdaArn", traits: {"smithy.api#required" => {}}))
    LambdaConnectorProvisioningConfig.type = Types::LambdaConnectorProvisioningConfig
    ListConnectorEntitiesRequest.add_member(:connector_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorProfileName, location_name: "connectorProfileName"))
    ListConnectorEntitiesRequest.add_member(:connector_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorType, location_name: "connectorType"))
    ListConnectorEntitiesRequest.add_member(:entities_path, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitiesPath, location_name: "entitiesPath"))
    ListConnectorEntitiesRequest.add_member(:api_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiVersion, location_name: "apiVersion"))
    ListConnectorEntitiesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListEntitiesMaxResults, location_name: "maxResults"))
    ListConnectorEntitiesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListConnectorEntitiesRequest.type = Types::ListConnectorEntitiesRequest
    ListConnectorEntitiesResponse.add_member(:connector_entity_map, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorEntityMap, location_name: "connectorEntityMap", traits: {"smithy.api#required" => {}}))
    ListConnectorEntitiesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListConnectorEntitiesResponse.type = Types::ListConnectorEntitiesResponse
    ListConnectorsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults"))
    ListConnectorsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListConnectorsRequest.type = Types::ListConnectorsRequest
    ListConnectorsResponse.add_member(:connectors, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorList, location_name: "connectors"))
    ListConnectorsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListConnectorsResponse.type = Types::ListConnectorsResponse
    ListFlowsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults"))
    ListFlowsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListFlowsRequest.type = Types::ListFlowsRequest
    ListFlowsResponse.add_member(:flows, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowList, location_name: "flows"))
    ListFlowsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListFlowsResponse.type = Types::ListFlowsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LookoutMetricsDestinationProperties.type = Types::LookoutMetricsDestinationProperties
    MarketoConnectorOperator.add_member(:projection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROJECTION", traits: {"smithy.api#enumValue" => "PROJECTION"}))
    MarketoConnectorOperator.add_member(:less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LESS_THAN", traits: {"smithy.api#enumValue" => "LESS_THAN"}))
    MarketoConnectorOperator.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GREATER_THAN", traits: {"smithy.api#enumValue" => "GREATER_THAN"}))
    MarketoConnectorOperator.add_member(:between, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BETWEEN", traits: {"smithy.api#enumValue" => "BETWEEN"}))
    MarketoConnectorOperator.add_member(:addition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ADDITION", traits: {"smithy.api#enumValue" => "ADDITION"}))
    MarketoConnectorOperator.add_member(:multiplication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MULTIPLICATION", traits: {"smithy.api#enumValue" => "MULTIPLICATION"}))
    MarketoConnectorOperator.add_member(:division, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DIVISION", traits: {"smithy.api#enumValue" => "DIVISION"}))
    MarketoConnectorOperator.add_member(:subtraction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUBTRACTION", traits: {"smithy.api#enumValue" => "SUBTRACTION"}))
    MarketoConnectorOperator.add_member(:mask_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_ALL", traits: {"smithy.api#enumValue" => "MASK_ALL"}))
    MarketoConnectorOperator.add_member(:mask_first_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_FIRST_N", traits: {"smithy.api#enumValue" => "MASK_FIRST_N"}))
    MarketoConnectorOperator.add_member(:mask_last_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_LAST_N", traits: {"smithy.api#enumValue" => "MASK_LAST_N"}))
    MarketoConnectorOperator.add_member(:validate_non_null, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_NULL", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NULL"}))
    MarketoConnectorOperator.add_member(:validate_non_zero, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_ZERO", traits: {"smithy.api#enumValue" => "VALIDATE_NON_ZERO"}))
    MarketoConnectorOperator.add_member(:validate_non_negative, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_NEGATIVE", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NEGATIVE"}))
    MarketoConnectorOperator.add_member(:validate_numeric, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NUMERIC", traits: {"smithy.api#enumValue" => "VALIDATE_NUMERIC"}))
    MarketoConnectorOperator.add_member(:no_op, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_OP", traits: {"smithy.api#enumValue" => "NO_OP"}))
    MarketoConnectorProfileCredentials.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientId, location_name: "clientId", traits: {"smithy.api#required" => {}}))
    MarketoConnectorProfileCredentials.add_member(:client_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientSecret, location_name: "clientSecret", traits: {"smithy.api#required" => {}}))
    MarketoConnectorProfileCredentials.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessToken, location_name: "accessToken"))
    MarketoConnectorProfileCredentials.add_member(:o_auth_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorOAuthRequest, location_name: "oAuthRequest"))
    MarketoConnectorProfileCredentials.type = Types::MarketoConnectorProfileCredentials
    MarketoConnectorProfileProperties.add_member(:instance_url, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceUrl, location_name: "instanceUrl", traits: {"smithy.api#required" => {}}))
    MarketoConnectorProfileProperties.type = Types::MarketoConnectorProfileProperties
    MarketoDestinationProperties.add_member(:object, ::Smithy::Schema::Shapes::MemberShape.new(target: Object, location_name: "object", traits: {"smithy.api#required" => {}}))
    MarketoDestinationProperties.add_member(:error_handling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorHandlingConfig, location_name: "errorHandlingConfig"))
    MarketoDestinationProperties.type = Types::MarketoDestinationProperties
    MarketoMetadata.type = Types::MarketoMetadata
    MarketoSourceProperties.add_member(:object, ::Smithy::Schema::Shapes::MemberShape.new(target: Object, location_name: "object", traits: {"smithy.api#required" => {}}))
    MarketoSourceProperties.type = Types::MarketoSourceProperties
    MetadataCatalogConfig.add_member(:glue_data_catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: GlueDataCatalogConfig, location_name: "glueDataCatalog"))
    MetadataCatalogConfig.type = Types::MetadataCatalogConfig
    MetadataCatalogDetail.add_member(:catalog_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogType, location_name: "catalogType"))
    MetadataCatalogDetail.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "tableName"))
    MetadataCatalogDetail.add_member(:table_registration_output, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationOutput, location_name: "tableRegistrationOutput"))
    MetadataCatalogDetail.add_member(:partition_registration_output, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationOutput, location_name: "partitionRegistrationOutput"))
    MetadataCatalogDetail.type = Types::MetadataCatalogDetail
    MetadataCatalogDetails.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataCatalogDetail)
    OAuth2Credentials.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientId, location_name: "clientId"))
    OAuth2Credentials.add_member(:client_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientSecret, location_name: "clientSecret"))
    OAuth2Credentials.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessToken, location_name: "accessToken"))
    OAuth2Credentials.add_member(:refresh_token, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshToken, location_name: "refreshToken"))
    OAuth2Credentials.add_member(:o_auth_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorOAuthRequest, location_name: "oAuthRequest"))
    OAuth2Credentials.type = Types::OAuth2Credentials
    OAuth2CustomParameter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Key, location_name: "key"))
    OAuth2CustomParameter.add_member(:is_required, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "isRequired", traits: {"smithy.api#default" => false}))
    OAuth2CustomParameter.add_member(:label, ::Smithy::Schema::Shapes::MemberShape.new(target: Label, location_name: "label"))
    OAuth2CustomParameter.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description"))
    OAuth2CustomParameter.add_member(:is_sensitive_field, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "isSensitiveField", traits: {"smithy.api#default" => false}))
    OAuth2CustomParameter.add_member(:connector_supplied_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorSuppliedValueList, location_name: "connectorSuppliedValues"))
    OAuth2CustomParameter.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuth2CustomPropType, location_name: "type"))
    OAuth2CustomParameter.type = Types::OAuth2CustomParameter
    OAuth2CustomPropType.add_member(:token_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TOKEN_URL", traits: {"smithy.api#enumValue" => "TOKEN_URL"}))
    OAuth2CustomPropType.add_member(:auth_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AUTH_URL", traits: {"smithy.api#enumValue" => "AUTH_URL"}))
    OAuth2CustomPropertiesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OAuth2CustomParameter)
    OAuth2Defaults.add_member(:oauth_scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuthScopeList, location_name: "oauthScopes"))
    OAuth2Defaults.add_member(:token_urls, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenUrlList, location_name: "tokenUrls"))
    OAuth2Defaults.add_member(:auth_code_urls, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthCodeUrlList, location_name: "authCodeUrls"))
    OAuth2Defaults.add_member(:oauth2_grant_types_supported, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuth2GrantTypeSupportedList, location_name: "oauth2GrantTypesSupported"))
    OAuth2Defaults.add_member(:oauth2_custom_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuth2CustomPropertiesList, location_name: "oauth2CustomProperties"))
    OAuth2Defaults.type = Types::OAuth2Defaults
    OAuth2GrantType.add_member(:client_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CLIENT_CREDENTIALS", traits: {"smithy.api#enumValue" => "CLIENT_CREDENTIALS"}))
    OAuth2GrantType.add_member(:authorization_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AUTHORIZATION_CODE", traits: {"smithy.api#enumValue" => "AUTHORIZATION_CODE"}))
    OAuth2GrantType.add_member(:jwt_bearer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JWT_BEARER", traits: {"smithy.api#enumValue" => "JWT_BEARER"}))
    OAuth2GrantTypeSupportedList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OAuth2GrantType)
    OAuth2Properties.add_member(:token_url, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenUrl, location_name: "tokenUrl", traits: {"smithy.api#required" => {}}))
    OAuth2Properties.add_member(:o_auth2_grant_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuth2GrantType, location_name: "oAuth2GrantType", traits: {"smithy.api#required" => {}}))
    OAuth2Properties.add_member(:token_url_custom_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenUrlCustomProperties, location_name: "tokenUrlCustomProperties"))
    OAuth2Properties.type = Types::OAuth2Properties
    OAuthCredentials.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientId, location_name: "clientId", traits: {"smithy.api#required" => {}}))
    OAuthCredentials.add_member(:client_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientSecret, location_name: "clientSecret", traits: {"smithy.api#required" => {}}))
    OAuthCredentials.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessToken, location_name: "accessToken"))
    OAuthCredentials.add_member(:refresh_token, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshToken, location_name: "refreshToken"))
    OAuthCredentials.add_member(:o_auth_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorOAuthRequest, location_name: "oAuthRequest"))
    OAuthCredentials.type = Types::OAuthCredentials
    OAuthProperties.add_member(:token_url, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenUrl, location_name: "tokenUrl", traits: {"smithy.api#required" => {}}))
    OAuthProperties.add_member(:auth_code_url, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthCodeUrl, location_name: "authCodeUrl", traits: {"smithy.api#required" => {}}))
    OAuthProperties.add_member(:o_auth_scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuthScopeList, location_name: "oAuthScopes", traits: {"smithy.api#required" => {}}))
    OAuthProperties.type = Types::OAuthProperties
    OAuthScopeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OAuthScope)
    Operator.add_member(:projection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROJECTION", traits: {"smithy.api#enumValue" => "PROJECTION"}))
    Operator.add_member(:less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LESS_THAN", traits: {"smithy.api#enumValue" => "LESS_THAN"}))
    Operator.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GREATER_THAN", traits: {"smithy.api#enumValue" => "GREATER_THAN"}))
    Operator.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONTAINS", traits: {"smithy.api#enumValue" => "CONTAINS"}))
    Operator.add_member(:between, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BETWEEN", traits: {"smithy.api#enumValue" => "BETWEEN"}))
    Operator.add_member(:less_than_or_equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LESS_THAN_OR_EQUAL_TO", traits: {"smithy.api#enumValue" => "LESS_THAN_OR_EQUAL_TO"}))
    Operator.add_member(:greater_than_or_equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GREATER_THAN_OR_EQUAL_TO", traits: {"smithy.api#enumValue" => "GREATER_THAN_OR_EQUAL_TO"}))
    Operator.add_member(:equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EQUAL_TO", traits: {"smithy.api#enumValue" => "EQUAL_TO"}))
    Operator.add_member(:not_equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_EQUAL_TO", traits: {"smithy.api#enumValue" => "NOT_EQUAL_TO"}))
    Operator.add_member(:addition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ADDITION", traits: {"smithy.api#enumValue" => "ADDITION"}))
    Operator.add_member(:multiplication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MULTIPLICATION", traits: {"smithy.api#enumValue" => "MULTIPLICATION"}))
    Operator.add_member(:division, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DIVISION", traits: {"smithy.api#enumValue" => "DIVISION"}))
    Operator.add_member(:subtraction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUBTRACTION", traits: {"smithy.api#enumValue" => "SUBTRACTION"}))
    Operator.add_member(:mask_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_ALL", traits: {"smithy.api#enumValue" => "MASK_ALL"}))
    Operator.add_member(:mask_first_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_FIRST_N", traits: {"smithy.api#enumValue" => "MASK_FIRST_N"}))
    Operator.add_member(:mask_last_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_LAST_N", traits: {"smithy.api#enumValue" => "MASK_LAST_N"}))
    Operator.add_member(:validate_non_null, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_NULL", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NULL"}))
    Operator.add_member(:validate_non_zero, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_ZERO", traits: {"smithy.api#enumValue" => "VALIDATE_NON_ZERO"}))
    Operator.add_member(:validate_non_negative, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_NEGATIVE", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NEGATIVE"}))
    Operator.add_member(:validate_numeric, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NUMERIC", traits: {"smithy.api#enumValue" => "VALIDATE_NUMERIC"}))
    Operator.add_member(:no_op, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_OP", traits: {"smithy.api#enumValue" => "NO_OP"}))
    OperatorPropertiesKeys.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALUE", traits: {"smithy.api#enumValue" => "VALUE"}))
    OperatorPropertiesKeys.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALUES", traits: {"smithy.api#enumValue" => "VALUES"}))
    OperatorPropertiesKeys.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DATA_TYPE", traits: {"smithy.api#enumValue" => "DATA_TYPE"}))
    OperatorPropertiesKeys.add_member(:upper_bound, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPPER_BOUND", traits: {"smithy.api#enumValue" => "UPPER_BOUND"}))
    OperatorPropertiesKeys.add_member(:lower_bound, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOWER_BOUND", traits: {"smithy.api#enumValue" => "LOWER_BOUND"}))
    OperatorPropertiesKeys.add_member(:source_data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SOURCE_DATA_TYPE", traits: {"smithy.api#enumValue" => "SOURCE_DATA_TYPE"}))
    OperatorPropertiesKeys.add_member(:destination_data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DESTINATION_DATA_TYPE", traits: {"smithy.api#enumValue" => "DESTINATION_DATA_TYPE"}))
    OperatorPropertiesKeys.add_member(:validation_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATION_ACTION", traits: {"smithy.api#enumValue" => "VALIDATION_ACTION"}))
    OperatorPropertiesKeys.add_member(:mask_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_VALUE", traits: {"smithy.api#enumValue" => "MASK_VALUE"}))
    OperatorPropertiesKeys.add_member(:mask_length, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_LENGTH", traits: {"smithy.api#enumValue" => "MASK_LENGTH"}))
    OperatorPropertiesKeys.add_member(:truncate_length, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRUNCATE_LENGTH", traits: {"smithy.api#enumValue" => "TRUNCATE_LENGTH"}))
    OperatorPropertiesKeys.add_member(:math_operation_fields_order, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MATH_OPERATION_FIELDS_ORDER", traits: {"smithy.api#enumValue" => "MATH_OPERATION_FIELDS_ORDER"}))
    OperatorPropertiesKeys.add_member(:concat_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONCAT_FORMAT", traits: {"smithy.api#enumValue" => "CONCAT_FORMAT"}))
    OperatorPropertiesKeys.add_member(:subfield_category_map, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUBFIELD_CATEGORY_MAP", traits: {"smithy.api#enumValue" => "SUBFIELD_CATEGORY_MAP"}))
    OperatorPropertiesKeys.add_member(:exclude_source_fields_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXCLUDE_SOURCE_FIELDS_LIST", traits: {"smithy.api#enumValue" => "EXCLUDE_SOURCE_FIELDS_LIST"}))
    OperatorPropertiesKeys.add_member(:include_new_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INCLUDE_NEW_FIELDS", traits: {"smithy.api#enumValue" => "INCLUDE_NEW_FIELDS"}))
    OperatorPropertiesKeys.add_member(:ordered_partition_keys_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ORDERED_PARTITION_KEYS_LIST", traits: {"smithy.api#enumValue" => "ORDERED_PARTITION_KEYS_LIST"}))
    Operators.add_member(:projection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROJECTION", traits: {"smithy.api#enumValue" => "PROJECTION"}))
    Operators.add_member(:less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LESS_THAN", traits: {"smithy.api#enumValue" => "LESS_THAN"}))
    Operators.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GREATER_THAN", traits: {"smithy.api#enumValue" => "GREATER_THAN"}))
    Operators.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONTAINS", traits: {"smithy.api#enumValue" => "CONTAINS"}))
    Operators.add_member(:between, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BETWEEN", traits: {"smithy.api#enumValue" => "BETWEEN"}))
    Operators.add_member(:less_than_or_equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LESS_THAN_OR_EQUAL_TO", traits: {"smithy.api#enumValue" => "LESS_THAN_OR_EQUAL_TO"}))
    Operators.add_member(:greater_than_or_equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GREATER_THAN_OR_EQUAL_TO", traits: {"smithy.api#enumValue" => "GREATER_THAN_OR_EQUAL_TO"}))
    Operators.add_member(:equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EQUAL_TO", traits: {"smithy.api#enumValue" => "EQUAL_TO"}))
    Operators.add_member(:not_equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_EQUAL_TO", traits: {"smithy.api#enumValue" => "NOT_EQUAL_TO"}))
    Operators.add_member(:addition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ADDITION", traits: {"smithy.api#enumValue" => "ADDITION"}))
    Operators.add_member(:multiplication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MULTIPLICATION", traits: {"smithy.api#enumValue" => "MULTIPLICATION"}))
    Operators.add_member(:division, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DIVISION", traits: {"smithy.api#enumValue" => "DIVISION"}))
    Operators.add_member(:subtraction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUBTRACTION", traits: {"smithy.api#enumValue" => "SUBTRACTION"}))
    Operators.add_member(:mask_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_ALL", traits: {"smithy.api#enumValue" => "MASK_ALL"}))
    Operators.add_member(:mask_first_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_FIRST_N", traits: {"smithy.api#enumValue" => "MASK_FIRST_N"}))
    Operators.add_member(:mask_last_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_LAST_N", traits: {"smithy.api#enumValue" => "MASK_LAST_N"}))
    Operators.add_member(:validate_non_null, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_NULL", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NULL"}))
    Operators.add_member(:validate_non_zero, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_ZERO", traits: {"smithy.api#enumValue" => "VALIDATE_NON_ZERO"}))
    Operators.add_member(:validate_non_negative, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_NEGATIVE", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NEGATIVE"}))
    Operators.add_member(:validate_numeric, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NUMERIC", traits: {"smithy.api#enumValue" => "VALIDATE_NUMERIC"}))
    Operators.add_member(:no_op, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_OP", traits: {"smithy.api#enumValue" => "NO_OP"}))
    PardotConnectorOperator.add_member(:projection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROJECTION", traits: {"smithy.api#enumValue" => "PROJECTION"}))
    PardotConnectorOperator.add_member(:equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EQUAL_TO", traits: {"smithy.api#enumValue" => "EQUAL_TO"}))
    PardotConnectorOperator.add_member(:no_op, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_OP", traits: {"smithy.api#enumValue" => "NO_OP"}))
    PardotConnectorOperator.add_member(:addition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ADDITION", traits: {"smithy.api#enumValue" => "ADDITION"}))
    PardotConnectorOperator.add_member(:multiplication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MULTIPLICATION", traits: {"smithy.api#enumValue" => "MULTIPLICATION"}))
    PardotConnectorOperator.add_member(:division, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DIVISION", traits: {"smithy.api#enumValue" => "DIVISION"}))
    PardotConnectorOperator.add_member(:subtraction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUBTRACTION", traits: {"smithy.api#enumValue" => "SUBTRACTION"}))
    PardotConnectorOperator.add_member(:mask_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_ALL", traits: {"smithy.api#enumValue" => "MASK_ALL"}))
    PardotConnectorOperator.add_member(:mask_first_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_FIRST_N", traits: {"smithy.api#enumValue" => "MASK_FIRST_N"}))
    PardotConnectorOperator.add_member(:mask_last_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_LAST_N", traits: {"smithy.api#enumValue" => "MASK_LAST_N"}))
    PardotConnectorOperator.add_member(:validate_non_null, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_NULL", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NULL"}))
    PardotConnectorOperator.add_member(:validate_non_zero, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_ZERO", traits: {"smithy.api#enumValue" => "VALIDATE_NON_ZERO"}))
    PardotConnectorOperator.add_member(:validate_non_negative, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_NEGATIVE", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NEGATIVE"}))
    PardotConnectorOperator.add_member(:validate_numeric, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NUMERIC", traits: {"smithy.api#enumValue" => "VALIDATE_NUMERIC"}))
    PardotConnectorProfileCredentials.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessToken, location_name: "accessToken"))
    PardotConnectorProfileCredentials.add_member(:refresh_token, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshToken, location_name: "refreshToken"))
    PardotConnectorProfileCredentials.add_member(:o_auth_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorOAuthRequest, location_name: "oAuthRequest"))
    PardotConnectorProfileCredentials.add_member(:client_credentials_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientCredentialsArn, location_name: "clientCredentialsArn"))
    PardotConnectorProfileCredentials.type = Types::PardotConnectorProfileCredentials
    PardotConnectorProfileProperties.add_member(:instance_url, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceUrl, location_name: "instanceUrl"))
    PardotConnectorProfileProperties.add_member(:is_sandbox_environment, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "isSandboxEnvironment", traits: {"smithy.api#default" => false}))
    PardotConnectorProfileProperties.add_member(:business_unit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessUnitId, location_name: "businessUnitId"))
    PardotConnectorProfileProperties.type = Types::PardotConnectorProfileProperties
    PardotMetadata.type = Types::PardotMetadata
    PardotSourceProperties.add_member(:object, ::Smithy::Schema::Shapes::MemberShape.new(target: Object, location_name: "object", traits: {"smithy.api#required" => {}}))
    PardotSourceProperties.type = Types::PardotSourceProperties
    PathPrefix.add_member(:execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXECUTION_ID", traits: {"smithy.api#enumValue" => "EXECUTION_ID"}))
    PathPrefix.add_member(:schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SCHEMA_VERSION", traits: {"smithy.api#enumValue" => "SCHEMA_VERSION"}))
    PathPrefixHierarchy.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PathPrefix)
    PrefixConfig.add_member(:prefix_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrefixType, location_name: "prefixType"))
    PrefixConfig.add_member(:prefix_format, ::Smithy::Schema::Shapes::MemberShape.new(target: PrefixFormat, location_name: "prefixFormat"))
    PrefixConfig.add_member(:path_prefix_hierarchy, ::Smithy::Schema::Shapes::MemberShape.new(target: PathPrefixHierarchy, location_name: "pathPrefixHierarchy"))
    PrefixConfig.type = Types::PrefixConfig
    PrefixFormat.add_member(:year, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "YEAR", traits: {"smithy.api#enumValue" => "YEAR"}))
    PrefixFormat.add_member(:month, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MONTH", traits: {"smithy.api#enumValue" => "MONTH"}))
    PrefixFormat.add_member(:day, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DAY", traits: {"smithy.api#enumValue" => "DAY"}))
    PrefixFormat.add_member(:hour, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HOUR", traits: {"smithy.api#enumValue" => "HOUR"}))
    PrefixFormat.add_member(:minute, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MINUTE", traits: {"smithy.api#enumValue" => "MINUTE"}))
    PrefixType.add_member(:filename, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FILENAME", traits: {"smithy.api#enumValue" => "FILENAME"}))
    PrefixType.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PATH", traits: {"smithy.api#enumValue" => "PATH"}))
    PrefixType.add_member(:path_and_filename, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PATH_AND_FILENAME", traits: {"smithy.api#enumValue" => "PATH_AND_FILENAME"}))
    PrivateConnectionProvisioningFailureCause.add_member(:connector_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONNECTOR_AUTHENTICATION", traits: {"smithy.api#enumValue" => "CONNECTOR_AUTHENTICATION"}))
    PrivateConnectionProvisioningFailureCause.add_member(:connector_server, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONNECTOR_SERVER", traits: {"smithy.api#enumValue" => "CONNECTOR_SERVER"}))
    PrivateConnectionProvisioningFailureCause.add_member(:internal_server, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTERNAL_SERVER", traits: {"smithy.api#enumValue" => "INTERNAL_SERVER"}))
    PrivateConnectionProvisioningFailureCause.add_member(:access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACCESS_DENIED", traits: {"smithy.api#enumValue" => "ACCESS_DENIED"}))
    PrivateConnectionProvisioningFailureCause.add_member(:validation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATION", traits: {"smithy.api#enumValue" => "VALIDATION"}))
    PrivateConnectionProvisioningState.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionProvisioningStatus, location_name: "status"))
    PrivateConnectionProvisioningState.add_member(:failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionProvisioningFailureMessage, location_name: "failureMessage"))
    PrivateConnectionProvisioningState.add_member(:failure_cause, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionProvisioningFailureCause, location_name: "failureCause"))
    PrivateConnectionProvisioningState.type = Types::PrivateConnectionProvisioningState
    PrivateConnectionProvisioningStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    PrivateConnectionProvisioningStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    PrivateConnectionProvisioningStatus.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    ProfilePropertiesMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ProfilePropertyKey)
    ProfilePropertiesMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ProfilePropertyValue)
    Range.add_member(:maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, location_name: "maximum", traits: {"smithy.api#default" => 0}))
    Range.add_member(:minimum, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, location_name: "minimum", traits: {"smithy.api#default" => 0}))
    Range.type = Types::Range
    RedshiftConnectorProfileCredentials.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "username"))
    RedshiftConnectorProfileCredentials.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: Password, location_name: "password"))
    RedshiftConnectorProfileCredentials.type = Types::RedshiftConnectorProfileCredentials
    RedshiftConnectorProfileProperties.add_member(:database_url, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseUrl, location_name: "databaseUrl"))
    RedshiftConnectorProfileProperties.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, location_name: "bucketName", traits: {"smithy.api#required" => {}}))
    RedshiftConnectorProfileProperties.add_member(:bucket_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketPrefix, location_name: "bucketPrefix"))
    RedshiftConnectorProfileProperties.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    RedshiftConnectorProfileProperties.add_member(:data_api_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataApiRoleArn, location_name: "dataApiRoleArn"))
    RedshiftConnectorProfileProperties.add_member(:is_redshift_serverless, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "isRedshiftServerless", traits: {"smithy.api#default" => false}))
    RedshiftConnectorProfileProperties.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterIdentifier, location_name: "clusterIdentifier"))
    RedshiftConnectorProfileProperties.add_member(:workgroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkgroupName, location_name: "workgroupName"))
    RedshiftConnectorProfileProperties.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseName, location_name: "databaseName"))
    RedshiftConnectorProfileProperties.type = Types::RedshiftConnectorProfileProperties
    RedshiftDestinationProperties.add_member(:object, ::Smithy::Schema::Shapes::MemberShape.new(target: Object, location_name: "object", traits: {"smithy.api#required" => {}}))
    RedshiftDestinationProperties.add_member(:intermediate_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, location_name: "intermediateBucketName", traits: {"smithy.api#required" => {}}))
    RedshiftDestinationProperties.add_member(:bucket_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketPrefix, location_name: "bucketPrefix"))
    RedshiftDestinationProperties.add_member(:error_handling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorHandlingConfig, location_name: "errorHandlingConfig"))
    RedshiftDestinationProperties.type = Types::RedshiftDestinationProperties
    RedshiftMetadata.type = Types::RedshiftMetadata
    RegionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Region)
    RegisterConnectorRequest.add_member(:connector_label, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorLabel, location_name: "connectorLabel"))
    RegisterConnectorRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description"))
    RegisterConnectorRequest.add_member(:connector_provisioning_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorProvisioningType, location_name: "connectorProvisioningType"))
    RegisterConnectorRequest.add_member(:connector_provisioning_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorProvisioningConfig, location_name: "connectorProvisioningConfig"))
    RegisterConnectorRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    RegisterConnectorRequest.type = Types::RegisterConnectorRequest
    RegisterConnectorResponse.add_member(:connector_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "connectorArn"))
    RegisterConnectorResponse.type = Types::RegisterConnectorResponse
    RegistrationOutput.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message"))
    RegistrationOutput.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "result"))
    RegistrationOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionStatus, location_name: "status"))
    RegistrationOutput.type = Types::RegistrationOutput
    ResetConnectorMetadataCacheRequest.add_member(:connector_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorProfileName, location_name: "connectorProfileName"))
    ResetConnectorMetadataCacheRequest.add_member(:connector_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorType, location_name: "connectorType"))
    ResetConnectorMetadataCacheRequest.add_member(:connector_entity_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, location_name: "connectorEntityName"))
    ResetConnectorMetadataCacheRequest.add_member(:entities_path, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitiesPath, location_name: "entitiesPath"))
    ResetConnectorMetadataCacheRequest.add_member(:api_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiVersion, location_name: "apiVersion"))
    ResetConnectorMetadataCacheRequest.type = Types::ResetConnectorMetadataCacheRequest
    ResetConnectorMetadataCacheResponse.type = Types::ResetConnectorMetadataCacheResponse
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3ConnectorOperator.add_member(:projection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROJECTION", traits: {"smithy.api#enumValue" => "PROJECTION"}))
    S3ConnectorOperator.add_member(:less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LESS_THAN", traits: {"smithy.api#enumValue" => "LESS_THAN"}))
    S3ConnectorOperator.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GREATER_THAN", traits: {"smithy.api#enumValue" => "GREATER_THAN"}))
    S3ConnectorOperator.add_member(:between, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BETWEEN", traits: {"smithy.api#enumValue" => "BETWEEN"}))
    S3ConnectorOperator.add_member(:less_than_or_equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LESS_THAN_OR_EQUAL_TO", traits: {"smithy.api#enumValue" => "LESS_THAN_OR_EQUAL_TO"}))
    S3ConnectorOperator.add_member(:greater_than_or_equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GREATER_THAN_OR_EQUAL_TO", traits: {"smithy.api#enumValue" => "GREATER_THAN_OR_EQUAL_TO"}))
    S3ConnectorOperator.add_member(:equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EQUAL_TO", traits: {"smithy.api#enumValue" => "EQUAL_TO"}))
    S3ConnectorOperator.add_member(:not_equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_EQUAL_TO", traits: {"smithy.api#enumValue" => "NOT_EQUAL_TO"}))
    S3ConnectorOperator.add_member(:addition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ADDITION", traits: {"smithy.api#enumValue" => "ADDITION"}))
    S3ConnectorOperator.add_member(:multiplication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MULTIPLICATION", traits: {"smithy.api#enumValue" => "MULTIPLICATION"}))
    S3ConnectorOperator.add_member(:division, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DIVISION", traits: {"smithy.api#enumValue" => "DIVISION"}))
    S3ConnectorOperator.add_member(:subtraction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUBTRACTION", traits: {"smithy.api#enumValue" => "SUBTRACTION"}))
    S3ConnectorOperator.add_member(:mask_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_ALL", traits: {"smithy.api#enumValue" => "MASK_ALL"}))
    S3ConnectorOperator.add_member(:mask_first_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_FIRST_N", traits: {"smithy.api#enumValue" => "MASK_FIRST_N"}))
    S3ConnectorOperator.add_member(:mask_last_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_LAST_N", traits: {"smithy.api#enumValue" => "MASK_LAST_N"}))
    S3ConnectorOperator.add_member(:validate_non_null, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_NULL", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NULL"}))
    S3ConnectorOperator.add_member(:validate_non_zero, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_ZERO", traits: {"smithy.api#enumValue" => "VALIDATE_NON_ZERO"}))
    S3ConnectorOperator.add_member(:validate_non_negative, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_NEGATIVE", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NEGATIVE"}))
    S3ConnectorOperator.add_member(:validate_numeric, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NUMERIC", traits: {"smithy.api#enumValue" => "VALIDATE_NUMERIC"}))
    S3ConnectorOperator.add_member(:no_op, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_OP", traits: {"smithy.api#enumValue" => "NO_OP"}))
    S3DestinationProperties.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, location_name: "bucketName", traits: {"smithy.api#required" => {}}))
    S3DestinationProperties.add_member(:bucket_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketPrefix, location_name: "bucketPrefix"))
    S3DestinationProperties.add_member(:s3_output_format_config, ::Smithy::Schema::Shapes::MemberShape.new(target: S3OutputFormatConfig, location_name: "s3OutputFormatConfig"))
    S3DestinationProperties.type = Types::S3DestinationProperties
    S3InputFileType.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CSV", traits: {"smithy.api#enumValue" => "CSV"}))
    S3InputFileType.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JSON", traits: {"smithy.api#enumValue" => "JSON"}))
    S3InputFormatConfig.add_member(:s3_input_file_type, ::Smithy::Schema::Shapes::MemberShape.new(target: S3InputFileType, location_name: "s3InputFileType"))
    S3InputFormatConfig.type = Types::S3InputFormatConfig
    S3Metadata.type = Types::S3Metadata
    S3OutputFormatConfig.add_member(:file_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FileType, location_name: "fileType"))
    S3OutputFormatConfig.add_member(:prefix_config, ::Smithy::Schema::Shapes::MemberShape.new(target: PrefixConfig, location_name: "prefixConfig"))
    S3OutputFormatConfig.add_member(:aggregation_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregationConfig, location_name: "aggregationConfig"))
    S3OutputFormatConfig.add_member(:preserve_source_data_typing, ::Smithy::Schema::Shapes::MemberShape.new(target: JavaBoolean, location_name: "preserveSourceDataTyping"))
    S3OutputFormatConfig.type = Types::S3OutputFormatConfig
    S3SourceProperties.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, location_name: "bucketName", traits: {"smithy.api#required" => {}}))
    S3SourceProperties.add_member(:bucket_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketPrefix, location_name: "bucketPrefix"))
    S3SourceProperties.add_member(:s3_input_format_config, ::Smithy::Schema::Shapes::MemberShape.new(target: S3InputFormatConfig, location_name: "s3InputFormatConfig"))
    S3SourceProperties.type = Types::S3SourceProperties
    SAPODataConnectorOperator.add_member(:projection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROJECTION", traits: {"smithy.api#enumValue" => "PROJECTION"}))
    SAPODataConnectorOperator.add_member(:less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LESS_THAN", traits: {"smithy.api#enumValue" => "LESS_THAN"}))
    SAPODataConnectorOperator.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONTAINS", traits: {"smithy.api#enumValue" => "CONTAINS"}))
    SAPODataConnectorOperator.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GREATER_THAN", traits: {"smithy.api#enumValue" => "GREATER_THAN"}))
    SAPODataConnectorOperator.add_member(:between, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BETWEEN", traits: {"smithy.api#enumValue" => "BETWEEN"}))
    SAPODataConnectorOperator.add_member(:less_than_or_equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LESS_THAN_OR_EQUAL_TO", traits: {"smithy.api#enumValue" => "LESS_THAN_OR_EQUAL_TO"}))
    SAPODataConnectorOperator.add_member(:greater_than_or_equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GREATER_THAN_OR_EQUAL_TO", traits: {"smithy.api#enumValue" => "GREATER_THAN_OR_EQUAL_TO"}))
    SAPODataConnectorOperator.add_member(:equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EQUAL_TO", traits: {"smithy.api#enumValue" => "EQUAL_TO"}))
    SAPODataConnectorOperator.add_member(:not_equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_EQUAL_TO", traits: {"smithy.api#enumValue" => "NOT_EQUAL_TO"}))
    SAPODataConnectorOperator.add_member(:addition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ADDITION", traits: {"smithy.api#enumValue" => "ADDITION"}))
    SAPODataConnectorOperator.add_member(:multiplication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MULTIPLICATION", traits: {"smithy.api#enumValue" => "MULTIPLICATION"}))
    SAPODataConnectorOperator.add_member(:division, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DIVISION", traits: {"smithy.api#enumValue" => "DIVISION"}))
    SAPODataConnectorOperator.add_member(:subtraction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUBTRACTION", traits: {"smithy.api#enumValue" => "SUBTRACTION"}))
    SAPODataConnectorOperator.add_member(:mask_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_ALL", traits: {"smithy.api#enumValue" => "MASK_ALL"}))
    SAPODataConnectorOperator.add_member(:mask_first_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_FIRST_N", traits: {"smithy.api#enumValue" => "MASK_FIRST_N"}))
    SAPODataConnectorOperator.add_member(:mask_last_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_LAST_N", traits: {"smithy.api#enumValue" => "MASK_LAST_N"}))
    SAPODataConnectorOperator.add_member(:validate_non_null, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_NULL", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NULL"}))
    SAPODataConnectorOperator.add_member(:validate_non_zero, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_ZERO", traits: {"smithy.api#enumValue" => "VALIDATE_NON_ZERO"}))
    SAPODataConnectorOperator.add_member(:validate_non_negative, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_NEGATIVE", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NEGATIVE"}))
    SAPODataConnectorOperator.add_member(:validate_numeric, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NUMERIC", traits: {"smithy.api#enumValue" => "VALIDATE_NUMERIC"}))
    SAPODataConnectorOperator.add_member(:no_op, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_OP", traits: {"smithy.api#enumValue" => "NO_OP"}))
    SAPODataConnectorProfileCredentials.add_member(:basic_auth_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicAuthCredentials, location_name: "basicAuthCredentials"))
    SAPODataConnectorProfileCredentials.add_member(:o_auth_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuthCredentials, location_name: "oAuthCredentials"))
    SAPODataConnectorProfileCredentials.type = Types::SAPODataConnectorProfileCredentials
    SAPODataConnectorProfileProperties.add_member(:application_host_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationHostUrl, location_name: "applicationHostUrl", traits: {"smithy.api#required" => {}}))
    SAPODataConnectorProfileProperties.add_member(:application_service_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationServicePath, location_name: "applicationServicePath", traits: {"smithy.api#required" => {}}))
    SAPODataConnectorProfileProperties.add_member(:port_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PortNumber, location_name: "portNumber", traits: {"smithy.api#required" => {}}))
    SAPODataConnectorProfileProperties.add_member(:client_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientNumber, location_name: "clientNumber", traits: {"smithy.api#required" => {}}))
    SAPODataConnectorProfileProperties.add_member(:logon_language, ::Smithy::Schema::Shapes::MemberShape.new(target: LogonLanguage, location_name: "logonLanguage"))
    SAPODataConnectorProfileProperties.add_member(:private_link_service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateLinkServiceName, location_name: "privateLinkServiceName"))
    SAPODataConnectorProfileProperties.add_member(:o_auth_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuthProperties, location_name: "oAuthProperties"))
    SAPODataConnectorProfileProperties.add_member(:disable_sso, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "disableSSO", traits: {"smithy.api#default" => false}))
    SAPODataConnectorProfileProperties.type = Types::SAPODataConnectorProfileProperties
    SAPODataDestinationProperties.add_member(:object_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Object, location_name: "objectPath", traits: {"smithy.api#required" => {}}))
    SAPODataDestinationProperties.add_member(:success_response_handling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SuccessResponseHandlingConfig, location_name: "successResponseHandlingConfig"))
    SAPODataDestinationProperties.add_member(:id_field_names, ::Smithy::Schema::Shapes::MemberShape.new(target: IdFieldNameList, location_name: "idFieldNames"))
    SAPODataDestinationProperties.add_member(:error_handling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorHandlingConfig, location_name: "errorHandlingConfig"))
    SAPODataDestinationProperties.add_member(:write_operation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WriteOperationType, location_name: "writeOperationType"))
    SAPODataDestinationProperties.type = Types::SAPODataDestinationProperties
    SAPODataMetadata.type = Types::SAPODataMetadata
    SAPODataPaginationConfig.add_member(:max_page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: SAPODataMaxPageSize, location_name: "maxPageSize", traits: {"smithy.api#required" => {}}))
    SAPODataPaginationConfig.type = Types::SAPODataPaginationConfig
    SAPODataParallelismConfig.add_member(:max_parallelism, ::Smithy::Schema::Shapes::MemberShape.new(target: SAPODataMaxParallelism, location_name: "maxParallelism", traits: {"smithy.api#required" => {}}))
    SAPODataParallelismConfig.type = Types::SAPODataParallelismConfig
    SAPODataSourceProperties.add_member(:object_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Object, location_name: "objectPath"))
    SAPODataSourceProperties.add_member(:parallelism_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SAPODataParallelismConfig, location_name: "parallelismConfig"))
    SAPODataSourceProperties.add_member(:pagination_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SAPODataPaginationConfig, location_name: "paginationConfig"))
    SAPODataSourceProperties.type = Types::SAPODataSourceProperties
    SalesforceConnectorOperator.add_member(:projection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROJECTION", traits: {"smithy.api#enumValue" => "PROJECTION"}))
    SalesforceConnectorOperator.add_member(:less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LESS_THAN", traits: {"smithy.api#enumValue" => "LESS_THAN"}))
    SalesforceConnectorOperator.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONTAINS", traits: {"smithy.api#enumValue" => "CONTAINS"}))
    SalesforceConnectorOperator.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GREATER_THAN", traits: {"smithy.api#enumValue" => "GREATER_THAN"}))
    SalesforceConnectorOperator.add_member(:between, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BETWEEN", traits: {"smithy.api#enumValue" => "BETWEEN"}))
    SalesforceConnectorOperator.add_member(:less_than_or_equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LESS_THAN_OR_EQUAL_TO", traits: {"smithy.api#enumValue" => "LESS_THAN_OR_EQUAL_TO"}))
    SalesforceConnectorOperator.add_member(:greater_than_or_equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GREATER_THAN_OR_EQUAL_TO", traits: {"smithy.api#enumValue" => "GREATER_THAN_OR_EQUAL_TO"}))
    SalesforceConnectorOperator.add_member(:equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EQUAL_TO", traits: {"smithy.api#enumValue" => "EQUAL_TO"}))
    SalesforceConnectorOperator.add_member(:not_equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_EQUAL_TO", traits: {"smithy.api#enumValue" => "NOT_EQUAL_TO"}))
    SalesforceConnectorOperator.add_member(:addition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ADDITION", traits: {"smithy.api#enumValue" => "ADDITION"}))
    SalesforceConnectorOperator.add_member(:multiplication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MULTIPLICATION", traits: {"smithy.api#enumValue" => "MULTIPLICATION"}))
    SalesforceConnectorOperator.add_member(:division, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DIVISION", traits: {"smithy.api#enumValue" => "DIVISION"}))
    SalesforceConnectorOperator.add_member(:subtraction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUBTRACTION", traits: {"smithy.api#enumValue" => "SUBTRACTION"}))
    SalesforceConnectorOperator.add_member(:mask_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_ALL", traits: {"smithy.api#enumValue" => "MASK_ALL"}))
    SalesforceConnectorOperator.add_member(:mask_first_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_FIRST_N", traits: {"smithy.api#enumValue" => "MASK_FIRST_N"}))
    SalesforceConnectorOperator.add_member(:mask_last_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_LAST_N", traits: {"smithy.api#enumValue" => "MASK_LAST_N"}))
    SalesforceConnectorOperator.add_member(:validate_non_null, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_NULL", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NULL"}))
    SalesforceConnectorOperator.add_member(:validate_non_zero, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_ZERO", traits: {"smithy.api#enumValue" => "VALIDATE_NON_ZERO"}))
    SalesforceConnectorOperator.add_member(:validate_non_negative, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_NEGATIVE", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NEGATIVE"}))
    SalesforceConnectorOperator.add_member(:validate_numeric, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NUMERIC", traits: {"smithy.api#enumValue" => "VALIDATE_NUMERIC"}))
    SalesforceConnectorOperator.add_member(:no_op, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_OP", traits: {"smithy.api#enumValue" => "NO_OP"}))
    SalesforceConnectorProfileCredentials.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessToken, location_name: "accessToken"))
    SalesforceConnectorProfileCredentials.add_member(:refresh_token, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshToken, location_name: "refreshToken"))
    SalesforceConnectorProfileCredentials.add_member(:o_auth_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorOAuthRequest, location_name: "oAuthRequest"))
    SalesforceConnectorProfileCredentials.add_member(:client_credentials_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientCredentialsArn, location_name: "clientCredentialsArn"))
    SalesforceConnectorProfileCredentials.add_member(:o_auth2_grant_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuth2GrantType, location_name: "oAuth2GrantType"))
    SalesforceConnectorProfileCredentials.add_member(:jwt_token, ::Smithy::Schema::Shapes::MemberShape.new(target: JwtToken, location_name: "jwtToken"))
    SalesforceConnectorProfileCredentials.type = Types::SalesforceConnectorProfileCredentials
    SalesforceConnectorProfileProperties.add_member(:instance_url, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceUrl, location_name: "instanceUrl"))
    SalesforceConnectorProfileProperties.add_member(:is_sandbox_environment, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "isSandboxEnvironment", traits: {"smithy.api#default" => false}))
    SalesforceConnectorProfileProperties.add_member(:use_private_link_for_metadata_and_authorization, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "usePrivateLinkForMetadataAndAuthorization", traits: {"smithy.api#default" => false}))
    SalesforceConnectorProfileProperties.type = Types::SalesforceConnectorProfileProperties
    SalesforceDataTransferApi.add_member(:automatic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AUTOMATIC", traits: {"smithy.api#enumValue" => "AUTOMATIC"}))
    SalesforceDataTransferApi.add_member(:bulkv2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BULKV2", traits: {"smithy.api#enumValue" => "BULKV2"}))
    SalesforceDataTransferApi.add_member(:rest_sync, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REST_SYNC", traits: {"smithy.api#enumValue" => "REST_SYNC"}))
    SalesforceDataTransferApiList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SalesforceDataTransferApi)
    SalesforceDestinationProperties.add_member(:object, ::Smithy::Schema::Shapes::MemberShape.new(target: Object, location_name: "object", traits: {"smithy.api#required" => {}}))
    SalesforceDestinationProperties.add_member(:id_field_names, ::Smithy::Schema::Shapes::MemberShape.new(target: IdFieldNameList, location_name: "idFieldNames"))
    SalesforceDestinationProperties.add_member(:error_handling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorHandlingConfig, location_name: "errorHandlingConfig"))
    SalesforceDestinationProperties.add_member(:write_operation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WriteOperationType, location_name: "writeOperationType"))
    SalesforceDestinationProperties.add_member(:data_transfer_api, ::Smithy::Schema::Shapes::MemberShape.new(target: SalesforceDataTransferApi, location_name: "dataTransferApi"))
    SalesforceDestinationProperties.type = Types::SalesforceDestinationProperties
    SalesforceMetadata.add_member(:o_auth_scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuthScopeList, location_name: "oAuthScopes"))
    SalesforceMetadata.add_member(:data_transfer_apis, ::Smithy::Schema::Shapes::MemberShape.new(target: SalesforceDataTransferApiList, location_name: "dataTransferApis"))
    SalesforceMetadata.add_member(:oauth2_grant_types_supported, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuth2GrantTypeSupportedList, location_name: "oauth2GrantTypesSupported"))
    SalesforceMetadata.type = Types::SalesforceMetadata
    SalesforceSourceProperties.add_member(:object, ::Smithy::Schema::Shapes::MemberShape.new(target: Object, location_name: "object", traits: {"smithy.api#required" => {}}))
    SalesforceSourceProperties.add_member(:enable_dynamic_field_update, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "enableDynamicFieldUpdate", traits: {"smithy.api#default" => false}))
    SalesforceSourceProperties.add_member(:include_deleted_records, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "includeDeletedRecords", traits: {"smithy.api#default" => false}))
    SalesforceSourceProperties.add_member(:data_transfer_api, ::Smithy::Schema::Shapes::MemberShape.new(target: SalesforceDataTransferApi, location_name: "dataTransferApi"))
    SalesforceSourceProperties.type = Types::SalesforceSourceProperties
    ScheduleFrequencyType.add_member(:byminute, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BYMINUTE", traits: {"smithy.api#enumValue" => "BYMINUTE"}))
    ScheduleFrequencyType.add_member(:hourly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HOURLY", traits: {"smithy.api#enumValue" => "HOURLY"}))
    ScheduleFrequencyType.add_member(:daily, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DAILY", traits: {"smithy.api#enumValue" => "DAILY"}))
    ScheduleFrequencyType.add_member(:weekly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WEEKLY", traits: {"smithy.api#enumValue" => "WEEKLY"}))
    ScheduleFrequencyType.add_member(:monthly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MONTHLY", traits: {"smithy.api#enumValue" => "MONTHLY"}))
    ScheduleFrequencyType.add_member(:once, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ONCE", traits: {"smithy.api#enumValue" => "ONCE"}))
    ScheduledTriggerProperties.add_member(:schedule_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleExpression, location_name: "scheduleExpression", traits: {"smithy.api#required" => {}}))
    ScheduledTriggerProperties.add_member(:data_pull_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DataPullMode, location_name: "dataPullMode"))
    ScheduledTriggerProperties.add_member(:schedule_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "scheduleStartTime"))
    ScheduledTriggerProperties.add_member(:schedule_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "scheduleEndTime"))
    ScheduledTriggerProperties.add_member(:timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: Timezone, location_name: "timezone"))
    ScheduledTriggerProperties.add_member(:schedule_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleOffset, location_name: "scheduleOffset", traits: {"smithy.api#default" => nil}))
    ScheduledTriggerProperties.add_member(:first_execution_from, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "firstExecutionFrom"))
    ScheduledTriggerProperties.add_member(:flow_error_deactivation_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowErrorDeactivationThreshold, location_name: "flowErrorDeactivationThreshold"))
    ScheduledTriggerProperties.type = Types::ScheduledTriggerProperties
    SchedulingFrequencyTypeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleFrequencyType)
    ServiceNowConnectorOperator.add_member(:projection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROJECTION", traits: {"smithy.api#enumValue" => "PROJECTION"}))
    ServiceNowConnectorOperator.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONTAINS", traits: {"smithy.api#enumValue" => "CONTAINS"}))
    ServiceNowConnectorOperator.add_member(:less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LESS_THAN", traits: {"smithy.api#enumValue" => "LESS_THAN"}))
    ServiceNowConnectorOperator.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GREATER_THAN", traits: {"smithy.api#enumValue" => "GREATER_THAN"}))
    ServiceNowConnectorOperator.add_member(:between, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BETWEEN", traits: {"smithy.api#enumValue" => "BETWEEN"}))
    ServiceNowConnectorOperator.add_member(:less_than_or_equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LESS_THAN_OR_EQUAL_TO", traits: {"smithy.api#enumValue" => "LESS_THAN_OR_EQUAL_TO"}))
    ServiceNowConnectorOperator.add_member(:greater_than_or_equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GREATER_THAN_OR_EQUAL_TO", traits: {"smithy.api#enumValue" => "GREATER_THAN_OR_EQUAL_TO"}))
    ServiceNowConnectorOperator.add_member(:equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EQUAL_TO", traits: {"smithy.api#enumValue" => "EQUAL_TO"}))
    ServiceNowConnectorOperator.add_member(:not_equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_EQUAL_TO", traits: {"smithy.api#enumValue" => "NOT_EQUAL_TO"}))
    ServiceNowConnectorOperator.add_member(:addition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ADDITION", traits: {"smithy.api#enumValue" => "ADDITION"}))
    ServiceNowConnectorOperator.add_member(:multiplication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MULTIPLICATION", traits: {"smithy.api#enumValue" => "MULTIPLICATION"}))
    ServiceNowConnectorOperator.add_member(:division, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DIVISION", traits: {"smithy.api#enumValue" => "DIVISION"}))
    ServiceNowConnectorOperator.add_member(:subtraction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUBTRACTION", traits: {"smithy.api#enumValue" => "SUBTRACTION"}))
    ServiceNowConnectorOperator.add_member(:mask_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_ALL", traits: {"smithy.api#enumValue" => "MASK_ALL"}))
    ServiceNowConnectorOperator.add_member(:mask_first_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_FIRST_N", traits: {"smithy.api#enumValue" => "MASK_FIRST_N"}))
    ServiceNowConnectorOperator.add_member(:mask_last_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_LAST_N", traits: {"smithy.api#enumValue" => "MASK_LAST_N"}))
    ServiceNowConnectorOperator.add_member(:validate_non_null, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_NULL", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NULL"}))
    ServiceNowConnectorOperator.add_member(:validate_non_zero, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_ZERO", traits: {"smithy.api#enumValue" => "VALIDATE_NON_ZERO"}))
    ServiceNowConnectorOperator.add_member(:validate_non_negative, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_NEGATIVE", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NEGATIVE"}))
    ServiceNowConnectorOperator.add_member(:validate_numeric, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NUMERIC", traits: {"smithy.api#enumValue" => "VALIDATE_NUMERIC"}))
    ServiceNowConnectorOperator.add_member(:no_op, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_OP", traits: {"smithy.api#enumValue" => "NO_OP"}))
    ServiceNowConnectorProfileCredentials.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: Username, location_name: "username"))
    ServiceNowConnectorProfileCredentials.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: Password, location_name: "password"))
    ServiceNowConnectorProfileCredentials.add_member(:o_auth2_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuth2Credentials, location_name: "oAuth2Credentials"))
    ServiceNowConnectorProfileCredentials.type = Types::ServiceNowConnectorProfileCredentials
    ServiceNowConnectorProfileProperties.add_member(:instance_url, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceUrl, location_name: "instanceUrl", traits: {"smithy.api#required" => {}}))
    ServiceNowConnectorProfileProperties.type = Types::ServiceNowConnectorProfileProperties
    ServiceNowMetadata.type = Types::ServiceNowMetadata
    ServiceNowSourceProperties.add_member(:object, ::Smithy::Schema::Shapes::MemberShape.new(target: Object, location_name: "object", traits: {"smithy.api#required" => {}}))
    ServiceNowSourceProperties.type = Types::ServiceNowSourceProperties
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SingularConnectorOperator.add_member(:projection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROJECTION", traits: {"smithy.api#enumValue" => "PROJECTION"}))
    SingularConnectorOperator.add_member(:equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EQUAL_TO", traits: {"smithy.api#enumValue" => "EQUAL_TO"}))
    SingularConnectorOperator.add_member(:addition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ADDITION", traits: {"smithy.api#enumValue" => "ADDITION"}))
    SingularConnectorOperator.add_member(:multiplication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MULTIPLICATION", traits: {"smithy.api#enumValue" => "MULTIPLICATION"}))
    SingularConnectorOperator.add_member(:division, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DIVISION", traits: {"smithy.api#enumValue" => "DIVISION"}))
    SingularConnectorOperator.add_member(:subtraction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUBTRACTION", traits: {"smithy.api#enumValue" => "SUBTRACTION"}))
    SingularConnectorOperator.add_member(:mask_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_ALL", traits: {"smithy.api#enumValue" => "MASK_ALL"}))
    SingularConnectorOperator.add_member(:mask_first_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_FIRST_N", traits: {"smithy.api#enumValue" => "MASK_FIRST_N"}))
    SingularConnectorOperator.add_member(:mask_last_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_LAST_N", traits: {"smithy.api#enumValue" => "MASK_LAST_N"}))
    SingularConnectorOperator.add_member(:validate_non_null, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_NULL", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NULL"}))
    SingularConnectorOperator.add_member(:validate_non_zero, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_ZERO", traits: {"smithy.api#enumValue" => "VALIDATE_NON_ZERO"}))
    SingularConnectorOperator.add_member(:validate_non_negative, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_NEGATIVE", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NEGATIVE"}))
    SingularConnectorOperator.add_member(:validate_numeric, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NUMERIC", traits: {"smithy.api#enumValue" => "VALIDATE_NUMERIC"}))
    SingularConnectorOperator.add_member(:no_op, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_OP", traits: {"smithy.api#enumValue" => "NO_OP"}))
    SingularConnectorProfileCredentials.add_member(:api_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKey, location_name: "apiKey", traits: {"smithy.api#required" => {}}))
    SingularConnectorProfileCredentials.type = Types::SingularConnectorProfileCredentials
    SingularConnectorProfileProperties.type = Types::SingularConnectorProfileProperties
    SingularMetadata.type = Types::SingularMetadata
    SingularSourceProperties.add_member(:object, ::Smithy::Schema::Shapes::MemberShape.new(target: Object, location_name: "object", traits: {"smithy.api#required" => {}}))
    SingularSourceProperties.type = Types::SingularSourceProperties
    SlackConnectorOperator.add_member(:projection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROJECTION", traits: {"smithy.api#enumValue" => "PROJECTION"}))
    SlackConnectorOperator.add_member(:less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LESS_THAN", traits: {"smithy.api#enumValue" => "LESS_THAN"}))
    SlackConnectorOperator.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GREATER_THAN", traits: {"smithy.api#enumValue" => "GREATER_THAN"}))
    SlackConnectorOperator.add_member(:between, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BETWEEN", traits: {"smithy.api#enumValue" => "BETWEEN"}))
    SlackConnectorOperator.add_member(:less_than_or_equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LESS_THAN_OR_EQUAL_TO", traits: {"smithy.api#enumValue" => "LESS_THAN_OR_EQUAL_TO"}))
    SlackConnectorOperator.add_member(:greater_than_or_equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GREATER_THAN_OR_EQUAL_TO", traits: {"smithy.api#enumValue" => "GREATER_THAN_OR_EQUAL_TO"}))
    SlackConnectorOperator.add_member(:equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EQUAL_TO", traits: {"smithy.api#enumValue" => "EQUAL_TO"}))
    SlackConnectorOperator.add_member(:addition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ADDITION", traits: {"smithy.api#enumValue" => "ADDITION"}))
    SlackConnectorOperator.add_member(:multiplication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MULTIPLICATION", traits: {"smithy.api#enumValue" => "MULTIPLICATION"}))
    SlackConnectorOperator.add_member(:division, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DIVISION", traits: {"smithy.api#enumValue" => "DIVISION"}))
    SlackConnectorOperator.add_member(:subtraction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUBTRACTION", traits: {"smithy.api#enumValue" => "SUBTRACTION"}))
    SlackConnectorOperator.add_member(:mask_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_ALL", traits: {"smithy.api#enumValue" => "MASK_ALL"}))
    SlackConnectorOperator.add_member(:mask_first_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_FIRST_N", traits: {"smithy.api#enumValue" => "MASK_FIRST_N"}))
    SlackConnectorOperator.add_member(:mask_last_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_LAST_N", traits: {"smithy.api#enumValue" => "MASK_LAST_N"}))
    SlackConnectorOperator.add_member(:validate_non_null, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_NULL", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NULL"}))
    SlackConnectorOperator.add_member(:validate_non_zero, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_ZERO", traits: {"smithy.api#enumValue" => "VALIDATE_NON_ZERO"}))
    SlackConnectorOperator.add_member(:validate_non_negative, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_NEGATIVE", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NEGATIVE"}))
    SlackConnectorOperator.add_member(:validate_numeric, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NUMERIC", traits: {"smithy.api#enumValue" => "VALIDATE_NUMERIC"}))
    SlackConnectorOperator.add_member(:no_op, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_OP", traits: {"smithy.api#enumValue" => "NO_OP"}))
    SlackConnectorProfileCredentials.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientId, location_name: "clientId", traits: {"smithy.api#required" => {}}))
    SlackConnectorProfileCredentials.add_member(:client_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientSecret, location_name: "clientSecret", traits: {"smithy.api#required" => {}}))
    SlackConnectorProfileCredentials.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessToken, location_name: "accessToken"))
    SlackConnectorProfileCredentials.add_member(:o_auth_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorOAuthRequest, location_name: "oAuthRequest"))
    SlackConnectorProfileCredentials.type = Types::SlackConnectorProfileCredentials
    SlackConnectorProfileProperties.add_member(:instance_url, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceUrl, location_name: "instanceUrl", traits: {"smithy.api#required" => {}}))
    SlackConnectorProfileProperties.type = Types::SlackConnectorProfileProperties
    SlackMetadata.add_member(:o_auth_scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuthScopeList, location_name: "oAuthScopes"))
    SlackMetadata.type = Types::SlackMetadata
    SlackSourceProperties.add_member(:object, ::Smithy::Schema::Shapes::MemberShape.new(target: Object, location_name: "object", traits: {"smithy.api#required" => {}}))
    SlackSourceProperties.type = Types::SlackSourceProperties
    SnowflakeConnectorProfileCredentials.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: Username, location_name: "username", traits: {"smithy.api#required" => {}}))
    SnowflakeConnectorProfileCredentials.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: Password, location_name: "password", traits: {"smithy.api#required" => {}}))
    SnowflakeConnectorProfileCredentials.type = Types::SnowflakeConnectorProfileCredentials
    SnowflakeConnectorProfileProperties.add_member(:warehouse, ::Smithy::Schema::Shapes::MemberShape.new(target: Warehouse, location_name: "warehouse", traits: {"smithy.api#required" => {}}))
    SnowflakeConnectorProfileProperties.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: Stage, location_name: "stage", traits: {"smithy.api#required" => {}}))
    SnowflakeConnectorProfileProperties.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, location_name: "bucketName", traits: {"smithy.api#required" => {}}))
    SnowflakeConnectorProfileProperties.add_member(:bucket_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketPrefix, location_name: "bucketPrefix"))
    SnowflakeConnectorProfileProperties.add_member(:private_link_service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateLinkServiceName, location_name: "privateLinkServiceName"))
    SnowflakeConnectorProfileProperties.add_member(:account_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountName, location_name: "accountName"))
    SnowflakeConnectorProfileProperties.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, location_name: "region"))
    SnowflakeConnectorProfileProperties.type = Types::SnowflakeConnectorProfileProperties
    SnowflakeDestinationProperties.add_member(:object, ::Smithy::Schema::Shapes::MemberShape.new(target: Object, location_name: "object", traits: {"smithy.api#required" => {}}))
    SnowflakeDestinationProperties.add_member(:intermediate_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, location_name: "intermediateBucketName", traits: {"smithy.api#required" => {}}))
    SnowflakeDestinationProperties.add_member(:bucket_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketPrefix, location_name: "bucketPrefix"))
    SnowflakeDestinationProperties.add_member(:error_handling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorHandlingConfig, location_name: "errorHandlingConfig"))
    SnowflakeDestinationProperties.type = Types::SnowflakeDestinationProperties
    SnowflakeMetadata.add_member(:supported_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, location_name: "supportedRegions"))
    SnowflakeMetadata.type = Types::SnowflakeMetadata
    SourceConnectorProperties.add_member(:amplitude, ::Smithy::Schema::Shapes::MemberShape.new(target: AmplitudeSourceProperties, location_name: "Amplitude"))
    SourceConnectorProperties.add_member(:datadog, ::Smithy::Schema::Shapes::MemberShape.new(target: DatadogSourceProperties, location_name: "Datadog"))
    SourceConnectorProperties.add_member(:dynatrace, ::Smithy::Schema::Shapes::MemberShape.new(target: DynatraceSourceProperties, location_name: "Dynatrace"))
    SourceConnectorProperties.add_member(:google_analytics, ::Smithy::Schema::Shapes::MemberShape.new(target: GoogleAnalyticsSourceProperties, location_name: "GoogleAnalytics"))
    SourceConnectorProperties.add_member(:infor_nexus, ::Smithy::Schema::Shapes::MemberShape.new(target: InforNexusSourceProperties, location_name: "InforNexus"))
    SourceConnectorProperties.add_member(:marketo, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketoSourceProperties, location_name: "Marketo"))
    SourceConnectorProperties.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3SourceProperties, location_name: "S3"))
    SourceConnectorProperties.add_member(:salesforce, ::Smithy::Schema::Shapes::MemberShape.new(target: SalesforceSourceProperties, location_name: "Salesforce"))
    SourceConnectorProperties.add_member(:service_now, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNowSourceProperties, location_name: "ServiceNow"))
    SourceConnectorProperties.add_member(:singular, ::Smithy::Schema::Shapes::MemberShape.new(target: SingularSourceProperties, location_name: "Singular"))
    SourceConnectorProperties.add_member(:slack, ::Smithy::Schema::Shapes::MemberShape.new(target: SlackSourceProperties, location_name: "Slack"))
    SourceConnectorProperties.add_member(:trendmicro, ::Smithy::Schema::Shapes::MemberShape.new(target: TrendmicroSourceProperties, location_name: "Trendmicro"))
    SourceConnectorProperties.add_member(:veeva, ::Smithy::Schema::Shapes::MemberShape.new(target: VeevaSourceProperties, location_name: "Veeva"))
    SourceConnectorProperties.add_member(:zendesk, ::Smithy::Schema::Shapes::MemberShape.new(target: ZendeskSourceProperties, location_name: "Zendesk"))
    SourceConnectorProperties.add_member(:sapo_data, ::Smithy::Schema::Shapes::MemberShape.new(target: SAPODataSourceProperties, location_name: "SAPOData"))
    SourceConnectorProperties.add_member(:custom_connector, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomConnectorSourceProperties, location_name: "CustomConnector"))
    SourceConnectorProperties.add_member(:pardot, ::Smithy::Schema::Shapes::MemberShape.new(target: PardotSourceProperties, location_name: "Pardot"))
    SourceConnectorProperties.type = Types::SourceConnectorProperties
    SourceFieldProperties.add_member(:is_retrievable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "isRetrievable", traits: {"smithy.api#default" => false}))
    SourceFieldProperties.add_member(:is_queryable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "isQueryable", traits: {"smithy.api#default" => false}))
    SourceFieldProperties.add_member(:is_timestamp_field_for_incremental_queries, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "isTimestampFieldForIncrementalQueries", traits: {"smithy.api#default" => false}))
    SourceFieldProperties.type = Types::SourceFieldProperties
    SourceFields.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    SourceFlowConfig.add_member(:connector_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorType, location_name: "connectorType", traits: {"smithy.api#required" => {}}))
    SourceFlowConfig.add_member(:api_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiVersion, location_name: "apiVersion"))
    SourceFlowConfig.add_member(:connector_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorProfileName, location_name: "connectorProfileName"))
    SourceFlowConfig.add_member(:source_connector_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceConnectorProperties, location_name: "sourceConnectorProperties", traits: {"smithy.api#required" => {}}))
    SourceFlowConfig.add_member(:incremental_pull_config, ::Smithy::Schema::Shapes::MemberShape.new(target: IncrementalPullConfig, location_name: "incrementalPullConfig"))
    SourceFlowConfig.type = Types::SourceFlowConfig
    StartFlowRequest.add_member(:flow_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowName, location_name: "flowName", traits: {"smithy.api#required" => {}}))
    StartFlowRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartFlowRequest.type = Types::StartFlowRequest
    StartFlowResponse.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, location_name: "flowArn"))
    StartFlowResponse.add_member(:flow_status, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowStatus, location_name: "flowStatus"))
    StartFlowResponse.add_member(:execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionId, location_name: "executionId"))
    StartFlowResponse.type = Types::StartFlowResponse
    StopFlowRequest.add_member(:flow_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowName, location_name: "flowName", traits: {"smithy.api#required" => {}}))
    StopFlowRequest.type = Types::StopFlowRequest
    StopFlowResponse.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, location_name: "flowArn"))
    StopFlowResponse.add_member(:flow_status, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowStatus, location_name: "flowStatus"))
    StopFlowResponse.type = Types::StopFlowResponse
    SuccessResponseHandlingConfig.add_member(:bucket_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketPrefix, location_name: "bucketPrefix"))
    SuccessResponseHandlingConfig.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, location_name: "bucketName"))
    SuccessResponseHandlingConfig.type = Types::SuccessResponseHandlingConfig
    SupportedApiVersionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedApiVersion)
    SupportedDataTransferApis.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DataTransferApi)
    SupportedDataTransferType.add_member(:record, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RECORD", traits: {"smithy.api#enumValue" => "RECORD"}))
    SupportedDataTransferType.add_member(:file, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FILE", traits: {"smithy.api#enumValue" => "FILE"}))
    SupportedDataTransferTypeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedDataTransferType)
    SupportedFieldTypeDetails.add_member(:v1, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldTypeDetails, location_name: "v1", traits: {"smithy.api#required" => {}}))
    SupportedFieldTypeDetails.type = Types::SupportedFieldTypeDetails
    SupportedOperatorList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Operators)
    SupportedValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Value)
    SupportedWriteOperationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WriteOperationType)
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Task.add_member(:source_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceFields, location_name: "sourceFields", traits: {"smithy.api#required" => {}}))
    Task.add_member(:connector_operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorOperator, location_name: "connectorOperator"))
    Task.add_member(:destination_field, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationField, location_name: "destinationField"))
    Task.add_member(:task_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskType, location_name: "taskType", traits: {"smithy.api#required" => {}}))
    Task.add_member(:task_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskPropertiesMap, location_name: "taskProperties"))
    Task.type = Types::Task
    TaskPropertiesMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: OperatorPropertiesKeys)
    TaskPropertiesMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: Property)
    TaskType.add_member(:arithmetic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ARITHMETIC", traits: {"smithy.api#enumValue" => "Arithmetic"}))
    TaskType.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FILTER", traits: {"smithy.api#enumValue" => "Filter"}))
    TaskType.add_member(:map, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MAP", traits: {"smithy.api#enumValue" => "Map"}))
    TaskType.add_member(:map_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MAP_ALL", traits: {"smithy.api#enumValue" => "Map_all"}))
    TaskType.add_member(:mask, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK", traits: {"smithy.api#enumValue" => "Mask"}))
    TaskType.add_member(:merge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MERGE", traits: {"smithy.api#enumValue" => "Merge"}))
    TaskType.add_member(:passthrough, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PASSTHROUGH", traits: {"smithy.api#enumValue" => "Passthrough"}))
    TaskType.add_member(:truncate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRUNCATE", traits: {"smithy.api#enumValue" => "Truncate"}))
    TaskType.add_member(:validate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE", traits: {"smithy.api#enumValue" => "Validate"}))
    TaskType.add_member(:partition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PARTITION", traits: {"smithy.api#enumValue" => "Partition"}))
    Tasks.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Task)
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    TokenUrlCustomProperties.key = ::Smithy::Schema::Shapes::MemberShape.new(target: CustomPropertyKey)
    TokenUrlCustomProperties.value = ::Smithy::Schema::Shapes::MemberShape.new(target: CustomPropertyValue)
    TokenUrlList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TokenUrl)
    TrendmicroConnectorOperator.add_member(:projection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROJECTION", traits: {"smithy.api#enumValue" => "PROJECTION"}))
    TrendmicroConnectorOperator.add_member(:equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EQUAL_TO", traits: {"smithy.api#enumValue" => "EQUAL_TO"}))
    TrendmicroConnectorOperator.add_member(:addition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ADDITION", traits: {"smithy.api#enumValue" => "ADDITION"}))
    TrendmicroConnectorOperator.add_member(:multiplication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MULTIPLICATION", traits: {"smithy.api#enumValue" => "MULTIPLICATION"}))
    TrendmicroConnectorOperator.add_member(:division, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DIVISION", traits: {"smithy.api#enumValue" => "DIVISION"}))
    TrendmicroConnectorOperator.add_member(:subtraction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUBTRACTION", traits: {"smithy.api#enumValue" => "SUBTRACTION"}))
    TrendmicroConnectorOperator.add_member(:mask_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_ALL", traits: {"smithy.api#enumValue" => "MASK_ALL"}))
    TrendmicroConnectorOperator.add_member(:mask_first_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_FIRST_N", traits: {"smithy.api#enumValue" => "MASK_FIRST_N"}))
    TrendmicroConnectorOperator.add_member(:mask_last_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_LAST_N", traits: {"smithy.api#enumValue" => "MASK_LAST_N"}))
    TrendmicroConnectorOperator.add_member(:validate_non_null, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_NULL", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NULL"}))
    TrendmicroConnectorOperator.add_member(:validate_non_zero, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_ZERO", traits: {"smithy.api#enumValue" => "VALIDATE_NON_ZERO"}))
    TrendmicroConnectorOperator.add_member(:validate_non_negative, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_NEGATIVE", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NEGATIVE"}))
    TrendmicroConnectorOperator.add_member(:validate_numeric, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NUMERIC", traits: {"smithy.api#enumValue" => "VALIDATE_NUMERIC"}))
    TrendmicroConnectorOperator.add_member(:no_op, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_OP", traits: {"smithy.api#enumValue" => "NO_OP"}))
    TrendmicroConnectorProfileCredentials.add_member(:api_secret_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiSecretKey, location_name: "apiSecretKey", traits: {"smithy.api#required" => {}}))
    TrendmicroConnectorProfileCredentials.type = Types::TrendmicroConnectorProfileCredentials
    TrendmicroConnectorProfileProperties.type = Types::TrendmicroConnectorProfileProperties
    TrendmicroMetadata.type = Types::TrendmicroMetadata
    TrendmicroSourceProperties.add_member(:object, ::Smithy::Schema::Shapes::MemberShape.new(target: Object, location_name: "object", traits: {"smithy.api#required" => {}}))
    TrendmicroSourceProperties.type = Types::TrendmicroSourceProperties
    TriggerConfig.add_member(:trigger_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerType, location_name: "triggerType", traits: {"smithy.api#required" => {}}))
    TriggerConfig.add_member(:trigger_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerProperties, location_name: "triggerProperties"))
    TriggerConfig.type = Types::TriggerConfig
    TriggerProperties.add_member(:scheduled, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledTriggerProperties, location_name: "Scheduled"))
    TriggerProperties.type = Types::TriggerProperties
    TriggerType.add_member(:scheduled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SCHEDULED", traits: {"smithy.api#enumValue" => "Scheduled"}))
    TriggerType.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EVENT", traits: {"smithy.api#enumValue" => "Event"}))
    TriggerType.add_member(:ondemand, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ONDEMAND", traits: {"smithy.api#enumValue" => "OnDemand"}))
    TriggerTypeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerType)
    UnregisterConnectorRequest.add_member(:connector_label, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorLabel, location_name: "connectorLabel", traits: {"smithy.api#required" => {}}))
    UnregisterConnectorRequest.add_member(:force_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "forceDelete", traits: {"smithy.api#default" => false}))
    UnregisterConnectorRequest.type = Types::UnregisterConnectorRequest
    UnregisterConnectorResponse.type = Types::UnregisterConnectorResponse
    UnsupportedOperationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    UnsupportedOperationException.type = Types::UnsupportedOperationException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, location_name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateConnectorProfileRequest.add_member(:connector_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorProfileName, location_name: "connectorProfileName", traits: {"smithy.api#required" => {}}))
    UpdateConnectorProfileRequest.add_member(:connection_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionMode, location_name: "connectionMode", traits: {"smithy.api#required" => {}}))
    UpdateConnectorProfileRequest.add_member(:connector_profile_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorProfileConfig, location_name: "connectorProfileConfig", traits: {"smithy.api#required" => {}}))
    UpdateConnectorProfileRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateConnectorProfileRequest.type = Types::UpdateConnectorProfileRequest
    UpdateConnectorProfileResponse.add_member(:connector_profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorProfileArn, location_name: "connectorProfileArn"))
    UpdateConnectorProfileResponse.type = Types::UpdateConnectorProfileResponse
    UpdateConnectorRegistrationRequest.add_member(:connector_label, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorLabel, location_name: "connectorLabel", traits: {"smithy.api#required" => {}}))
    UpdateConnectorRegistrationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description"))
    UpdateConnectorRegistrationRequest.add_member(:connector_provisioning_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorProvisioningConfig, location_name: "connectorProvisioningConfig"))
    UpdateConnectorRegistrationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateConnectorRegistrationRequest.type = Types::UpdateConnectorRegistrationRequest
    UpdateConnectorRegistrationResponse.add_member(:connector_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "connectorArn"))
    UpdateConnectorRegistrationResponse.type = Types::UpdateConnectorRegistrationResponse
    UpdateFlowRequest.add_member(:flow_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowName, location_name: "flowName", traits: {"smithy.api#required" => {}}))
    UpdateFlowRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowDescription, location_name: "description"))
    UpdateFlowRequest.add_member(:trigger_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerConfig, location_name: "triggerConfig", traits: {"smithy.api#required" => {}}))
    UpdateFlowRequest.add_member(:source_flow_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceFlowConfig, location_name: "sourceFlowConfig", traits: {"smithy.api#required" => {}}))
    UpdateFlowRequest.add_member(:destination_flow_config_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationFlowConfigList, location_name: "destinationFlowConfigList", traits: {"smithy.api#required" => {}}))
    UpdateFlowRequest.add_member(:tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: Tasks, location_name: "tasks", traits: {"smithy.api#required" => {}}))
    UpdateFlowRequest.add_member(:metadata_catalog_config, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataCatalogConfig, location_name: "metadataCatalogConfig"))
    UpdateFlowRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateFlowRequest.type = Types::UpdateFlowRequest
    UpdateFlowResponse.add_member(:flow_status, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowStatus, location_name: "flowStatus"))
    UpdateFlowResponse.type = Types::UpdateFlowResponse
    UpsolverDestinationProperties.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UpsolverBucketName, location_name: "bucketName", traits: {"smithy.api#required" => {}}))
    UpsolverDestinationProperties.add_member(:bucket_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketPrefix, location_name: "bucketPrefix"))
    UpsolverDestinationProperties.add_member(:s3_output_format_config, ::Smithy::Schema::Shapes::MemberShape.new(target: UpsolverS3OutputFormatConfig, location_name: "s3OutputFormatConfig", traits: {"smithy.api#required" => {}}))
    UpsolverDestinationProperties.type = Types::UpsolverDestinationProperties
    UpsolverMetadata.type = Types::UpsolverMetadata
    UpsolverS3OutputFormatConfig.add_member(:file_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FileType, location_name: "fileType"))
    UpsolverS3OutputFormatConfig.add_member(:prefix_config, ::Smithy::Schema::Shapes::MemberShape.new(target: PrefixConfig, location_name: "prefixConfig", traits: {"smithy.api#required" => {}}))
    UpsolverS3OutputFormatConfig.add_member(:aggregation_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregationConfig, location_name: "aggregationConfig"))
    UpsolverS3OutputFormatConfig.type = Types::UpsolverS3OutputFormatConfig
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    ValidationException.type = Types::ValidationException
    VeevaConnectorOperator.add_member(:projection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROJECTION", traits: {"smithy.api#enumValue" => "PROJECTION"}))
    VeevaConnectorOperator.add_member(:less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LESS_THAN", traits: {"smithy.api#enumValue" => "LESS_THAN"}))
    VeevaConnectorOperator.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GREATER_THAN", traits: {"smithy.api#enumValue" => "GREATER_THAN"}))
    VeevaConnectorOperator.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONTAINS", traits: {"smithy.api#enumValue" => "CONTAINS"}))
    VeevaConnectorOperator.add_member(:between, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BETWEEN", traits: {"smithy.api#enumValue" => "BETWEEN"}))
    VeevaConnectorOperator.add_member(:less_than_or_equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LESS_THAN_OR_EQUAL_TO", traits: {"smithy.api#enumValue" => "LESS_THAN_OR_EQUAL_TO"}))
    VeevaConnectorOperator.add_member(:greater_than_or_equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GREATER_THAN_OR_EQUAL_TO", traits: {"smithy.api#enumValue" => "GREATER_THAN_OR_EQUAL_TO"}))
    VeevaConnectorOperator.add_member(:equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EQUAL_TO", traits: {"smithy.api#enumValue" => "EQUAL_TO"}))
    VeevaConnectorOperator.add_member(:not_equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_EQUAL_TO", traits: {"smithy.api#enumValue" => "NOT_EQUAL_TO"}))
    VeevaConnectorOperator.add_member(:addition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ADDITION", traits: {"smithy.api#enumValue" => "ADDITION"}))
    VeevaConnectorOperator.add_member(:multiplication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MULTIPLICATION", traits: {"smithy.api#enumValue" => "MULTIPLICATION"}))
    VeevaConnectorOperator.add_member(:division, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DIVISION", traits: {"smithy.api#enumValue" => "DIVISION"}))
    VeevaConnectorOperator.add_member(:subtraction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUBTRACTION", traits: {"smithy.api#enumValue" => "SUBTRACTION"}))
    VeevaConnectorOperator.add_member(:mask_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_ALL", traits: {"smithy.api#enumValue" => "MASK_ALL"}))
    VeevaConnectorOperator.add_member(:mask_first_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_FIRST_N", traits: {"smithy.api#enumValue" => "MASK_FIRST_N"}))
    VeevaConnectorOperator.add_member(:mask_last_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_LAST_N", traits: {"smithy.api#enumValue" => "MASK_LAST_N"}))
    VeevaConnectorOperator.add_member(:validate_non_null, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_NULL", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NULL"}))
    VeevaConnectorOperator.add_member(:validate_non_zero, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_ZERO", traits: {"smithy.api#enumValue" => "VALIDATE_NON_ZERO"}))
    VeevaConnectorOperator.add_member(:validate_non_negative, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_NEGATIVE", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NEGATIVE"}))
    VeevaConnectorOperator.add_member(:validate_numeric, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NUMERIC", traits: {"smithy.api#enumValue" => "VALIDATE_NUMERIC"}))
    VeevaConnectorOperator.add_member(:no_op, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_OP", traits: {"smithy.api#enumValue" => "NO_OP"}))
    VeevaConnectorProfileCredentials.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: Username, location_name: "username", traits: {"smithy.api#required" => {}}))
    VeevaConnectorProfileCredentials.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: Password, location_name: "password", traits: {"smithy.api#required" => {}}))
    VeevaConnectorProfileCredentials.type = Types::VeevaConnectorProfileCredentials
    VeevaConnectorProfileProperties.add_member(:instance_url, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceUrl, location_name: "instanceUrl", traits: {"smithy.api#required" => {}}))
    VeevaConnectorProfileProperties.type = Types::VeevaConnectorProfileProperties
    VeevaMetadata.type = Types::VeevaMetadata
    VeevaSourceProperties.add_member(:object, ::Smithy::Schema::Shapes::MemberShape.new(target: Object, location_name: "object", traits: {"smithy.api#required" => {}}))
    VeevaSourceProperties.add_member(:document_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentType, location_name: "documentType"))
    VeevaSourceProperties.add_member(:include_source_files, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "includeSourceFiles", traits: {"smithy.api#default" => false}))
    VeevaSourceProperties.add_member(:include_renditions, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "includeRenditions", traits: {"smithy.api#default" => false}))
    VeevaSourceProperties.add_member(:include_all_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "includeAllVersions", traits: {"smithy.api#default" => false}))
    VeevaSourceProperties.type = Types::VeevaSourceProperties
    WriteOperationType.add_member(:insert, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INSERT", traits: {"smithy.api#enumValue" => "INSERT"}))
    WriteOperationType.add_member(:upsert, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPSERT", traits: {"smithy.api#enumValue" => "UPSERT"}))
    WriteOperationType.add_member(:update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATE", traits: {"smithy.api#enumValue" => "UPDATE"}))
    WriteOperationType.add_member(:delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETE", traits: {"smithy.api#enumValue" => "DELETE"}))
    ZendeskConnectorOperator.add_member(:projection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROJECTION", traits: {"smithy.api#enumValue" => "PROJECTION"}))
    ZendeskConnectorOperator.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GREATER_THAN", traits: {"smithy.api#enumValue" => "GREATER_THAN"}))
    ZendeskConnectorOperator.add_member(:addition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ADDITION", traits: {"smithy.api#enumValue" => "ADDITION"}))
    ZendeskConnectorOperator.add_member(:multiplication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MULTIPLICATION", traits: {"smithy.api#enumValue" => "MULTIPLICATION"}))
    ZendeskConnectorOperator.add_member(:division, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DIVISION", traits: {"smithy.api#enumValue" => "DIVISION"}))
    ZendeskConnectorOperator.add_member(:subtraction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUBTRACTION", traits: {"smithy.api#enumValue" => "SUBTRACTION"}))
    ZendeskConnectorOperator.add_member(:mask_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_ALL", traits: {"smithy.api#enumValue" => "MASK_ALL"}))
    ZendeskConnectorOperator.add_member(:mask_first_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_FIRST_N", traits: {"smithy.api#enumValue" => "MASK_FIRST_N"}))
    ZendeskConnectorOperator.add_member(:mask_last_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MASK_LAST_N", traits: {"smithy.api#enumValue" => "MASK_LAST_N"}))
    ZendeskConnectorOperator.add_member(:validate_non_null, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_NULL", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NULL"}))
    ZendeskConnectorOperator.add_member(:validate_non_zero, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_ZERO", traits: {"smithy.api#enumValue" => "VALIDATE_NON_ZERO"}))
    ZendeskConnectorOperator.add_member(:validate_non_negative, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NON_NEGATIVE", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NEGATIVE"}))
    ZendeskConnectorOperator.add_member(:validate_numeric, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATE_NUMERIC", traits: {"smithy.api#enumValue" => "VALIDATE_NUMERIC"}))
    ZendeskConnectorOperator.add_member(:no_op, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_OP", traits: {"smithy.api#enumValue" => "NO_OP"}))
    ZendeskConnectorProfileCredentials.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientId, location_name: "clientId", traits: {"smithy.api#required" => {}}))
    ZendeskConnectorProfileCredentials.add_member(:client_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientSecret, location_name: "clientSecret", traits: {"smithy.api#required" => {}}))
    ZendeskConnectorProfileCredentials.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessToken, location_name: "accessToken"))
    ZendeskConnectorProfileCredentials.add_member(:o_auth_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorOAuthRequest, location_name: "oAuthRequest"))
    ZendeskConnectorProfileCredentials.type = Types::ZendeskConnectorProfileCredentials
    ZendeskConnectorProfileProperties.add_member(:instance_url, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceUrl, location_name: "instanceUrl", traits: {"smithy.api#required" => {}}))
    ZendeskConnectorProfileProperties.type = Types::ZendeskConnectorProfileProperties
    ZendeskDestinationProperties.add_member(:object, ::Smithy::Schema::Shapes::MemberShape.new(target: Object, location_name: "object", traits: {"smithy.api#required" => {}}))
    ZendeskDestinationProperties.add_member(:id_field_names, ::Smithy::Schema::Shapes::MemberShape.new(target: IdFieldNameList, location_name: "idFieldNames"))
    ZendeskDestinationProperties.add_member(:error_handling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorHandlingConfig, location_name: "errorHandlingConfig"))
    ZendeskDestinationProperties.add_member(:write_operation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WriteOperationType, location_name: "writeOperationType"))
    ZendeskDestinationProperties.type = Types::ZendeskDestinationProperties
    ZendeskMetadata.add_member(:o_auth_scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuthScopeList, location_name: "oAuthScopes"))
    ZendeskMetadata.type = Types::ZendeskMetadata
    ZendeskSourceProperties.add_member(:object, ::Smithy::Schema::Shapes::MemberShape.new(target: Object, location_name: "object", traits: {"smithy.api#required" => {}}))
    ZendeskSourceProperties.type = Types::ZendeskSourceProperties

    SandstoneConfigurationServiceLambda = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.appflow#SandstoneConfigurationServiceLambda"
      service.name = "SandstoneConfigurationServiceLambda"
      service.version = "2020-08-23"
      service.traits = {"aws.api#service" => {"sdkId" => "Appflow", "arnNamespace" => "appflow", "cloudFormationName" => "Appflow", "cloudTrailEventSource" => "appflow.amazonaws.com", "endpointPrefix" => "appflow"}, "aws.auth#sigv4" => {"name" => "appflow"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Appflow"}
      service.add_operation(:cancel_flow_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appflow#CancelFlowExecutions"
        operation.name = "CancelFlowExecutions"
        operation.input = CancelFlowExecutionsRequest
        operation.output = CancelFlowExecutionsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/cancel-flow-executions", "code" => 200}}
      end)
      service.add_operation(:create_connector_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appflow#CreateConnectorProfile"
        operation.name = "CreateConnectorProfile"
        operation.input = CreateConnectorProfileRequest
        operation.output = CreateConnectorProfileResponse
        operation.errors << ConflictException
        operation.errors << ConnectorAuthenticationException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/create-connector-profile", "code" => 200}}
      end)
      service.add_operation(:create_flow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appflow#CreateFlow"
        operation.name = "CreateFlow"
        operation.input = CreateFlowRequest
        operation.output = CreateFlowResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ConnectorAuthenticationException
        operation.errors << ConnectorServerException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/create-flow", "code" => 200}}
      end)
      service.add_operation(:delete_connector_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appflow#DeleteConnectorProfile"
        operation.name = "DeleteConnectorProfile"
        operation.input = DeleteConnectorProfileRequest
        operation.output = DeleteConnectorProfileResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/delete-connector-profile", "code" => 200}}
      end)
      service.add_operation(:delete_flow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appflow#DeleteFlow"
        operation.name = "DeleteFlow"
        operation.input = DeleteFlowRequest
        operation.output = DeleteFlowResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/delete-flow", "code" => 200}}
      end)
      service.add_operation(:describe_connector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appflow#DescribeConnector"
        operation.name = "DescribeConnector"
        operation.input = DescribeConnectorRequest
        operation.output = DescribeConnectorResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describe-connector", "code" => 200}}
      end)
      service.add_operation(:describe_connector_entity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appflow#DescribeConnectorEntity"
        operation.name = "DescribeConnectorEntity"
        operation.input = DescribeConnectorEntityRequest
        operation.output = DescribeConnectorEntityResponse
        operation.errors << ConnectorAuthenticationException
        operation.errors << ConnectorServerException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describe-connector-entity", "code" => 200}}
      end)
      service.add_operation(:describe_connector_profiles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appflow#DescribeConnectorProfiles"
        operation.name = "DescribeConnectorProfiles"
        operation.input = DescribeConnectorProfilesRequest
        operation.output = DescribeConnectorProfilesResponse
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describe-connector-profiles", "code" => 200}}
        operation[:paginator] = Paginators::DescribeConnectorProfiles.new
      end)
      service.add_operation(:describe_connectors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appflow#DescribeConnectors"
        operation.name = "DescribeConnectors"
        operation.input = DescribeConnectorsRequest
        operation.output = DescribeConnectorsResponse
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describe-connectors", "code" => 200}}
        operation[:paginator] = Paginators::DescribeConnectors.new
      end)
      service.add_operation(:describe_flow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appflow#DescribeFlow"
        operation.name = "DescribeFlow"
        operation.input = DescribeFlowRequest
        operation.output = DescribeFlowResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describe-flow", "code" => 200}}
      end)
      service.add_operation(:describe_flow_execution_records, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appflow#DescribeFlowExecutionRecords"
        operation.name = "DescribeFlowExecutionRecords"
        operation.input = DescribeFlowExecutionRecordsRequest
        operation.output = DescribeFlowExecutionRecordsResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describe-flow-execution-records", "code" => 200}}
        operation[:paginator] = Paginators::DescribeFlowExecutionRecords.new
      end)
      service.add_operation(:list_connector_entities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appflow#ListConnectorEntities"
        operation.name = "ListConnectorEntities"
        operation.input = ListConnectorEntitiesRequest
        operation.output = ListConnectorEntitiesResponse
        operation.errors << ConnectorAuthenticationException
        operation.errors << ConnectorServerException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-connector-entities", "code" => 200}}
      end)
      service.add_operation(:list_connectors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appflow#ListConnectors"
        operation.name = "ListConnectors"
        operation.input = ListConnectorsRequest
        operation.output = ListConnectorsResponse
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-connectors", "code" => 200}}
        operation[:paginator] = Paginators::ListConnectors.new
      end)
      service.add_operation(:list_flows, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appflow#ListFlows"
        operation.name = "ListFlows"
        operation.input = ListFlowsRequest
        operation.output = ListFlowsResponse
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-flows", "code" => 200}}
        operation[:paginator] = Paginators::ListFlows.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appflow#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:register_connector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appflow#RegisterConnector"
        operation.name = "RegisterConnector"
        operation.input = RegisterConnectorRequest
        operation.output = RegisterConnectorResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ConnectorAuthenticationException
        operation.errors << ConnectorServerException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/register-connector", "code" => 200}}
      end)
      service.add_operation(:reset_connector_metadata_cache, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appflow#ResetConnectorMetadataCache"
        operation.name = "ResetConnectorMetadataCache"
        operation.input = ResetConnectorMetadataCacheRequest
        operation.output = ResetConnectorMetadataCacheResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/reset-connector-metadata-cache", "code" => 200}}
      end)
      service.add_operation(:start_flow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appflow#StartFlow"
        operation.name = "StartFlow"
        operation.input = StartFlowRequest
        operation.output = StartFlowResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/start-flow", "code" => 200}}
      end)
      service.add_operation(:stop_flow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appflow#StopFlow"
        operation.name = "StopFlow"
        operation.input = StopFlowRequest
        operation.output = StopFlowResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/stop-flow", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appflow#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:unregister_connector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appflow#UnregisterConnector"
        operation.name = "UnregisterConnector"
        operation.input = UnregisterConnectorRequest
        operation.output = UnregisterConnectorResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/unregister-connector", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appflow#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_connector_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appflow#UpdateConnectorProfile"
        operation.name = "UpdateConnectorProfile"
        operation.input = UpdateConnectorProfileRequest
        operation.output = UpdateConnectorProfileResponse
        operation.errors << ConflictException
        operation.errors << ConnectorAuthenticationException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/update-connector-profile", "code" => 200}}
      end)
      service.add_operation(:update_connector_registration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appflow#UpdateConnectorRegistration"
        operation.name = "UpdateConnectorRegistration"
        operation.input = UpdateConnectorRegistrationRequest
        operation.output = UpdateConnectorRegistrationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ConnectorAuthenticationException
        operation.errors << ConnectorServerException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/update-connector-registration", "code" => 200}}
      end)
      service.add_operation(:update_flow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appflow#UpdateFlow"
        operation.name = "UpdateFlow"
        operation.input = UpdateFlowRequest
        operation.output = UpdateFlowResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ConnectorAuthenticationException
        operation.errors << ConnectorServerException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/update-flow", "code" => 200}}
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
