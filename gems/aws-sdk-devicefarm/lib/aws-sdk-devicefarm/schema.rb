# frozen_string_literal: true

# This is generated code!

module Aws::DeviceFarm
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AWSAccountNumber = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#AWSAccountNumber', name: 'AWSAccountNumber', traits: {"smithy.api#length" => {"min" => 2, "max" => 16}})
    AccountSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#AccountSettings', name: 'AccountSettings')
    AccountsCleanup = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.devicefarm#AccountsCleanup', name: 'AccountsCleanup')
    AmazonResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#AmazonResourceName', name: 'AmazonResourceName', traits: {"smithy.api#length" => {"min" => 32, "max" => 1011}, "smithy.api#pattern" => "^arn:aws:devicefarm:.+$"})
    AmazonResourceNames = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#AmazonResourceNames', name: 'AmazonResourceNames')
    AndroidPaths = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#AndroidPaths', name: 'AndroidPaths')
    AppPackagesCleanup = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.devicefarm#AppPackagesCleanup', name: 'AppPackagesCleanup')
    ArgumentException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ArgumentException', name: 'ArgumentException', traits: {"smithy.api#error" => "client"})
    Artifact = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#Artifact', name: 'Artifact')
    ArtifactCategory = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#ArtifactCategory', name: 'ArtifactCategory')
    ArtifactType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#ArtifactType', name: 'ArtifactType')
    Artifacts = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#Artifacts', name: 'Artifacts')
    BillingMethod = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#BillingMethod', name: 'BillingMethod')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.devicefarm#Boolean', name: 'Boolean')
    CPU = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CPU', name: 'CPU')
    CannotDeleteException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CannotDeleteException', name: 'CannotDeleteException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ClientId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#ClientId', name: 'ClientId', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    ContentType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#ContentType', name: 'ContentType', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    Counters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#Counters', name: 'Counters')
    CreateDevicePoolRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CreateDevicePoolRequest', name: 'CreateDevicePoolRequest')
    CreateDevicePoolResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CreateDevicePoolResult', name: 'CreateDevicePoolResult')
    CreateInstanceProfileRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CreateInstanceProfileRequest', name: 'CreateInstanceProfileRequest')
    CreateInstanceProfileResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CreateInstanceProfileResult', name: 'CreateInstanceProfileResult')
    CreateNetworkProfileRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CreateNetworkProfileRequest', name: 'CreateNetworkProfileRequest')
    CreateNetworkProfileResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CreateNetworkProfileResult', name: 'CreateNetworkProfileResult')
    CreateProjectRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CreateProjectRequest', name: 'CreateProjectRequest')
    CreateProjectResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CreateProjectResult', name: 'CreateProjectResult')
    CreateRemoteAccessSessionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CreateRemoteAccessSessionConfiguration', name: 'CreateRemoteAccessSessionConfiguration')
    CreateRemoteAccessSessionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CreateRemoteAccessSessionRequest', name: 'CreateRemoteAccessSessionRequest')
    CreateRemoteAccessSessionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CreateRemoteAccessSessionResult', name: 'CreateRemoteAccessSessionResult')
    CreateTestGridProjectRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CreateTestGridProjectRequest', name: 'CreateTestGridProjectRequest')
    CreateTestGridProjectResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CreateTestGridProjectResult', name: 'CreateTestGridProjectResult')
    CreateTestGridUrlRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CreateTestGridUrlRequest', name: 'CreateTestGridUrlRequest')
    CreateTestGridUrlResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CreateTestGridUrlResult', name: 'CreateTestGridUrlResult')
    CreateUploadRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CreateUploadRequest', name: 'CreateUploadRequest')
    CreateUploadResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CreateUploadResult', name: 'CreateUploadResult')
    CreateVPCEConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CreateVPCEConfigurationRequest', name: 'CreateVPCEConfigurationRequest')
    CreateVPCEConfigurationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CreateVPCEConfigurationResult', name: 'CreateVPCEConfigurationResult')
    CurrencyCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#CurrencyCode', name: 'CurrencyCode')
    CustomerArtifactPaths = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CustomerArtifactPaths', name: 'CustomerArtifactPaths')
    DateTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.devicefarm#DateTime', name: 'DateTime')
    DeleteDevicePoolRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeleteDevicePoolRequest', name: 'DeleteDevicePoolRequest')
    DeleteDevicePoolResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeleteDevicePoolResult', name: 'DeleteDevicePoolResult')
    DeleteInstanceProfileRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeleteInstanceProfileRequest', name: 'DeleteInstanceProfileRequest')
    DeleteInstanceProfileResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeleteInstanceProfileResult', name: 'DeleteInstanceProfileResult')
    DeleteNetworkProfileRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeleteNetworkProfileRequest', name: 'DeleteNetworkProfileRequest')
    DeleteNetworkProfileResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeleteNetworkProfileResult', name: 'DeleteNetworkProfileResult')
    DeleteProjectRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeleteProjectRequest', name: 'DeleteProjectRequest')
    DeleteProjectResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeleteProjectResult', name: 'DeleteProjectResult')
    DeleteRemoteAccessSessionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeleteRemoteAccessSessionRequest', name: 'DeleteRemoteAccessSessionRequest')
    DeleteRemoteAccessSessionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeleteRemoteAccessSessionResult', name: 'DeleteRemoteAccessSessionResult')
    DeleteRunRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeleteRunRequest', name: 'DeleteRunRequest')
    DeleteRunResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeleteRunResult', name: 'DeleteRunResult')
    DeleteTestGridProjectRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeleteTestGridProjectRequest', name: 'DeleteTestGridProjectRequest')
    DeleteTestGridProjectResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeleteTestGridProjectResult', name: 'DeleteTestGridProjectResult')
    DeleteUploadRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeleteUploadRequest', name: 'DeleteUploadRequest')
    DeleteUploadResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeleteUploadResult', name: 'DeleteUploadResult')
    DeleteVPCEConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeleteVPCEConfigurationRequest', name: 'DeleteVPCEConfigurationRequest')
    DeleteVPCEConfigurationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeleteVPCEConfigurationResult', name: 'DeleteVPCEConfigurationResult')
    Device = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#Device', name: 'Device')
    DeviceAttribute = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#DeviceAttribute', name: 'DeviceAttribute')
    DeviceAvailability = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#DeviceAvailability', name: 'DeviceAvailability')
    DeviceFarmArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#DeviceFarmArn', name: 'DeviceFarmArn', traits: {"smithy.api#length" => {"min" => 32, "max" => 1011}, "smithy.api#pattern" => "^arn:aws:devicefarm:.+$"})
    DeviceFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeviceFilter', name: 'DeviceFilter')
    DeviceFilterAttribute = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#DeviceFilterAttribute', name: 'DeviceFilterAttribute')
    DeviceFilterValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#DeviceFilterValues', name: 'DeviceFilterValues')
    DeviceFilters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#DeviceFilters', name: 'DeviceFilters')
    DeviceFormFactor = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#DeviceFormFactor', name: 'DeviceFormFactor')
    DeviceHostPaths = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#DeviceHostPaths', name: 'DeviceHostPaths')
    DeviceInstance = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeviceInstance', name: 'DeviceInstance')
    DeviceInstances = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#DeviceInstances', name: 'DeviceInstances')
    DeviceMinutes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeviceMinutes', name: 'DeviceMinutes')
    DevicePlatform = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#DevicePlatform', name: 'DevicePlatform')
    DevicePool = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DevicePool', name: 'DevicePool')
    DevicePoolCompatibilityResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DevicePoolCompatibilityResult', name: 'DevicePoolCompatibilityResult')
    DevicePoolCompatibilityResults = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#DevicePoolCompatibilityResults', name: 'DevicePoolCompatibilityResults')
    DevicePoolType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#DevicePoolType', name: 'DevicePoolType')
    DevicePools = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#DevicePools', name: 'DevicePools')
    DeviceProxy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeviceProxy', name: 'DeviceProxy')
    DeviceProxyHost = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#DeviceProxyHost', name: 'DeviceProxyHost', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^([a-zA-Z0-9])([a-zA-Z0-9-.]+)([a-zA-Z0-9])$"})
    DeviceProxyPort = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.devicefarm#DeviceProxyPort', name: 'DeviceProxyPort', traits: {"smithy.api#range" => {"min" => 1, "max" => 65535}})
    DeviceSelectionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeviceSelectionConfiguration', name: 'DeviceSelectionConfiguration')
    DeviceSelectionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeviceSelectionResult', name: 'DeviceSelectionResult')
    Devices = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#Devices', name: 'Devices')
    Double = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.devicefarm#Double', name: 'Double')
    ExceptionMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#ExceptionMessage', name: 'ExceptionMessage')
    ExecutionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ExecutionConfiguration', name: 'ExecutionConfiguration')
    ExecutionResult = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#ExecutionResult', name: 'ExecutionResult')
    ExecutionResultCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#ExecutionResultCode', name: 'ExecutionResultCode')
    ExecutionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#ExecutionStatus', name: 'ExecutionStatus')
    Filter = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#Filter', name: 'Filter', traits: {"smithy.api#length" => {"min" => 0, "max" => 8192}})
    GetAccountSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetAccountSettingsRequest', name: 'GetAccountSettingsRequest')
    GetAccountSettingsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetAccountSettingsResult', name: 'GetAccountSettingsResult')
    GetDeviceInstanceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetDeviceInstanceRequest', name: 'GetDeviceInstanceRequest')
    GetDeviceInstanceResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetDeviceInstanceResult', name: 'GetDeviceInstanceResult')
    GetDevicePoolCompatibilityRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetDevicePoolCompatibilityRequest', name: 'GetDevicePoolCompatibilityRequest')
    GetDevicePoolCompatibilityResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetDevicePoolCompatibilityResult', name: 'GetDevicePoolCompatibilityResult')
    GetDevicePoolRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetDevicePoolRequest', name: 'GetDevicePoolRequest')
    GetDevicePoolResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetDevicePoolResult', name: 'GetDevicePoolResult')
    GetDeviceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetDeviceRequest', name: 'GetDeviceRequest')
    GetDeviceResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetDeviceResult', name: 'GetDeviceResult')
    GetInstanceProfileRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetInstanceProfileRequest', name: 'GetInstanceProfileRequest')
    GetInstanceProfileResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetInstanceProfileResult', name: 'GetInstanceProfileResult')
    GetJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetJobRequest', name: 'GetJobRequest')
    GetJobResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetJobResult', name: 'GetJobResult')
    GetNetworkProfileRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetNetworkProfileRequest', name: 'GetNetworkProfileRequest')
    GetNetworkProfileResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetNetworkProfileResult', name: 'GetNetworkProfileResult')
    GetOfferingStatusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetOfferingStatusRequest', name: 'GetOfferingStatusRequest')
    GetOfferingStatusResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetOfferingStatusResult', name: 'GetOfferingStatusResult')
    GetProjectRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetProjectRequest', name: 'GetProjectRequest')
    GetProjectResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetProjectResult', name: 'GetProjectResult')
    GetRemoteAccessSessionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetRemoteAccessSessionRequest', name: 'GetRemoteAccessSessionRequest')
    GetRemoteAccessSessionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetRemoteAccessSessionResult', name: 'GetRemoteAccessSessionResult')
    GetRunRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetRunRequest', name: 'GetRunRequest')
    GetRunResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetRunResult', name: 'GetRunResult')
    GetSuiteRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetSuiteRequest', name: 'GetSuiteRequest')
    GetSuiteResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetSuiteResult', name: 'GetSuiteResult')
    GetTestGridProjectRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetTestGridProjectRequest', name: 'GetTestGridProjectRequest')
    GetTestGridProjectResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetTestGridProjectResult', name: 'GetTestGridProjectResult')
    GetTestGridSessionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetTestGridSessionRequest', name: 'GetTestGridSessionRequest')
    GetTestGridSessionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetTestGridSessionResult', name: 'GetTestGridSessionResult')
    GetTestRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetTestRequest', name: 'GetTestRequest')
    GetTestResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetTestResult', name: 'GetTestResult')
    GetUploadRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetUploadRequest', name: 'GetUploadRequest')
    GetUploadResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetUploadResult', name: 'GetUploadResult')
    GetVPCEConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetVPCEConfigurationRequest', name: 'GetVPCEConfigurationRequest')
    GetVPCEConfigurationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetVPCEConfigurationResult', name: 'GetVPCEConfigurationResult')
    HostAddress = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#HostAddress', name: 'HostAddress', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    IdempotencyException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#IdempotencyException', name: 'IdempotencyException', traits: {"smithy.api#error" => "client"})
    IncompatibilityMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#IncompatibilityMessage', name: 'IncompatibilityMessage')
    IncompatibilityMessages = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#IncompatibilityMessages', name: 'IncompatibilityMessages')
    InstallToRemoteAccessSessionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#InstallToRemoteAccessSessionRequest', name: 'InstallToRemoteAccessSessionRequest')
    InstallToRemoteAccessSessionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#InstallToRemoteAccessSessionResult', name: 'InstallToRemoteAccessSessionResult')
    InstanceLabels = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#InstanceLabels', name: 'InstanceLabels')
    InstanceProfile = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#InstanceProfile', name: 'InstanceProfile')
    InstanceProfiles = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#InstanceProfiles', name: 'InstanceProfiles')
    InstanceStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#InstanceStatus', name: 'InstanceStatus')
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.devicefarm#Integer', name: 'Integer')
    InteractionMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#InteractionMode', name: 'InteractionMode', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    InternalServiceException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#InternalServiceException', name: 'InternalServiceException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidOperationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#InvalidOperationException', name: 'InvalidOperationException', traits: {"smithy.api#error" => "client"})
    IosPaths = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#IosPaths', name: 'IosPaths')
    Job = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#Job', name: 'Job')
    JobTimeoutMinutes = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.devicefarm#JobTimeoutMinutes', name: 'JobTimeoutMinutes')
    Jobs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#Jobs', name: 'Jobs')
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client"})
    ListArtifactsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListArtifactsRequest', name: 'ListArtifactsRequest')
    ListArtifactsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListArtifactsResult', name: 'ListArtifactsResult')
    ListDeviceInstancesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListDeviceInstancesRequest', name: 'ListDeviceInstancesRequest')
    ListDeviceInstancesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListDeviceInstancesResult', name: 'ListDeviceInstancesResult')
    ListDevicePoolsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListDevicePoolsRequest', name: 'ListDevicePoolsRequest')
    ListDevicePoolsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListDevicePoolsResult', name: 'ListDevicePoolsResult')
    ListDevicesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListDevicesRequest', name: 'ListDevicesRequest')
    ListDevicesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListDevicesResult', name: 'ListDevicesResult')
    ListInstanceProfilesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListInstanceProfilesRequest', name: 'ListInstanceProfilesRequest')
    ListInstanceProfilesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListInstanceProfilesResult', name: 'ListInstanceProfilesResult')
    ListJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListJobsRequest', name: 'ListJobsRequest')
    ListJobsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListJobsResult', name: 'ListJobsResult')
    ListNetworkProfilesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListNetworkProfilesRequest', name: 'ListNetworkProfilesRequest')
    ListNetworkProfilesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListNetworkProfilesResult', name: 'ListNetworkProfilesResult')
    ListOfferingPromotionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListOfferingPromotionsRequest', name: 'ListOfferingPromotionsRequest')
    ListOfferingPromotionsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListOfferingPromotionsResult', name: 'ListOfferingPromotionsResult')
    ListOfferingTransactionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListOfferingTransactionsRequest', name: 'ListOfferingTransactionsRequest')
    ListOfferingTransactionsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListOfferingTransactionsResult', name: 'ListOfferingTransactionsResult')
    ListOfferingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListOfferingsRequest', name: 'ListOfferingsRequest')
    ListOfferingsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListOfferingsResult', name: 'ListOfferingsResult')
    ListProjectsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListProjectsRequest', name: 'ListProjectsRequest')
    ListProjectsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListProjectsResult', name: 'ListProjectsResult')
    ListRemoteAccessSessionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListRemoteAccessSessionsRequest', name: 'ListRemoteAccessSessionsRequest')
    ListRemoteAccessSessionsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListRemoteAccessSessionsResult', name: 'ListRemoteAccessSessionsResult')
    ListRunsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListRunsRequest', name: 'ListRunsRequest')
    ListRunsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListRunsResult', name: 'ListRunsResult')
    ListSamplesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListSamplesRequest', name: 'ListSamplesRequest')
    ListSamplesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListSamplesResult', name: 'ListSamplesResult')
    ListSuitesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListSuitesRequest', name: 'ListSuitesRequest')
    ListSuitesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListSuitesResult', name: 'ListSuitesResult')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListTestGridProjectsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListTestGridProjectsRequest', name: 'ListTestGridProjectsRequest')
    ListTestGridProjectsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListTestGridProjectsResult', name: 'ListTestGridProjectsResult')
    ListTestGridSessionActionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListTestGridSessionActionsRequest', name: 'ListTestGridSessionActionsRequest')
    ListTestGridSessionActionsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListTestGridSessionActionsResult', name: 'ListTestGridSessionActionsResult')
    ListTestGridSessionArtifactsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListTestGridSessionArtifactsRequest', name: 'ListTestGridSessionArtifactsRequest')
    ListTestGridSessionArtifactsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListTestGridSessionArtifactsResult', name: 'ListTestGridSessionArtifactsResult')
    ListTestGridSessionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListTestGridSessionsRequest', name: 'ListTestGridSessionsRequest')
    ListTestGridSessionsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListTestGridSessionsResult', name: 'ListTestGridSessionsResult')
    ListTestsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListTestsRequest', name: 'ListTestsRequest')
    ListTestsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListTestsResult', name: 'ListTestsResult')
    ListUniqueProblemsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListUniqueProblemsRequest', name: 'ListUniqueProblemsRequest')
    ListUniqueProblemsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListUniqueProblemsResult', name: 'ListUniqueProblemsResult')
    ListUploadsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListUploadsRequest', name: 'ListUploadsRequest')
    ListUploadsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListUploadsResult', name: 'ListUploadsResult')
    ListVPCEConfigurationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListVPCEConfigurationsRequest', name: 'ListVPCEConfigurationsRequest')
    ListVPCEConfigurationsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListVPCEConfigurationsResult', name: 'ListVPCEConfigurationsResult')
    Location = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#Location', name: 'Location')
    Long = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.devicefarm#Long', name: 'Long')
    MaxPageSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.devicefarm#MaxPageSize', name: 'MaxPageSize', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MaxSlotMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.devicefarm#MaxSlotMap', name: 'MaxSlotMap')
    Message = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#Message', name: 'Message', traits: {"smithy.api#length" => {"min" => 0, "max" => 16384}})
    Metadata = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#Metadata', name: 'Metadata', traits: {"smithy.api#length" => {"min" => 0, "max" => 8192}})
    MonetaryAmount = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#MonetaryAmount', name: 'MonetaryAmount')
    Name = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#Name', name: 'Name', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    NetworkProfile = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#NetworkProfile', name: 'NetworkProfile')
    NetworkProfileType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#NetworkProfileType', name: 'NetworkProfileType')
    NetworkProfiles = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#NetworkProfiles', name: 'NetworkProfiles')
    NonEmptyString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#NonEmptyString', name: 'NonEmptyString', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "\\S"})
    NotEligibleException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#NotEligibleException', name: 'NotEligibleException', traits: {"smithy.api#error" => "client"})
    NotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#NotFoundException', name: 'NotFoundException', traits: {"smithy.api#error" => "client"})
    Offering = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#Offering', name: 'Offering')
    OfferingIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#OfferingIdentifier', name: 'OfferingIdentifier', traits: {"smithy.api#length" => {"min" => 32}})
    OfferingPromotion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#OfferingPromotion', name: 'OfferingPromotion')
    OfferingPromotionIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#OfferingPromotionIdentifier', name: 'OfferingPromotionIdentifier', traits: {"smithy.api#length" => {"min" => 4}})
    OfferingPromotions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#OfferingPromotions', name: 'OfferingPromotions')
    OfferingStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#OfferingStatus', name: 'OfferingStatus')
    OfferingStatusMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.devicefarm#OfferingStatusMap', name: 'OfferingStatusMap')
    OfferingTransaction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#OfferingTransaction', name: 'OfferingTransaction')
    OfferingTransactionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#OfferingTransactionType', name: 'OfferingTransactionType')
    OfferingTransactions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#OfferingTransactions', name: 'OfferingTransactions')
    OfferingType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#OfferingType', name: 'OfferingType')
    Offerings = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#Offerings', name: 'Offerings')
    PackageIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#PackageIds', name: 'PackageIds')
    PaginationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 4, "max" => 1024}})
    PercentInteger = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.devicefarm#PercentInteger', name: 'PercentInteger', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    Problem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#Problem', name: 'Problem')
    ProblemDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ProblemDetail', name: 'ProblemDetail')
    Problems = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#Problems', name: 'Problems')
    Project = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#Project', name: 'Project')
    Projects = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#Projects', name: 'Projects')
    PurchaseOfferingRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#PurchaseOfferingRequest', name: 'PurchaseOfferingRequest')
    PurchaseOfferingResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#PurchaseOfferingResult', name: 'PurchaseOfferingResult')
    PurchasedDevicesMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.devicefarm#PurchasedDevicesMap', name: 'PurchasedDevicesMap')
    Radios = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#Radios', name: 'Radios')
    RecurringCharge = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#RecurringCharge', name: 'RecurringCharge')
    RecurringChargeFrequency = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#RecurringChargeFrequency', name: 'RecurringChargeFrequency')
    RecurringCharges = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#RecurringCharges', name: 'RecurringCharges')
    RemoteAccessSession = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#RemoteAccessSession', name: 'RemoteAccessSession')
    RemoteAccessSessions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#RemoteAccessSessions', name: 'RemoteAccessSessions')
    RenewOfferingRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#RenewOfferingRequest', name: 'RenewOfferingRequest')
    RenewOfferingResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#RenewOfferingResult', name: 'RenewOfferingResult')
    Resolution = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#Resolution', name: 'Resolution')
    ResourceDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#ResourceDescription', name: 'ResourceDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "\\S"})
    ResourceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#ResourceId', name: 'ResourceId', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "\\S"})
    ResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#ResourceName', name: 'ResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "\\S"})
    Rule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#Rule', name: 'Rule')
    RuleOperator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#RuleOperator', name: 'RuleOperator')
    Rules = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#Rules', name: 'Rules')
    Run = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#Run', name: 'Run')
    Runs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#Runs', name: 'Runs')
    Sample = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#Sample', name: 'Sample')
    SampleType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#SampleType', name: 'SampleType')
    Samples = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#Samples', name: 'Samples')
    ScheduleRunConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ScheduleRunConfiguration', name: 'ScheduleRunConfiguration')
    ScheduleRunRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ScheduleRunRequest', name: 'ScheduleRunRequest')
    ScheduleRunResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ScheduleRunResult', name: 'ScheduleRunResult')
    ScheduleRunTest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ScheduleRunTest', name: 'ScheduleRunTest')
    SecurityGroupId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#SecurityGroupId', name: 'SecurityGroupId', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^sg-[0-9a-fA-F]{8,}$"})
    SecurityGroupIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#SecurityGroupIds', name: 'SecurityGroupIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    SensitiveString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#SensitiveString', name: 'SensitiveString', traits: {"smithy.api#sensitive" => {}})
    SensitiveURL = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#SensitiveURL', name: 'SensitiveURL', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#sensitive" => {}})
    ServiceAccountException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ServiceAccountException', name: 'ServiceAccountException', traits: {"smithy.api#error" => "client"})
    ServiceDnsName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#ServiceDnsName', name: 'ServiceDnsName', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    SkipAppResign = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.devicefarm#SkipAppResign', name: 'SkipAppResign')
    SshPublicKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#SshPublicKey', name: 'SshPublicKey', traits: {"smithy.api#length" => {"min" => 0, "max" => 8192}})
    StopJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#StopJobRequest', name: 'StopJobRequest')
    StopJobResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#StopJobResult', name: 'StopJobResult')
    StopRemoteAccessSessionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#StopRemoteAccessSessionRequest', name: 'StopRemoteAccessSessionRequest')
    StopRemoteAccessSessionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#StopRemoteAccessSessionResult', name: 'StopRemoteAccessSessionResult')
    StopRunRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#StopRunRequest', name: 'StopRunRequest')
    StopRunResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#StopRunResult', name: 'StopRunResult')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#String', name: 'String')
    SubnetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#SubnetId', name: 'SubnetId', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^subnet-[0-9a-fA-F]{8,}$"})
    SubnetIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#SubnetIds', name: 'SubnetIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 8}})
    Suite = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#Suite', name: 'Suite')
    Suites = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#Suites', name: 'Suites')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 150}})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 150}})
    TagOperationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#TagOperationException', name: 'TagOperationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TagPolicyException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#TagPolicyException', name: 'TagPolicyException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Test = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#Test', name: 'Test')
    TestGridProject = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#TestGridProject', name: 'TestGridProject')
    TestGridProjects = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#TestGridProjects', name: 'TestGridProjects')
    TestGridSession = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#TestGridSession', name: 'TestGridSession')
    TestGridSessionAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#TestGridSessionAction', name: 'TestGridSessionAction')
    TestGridSessionActions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#TestGridSessionActions', name: 'TestGridSessionActions')
    TestGridSessionArtifact = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#TestGridSessionArtifact', name: 'TestGridSessionArtifact')
    TestGridSessionArtifactCategory = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#TestGridSessionArtifactCategory', name: 'TestGridSessionArtifactCategory')
    TestGridSessionArtifactType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#TestGridSessionArtifactType', name: 'TestGridSessionArtifactType')
    TestGridSessionArtifacts = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#TestGridSessionArtifacts', name: 'TestGridSessionArtifacts')
    TestGridSessionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#TestGridSessionStatus', name: 'TestGridSessionStatus')
    TestGridSessions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#TestGridSessions', name: 'TestGridSessions')
    TestGridUrlExpiresInSecondsInput = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.devicefarm#TestGridUrlExpiresInSecondsInput', name: 'TestGridUrlExpiresInSecondsInput', traits: {"smithy.api#range" => {"min" => 60, "max" => 86400}})
    TestGridVpcConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#TestGridVpcConfig', name: 'TestGridVpcConfig')
    TestParameters = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.devicefarm#TestParameters', name: 'TestParameters')
    TestType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#TestType', name: 'TestType')
    Tests = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#Tests', name: 'Tests')
    TooManyTagsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#TooManyTagsException', name: 'TooManyTagsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TransactionIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#TransactionIdentifier', name: 'TransactionIdentifier', traits: {"smithy.api#length" => {"min" => 32}})
    TrialMinutes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#TrialMinutes', name: 'TrialMinutes')
    URL = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#URL', name: 'URL', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    UniqueProblem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#UniqueProblem', name: 'UniqueProblem')
    UniqueProblems = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#UniqueProblems', name: 'UniqueProblems')
    UniqueProblemsByExecutionResultMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.devicefarm#UniqueProblemsByExecutionResultMap', name: 'UniqueProblemsByExecutionResultMap')
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateDeviceInstanceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#UpdateDeviceInstanceRequest', name: 'UpdateDeviceInstanceRequest')
    UpdateDeviceInstanceResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#UpdateDeviceInstanceResult', name: 'UpdateDeviceInstanceResult')
    UpdateDevicePoolRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#UpdateDevicePoolRequest', name: 'UpdateDevicePoolRequest')
    UpdateDevicePoolResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#UpdateDevicePoolResult', name: 'UpdateDevicePoolResult')
    UpdateInstanceProfileRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#UpdateInstanceProfileRequest', name: 'UpdateInstanceProfileRequest')
    UpdateInstanceProfileResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#UpdateInstanceProfileResult', name: 'UpdateInstanceProfileResult')
    UpdateNetworkProfileRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#UpdateNetworkProfileRequest', name: 'UpdateNetworkProfileRequest')
    UpdateNetworkProfileResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#UpdateNetworkProfileResult', name: 'UpdateNetworkProfileResult')
    UpdateProjectRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#UpdateProjectRequest', name: 'UpdateProjectRequest')
    UpdateProjectResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#UpdateProjectResult', name: 'UpdateProjectResult')
    UpdateTestGridProjectRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#UpdateTestGridProjectRequest', name: 'UpdateTestGridProjectRequest')
    UpdateTestGridProjectResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#UpdateTestGridProjectResult', name: 'UpdateTestGridProjectResult')
    UpdateUploadRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#UpdateUploadRequest', name: 'UpdateUploadRequest')
    UpdateUploadResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#UpdateUploadResult', name: 'UpdateUploadResult')
    UpdateVPCEConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#UpdateVPCEConfigurationRequest', name: 'UpdateVPCEConfigurationRequest')
    UpdateVPCEConfigurationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#UpdateVPCEConfigurationResult', name: 'UpdateVPCEConfigurationResult')
    Upload = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#Upload', name: 'Upload')
    UploadCategory = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#UploadCategory', name: 'UploadCategory')
    UploadStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#UploadStatus', name: 'UploadStatus')
    UploadType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#UploadType', name: 'UploadType')
    Uploads = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#Uploads', name: 'Uploads')
    VPCEConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#VPCEConfiguration', name: 'VPCEConfiguration')
    VPCEConfigurationDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#VPCEConfigurationDescription', name: 'VPCEConfigurationDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    VPCEConfigurationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#VPCEConfigurationName', name: 'VPCEConfigurationName', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    VPCEConfigurations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#VPCEConfigurations', name: 'VPCEConfigurations')
    VPCEServiceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#VPCEServiceName', name: 'VPCEServiceName', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    VideoCapture = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.devicefarm#VideoCapture', name: 'VideoCapture')
    VpcConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#VpcConfig', name: 'VpcConfig')
    VpcSecurityGroupIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#VpcSecurityGroupIds', name: 'VpcSecurityGroupIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    VpcSubnetIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#VpcSubnetIds', name: 'VpcSubnetIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 8}})

    AccountSettings.add_member(:aws_account_number, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountNumber, location_name: 'awsAccountNumber', traits: {"smithy.api#documentation" => "<p>The AWS account number specified in the <code>AccountSettings</code>\n            container.</p>"}))
    AccountSettings.add_member(:unmetered_devices, Smithy::Schema::Shapes::ShapeRef.new(shape: PurchasedDevicesMap, location_name: 'unmeteredDevices', traits: {"smithy.api#documentation" => "<p>Returns the unmetered devices you have purchased or want to purchase.</p>"}))
    AccountSettings.add_member(:unmetered_remote_access_devices, Smithy::Schema::Shapes::ShapeRef.new(shape: PurchasedDevicesMap, location_name: 'unmeteredRemoteAccessDevices', traits: {"smithy.api#documentation" => "<p>Returns the unmetered remote access devices you have purchased or want to\n            purchase.</p>"}))
    AccountSettings.add_member(:max_job_timeout_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTimeoutMinutes, location_name: 'maxJobTimeoutMinutes', traits: {"smithy.api#documentation" => "<p>The maximum number of minutes a test run executes before it times out.</p>"}))
    AccountSettings.add_member(:trial_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: TrialMinutes, location_name: 'trialMinutes', traits: {"smithy.api#documentation" => "<p>Information about an AWS account's usage of free trial device minutes.</p>"}))
    AccountSettings.add_member(:max_slots, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSlotMap, location_name: 'maxSlots', traits: {"smithy.api#documentation" => "<p>The maximum number of device slots that the AWS account can purchase. Each maximum\n            is expressed as an <code>offering-id:number</code> pair, where the\n                <code>offering-id</code> represents one of the IDs returned by the\n                <code>ListOfferings</code> command.</p>"}))
    AccountSettings.add_member(:default_job_timeout_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTimeoutMinutes, location_name: 'defaultJobTimeoutMinutes', traits: {"smithy.api#documentation" => "<p>The default number of minutes (at the account level) a test run executes before it times out. The\n            default value is 150 minutes.</p>"}))
    AccountSettings.add_member(:skip_app_resign, Smithy::Schema::Shapes::ShapeRef.new(shape: SkipAppResign, location_name: 'skipAppResign', traits: {"smithy.api#documentation" => "<p>When set to <code>true</code>, for private devices, Device Farm does not sign your app again. For public\n            devices, Device Farm always signs your apps again.</p>\n        <p>For more information about how Device Farm re-signs your apps, see <a href=\"http://aws.amazon.com/device-farm/faqs/\">Do you modify my app?</a> in the <i>AWS Device\n                Farm FAQs</i>.</p>"}))
    AccountSettings.type = Types::AccountSettings
    AmazonResourceNames.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName)
    AndroidPaths.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ArgumentException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any additional information about the exception.</p>"}))
    ArgumentException.type = Types::ArgumentException
    Artifact.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The artifact's ARN.</p>"}))
    Artifact.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The artifact's name.</p>"}))
    Artifact.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The artifact's type.</p>\n        <p>Allowed values include the following:</p>\n        <ul>\n            <li>\n                <p>UNKNOWN</p>\n            </li>\n            <li>\n                <p>SCREENSHOT</p>\n            </li>\n            <li>\n                <p>DEVICE_LOG</p>\n            </li>\n            <li>\n                <p>MESSAGE_LOG</p>\n            </li>\n            <li>\n                <p>VIDEO_LOG</p>\n            </li>\n            <li>\n                <p>RESULT_LOG</p>\n            </li>\n            <li>\n                <p>SERVICE_LOG</p>\n            </li>\n            <li>\n                <p>WEBKIT_LOG</p>\n            </li>\n            <li>\n                <p>INSTRUMENTATION_OUTPUT</p>\n            </li>\n            <li>\n                <p>EXERCISER_MONKEY_OUTPUT: the artifact (log) generated by an Android fuzz test.</p>\n            </li>\n            <li>\n                <p>APPIUM_SERVER_OUTPUT</p>\n            </li>\n            <li>\n                <p>APPIUM_JAVA_OUTPUT</p>\n            </li>\n            <li>\n                <p>APPIUM_JAVA_XML_OUTPUT</p>\n            </li>\n            <li>\n                <p>APPIUM_PYTHON_OUTPUT</p>\n            </li>\n            <li>\n                <p>APPIUM_PYTHON_XML_OUTPUT</p>\n            </li>\n            <li>\n                <p>APPLICATION_CRASH_REPORT</p>\n            </li>\n            <li>\n                <p>XCTEST_LOG</p>\n            </li>\n            <li>\n                <p>VIDEO</p>\n            </li>\n            <li>\n                <p>CUSTOMER_ARTIFACT</p>\n            </li>\n            <li>\n                <p>CUSTOMER_ARTIFACT_LOG</p>\n            </li>\n            <li>\n                <p>TESTSPEC_OUTPUT</p>\n            </li>\n         </ul>"}))
    Artifact.add_member(:extension, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'extension', traits: {"smithy.api#documentation" => "<p>The artifact's file extension.</p>"}))
    Artifact.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: URL, location_name: 'url', traits: {"smithy.api#documentation" => "<p>The presigned Amazon S3 URL that can be used with a GET request to download the artifact's\n            file.</p>"}))
    Artifact.type = Types::Artifact
    ArtifactCategory.add_member(:screenshot, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCREENSHOT', traits: {"smithy.api#enumValue" => "SCREENSHOT"}))
    ArtifactCategory.add_member(:file, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FILE', traits: {"smithy.api#enumValue" => "FILE"}))
    ArtifactCategory.add_member(:log, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOG', traits: {"smithy.api#enumValue" => "LOG"}))
    ArtifactType.add_member(:unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    ArtifactType.add_member(:screenshot, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCREENSHOT', traits: {"smithy.api#enumValue" => "SCREENSHOT"}))
    ArtifactType.add_member(:device_log, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEVICE_LOG', traits: {"smithy.api#enumValue" => "DEVICE_LOG"}))
    ArtifactType.add_member(:message_log, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MESSAGE_LOG', traits: {"smithy.api#enumValue" => "MESSAGE_LOG"}))
    ArtifactType.add_member(:video_log, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VIDEO_LOG', traits: {"smithy.api#enumValue" => "VIDEO_LOG"}))
    ArtifactType.add_member(:result_log, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESULT_LOG', traits: {"smithy.api#enumValue" => "RESULT_LOG"}))
    ArtifactType.add_member(:service_log, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVICE_LOG', traits: {"smithy.api#enumValue" => "SERVICE_LOG"}))
    ArtifactType.add_member(:webkit_log, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEBKIT_LOG', traits: {"smithy.api#enumValue" => "WEBKIT_LOG"}))
    ArtifactType.add_member(:instrumentation_output, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTRUMENTATION_OUTPUT', traits: {"smithy.api#enumValue" => "INSTRUMENTATION_OUTPUT"}))
    ArtifactType.add_member(:exerciser_monkey_output, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXERCISER_MONKEY_OUTPUT', traits: {"smithy.api#enumValue" => "EXERCISER_MONKEY_OUTPUT"}))
    ArtifactType.add_member(:calabash_json_output, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CALABASH_JSON_OUTPUT', traits: {"smithy.api#enumValue" => "CALABASH_JSON_OUTPUT"}))
    ArtifactType.add_member(:calabash_pretty_output, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CALABASH_PRETTY_OUTPUT', traits: {"smithy.api#enumValue" => "CALABASH_PRETTY_OUTPUT"}))
    ArtifactType.add_member(:calabash_standard_output, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CALABASH_STANDARD_OUTPUT', traits: {"smithy.api#enumValue" => "CALABASH_STANDARD_OUTPUT"}))
    ArtifactType.add_member(:calabash_java_xml_output, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CALABASH_JAVA_XML_OUTPUT', traits: {"smithy.api#enumValue" => "CALABASH_JAVA_XML_OUTPUT"}))
    ArtifactType.add_member(:automation_output, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTOMATION_OUTPUT', traits: {"smithy.api#enumValue" => "AUTOMATION_OUTPUT"}))
    ArtifactType.add_member(:appium_server_output, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_SERVER_OUTPUT', traits: {"smithy.api#enumValue" => "APPIUM_SERVER_OUTPUT"}))
    ArtifactType.add_member(:appium_java_output, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_JAVA_OUTPUT', traits: {"smithy.api#enumValue" => "APPIUM_JAVA_OUTPUT"}))
    ArtifactType.add_member(:appium_java_xml_output, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_JAVA_XML_OUTPUT', traits: {"smithy.api#enumValue" => "APPIUM_JAVA_XML_OUTPUT"}))
    ArtifactType.add_member(:appium_python_output, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_PYTHON_OUTPUT', traits: {"smithy.api#enumValue" => "APPIUM_PYTHON_OUTPUT"}))
    ArtifactType.add_member(:appium_python_xml_output, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_PYTHON_XML_OUTPUT', traits: {"smithy.api#enumValue" => "APPIUM_PYTHON_XML_OUTPUT"}))
    ArtifactType.add_member(:explorer_event_log, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPLORER_EVENT_LOG', traits: {"smithy.api#enumValue" => "EXPLORER_EVENT_LOG"}))
    ArtifactType.add_member(:explorer_summary_log, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPLORER_SUMMARY_LOG', traits: {"smithy.api#enumValue" => "EXPLORER_SUMMARY_LOG"}))
    ArtifactType.add_member(:application_crash_report, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPLICATION_CRASH_REPORT', traits: {"smithy.api#enumValue" => "APPLICATION_CRASH_REPORT"}))
    ArtifactType.add_member(:xctest_log, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'XCTEST_LOG', traits: {"smithy.api#enumValue" => "XCTEST_LOG"}))
    ArtifactType.add_member(:video, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VIDEO', traits: {"smithy.api#enumValue" => "VIDEO"}))
    ArtifactType.add_member(:customer_artifact, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOMER_ARTIFACT', traits: {"smithy.api#enumValue" => "CUSTOMER_ARTIFACT"}))
    ArtifactType.add_member(:customer_artifact_log, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOMER_ARTIFACT_LOG', traits: {"smithy.api#enumValue" => "CUSTOMER_ARTIFACT_LOG"}))
    ArtifactType.add_member(:testspec_output, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TESTSPEC_OUTPUT', traits: {"smithy.api#enumValue" => "TESTSPEC_OUTPUT"}))
    Artifacts.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Artifact)
    BillingMethod.add_member(:metered, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'METERED', traits: {"smithy.api#enumValue" => "METERED"}))
    BillingMethod.add_member(:unmetered, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNMETERED', traits: {"smithy.api#enumValue" => "UNMETERED"}))
    CPU.add_member(:frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'frequency', traits: {"smithy.api#documentation" => "<p>The CPU's frequency.</p>"}))
    CPU.add_member(:architecture, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'architecture', traits: {"smithy.api#documentation" => "<p>The CPU's architecture (for example, x86 or ARM).</p>"}))
    CPU.add_member(:clock, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'clock', traits: {"smithy.api#documentation" => "<p>The clock speed of the device's CPU, expressed in hertz (Hz). For example, a 1.2\n            GHz CPU is expressed as 1200000000.</p>"}))
    CPU.type = Types::CPU
    CannotDeleteException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    CannotDeleteException.type = Types::CannotDeleteException
    Counters.add_member(:total, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'total', traits: {"smithy.api#documentation" => "<p>The total number of entities.</p>"}))
    Counters.add_member(:passed, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'passed', traits: {"smithy.api#documentation" => "<p>The number of passed entities.</p>"}))
    Counters.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'failed', traits: {"smithy.api#documentation" => "<p>The number of failed entities.</p>"}))
    Counters.add_member(:warned, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'warned', traits: {"smithy.api#documentation" => "<p>The number of warned entities.</p>"}))
    Counters.add_member(:errored, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'errored', traits: {"smithy.api#documentation" => "<p>The number of errored entities.</p>"}))
    Counters.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'stopped', traits: {"smithy.api#documentation" => "<p>The number of stopped entities.</p>"}))
    Counters.add_member(:skipped, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'skipped', traits: {"smithy.api#documentation" => "<p>The number of skipped entities.</p>"}))
    Counters.type = Types::Counters
    CreateDevicePoolRequest.add_member(:project_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'projectArn', traits: {"smithy.api#documentation" => "<p>The ARN of the project for the device pool.</p>", "smithy.api#required" => {}}))
    CreateDevicePoolRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The device pool's name.</p>", "smithy.api#required" => {}}))
    CreateDevicePoolRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The device pool's description.</p>"}))
    CreateDevicePoolRequest.add_member(:rules, Smithy::Schema::Shapes::ShapeRef.new(shape: Rules, location_name: 'rules', traits: {"smithy.api#documentation" => "<p>The device pool's rules.</p>", "smithy.api#required" => {}}))
    CreateDevicePoolRequest.add_member(:max_devices, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxDevices', traits: {"smithy.api#documentation" => "<p>The number of devices that Device Farm can add to your device pool. Device Farm adds devices that are\n            available and meet the criteria that you assign for the <code>rules</code> parameter. Depending on how many\n            devices meet these constraints, your device pool might contain fewer devices than the value for this\n            parameter.</p>\n        <p>By specifying the maximum number of devices, you can control the costs that you incur\n            by running tests.</p>"}))
    CreateDevicePoolRequest.type = Types::CreateDevicePoolRequest
    CreateDevicePoolResult.add_member(:device_pool, Smithy::Schema::Shapes::ShapeRef.new(shape: DevicePool, location_name: 'devicePool', traits: {"smithy.api#documentation" => "<p>The newly created device pool.</p>"}))
    CreateDevicePoolResult.type = Types::CreateDevicePoolResult
    CreateInstanceProfileRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of your instance profile.</p>", "smithy.api#required" => {}}))
    CreateInstanceProfileRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of your instance profile.</p>"}))
    CreateInstanceProfileRequest.add_member(:package_cleanup, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'packageCleanup', traits: {"smithy.api#documentation" => "<p>When set to <code>true</code>, Device Farm removes app packages after a test run. The default value is\n                <code>false</code> for private devices.</p>"}))
    CreateInstanceProfileRequest.add_member(:exclude_app_packages_from_cleanup, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageIds, location_name: 'excludeAppPackagesFromCleanup', traits: {"smithy.api#documentation" => "<p>An array of strings that specifies the list of app packages that should not be cleaned up from the device\n            after a test run.</p>\n        <p>The list of packages is considered only if you set <code>packageCleanup</code> to\n            <code>true</code>.</p>"}))
    CreateInstanceProfileRequest.add_member(:reboot_after_use, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'rebootAfterUse', traits: {"smithy.api#documentation" => "<p>When set to <code>true</code>, Device Farm reboots the instance after a test run. The default value is\n                <code>true</code>.</p>"}))
    CreateInstanceProfileRequest.type = Types::CreateInstanceProfileRequest
    CreateInstanceProfileResult.add_member(:instance_profile, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceProfile, location_name: 'instanceProfile', traits: {"smithy.api#documentation" => "<p>An object that contains information about your instance profile.</p>"}))
    CreateInstanceProfileResult.type = Types::CreateInstanceProfileResult
    CreateNetworkProfileRequest.add_member(:project_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'projectArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the project for which you want to create a\n            network profile.</p>", "smithy.api#required" => {}}))
    CreateNetworkProfileRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name for the new network profile.</p>", "smithy.api#required" => {}}))
    CreateNetworkProfileRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the network profile.</p>"}))
    CreateNetworkProfileRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkProfileType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of network profile to create. Valid values are listed here.</p>"}))
    CreateNetworkProfileRequest.add_member(:uplink_bandwidth_bits, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'uplinkBandwidthBits', traits: {"smithy.api#documentation" => "<p>The data throughput rate in bits per second, as an integer from 0 to\n            104857600.</p>"}))
    CreateNetworkProfileRequest.add_member(:downlink_bandwidth_bits, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'downlinkBandwidthBits', traits: {"smithy.api#documentation" => "<p>The data throughput rate in bits per second, as an integer from 0 to\n            104857600.</p>"}))
    CreateNetworkProfileRequest.add_member(:uplink_delay_ms, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'uplinkDelayMs', traits: {"smithy.api#documentation" => "<p>Delay time for all packets to destination in milliseconds as an integer from 0 to\n            2000.</p>"}))
    CreateNetworkProfileRequest.add_member(:downlink_delay_ms, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'downlinkDelayMs', traits: {"smithy.api#documentation" => "<p>Delay time for all packets to destination in milliseconds as an integer from 0 to\n            2000.</p>"}))
    CreateNetworkProfileRequest.add_member(:uplink_jitter_ms, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'uplinkJitterMs', traits: {"smithy.api#documentation" => "<p>Time variation in the delay of received packets in milliseconds as an integer from\n            0 to 2000.</p>"}))
    CreateNetworkProfileRequest.add_member(:downlink_jitter_ms, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'downlinkJitterMs', traits: {"smithy.api#documentation" => "<p>Time variation in the delay of received packets in milliseconds as an integer from\n            0 to 2000.</p>"}))
    CreateNetworkProfileRequest.add_member(:uplink_loss_percent, Smithy::Schema::Shapes::ShapeRef.new(shape: PercentInteger, location_name: 'uplinkLossPercent', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Proportion of transmitted packets that fail to arrive from 0 to 100\n            percent.</p>"}))
    CreateNetworkProfileRequest.add_member(:downlink_loss_percent, Smithy::Schema::Shapes::ShapeRef.new(shape: PercentInteger, location_name: 'downlinkLossPercent', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Proportion of received packets that fail to arrive from 0 to 100 percent.</p>"}))
    CreateNetworkProfileRequest.type = Types::CreateNetworkProfileRequest
    CreateNetworkProfileResult.add_member(:network_profile, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkProfile, location_name: 'networkProfile', traits: {"smithy.api#documentation" => "<p>The network profile that is returned by the create network profile\n            request.</p>"}))
    CreateNetworkProfileResult.type = Types::CreateNetworkProfileResult
    CreateProjectRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The project's name.</p>", "smithy.api#required" => {}}))
    CreateProjectRequest.add_member(:default_job_timeout_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTimeoutMinutes, location_name: 'defaultJobTimeoutMinutes', traits: {"smithy.api#documentation" => "<p>Sets the execution timeout value (in minutes) for a project. All test runs in this project use the\n            specified execution timeout value unless overridden when scheduling a run.</p>"}))
    CreateProjectRequest.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: 'vpcConfig', traits: {"smithy.api#documentation" => "<p>The VPC security groups and subnets that are attached to a project.</p>"}))
    CreateProjectRequest.type = Types::CreateProjectRequest
    CreateProjectResult.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: Project, location_name: 'project', traits: {"smithy.api#documentation" => "<p>The newly created project.</p>"}))
    CreateProjectResult.type = Types::CreateProjectResult
    CreateRemoteAccessSessionConfiguration.add_member(:billing_method, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingMethod, location_name: 'billingMethod', traits: {"smithy.api#documentation" => "<p>The billing method for the remote access session.</p>"}))
    CreateRemoteAccessSessionConfiguration.add_member(:vpce_configuration_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceNames, location_name: 'vpceConfigurationArns', traits: {"smithy.api#documentation" => "<p>An array of ARNs included in the VPC endpoint configuration.</p>"}))
    CreateRemoteAccessSessionConfiguration.add_member(:device_proxy, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceProxy, location_name: 'deviceProxy', traits: {"smithy.api#documentation" => "<p>The device proxy to be configured on the device for the remote access session.</p>"}))
    CreateRemoteAccessSessionConfiguration.type = Types::CreateRemoteAccessSessionConfiguration
    CreateRemoteAccessSessionRequest.add_member(:project_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'projectArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the project for which you want to create a remote\n            access session.</p>", "smithy.api#required" => {}}))
    CreateRemoteAccessSessionRequest.add_member(:device_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'deviceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the device for which you want to create a remote access session.</p>", "smithy.api#required" => {}}))
    CreateRemoteAccessSessionRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'instanceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the device instance for which you want to create a\n            remote access session.</p>"}))
    CreateRemoteAccessSessionRequest.add_member(:ssh_public_key, Smithy::Schema::Shapes::ShapeRef.new(shape: SshPublicKey, location_name: 'sshPublicKey', traits: {"smithy.api#documentation" => "<p>Ignored. The public key of the <code>ssh</code> key pair you want to use for connecting to remote\n            devices in your remote debugging session. This key is required only if <code>remoteDebugEnabled</code> is\n            set to <code>true</code>.</p>\n        <p>Remote debugging is <a href=\"https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html\">no\n            longer supported</a>.</p>"}))
    CreateRemoteAccessSessionRequest.add_member(:remote_debug_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'remoteDebugEnabled', traits: {"smithy.api#documentation" => "<p>Set to <code>true</code> if you want to access devices remotely for debugging in\n            your remote access session.</p>\n        <p>Remote debugging is <a href=\"https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html\">no\n            longer supported</a>.</p>"}))
    CreateRemoteAccessSessionRequest.add_member(:remote_record_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'remoteRecordEnabled', traits: {"smithy.api#documentation" => "<p>Set to <code>true</code> to enable remote recording for the remote access\n            session.</p>"}))
    CreateRemoteAccessSessionRequest.add_member(:remote_record_app_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'remoteRecordAppArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the app to be recorded in the remote access\n            session.</p>"}))
    CreateRemoteAccessSessionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the remote access session to create.</p>"}))
    CreateRemoteAccessSessionRequest.add_member(:client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientId, location_name: 'clientId', traits: {"smithy.api#documentation" => "<p>Unique identifier for the client. If you want access to multiple devices on the same client, you should\n            pass the same <code>clientId</code> value in each call to <code>CreateRemoteAccessSession</code>. This\n            identifier is required only if <code>remoteDebugEnabled</code> is set to <code>true</code>.</p>\n        <p>Remote debugging is <a href=\"https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html\">no\n            longer supported</a>.</p>"}))
    CreateRemoteAccessSessionRequest.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRemoteAccessSessionConfiguration, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>The configuration information for the remote access session request.</p>"}))
    CreateRemoteAccessSessionRequest.add_member(:interaction_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: InteractionMode, location_name: 'interactionMode', traits: {"smithy.api#documentation" => "<p>The interaction mode of the remote access session. Valid values are:</p>\n        <ul>\n            <li>\n                <p>INTERACTIVE: You can interact with the iOS device by viewing, touching, and\n                    rotating the screen. You cannot run XCUITest framework-based tests in this\n                    mode.</p>\n            </li>\n            <li>\n                <p>NO_VIDEO: You are connected to the device, but cannot interact with it or view the screen. This\n                    mode has the fastest test execution speed. You can run XCUITest framework-based tests in this\n                    mode.</p>\n            </li>\n            <li>\n                <p>VIDEO_ONLY: You can view the screen, but cannot touch or rotate it. You can run XCUITest\n                    framework-based tests and watch the screen in this mode.</p>\n            </li>\n         </ul>"}))
    CreateRemoteAccessSessionRequest.add_member(:skip_app_resign, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'skipAppResign', traits: {"smithy.api#documentation" => "<p>When set to <code>true</code>, for private devices, Device Farm does not sign your app again. For public\n            devices, Device Farm always signs your apps again.</p>\n        <p>For more information on how Device Farm modifies your uploads during tests, see <a href=\"http://aws.amazon.com/device-farm/faqs/\">Do you modify my app?</a>\n         </p>"}))
    CreateRemoteAccessSessionRequest.type = Types::CreateRemoteAccessSessionRequest
    CreateRemoteAccessSessionResult.add_member(:remote_access_session, Smithy::Schema::Shapes::ShapeRef.new(shape: RemoteAccessSession, location_name: 'remoteAccessSession', traits: {"smithy.api#documentation" => "<p>A container that describes the remote access session when the request to create a\n            remote access session is sent.</p>"}))
    CreateRemoteAccessSessionResult.type = Types::CreateRemoteAccessSessionResult
    CreateTestGridProjectRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Human-readable name of the Selenium testing project.</p>", "smithy.api#required" => {}}))
    CreateTestGridProjectRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>Human-readable description of the project.</p>"}))
    CreateTestGridProjectRequest.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: TestGridVpcConfig, location_name: 'vpcConfig', traits: {"smithy.api#documentation" => "<p>The VPC security groups and subnets that are attached to a project.</p>"}))
    CreateTestGridProjectRequest.type = Types::CreateTestGridProjectRequest
    CreateTestGridProjectResult.add_member(:test_grid_project, Smithy::Schema::Shapes::ShapeRef.new(shape: TestGridProject, location_name: 'testGridProject', traits: {"smithy.api#documentation" => "<p>ARN of the Selenium testing project that was created.</p>"}))
    CreateTestGridProjectResult.type = Types::CreateTestGridProjectResult
    CreateTestGridUrlRequest.add_member(:project_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFarmArn, location_name: 'projectArn', traits: {"smithy.api#documentation" => "<p>ARN (from <a>CreateTestGridProject</a> or <a>ListTestGridProjects</a>) to associate\n         with the short-term URL. </p>", "smithy.api#required" => {}}))
    CreateTestGridUrlRequest.add_member(:expires_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: TestGridUrlExpiresInSecondsInput, location_name: 'expiresInSeconds', traits: {"smithy.api#documentation" => "<p>Lifetime, in seconds, of the URL.</p>", "smithy.api#required" => {}}))
    CreateTestGridUrlRequest.type = Types::CreateTestGridUrlRequest
    CreateTestGridUrlResult.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'url', traits: {"smithy.api#documentation" => "<p>A signed URL, expiring in <a>CreateTestGridUrlRequest$expiresInSeconds</a> seconds, to be passed\n         to a <code>RemoteWebDriver</code>. </p>"}))
    CreateTestGridUrlResult.add_member(:expires, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'expires', traits: {"smithy.api#documentation" => "<p>The number of seconds the URL from <a>CreateTestGridUrlResult$url</a> stays active.</p>"}))
    CreateTestGridUrlResult.type = Types::CreateTestGridUrlResult
    CreateUploadRequest.add_member(:project_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'projectArn', traits: {"smithy.api#documentation" => "<p>The ARN of the project for the upload.</p>", "smithy.api#required" => {}}))
    CreateUploadRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The upload's file name. The name should not contain any forward slashes (<code>/</code>). If you are\n            uploading an iOS app, the file name must end with the <code>.ipa</code> extension. If you are uploading an\n            Android app, the file name must end with the <code>.apk</code> extension. For all others, the file name must\n            end with the <code>.zip</code> file extension.</p>", "smithy.api#required" => {}}))
    CreateUploadRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: UploadType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The upload's upload type.</p>\n        <p>Must be one of the following values:</p>\n        <ul>\n            <li>\n                <p>ANDROID_APP</p>\n            </li>\n            <li>\n                <p>IOS_APP</p>\n            </li>\n            <li>\n                <p>WEB_APP</p>\n            </li>\n            <li>\n                <p>EXTERNAL_DATA</p>\n            </li>\n            <li>\n                <p>APPIUM_JAVA_JUNIT_TEST_PACKAGE</p>\n            </li>\n            <li>\n                <p>APPIUM_JAVA_TESTNG_TEST_PACKAGE</p>\n            </li>\n            <li>\n                <p>APPIUM_PYTHON_TEST_PACKAGE</p>\n            </li>\n            <li>\n                <p>APPIUM_NODE_TEST_PACKAGE</p>\n            </li>\n            <li>\n                <p>APPIUM_RUBY_TEST_PACKAGE</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_PYTHON_TEST_PACKAGE</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_NODE_TEST_PACKAGE</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_RUBY_TEST_PACKAGE</p>\n            </li>\n            <li>\n                <p>INSTRUMENTATION_TEST_PACKAGE</p>\n            </li>\n            <li>\n                <p>XCTEST_TEST_PACKAGE</p>\n            </li>\n            <li>\n                <p>XCTEST_UI_TEST_PACKAGE</p>\n            </li>\n            <li>\n                <p>APPIUM_JAVA_JUNIT_TEST_SPEC</p>\n            </li>\n            <li>\n                <p>APPIUM_JAVA_TESTNG_TEST_SPEC</p>\n            </li>\n            <li>\n                <p>APPIUM_PYTHON_TEST_SPEC</p>\n            </li>\n            <li>\n                <p>APPIUM_NODE_TEST_SPEC</p>\n            </li>\n            <li>\n                <p>APPIUM_RUBY_TEST_SPEC</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_JAVA_JUNIT_TEST_SPEC</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_JAVA_TESTNG_TEST_SPEC</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_PYTHON_TEST_SPEC</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_NODE_TEST_SPEC</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_RUBY_TEST_SPEC</p>\n            </li>\n            <li>\n                <p>INSTRUMENTATION_TEST_SPEC</p>\n            </li>\n            <li>\n                <p>XCTEST_UI_TEST_SPEC</p>\n            </li>\n         </ul>\n        <p> If you call <code>CreateUpload</code> with <code>WEB_APP</code> specified, AWS\n            Device Farm throws an <code>ArgumentException</code> error.</p>", "smithy.api#required" => {}}))
    CreateUploadRequest.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: 'contentType', traits: {"smithy.api#documentation" => "<p>The upload's content type (for example, <code>application/octet-stream</code>).</p>"}))
    CreateUploadRequest.type = Types::CreateUploadRequest
    CreateUploadResult.add_member(:upload, Smithy::Schema::Shapes::ShapeRef.new(shape: Upload, location_name: 'upload', traits: {"smithy.api#documentation" => "<p>The newly created upload.</p>"}))
    CreateUploadResult.type = Types::CreateUploadResult
    CreateVPCEConfigurationRequest.add_member(:vpce_configuration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VPCEConfigurationName, location_name: 'vpceConfigurationName', traits: {"smithy.api#documentation" => "<p>The friendly name you give to your VPC endpoint configuration, to manage your\n            configurations more easily.</p>", "smithy.api#required" => {}}))
    CreateVPCEConfigurationRequest.add_member(:vpce_service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VPCEServiceName, location_name: 'vpceServiceName', traits: {"smithy.api#documentation" => "<p>The name of the VPC endpoint service running in your AWS account that you want Device Farm to test.</p>", "smithy.api#required" => {}}))
    CreateVPCEConfigurationRequest.add_member(:service_dns_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceDnsName, location_name: 'serviceDnsName', traits: {"smithy.api#documentation" => "<p>The DNS name of the service running in your VPC that you want Device Farm to\n            test.</p>", "smithy.api#required" => {}}))
    CreateVPCEConfigurationRequest.add_member(:vpce_configuration_description, Smithy::Schema::Shapes::ShapeRef.new(shape: VPCEConfigurationDescription, location_name: 'vpceConfigurationDescription', traits: {"smithy.api#documentation" => "<p>An optional description that provides details about your VPC endpoint configuration.</p>"}))
    CreateVPCEConfigurationRequest.type = Types::CreateVPCEConfigurationRequest
    CreateVPCEConfigurationResult.add_member(:vpce_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: VPCEConfiguration, location_name: 'vpceConfiguration', traits: {"smithy.api#documentation" => "<p>An object that contains information about your VPC endpoint configuration.</p>"}))
    CreateVPCEConfigurationResult.type = Types::CreateVPCEConfigurationResult
    CurrencyCode.add_member(:usd, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USD', traits: {"smithy.api#enumValue" => "USD"}))
    CustomerArtifactPaths.add_member(:ios_paths, Smithy::Schema::Shapes::ShapeRef.new(shape: IosPaths, location_name: 'iosPaths', traits: {"smithy.api#documentation" => "<p>Comma-separated list of paths on the iOS device where the artifacts generated by the customer's tests\n            are pulled from.</p>"}))
    CustomerArtifactPaths.add_member(:android_paths, Smithy::Schema::Shapes::ShapeRef.new(shape: AndroidPaths, location_name: 'androidPaths', traits: {"smithy.api#documentation" => "<p>Comma-separated list of paths on the Android device where the artifacts generated by the customer's\n            tests are pulled from.</p>"}))
    CustomerArtifactPaths.add_member(:device_host_paths, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceHostPaths, location_name: 'deviceHostPaths', traits: {"smithy.api#documentation" => "<p>Comma-separated list of paths in the test execution environment where the artifacts generated by the\n            customer's tests are pulled from.</p>"}))
    CustomerArtifactPaths.type = Types::CustomerArtifactPaths
    DeleteDevicePoolRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Represents the Amazon Resource Name (ARN) of the Device Farm device pool to delete.</p>", "smithy.api#required" => {}}))
    DeleteDevicePoolRequest.type = Types::DeleteDevicePoolRequest
    DeleteDevicePoolResult.type = Types::DeleteDevicePoolResult
    DeleteInstanceProfileRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the instance profile you are requesting to\n            delete.</p>", "smithy.api#required" => {}}))
    DeleteInstanceProfileRequest.type = Types::DeleteInstanceProfileRequest
    DeleteInstanceProfileResult.type = Types::DeleteInstanceProfileResult
    DeleteNetworkProfileRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the network profile to delete.</p>", "smithy.api#required" => {}}))
    DeleteNetworkProfileRequest.type = Types::DeleteNetworkProfileRequest
    DeleteNetworkProfileResult.type = Types::DeleteNetworkProfileResult
    DeleteProjectRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Represents the Amazon Resource Name (ARN) of the Device Farm project to delete.</p>", "smithy.api#required" => {}}))
    DeleteProjectRequest.type = Types::DeleteProjectRequest
    DeleteProjectResult.type = Types::DeleteProjectResult
    DeleteRemoteAccessSessionRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the session for which you want to delete remote\n            access.</p>", "smithy.api#required" => {}}))
    DeleteRemoteAccessSessionRequest.type = Types::DeleteRemoteAccessSessionRequest
    DeleteRemoteAccessSessionResult.type = Types::DeleteRemoteAccessSessionResult
    DeleteRunRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the run to delete.</p>", "smithy.api#required" => {}}))
    DeleteRunRequest.type = Types::DeleteRunRequest
    DeleteRunResult.type = Types::DeleteRunResult
    DeleteTestGridProjectRequest.add_member(:project_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFarmArn, location_name: 'projectArn', traits: {"smithy.api#documentation" => "<p>The ARN of the project to delete, from <a>CreateTestGridProject</a> or <a>ListTestGridProjects</a>.</p>", "smithy.api#required" => {}}))
    DeleteTestGridProjectRequest.type = Types::DeleteTestGridProjectRequest
    DeleteTestGridProjectResult.type = Types::DeleteTestGridProjectResult
    DeleteUploadRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Represents the Amazon Resource Name (ARN) of the Device Farm upload to delete.</p>", "smithy.api#required" => {}}))
    DeleteUploadRequest.type = Types::DeleteUploadRequest
    DeleteUploadResult.type = Types::DeleteUploadResult
    DeleteVPCEConfigurationRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the VPC endpoint configuration you want to\n            delete.</p>", "smithy.api#required" => {}}))
    DeleteVPCEConfigurationRequest.type = Types::DeleteVPCEConfigurationRequest
    DeleteVPCEConfigurationResult.type = Types::DeleteVPCEConfigurationResult
    Device.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The device's ARN.</p>"}))
    Device.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The device's display name.</p>"}))
    Device.add_member(:manufacturer, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'manufacturer', traits: {"smithy.api#documentation" => "<p>The device's manufacturer name.</p>"}))
    Device.add_member(:model, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'model', traits: {"smithy.api#documentation" => "<p>The device's model name.</p>"}))
    Device.add_member(:model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'modelId', traits: {"smithy.api#documentation" => "<p>The device's model ID.</p>"}))
    Device.add_member(:form_factor, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFormFactor, location_name: 'formFactor', traits: {"smithy.api#documentation" => "<p>The device's form factor.</p>\n        <p>Allowed values include:</p>\n        <ul>\n            <li>\n                <p>PHONE</p>\n            </li>\n            <li>\n                <p>TABLET</p>\n            </li>\n         </ul>"}))
    Device.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: DevicePlatform, location_name: 'platform', traits: {"smithy.api#documentation" => "<p>The device's platform.</p>\n        <p>Allowed values include:</p>\n        <ul>\n            <li>\n                <p>ANDROID</p>\n            </li>\n            <li>\n                <p>IOS</p>\n            </li>\n         </ul>"}))
    Device.add_member(:os, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'os', traits: {"smithy.api#documentation" => "<p>The device's operating system type.</p>"}))
    Device.add_member(:cpu, Smithy::Schema::Shapes::ShapeRef.new(shape: CPU, location_name: 'cpu', traits: {"smithy.api#documentation" => "<p>Information about the device's CPU.</p>"}))
    Device.add_member(:resolution, Smithy::Schema::Shapes::ShapeRef.new(shape: Resolution, location_name: 'resolution', traits: {"smithy.api#documentation" => "<p>The resolution of the device.</p>"}))
    Device.add_member(:heap_size, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'heapSize', traits: {"smithy.api#documentation" => "<p>The device's heap size, expressed in bytes.</p>"}))
    Device.add_member(:memory, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'memory', traits: {"smithy.api#documentation" => "<p>The device's total memory size, expressed in bytes.</p>"}))
    Device.add_member(:image, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'image', traits: {"smithy.api#documentation" => "<p>The device's image name.</p>"}))
    Device.add_member(:carrier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'carrier', traits: {"smithy.api#documentation" => "<p>The device's carrier.</p>"}))
    Device.add_member(:radio, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'radio', traits: {"smithy.api#documentation" => "<p>The device's radio.</p>"}))
    Device.add_member(:remote_access_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'remoteAccessEnabled', traits: {"smithy.api#documentation" => "<p>Specifies whether remote access has been enabled for the specified\n            device.</p>"}))
    Device.add_member(:remote_debug_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'remoteDebugEnabled', traits: {"smithy.api#documentation" => "<p>This flag is set to <code>true</code> if remote debugging is enabled for the\n            device.</p>\n        <p>Remote debugging is <a href=\"https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html\">no\n            longer supported</a>.</p>"}))
    Device.add_member(:fleet_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'fleetType', traits: {"smithy.api#documentation" => "<p>The type of fleet to which this device belongs. Possible values are PRIVATE and PUBLIC.</p>"}))
    Device.add_member(:fleet_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'fleetName', traits: {"smithy.api#documentation" => "<p>The name of the fleet to which this device belongs.</p>"}))
    Device.add_member(:instances, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceInstances, location_name: 'instances', traits: {"smithy.api#documentation" => "<p>The instances that belong to this device.</p>"}))
    Device.add_member(:availability, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceAvailability, location_name: 'availability', traits: {"smithy.api#documentation" => "<p>Indicates how likely a device is available for a test run. Currently available in the <a>ListDevices</a> and GetDevice API methods.</p>"}))
    Device.type = Types::Device
    DeviceAttribute.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ARN', traits: {"smithy.api#enumValue" => "ARN"}))
    DeviceAttribute.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PLATFORM', traits: {"smithy.api#enumValue" => "PLATFORM"}))
    DeviceAttribute.add_member(:form_factor, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FORM_FACTOR', traits: {"smithy.api#enumValue" => "FORM_FACTOR"}))
    DeviceAttribute.add_member(:manufacturer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANUFACTURER', traits: {"smithy.api#enumValue" => "MANUFACTURER"}))
    DeviceAttribute.add_member(:remote_access_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REMOTE_ACCESS_ENABLED', traits: {"smithy.api#enumValue" => "REMOTE_ACCESS_ENABLED"}))
    DeviceAttribute.add_member(:remote_debug_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REMOTE_DEBUG_ENABLED', traits: {"smithy.api#enumValue" => "REMOTE_DEBUG_ENABLED"}))
    DeviceAttribute.add_member(:appium_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_VERSION', traits: {"smithy.api#enumValue" => "APPIUM_VERSION"}))
    DeviceAttribute.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTANCE_ARN', traits: {"smithy.api#enumValue" => "INSTANCE_ARN"}))
    DeviceAttribute.add_member(:instance_labels, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTANCE_LABELS', traits: {"smithy.api#enumValue" => "INSTANCE_LABELS"}))
    DeviceAttribute.add_member(:fleet_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FLEET_TYPE', traits: {"smithy.api#enumValue" => "FLEET_TYPE"}))
    DeviceAttribute.add_member(:os_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OS_VERSION', traits: {"smithy.api#enumValue" => "OS_VERSION"}))
    DeviceAttribute.add_member(:model, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MODEL', traits: {"smithy.api#enumValue" => "MODEL"}))
    DeviceAttribute.add_member(:availability, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABILITY', traits: {"smithy.api#enumValue" => "AVAILABILITY"}))
    DeviceAvailability.add_member(:temporary_not_available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEMPORARY_NOT_AVAILABLE', traits: {"smithy.api#enumValue" => "TEMPORARY_NOT_AVAILABLE"}))
    DeviceAvailability.add_member(:busy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BUSY', traits: {"smithy.api#enumValue" => "BUSY"}))
    DeviceAvailability.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    DeviceAvailability.add_member(:highly_available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HIGHLY_AVAILABLE', traits: {"smithy.api#enumValue" => "HIGHLY_AVAILABLE"}))
    DeviceFilter.add_member(:attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFilterAttribute, location_name: 'attribute', traits: {"smithy.api#documentation" => "<p>The aspect of a device such as platform or model used as the selection criteria in a\n            device filter.</p>\n        <p>The supported operators for each attribute are provided in the following list.</p>\n        <dl>\n            <dt>ARN</dt>\n            <dd>\n                    <p>The Amazon Resource Name (ARN) of the device (for example,\n                            <code>arn:aws:devicefarm:us-west-2::device:12345Example</code>).</p>\n                    <p>Supported operators: <code>EQUALS</code>, <code>IN</code>, <code>NOT_IN</code>\n               </p>\n                </dd>\n            <dt>PLATFORM</dt>\n            <dd>\n                    <p>The device platform. Valid values are ANDROID or IOS.</p>\n                    <p>Supported operators: <code>EQUALS</code>\n               </p>\n                </dd>\n            <dt>OS_VERSION</dt>\n            <dd>\n                    <p>The operating system version (for example, 10.3.2).</p>\n                    <p>Supported operators: <code>EQUALS</code>, <code>GREATER_THAN</code>,\n                            <code>GREATER_THAN_OR_EQUALS</code>, <code>IN</code>,\n                            <code>LESS_THAN</code>, <code>LESS_THAN_OR_EQUALS</code>,\n                            <code>NOT_IN</code>\n               </p>\n                </dd>\n            <dt>MODEL</dt>\n            <dd>\n                    <p>The device model (for example, iPad 5th Gen).</p>\n                    <p>Supported operators: <code>CONTAINS</code>, <code>EQUALS</code>,\n                            <code>IN</code>, <code>NOT_IN</code>\n               </p>\n                </dd>\n            <dt>AVAILABILITY</dt>\n            <dd>\n                    <p>The current availability of the device. Valid values are AVAILABLE,\n                        HIGHLY_AVAILABLE, BUSY, or TEMPORARY_NOT_AVAILABLE.</p>\n                    <p>Supported operators: <code>EQUALS</code>\n               </p>\n                </dd>\n            <dt>FORM_FACTOR</dt>\n            <dd>\n                    <p>The device form factor. Valid values are PHONE or TABLET.</p>\n                    <p>Supported operators: <code>EQUALS</code>\n               </p>\n                </dd>\n            <dt>MANUFACTURER</dt>\n            <dd>\n                    <p>The device manufacturer (for example, Apple).</p>\n                    <p>Supported operators: <code>EQUALS</code>, <code>IN</code>,\n                            <code>NOT_IN</code>\n               </p>\n                </dd>\n            <dt>REMOTE_ACCESS_ENABLED</dt>\n            <dd>\n                    <p>Whether the device is enabled for remote access. Valid values are TRUE or\n                        FALSE.</p>\n                    <p>Supported operators: <code>EQUALS</code>\n               </p>\n                </dd>\n            <dt>REMOTE_DEBUG_ENABLED</dt>\n            <dd>\n                    <p>Whether the device is enabled for remote debugging. Valid values are TRUE or FALSE.</p>\n                    <p>Supported operators: <code>EQUALS</code>\n               </p>\n                    <p>Because remote debugging is <a href=\"https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html\">no\n                        longer supported</a>, this filter is ignored.</p>\n                </dd>\n            <dt>INSTANCE_ARN</dt>\n            <dd>\n                    <p>The Amazon Resource Name (ARN) of the device instance.</p>\n                    <p>Supported operators: <code>EQUALS</code>, <code>IN</code>,\n                            <code>NOT_IN</code>\n               </p>\n                </dd>\n            <dt>INSTANCE_LABELS</dt>\n            <dd>\n                    <p>The label of the device instance.</p>\n                    <p>Supported operators: <code>CONTAINS</code>\n               </p>\n                </dd>\n            <dt>FLEET_TYPE</dt>\n            <dd>\n                    <p>The fleet type. Valid values are PUBLIC or PRIVATE.</p>\n                    <p>Supported operators: <code>EQUALS</code>\n               </p>\n                </dd>\n         </dl>", "smithy.api#required" => {}}))
    DeviceFilter.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleOperator, location_name: 'operator', traits: {"smithy.api#documentation" => "<p>Specifies how Device Farm compares the filter's attribute to the value. See the attribute\n            descriptions.</p>", "smithy.api#required" => {}}))
    DeviceFilter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFilterValues, location_name: 'values', traits: {"smithy.api#documentation" => "<p>An array of one or more filter values used in a device filter.</p>\n        <p class=\"title\">\n            <b>Operator Values</b>\n         </p>\n         <ul>\n            <li>\n                <p>The IN and NOT_IN operators can take a values array that has more than one\n                    element.</p>\n            </li>\n            <li>\n                <p>The other operators require an array with a single element.</p>\n            </li>\n         </ul>\n        <p class=\"title\">\n            <b>Attribute Values</b>\n         </p>\n         <ul>\n            <li>\n                <p>The PLATFORM attribute can be set to ANDROID or IOS.</p>\n            </li>\n            <li>\n                <p>The AVAILABILITY attribute can be set to AVAILABLE, HIGHLY_AVAILABLE, BUSY, or\n                    TEMPORARY_NOT_AVAILABLE.</p>\n            </li>\n            <li>\n                <p>The FORM_FACTOR attribute can be set to PHONE or TABLET.</p>\n            </li>\n            <li>\n                <p>The FLEET_TYPE attribute can be set to PUBLIC or PRIVATE.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    DeviceFilter.type = Types::DeviceFilter
    DeviceFilterAttribute.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ARN', traits: {"smithy.api#enumValue" => "ARN"}))
    DeviceFilterAttribute.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PLATFORM', traits: {"smithy.api#enumValue" => "PLATFORM"}))
    DeviceFilterAttribute.add_member(:os_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OS_VERSION', traits: {"smithy.api#enumValue" => "OS_VERSION"}))
    DeviceFilterAttribute.add_member(:model, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MODEL', traits: {"smithy.api#enumValue" => "MODEL"}))
    DeviceFilterAttribute.add_member(:availability, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABILITY', traits: {"smithy.api#enumValue" => "AVAILABILITY"}))
    DeviceFilterAttribute.add_member(:form_factor, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FORM_FACTOR', traits: {"smithy.api#enumValue" => "FORM_FACTOR"}))
    DeviceFilterAttribute.add_member(:manufacturer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANUFACTURER', traits: {"smithy.api#enumValue" => "MANUFACTURER"}))
    DeviceFilterAttribute.add_member(:remote_access_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REMOTE_ACCESS_ENABLED', traits: {"smithy.api#enumValue" => "REMOTE_ACCESS_ENABLED"}))
    DeviceFilterAttribute.add_member(:remote_debug_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REMOTE_DEBUG_ENABLED', traits: {"smithy.api#enumValue" => "REMOTE_DEBUG_ENABLED"}))
    DeviceFilterAttribute.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTANCE_ARN', traits: {"smithy.api#enumValue" => "INSTANCE_ARN"}))
    DeviceFilterAttribute.add_member(:instance_labels, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTANCE_LABELS', traits: {"smithy.api#enumValue" => "INSTANCE_LABELS"}))
    DeviceFilterAttribute.add_member(:fleet_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FLEET_TYPE', traits: {"smithy.api#enumValue" => "FLEET_TYPE"}))
    DeviceFilterValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    DeviceFilters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFilter)
    DeviceFormFactor.add_member(:phone, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PHONE', traits: {"smithy.api#enumValue" => "PHONE"}))
    DeviceFormFactor.add_member(:tablet, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TABLET', traits: {"smithy.api#enumValue" => "TABLET"}))
    DeviceHostPaths.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    DeviceInstance.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the device instance.</p>"}))
    DeviceInstance.add_member(:device_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'deviceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the device.</p>"}))
    DeviceInstance.add_member(:labels, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceLabels, location_name: 'labels', traits: {"smithy.api#documentation" => "<p>An array of strings that describe the device instance.</p>"}))
    DeviceInstance.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the device instance. Valid values are listed here.</p>"}))
    DeviceInstance.add_member(:udid, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'udid', traits: {"smithy.api#documentation" => "<p>Unique device identifier for the device instance.</p>"}))
    DeviceInstance.add_member(:instance_profile, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceProfile, location_name: 'instanceProfile', traits: {"smithy.api#documentation" => "<p>A object that contains information about the instance profile.</p>"}))
    DeviceInstance.type = Types::DeviceInstance
    DeviceInstances.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceInstance)
    DeviceMinutes.add_member(:total, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'total', traits: {"smithy.api#documentation" => "<p>When specified, represents the total minutes used by the resource to run\n            tests.</p>"}))
    DeviceMinutes.add_member(:metered, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'metered', traits: {"smithy.api#documentation" => "<p>When specified, represents only the sum of metered minutes used by the resource to\n            run tests.</p>"}))
    DeviceMinutes.add_member(:unmetered, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'unmetered', traits: {"smithy.api#documentation" => "<p>When specified, represents only the sum of unmetered minutes used by the resource\n            to run tests.</p>"}))
    DeviceMinutes.type = Types::DeviceMinutes
    DevicePlatform.add_member(:android, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANDROID', traits: {"smithy.api#enumValue" => "ANDROID"}))
    DevicePlatform.add_member(:ios, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IOS', traits: {"smithy.api#enumValue" => "IOS"}))
    DevicePool.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The device pool's ARN.</p>"}))
    DevicePool.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The device pool's name.</p>"}))
    DevicePool.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The device pool's description.</p>"}))
    DevicePool.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: DevicePoolType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The device pool's type.</p>\n        <p>Allowed values include:</p>\n        <ul>\n            <li>\n                <p>CURATED: A device pool that is created and managed by AWS Device\n                    Farm.</p>\n            </li>\n            <li>\n                <p>PRIVATE: A device pool that is created and managed by the device pool\n                    developer.</p>\n            </li>\n         </ul>"}))
    DevicePool.add_member(:rules, Smithy::Schema::Shapes::ShapeRef.new(shape: Rules, location_name: 'rules', traits: {"smithy.api#documentation" => "<p>Information about the device pool's rules.</p>"}))
    DevicePool.add_member(:max_devices, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxDevices', traits: {"smithy.api#documentation" => "<p>The number of devices that Device Farm can add to your device pool. Device Farm adds devices that are\n            available and meet the criteria that you assign for the <code>rules</code> parameter. Depending on how many\n            devices meet these constraints, your device pool might contain fewer devices than the value for this\n            parameter.</p>\n        <p>By specifying the maximum number of devices, you can control the costs that you incur\n            by running tests.</p>"}))
    DevicePool.type = Types::DevicePool
    DevicePoolCompatibilityResult.add_member(:device, Smithy::Schema::Shapes::ShapeRef.new(shape: Device, location_name: 'device', traits: {"smithy.api#documentation" => "<p>The device (phone or tablet) to return information about.</p>"}))
    DevicePoolCompatibilityResult.add_member(:compatible, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'compatible', traits: {"smithy.api#documentation" => "<p>Whether the result was compatible with the device pool.</p>"}))
    DevicePoolCompatibilityResult.add_member(:incompatibility_messages, Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibilityMessages, location_name: 'incompatibilityMessages', traits: {"smithy.api#documentation" => "<p>Information about the compatibility.</p>"}))
    DevicePoolCompatibilityResult.type = Types::DevicePoolCompatibilityResult
    DevicePoolCompatibilityResults.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DevicePoolCompatibilityResult)
    DevicePoolType.add_member(:curated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CURATED', traits: {"smithy.api#enumValue" => "CURATED"}))
    DevicePoolType.add_member(:private, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRIVATE', traits: {"smithy.api#enumValue" => "PRIVATE"}))
    DevicePools.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DevicePool)
    DeviceProxy.add_member(:host, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceProxyHost, location_name: 'host', traits: {"smithy.api#documentation" => "<p>Hostname or IPv4 address of the proxy.</p>", "smithy.api#required" => {}}))
    DeviceProxy.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceProxyPort, location_name: 'port', traits: {"smithy.api#default" => 3128, "smithy.api#documentation" => "<p>The port number on which the http/s proxy is listening.</p>", "smithy.api#required" => {}}))
    DeviceProxy.type = Types::DeviceProxy
    DeviceSelectionConfiguration.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFilters, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>Used to dynamically select a set of devices for a test run. A filter is made up of an\n            attribute, an operator, and one or more values.</p>\n        <ul>\n            <li>\n                <p>\n                  <b>Attribute</b>\n               </p>\n                <p>The aspect of a device such as platform or model used as the selection\n                    criteria in a device filter.</p>\n                <p>Allowed values include:</p>\n                <ul>\n                  <li>\n                        <p>ARN: The Amazon Resource Name (ARN) of the device (for example,\n                                <code>arn:aws:devicefarm:us-west-2::device:12345Example</code>).</p>\n                    </li>\n                  <li>\n                        <p>PLATFORM: The device platform. Valid values are ANDROID or\n                            IOS.</p>\n                    </li>\n                  <li>\n                        <p>OS_VERSION: The operating system version (for example,\n                            10.3.2).</p>\n                    </li>\n                  <li>\n                        <p>MODEL: The device model (for example, iPad 5th Gen).</p>\n                    </li>\n                  <li>\n                        <p>AVAILABILITY: The current availability of the device. Valid values\n                            are AVAILABLE, HIGHLY_AVAILABLE, BUSY, or\n                            TEMPORARY_NOT_AVAILABLE.</p>\n                    </li>\n                  <li>\n                        <p>FORM_FACTOR: The device form factor. Valid values are PHONE or\n                            TABLET.</p>\n                    </li>\n                  <li>\n                        <p>MANUFACTURER: The device manufacturer (for example,\n                            Apple).</p>\n                    </li>\n                  <li>\n                        <p>REMOTE_ACCESS_ENABLED: Whether the device is enabled for remote\n                            access. Valid values are TRUE or FALSE.</p>\n                    </li>\n                  <li>\n                        <p>REMOTE_DEBUG_ENABLED: Whether the device is enabled for remote debugging. Valid values\n                            are TRUE or FALSE. Because remote debugging is <a href=\"https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html\">no\n                                longer supported</a>, this filter is ignored.</p>\n                    </li>\n                  <li>\n                        <p>INSTANCE_ARN: The Amazon Resource Name (ARN) of the device\n                            instance.</p>\n                    </li>\n                  <li>\n                        <p>INSTANCE_LABELS: The label of the device instance.</p>\n                    </li>\n                  <li>\n                        <p>FLEET_TYPE: The fleet type. Valid values are PUBLIC or PRIVATE.</p>\n                    </li>\n               </ul>\n            </li>\n            <li>\n                <p>\n                  <b>Operator</b>\n               </p>\n                <p>The filter operator.</p>\n                <ul>\n                  <li>\n                        <p>The EQUALS operator is available for every attribute except\n                            INSTANCE_LABELS.</p>\n                    </li>\n                  <li>\n                        <p>The CONTAINS operator is available for the INSTANCE_LABELS and MODEL\n                            attributes.</p>\n                    </li>\n                  <li>\n                        <p>The IN and NOT_IN operators are available for the ARN, OS_VERSION,\n                            MODEL, MANUFACTURER, and INSTANCE_ARN attributes.</p>\n                    </li>\n                  <li>\n                        <p>The LESS_THAN, GREATER_THAN, LESS_THAN_OR_EQUALS, and\n                            GREATER_THAN_OR_EQUALS operators are also available for the OS_VERSION\n                            attribute.</p>\n                    </li>\n               </ul>\n            </li>\n            <li>\n                <p>\n                  <b>Values</b>\n               </p>\n                <p>An array of one or more filter values.</p>\n                <p class=\"title\">\n                  <b>Operator Values</b>\n               </p>\n               <ul>\n                  <li>\n                        <p>The IN and NOT_IN operators can take a values array that has more than\n                            one element.</p>\n                    </li>\n                  <li>\n                        <p>The other operators require an array with a single element.</p>\n                    </li>\n               </ul>\n                <p class=\"title\">\n                  <b>Attribute Values</b>\n               </p>\n               <ul>\n                  <li>\n                        <p>The PLATFORM attribute can be set to ANDROID or IOS.</p>\n                    </li>\n                  <li>\n                        <p>The AVAILABILITY attribute can be set to AVAILABLE, HIGHLY_AVAILABLE, BUSY, or\n                            TEMPORARY_NOT_AVAILABLE.</p>\n                    </li>\n                  <li>\n                        <p>The FORM_FACTOR attribute can be set to PHONE or TABLET.</p>\n                    </li>\n                  <li>\n                        <p>The FLEET_TYPE attribute can be set to PUBLIC or PRIVATE.</p>\n                    </li>\n               </ul>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    DeviceSelectionConfiguration.add_member(:max_devices, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxDevices', traits: {"smithy.api#documentation" => "<p>The maximum number of devices to be included in a test run.</p>", "smithy.api#required" => {}}))
    DeviceSelectionConfiguration.type = Types::DeviceSelectionConfiguration
    DeviceSelectionResult.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFilters, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>The filters in a device selection result.</p>"}))
    DeviceSelectionResult.add_member(:matched_devices_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'matchedDevicesCount', traits: {"smithy.api#documentation" => "<p>The number of devices that matched the device filter selection criteria.</p>"}))
    DeviceSelectionResult.add_member(:max_devices, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxDevices', traits: {"smithy.api#documentation" => "<p>The maximum number of devices to be selected by a device filter and included in a test\n            run.</p>"}))
    DeviceSelectionResult.type = Types::DeviceSelectionResult
    Devices.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Device)
    ExecutionConfiguration.add_member(:job_timeout_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTimeoutMinutes, location_name: 'jobTimeoutMinutes', traits: {"smithy.api#documentation" => "<p>The number of minutes a test run executes before it times out.</p>"}))
    ExecutionConfiguration.add_member(:accounts_cleanup, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountsCleanup, location_name: 'accountsCleanup', traits: {"smithy.api#documentation" => "<p>True if account cleanup is enabled at the beginning of the test. Otherwise, false.</p>"}))
    ExecutionConfiguration.add_member(:app_packages_cleanup, Smithy::Schema::Shapes::ShapeRef.new(shape: AppPackagesCleanup, location_name: 'appPackagesCleanup', traits: {"smithy.api#documentation" => "<p>True if app package cleanup is enabled at the beginning of the test. Otherwise, false.</p>"}))
    ExecutionConfiguration.add_member(:video_capture, Smithy::Schema::Shapes::ShapeRef.new(shape: VideoCapture, location_name: 'videoCapture', traits: {"smithy.api#documentation" => "<p>Set to true to enable video capture. Otherwise, set to false. The default is true.</p>"}))
    ExecutionConfiguration.add_member(:skip_app_resign, Smithy::Schema::Shapes::ShapeRef.new(shape: SkipAppResign, location_name: 'skipAppResign', traits: {"smithy.api#documentation" => "<p>When set to <code>true</code>, for private devices, Device Farm does not sign your app again. For public\n            devices, Device Farm always signs your apps again.</p>\n        <p>For more information about how Device Farm re-signs your apps, see <a href=\"http://aws.amazon.com/device-farm/faqs/\">Do you modify my app?</a> in the <i>AWS Device\n                Farm FAQs</i>.</p>"}))
    ExecutionConfiguration.type = Types::ExecutionConfiguration
    ExecutionResult.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    ExecutionResult.add_member(:passed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PASSED', traits: {"smithy.api#enumValue" => "PASSED"}))
    ExecutionResult.add_member(:warned, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WARNED', traits: {"smithy.api#enumValue" => "WARNED"}))
    ExecutionResult.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ExecutionResult.add_member(:skipped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SKIPPED', traits: {"smithy.api#enumValue" => "SKIPPED"}))
    ExecutionResult.add_member(:errored, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERRORED', traits: {"smithy.api#enumValue" => "ERRORED"}))
    ExecutionResult.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "STOPPED"}))
    ExecutionResultCode.add_member(:parsing_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARSING_FAILED', traits: {"smithy.api#enumValue" => "PARSING_FAILED"}))
    ExecutionResultCode.add_member(:vpc_endpoint_setup_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VPC_ENDPOINT_SETUP_FAILED', traits: {"smithy.api#enumValue" => "VPC_ENDPOINT_SETUP_FAILED"}))
    ExecutionStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    ExecutionStatus.add_member(:pending_concurrnecy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_CONCURRNECY', traits: {"smithy.api#enumValue" => "PENDING_CONCURRENCY"}))
    ExecutionStatus.add_member(:pending_device, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_DEVICE', traits: {"smithy.api#enumValue" => "PENDING_DEVICE"}))
    ExecutionStatus.add_member(:processing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROCESSING', traits: {"smithy.api#enumValue" => "PROCESSING"}))
    ExecutionStatus.add_member(:scheduling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCHEDULING', traits: {"smithy.api#enumValue" => "SCHEDULING"}))
    ExecutionStatus.add_member(:preparing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PREPARING', traits: {"smithy.api#enumValue" => "PREPARING"}))
    ExecutionStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    ExecutionStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ExecutionStatus.add_member(:stopping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPING', traits: {"smithy.api#enumValue" => "STOPPING"}))
    GetAccountSettingsRequest.type = Types::GetAccountSettingsRequest
    GetAccountSettingsResult.add_member(:account_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSettings, location_name: 'accountSettings', traits: {"smithy.api#documentation" => "<p>The account settings.</p>"}))
    GetAccountSettingsResult.type = Types::GetAccountSettingsResult
    GetDeviceInstanceRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the instance you're requesting information\n            about.</p>", "smithy.api#required" => {}}))
    GetDeviceInstanceRequest.type = Types::GetDeviceInstanceRequest
    GetDeviceInstanceResult.add_member(:device_instance, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceInstance, location_name: 'deviceInstance', traits: {"smithy.api#documentation" => "<p>An object that contains information about your device instance.</p>"}))
    GetDeviceInstanceResult.type = Types::GetDeviceInstanceResult
    GetDevicePoolCompatibilityRequest.add_member(:device_pool_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'devicePoolArn', traits: {"smithy.api#documentation" => "<p>The device pool's ARN.</p>", "smithy.api#required" => {}}))
    GetDevicePoolCompatibilityRequest.add_member(:app_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'appArn', traits: {"smithy.api#documentation" => "<p>The ARN of the app that is associated with the specified device pool.</p>"}))
    GetDevicePoolCompatibilityRequest.add_member(:test_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TestType, location_name: 'testType', traits: {"smithy.api#documentation" => "<p>The test type for the specified device pool.</p>\n        <p>Allowed values include the following:</p>\n        <ul>\n            <li>\n                <p>BUILTIN_FUZZ.</p>\n            </li>\n            <li>\n                <p>APPIUM_JAVA_JUNIT.</p>\n            </li>\n            <li>\n                <p>APPIUM_JAVA_TESTNG.</p>\n            </li>\n            <li>\n                <p>APPIUM_PYTHON.</p>\n            </li>\n            <li>\n                <p>APPIUM_NODE.</p>\n            </li>\n            <li>\n                <p>APPIUM_RUBY.</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_JAVA_JUNIT.</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_JAVA_TESTNG.</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_PYTHON.</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_NODE.</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_RUBY.</p>\n            </li>\n            <li>\n                <p>INSTRUMENTATION.</p>\n            </li>\n            <li>\n                <p>XCTEST.</p>\n            </li>\n            <li>\n                <p>XCTEST_UI.</p>\n            </li>\n         </ul>"}))
    GetDevicePoolCompatibilityRequest.add_member(:test, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleRunTest, location_name: 'test', traits: {"smithy.api#documentation" => "<p>Information about the uploaded test to be run against the device pool.</p>"}))
    GetDevicePoolCompatibilityRequest.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleRunConfiguration, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>An object that contains information about the settings for a run.</p>"}))
    GetDevicePoolCompatibilityRequest.add_member(:project_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'projectArn', traits: {"smithy.api#documentation" => "<p>The ARN of the project for which you want to check\n            device pool compatibility.</p>"}))
    GetDevicePoolCompatibilityRequest.type = Types::GetDevicePoolCompatibilityRequest
    GetDevicePoolCompatibilityResult.add_member(:compatible_devices, Smithy::Schema::Shapes::ShapeRef.new(shape: DevicePoolCompatibilityResults, location_name: 'compatibleDevices', traits: {"smithy.api#documentation" => "<p>Information about compatible devices.</p>"}))
    GetDevicePoolCompatibilityResult.add_member(:incompatible_devices, Smithy::Schema::Shapes::ShapeRef.new(shape: DevicePoolCompatibilityResults, location_name: 'incompatibleDevices', traits: {"smithy.api#documentation" => "<p>Information about incompatible devices.</p>"}))
    GetDevicePoolCompatibilityResult.type = Types::GetDevicePoolCompatibilityResult
    GetDevicePoolRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The device pool's ARN.</p>", "smithy.api#required" => {}}))
    GetDevicePoolRequest.type = Types::GetDevicePoolRequest
    GetDevicePoolResult.add_member(:device_pool, Smithy::Schema::Shapes::ShapeRef.new(shape: DevicePool, location_name: 'devicePool', traits: {"smithy.api#documentation" => "<p>An object that contains information about the requested device pool.</p>"}))
    GetDevicePoolResult.type = Types::GetDevicePoolResult
    GetDeviceRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The device type's ARN.</p>", "smithy.api#required" => {}}))
    GetDeviceRequest.type = Types::GetDeviceRequest
    GetDeviceResult.add_member(:device, Smithy::Schema::Shapes::ShapeRef.new(shape: Device, location_name: 'device', traits: {"smithy.api#documentation" => "<p>An object that contains information about the requested device.</p>"}))
    GetDeviceResult.type = Types::GetDeviceResult
    GetInstanceProfileRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an instance profile.</p>", "smithy.api#required" => {}}))
    GetInstanceProfileRequest.type = Types::GetInstanceProfileRequest
    GetInstanceProfileResult.add_member(:instance_profile, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceProfile, location_name: 'instanceProfile', traits: {"smithy.api#documentation" => "<p>An object that contains information about an instance profile.</p>"}))
    GetInstanceProfileResult.type = Types::GetInstanceProfileResult
    GetJobRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The job's ARN.</p>", "smithy.api#required" => {}}))
    GetJobRequest.type = Types::GetJobRequest
    GetJobResult.add_member(:job, Smithy::Schema::Shapes::ShapeRef.new(shape: Job, location_name: 'job', traits: {"smithy.api#documentation" => "<p>An object that contains information about the requested job.</p>"}))
    GetJobResult.type = Types::GetJobResult
    GetNetworkProfileRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the network profile to return information about.</p>", "smithy.api#required" => {}}))
    GetNetworkProfileRequest.type = Types::GetNetworkProfileRequest
    GetNetworkProfileResult.add_member(:network_profile, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkProfile, location_name: 'networkProfile', traits: {"smithy.api#documentation" => "<p>The network profile.</p>"}))
    GetNetworkProfileResult.type = Types::GetNetworkProfileResult
    GetOfferingStatusRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which can\n            be used to return the next set of items in the list.</p>"}))
    GetOfferingStatusRequest.type = Types::GetOfferingStatusRequest
    GetOfferingStatusResult.add_member(:current, Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingStatusMap, location_name: 'current', traits: {"smithy.api#documentation" => "<p>When specified, gets the offering status for the current period.</p>"}))
    GetOfferingStatusResult.add_member(:next_period, Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingStatusMap, location_name: 'nextPeriod', traits: {"smithy.api#documentation" => "<p>When specified, gets the offering status for the next period.</p>"}))
    GetOfferingStatusResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which can\n            be used to return the next set of items in the list.</p>"}))
    GetOfferingStatusResult.type = Types::GetOfferingStatusResult
    GetProjectRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The project's ARN.</p>", "smithy.api#required" => {}}))
    GetProjectRequest.type = Types::GetProjectRequest
    GetProjectResult.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: Project, location_name: 'project', traits: {"smithy.api#documentation" => "<p>The project to get information about.</p>"}))
    GetProjectResult.type = Types::GetProjectResult
    GetRemoteAccessSessionRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the remote access session about which you want to\n            get session information.</p>", "smithy.api#required" => {}}))
    GetRemoteAccessSessionRequest.type = Types::GetRemoteAccessSessionRequest
    GetRemoteAccessSessionResult.add_member(:remote_access_session, Smithy::Schema::Shapes::ShapeRef.new(shape: RemoteAccessSession, location_name: 'remoteAccessSession', traits: {"smithy.api#documentation" => "<p>A container that lists detailed information about the remote access\n            session.</p>"}))
    GetRemoteAccessSessionResult.type = Types::GetRemoteAccessSessionResult
    GetRunRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The run's ARN.</p>", "smithy.api#required" => {}}))
    GetRunRequest.type = Types::GetRunRequest
    GetRunResult.add_member(:run, Smithy::Schema::Shapes::ShapeRef.new(shape: Run, location_name: 'run', traits: {"smithy.api#documentation" => "<p>The run to get results from.</p>"}))
    GetRunResult.type = Types::GetRunResult
    GetSuiteRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The suite's ARN.</p>", "smithy.api#required" => {}}))
    GetSuiteRequest.type = Types::GetSuiteRequest
    GetSuiteResult.add_member(:suite, Smithy::Schema::Shapes::ShapeRef.new(shape: Suite, location_name: 'suite', traits: {"smithy.api#documentation" => "<p>A collection of one or more tests.</p>"}))
    GetSuiteResult.type = Types::GetSuiteResult
    GetTestGridProjectRequest.add_member(:project_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFarmArn, location_name: 'projectArn', traits: {"smithy.api#documentation" => "<p>The ARN of the Selenium testing project, from either <a>CreateTestGridProject</a> or <a>ListTestGridProjects</a>.</p>", "smithy.api#required" => {}}))
    GetTestGridProjectRequest.type = Types::GetTestGridProjectRequest
    GetTestGridProjectResult.add_member(:test_grid_project, Smithy::Schema::Shapes::ShapeRef.new(shape: TestGridProject, location_name: 'testGridProject', traits: {"smithy.api#documentation" => "<p>A <a>TestGridProject</a>.</p>"}))
    GetTestGridProjectResult.type = Types::GetTestGridProjectResult
    GetTestGridSessionRequest.add_member(:project_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFarmArn, location_name: 'projectArn', traits: {"smithy.api#documentation" => "<p>The ARN for the project that this session belongs to. See <a>CreateTestGridProject</a> and <a>ListTestGridProjects</a>.</p>"}))
    GetTestGridSessionRequest.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>An ID associated with this session.</p>"}))
    GetTestGridSessionRequest.add_member(:session_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFarmArn, location_name: 'sessionArn', traits: {"smithy.api#documentation" => "<p>An ARN that uniquely identifies a <a>TestGridSession</a>.</p>"}))
    GetTestGridSessionRequest.type = Types::GetTestGridSessionRequest
    GetTestGridSessionResult.add_member(:test_grid_session, Smithy::Schema::Shapes::ShapeRef.new(shape: TestGridSession, location_name: 'testGridSession', traits: {"smithy.api#documentation" => "<p>The <a>TestGridSession</a> that was requested.</p>"}))
    GetTestGridSessionResult.type = Types::GetTestGridSessionResult
    GetTestRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The test's ARN.</p>", "smithy.api#required" => {}}))
    GetTestRequest.type = Types::GetTestRequest
    GetTestResult.add_member(:test, Smithy::Schema::Shapes::ShapeRef.new(shape: Test, location_name: 'test', traits: {"smithy.api#documentation" => "<p>A test condition that is evaluated.</p>"}))
    GetTestResult.type = Types::GetTestResult
    GetUploadRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The upload's ARN.</p>", "smithy.api#required" => {}}))
    GetUploadRequest.type = Types::GetUploadRequest
    GetUploadResult.add_member(:upload, Smithy::Schema::Shapes::ShapeRef.new(shape: Upload, location_name: 'upload', traits: {"smithy.api#documentation" => "<p>An app or a set of one or more tests to upload or that have been\n            uploaded.</p>"}))
    GetUploadResult.type = Types::GetUploadResult
    GetVPCEConfigurationRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the VPC endpoint configuration you want to\n            describe.</p>", "smithy.api#required" => {}}))
    GetVPCEConfigurationRequest.type = Types::GetVPCEConfigurationRequest
    GetVPCEConfigurationResult.add_member(:vpce_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: VPCEConfiguration, location_name: 'vpceConfiguration', traits: {"smithy.api#documentation" => "<p>An object that contains information about your VPC endpoint configuration.</p>"}))
    GetVPCEConfigurationResult.type = Types::GetVPCEConfigurationResult
    IdempotencyException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any additional information about the exception.</p>"}))
    IdempotencyException.type = Types::IdempotencyException
    IncompatibilityMessage.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A message about the incompatibility.</p>"}))
    IncompatibilityMessage.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceAttribute, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of incompatibility.</p>\n        <p>Allowed values include:</p>\n        <ul>\n            <li>\n                <p>ARN</p>\n            </li>\n            <li>\n                <p>FORM_FACTOR (for example, phone or tablet)</p>\n            </li>\n            <li>\n                <p>MANUFACTURER</p>\n            </li>\n            <li>\n                <p>PLATFORM (for example, Android or iOS)</p>\n            </li>\n            <li>\n                <p>REMOTE_ACCESS_ENABLED</p>\n            </li>\n            <li>\n                <p>APPIUM_VERSION</p>\n            </li>\n         </ul>"}))
    IncompatibilityMessage.type = Types::IncompatibilityMessage
    IncompatibilityMessages.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibilityMessage)
    InstallToRemoteAccessSessionRequest.add_member(:remote_access_session_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'remoteAccessSessionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the remote access session about which you are\n            requesting information.</p>", "smithy.api#required" => {}}))
    InstallToRemoteAccessSessionRequest.add_member(:app_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'appArn', traits: {"smithy.api#documentation" => "<p>The ARN of the app about which you are requesting information.</p>", "smithy.api#required" => {}}))
    InstallToRemoteAccessSessionRequest.type = Types::InstallToRemoteAccessSessionRequest
    InstallToRemoteAccessSessionResult.add_member(:app_upload, Smithy::Schema::Shapes::ShapeRef.new(shape: Upload, location_name: 'appUpload', traits: {"smithy.api#documentation" => "<p>An app to upload or that has been uploaded.</p>"}))
    InstallToRemoteAccessSessionResult.type = Types::InstallToRemoteAccessSessionResult
    InstanceLabels.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    InstanceProfile.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the instance profile.</p>"}))
    InstanceProfile.add_member(:package_cleanup, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'packageCleanup', traits: {"smithy.api#documentation" => "<p>When set to <code>true</code>, Device Farm removes app packages after a test run. The default value is\n                <code>false</code> for private devices.</p>"}))
    InstanceProfile.add_member(:exclude_app_packages_from_cleanup, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageIds, location_name: 'excludeAppPackagesFromCleanup', traits: {"smithy.api#documentation" => "<p>An array of strings containing the list of app packages that should not be cleaned up from the device\n            after a test run completes.</p>\n        <p>The list of packages is considered only if you set <code>packageCleanup</code> to\n            <code>true</code>.</p>"}))
    InstanceProfile.add_member(:reboot_after_use, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'rebootAfterUse', traits: {"smithy.api#documentation" => "<p>When set to <code>true</code>, Device Farm reboots the instance after a test run. The default value is\n                <code>true</code>.</p>"}))
    InstanceProfile.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the instance profile.</p>"}))
    InstanceProfile.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the instance profile.</p>"}))
    InstanceProfile.type = Types::InstanceProfile
    InstanceProfiles.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceProfile)
    InstanceStatus.add_member(:in_use, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_USE', traits: {"smithy.api#enumValue" => "IN_USE"}))
    InstanceStatus.add_member(:preparing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PREPARING', traits: {"smithy.api#enumValue" => "PREPARING"}))
    InstanceStatus.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    InstanceStatus.add_member(:not_available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_AVAILABLE', traits: {"smithy.api#enumValue" => "NOT_AVAILABLE"}))
    InteractionMode.add_member(:interactive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERACTIVE', traits: {"smithy.api#enumValue" => "INTERACTIVE"}))
    InteractionMode.add_member(:no_video, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_VIDEO', traits: {"smithy.api#enumValue" => "NO_VIDEO"}))
    InteractionMode.add_member(:video_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VIDEO_ONLY', traits: {"smithy.api#enumValue" => "VIDEO_ONLY"}))
    InternalServiceException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    InternalServiceException.type = Types::InternalServiceException
    InvalidOperationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    InvalidOperationException.type = Types::InvalidOperationException
    IosPaths.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Job.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The job's ARN.</p>"}))
    Job.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The job's name.</p>"}))
    Job.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: TestType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The job's type.</p>\n        <p>Allowed values include the following:</p>\n        <ul>\n            <li>\n                <p>BUILTIN_FUZZ</p>\n            </li>\n            <li>\n                <p>APPIUM_JAVA_JUNIT</p>\n            </li>\n            <li>\n                <p>APPIUM_JAVA_TESTNG</p>\n            </li>\n            <li>\n                <p>APPIUM_PYTHON</p>\n            </li>\n            <li>\n                <p>APPIUM_NODE</p>\n            </li>\n            <li>\n                <p>APPIUM_RUBY</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_JAVA_JUNIT</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_JAVA_TESTNG</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_PYTHON</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_NODE</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_RUBY</p>\n            </li>\n            <li>\n                <p>INSTRUMENTATION</p>\n            </li>\n            <li>\n                <p>XCTEST</p>\n            </li>\n            <li>\n                <p>XCTEST_UI</p>\n            </li>\n         </ul>"}))
    Job.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'created', traits: {"smithy.api#documentation" => "<p>When the job was created.</p>"}))
    Job.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The job's status.</p>\n        <p>Allowed values include:</p>\n        <ul>\n            <li>\n                <p>PENDING</p>\n            </li>\n            <li>\n                <p>PENDING_CONCURRENCY</p>\n            </li>\n            <li>\n                <p>PENDING_DEVICE</p>\n            </li>\n            <li>\n                <p>PROCESSING</p>\n            </li>\n            <li>\n                <p>SCHEDULING</p>\n            </li>\n            <li>\n                <p>PREPARING</p>\n            </li>\n            <li>\n                <p>RUNNING</p>\n            </li>\n            <li>\n                <p>COMPLETED</p>\n            </li>\n            <li>\n                <p>STOPPING</p>\n            </li>\n         </ul>"}))
    Job.add_member(:result, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionResult, location_name: 'result', traits: {"smithy.api#documentation" => "<p>The job's result.</p>\n        <p>Allowed values include:</p>\n        <ul>\n            <li>\n                <p>PENDING</p>\n            </li>\n            <li>\n                <p>PASSED</p>\n            </li>\n            <li>\n                <p>WARNED</p>\n            </li>\n            <li>\n                <p>FAILED</p>\n            </li>\n            <li>\n                <p>SKIPPED</p>\n            </li>\n            <li>\n                <p>ERRORED</p>\n            </li>\n            <li>\n                <p>STOPPED</p>\n            </li>\n         </ul>"}))
    Job.add_member(:started, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'started', traits: {"smithy.api#documentation" => "<p>The job's start time.</p>"}))
    Job.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'stopped', traits: {"smithy.api#documentation" => "<p>The job's stop time.</p>"}))
    Job.add_member(:counters, Smithy::Schema::Shapes::ShapeRef.new(shape: Counters, location_name: 'counters', traits: {"smithy.api#documentation" => "<p>The job's result counters.</p>"}))
    Job.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A message about the job's result.</p>"}))
    Job.add_member(:device, Smithy::Schema::Shapes::ShapeRef.new(shape: Device, location_name: 'device', traits: {"smithy.api#documentation" => "<p>The device (phone or tablet).</p>"}))
    Job.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'instanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the instance.</p>"}))
    Job.add_member(:device_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceMinutes, location_name: 'deviceMinutes', traits: {"smithy.api#documentation" => "<p>Represents the total (metered or unmetered) minutes used by the job.</p>"}))
    Job.add_member(:video_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'videoEndpoint', traits: {"smithy.api#documentation" => "<p>The endpoint for streaming device video.</p>"}))
    Job.add_member(:video_capture, Smithy::Schema::Shapes::ShapeRef.new(shape: VideoCapture, location_name: 'videoCapture', traits: {"smithy.api#documentation" => "<p>This value is set to true if video capture is enabled. Otherwise, it is set to false.</p>"}))
    Job.type = Types::Job
    Jobs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Job)
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any additional information about the exception.</p>"}))
    LimitExceededException.type = Types::LimitExceededException
    ListArtifactsRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The run, job, suite, or test ARN.</p>", "smithy.api#required" => {}}))
    ListArtifactsRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactCategory, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The artifacts' type.</p>\n        <p>Allowed values include:</p>\n        <ul>\n            <li>\n                <p>FILE</p>\n            </li>\n            <li>\n                <p>LOG</p>\n            </li>\n            <li>\n                <p>SCREENSHOT</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    ListArtifactsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which can\n            be used to return the next set of items in the list.</p>"}))
    ListArtifactsRequest.type = Types::ListArtifactsRequest
    ListArtifactsResult.add_member(:artifacts, Smithy::Schema::Shapes::ShapeRef.new(shape: Artifacts, location_name: 'artifacts', traits: {"smithy.api#documentation" => "<p>Information about the artifacts.</p>"}))
    ListArtifactsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the number of items that are returned is significantly large, this is an identifier that is also\n            returned. It can be used in a subsequent call to this operation to return the next set of items in the\n            list.</p>"}))
    ListArtifactsResult.type = Types::ListArtifactsResult
    ListDeviceInstancesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>An integer that specifies the maximum number of items you want to return in the API response.</p>"}))
    ListDeviceInstancesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which can be\n            used to return the next set of items in the list.</p>"}))
    ListDeviceInstancesRequest.type = Types::ListDeviceInstancesRequest
    ListDeviceInstancesResult.add_member(:device_instances, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceInstances, location_name: 'deviceInstances', traits: {"smithy.api#documentation" => "<p>An object that contains information about your device instances.</p>"}))
    ListDeviceInstancesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that can be used in the next call to this operation to return the next\n            set of items in the list.</p>"}))
    ListDeviceInstancesResult.type = Types::ListDeviceInstancesResult
    ListDevicePoolsRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The project ARN.</p>", "smithy.api#required" => {}}))
    ListDevicePoolsRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: DevicePoolType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The device pools' type.</p>\n        <p>Allowed values include:</p>\n        <ul>\n            <li>\n                <p>CURATED: A device pool that is created and managed by AWS Device\n                    Farm.</p>\n            </li>\n            <li>\n                <p>PRIVATE: A device pool that is created and managed by the device pool\n                    developer.</p>\n            </li>\n         </ul>"}))
    ListDevicePoolsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which can\n            be used to return the next set of items in the list.</p>"}))
    ListDevicePoolsRequest.type = Types::ListDevicePoolsRequest
    ListDevicePoolsResult.add_member(:device_pools, Smithy::Schema::Shapes::ShapeRef.new(shape: DevicePools, location_name: 'devicePools', traits: {"smithy.api#documentation" => "<p>Information about the device pools.</p>"}))
    ListDevicePoolsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the number of items that are returned is significantly large, this is an identifier that is also\n            returned. It can be used in a subsequent call to this operation to return the next set of items in the\n            list.</p>"}))
    ListDevicePoolsResult.type = Types::ListDevicePoolsResult
    ListDevicesRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the project.</p>"}))
    ListDevicesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which can\n            be used to return the next set of items in the list.</p>"}))
    ListDevicesRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFilters, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>Used to select a set of devices. A filter is made up of an attribute, an operator, and\n            one or more values.</p>\n        <ul>\n            <li>\n                <p>Attribute: The aspect of a device such as platform or model used as the\n                    selection criteria in a device filter.</p>\n                <p>Allowed values include:</p>\n                <ul>\n                  <li>\n                        <p>ARN: The Amazon Resource Name (ARN) of the device (for example,\n                                <code>arn:aws:devicefarm:us-west-2::device:12345Example</code>).</p>\n                    </li>\n                  <li>\n                        <p>PLATFORM: The device platform. Valid values are ANDROID or IOS.</p>\n                    </li>\n                  <li>\n                        <p>OS_VERSION: The operating system version (for example, 10.3.2).</p>\n                    </li>\n                  <li>\n                        <p>MODEL: The device model (for example, iPad 5th Gen).</p>\n                    </li>\n                  <li>\n                        <p>AVAILABILITY: The current availability of the device. Valid values are AVAILABLE,\n                            HIGHLY_AVAILABLE, BUSY, or TEMPORARY_NOT_AVAILABLE.</p>\n                    </li>\n                  <li>\n                        <p>FORM_FACTOR: The device form factor. Valid values are PHONE or TABLET.</p>\n                    </li>\n                  <li>\n                        <p>MANUFACTURER: The device manufacturer (for example, Apple).</p>\n                    </li>\n                  <li>\n                        <p>REMOTE_ACCESS_ENABLED: Whether the device is enabled for remote access. Valid values\n                            are TRUE or FALSE.</p>\n                    </li>\n                  <li>\n                        <p>REMOTE_DEBUG_ENABLED: Whether the device is enabled for remote debugging. Valid values\n                            are TRUE or FALSE. Because remote debugging is <a href=\"https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html\">no\n                                longer supported</a>, this attribute is ignored.</p>\n                    </li>\n                  <li>\n                        <p>INSTANCE_ARN: The Amazon Resource Name (ARN) of the device\n                            instance.</p>\n                    </li>\n                  <li>\n                        <p>INSTANCE_LABELS: The label of the device instance.</p>\n                    </li>\n                  <li>\n                        <p>FLEET_TYPE: The fleet type. Valid values are PUBLIC or PRIVATE.</p>\n                    </li>\n               </ul>\n            </li>\n            <li>\n                <p>Operator: The filter operator.</p>\n                <ul>\n                  <li>\n                        <p>The EQUALS operator is available for every attribute except\n                            INSTANCE_LABELS.</p>\n                    </li>\n                  <li>\n                        <p>The CONTAINS operator is available for the INSTANCE_LABELS and MODEL\n                            attributes.</p>\n                    </li>\n                  <li>\n                        <p>The IN and NOT_IN operators are available for the ARN, OS_VERSION,\n                            MODEL, MANUFACTURER, and INSTANCE_ARN attributes.</p>\n                    </li>\n                  <li>\n                        <p>The LESS_THAN, GREATER_THAN, LESS_THAN_OR_EQUALS, and\n                            GREATER_THAN_OR_EQUALS operators are also available for the OS_VERSION\n                            attribute.</p>\n                    </li>\n               </ul>\n            </li>\n            <li>\n                <p>Values: An array of one or more filter values.</p>\n                <ul>\n                  <li>\n                        <p>The IN and NOT_IN operators take a values array that has one or more\n                            elements.</p>\n                    </li>\n                  <li>\n                        <p>The other operators require an array with a single element.</p>\n                    </li>\n                  <li>\n                        <p>In a request, the AVAILABILITY attribute takes the following values: AVAILABLE,\n                            HIGHLY_AVAILABLE, BUSY, or TEMPORARY_NOT_AVAILABLE.</p>\n                    </li>\n               </ul>\n            </li>\n         </ul>"}))
    ListDevicesRequest.type = Types::ListDevicesRequest
    ListDevicesResult.add_member(:devices, Smithy::Schema::Shapes::ShapeRef.new(shape: Devices, location_name: 'devices', traits: {"smithy.api#documentation" => "<p>Information about the devices.</p>"}))
    ListDevicesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the number of items that are returned is significantly large, this is an identifier that is also\n            returned. It can be used in a subsequent call to this operation to return the next set of items in the\n            list.</p>"}))
    ListDevicesResult.type = Types::ListDevicesResult
    ListInstanceProfilesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>An integer that specifies the maximum number of items you want to return in the API response.</p>"}))
    ListInstanceProfilesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which can be\n            used to return the next set of items in the list.</p>"}))
    ListInstanceProfilesRequest.type = Types::ListInstanceProfilesRequest
    ListInstanceProfilesResult.add_member(:instance_profiles, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceProfiles, location_name: 'instanceProfiles', traits: {"smithy.api#documentation" => "<p>An object that contains information about your instance profiles.</p>"}))
    ListInstanceProfilesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that can be used in the next call to this operation to return the next\n            set of items in the list.</p>"}))
    ListInstanceProfilesResult.type = Types::ListInstanceProfilesResult
    ListJobsRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The run's Amazon Resource Name (ARN).</p>", "smithy.api#required" => {}}))
    ListJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which can\n            be used to return the next set of items in the list.</p>"}))
    ListJobsRequest.type = Types::ListJobsRequest
    ListJobsResult.add_member(:jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: Jobs, location_name: 'jobs', traits: {"smithy.api#documentation" => "<p>Information about the jobs.</p>"}))
    ListJobsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the number of items that are returned is significantly large, this is an identifier that is also\n            returned. It can be used in a subsequent call to this operation to return the next set of items in the\n            list.</p>"}))
    ListJobsResult.type = Types::ListJobsResult
    ListNetworkProfilesRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the project for which you want to list network\n            profiles.</p>", "smithy.api#required" => {}}))
    ListNetworkProfilesRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkProfileType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of network profile to return information about. Valid values are listed here.</p>"}))
    ListNetworkProfilesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which can\n            be used to return the next set of items in the list.</p>"}))
    ListNetworkProfilesRequest.type = Types::ListNetworkProfilesRequest
    ListNetworkProfilesResult.add_member(:network_profiles, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkProfiles, location_name: 'networkProfiles', traits: {"smithy.api#documentation" => "<p>A list of the available network profiles.</p>"}))
    ListNetworkProfilesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which can\n            be used to return the next set of items in the list.</p>"}))
    ListNetworkProfilesResult.type = Types::ListNetworkProfilesResult
    ListOfferingPromotionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which can\n            be used to return the next set of items in the list.</p>"}))
    ListOfferingPromotionsRequest.type = Types::ListOfferingPromotionsRequest
    ListOfferingPromotionsResult.add_member(:offering_promotions, Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingPromotions, location_name: 'offeringPromotions', traits: {"smithy.api#documentation" => "<p>Information about the offering promotions.</p>"}))
    ListOfferingPromotionsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier to be used in the next call to this operation, to return the next set\n            of items in the list.</p>"}))
    ListOfferingPromotionsResult.type = Types::ListOfferingPromotionsResult
    ListOfferingTransactionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which can\n            be used to return the next set of items in the list.</p>"}))
    ListOfferingTransactionsRequest.type = Types::ListOfferingTransactionsRequest
    ListOfferingTransactionsResult.add_member(:offering_transactions, Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingTransactions, location_name: 'offeringTransactions', traits: {"smithy.api#documentation" => "<p>The audit log of subscriptions you have purchased and modified through AWS Device\n            Farm.</p>"}))
    ListOfferingTransactionsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which can\n            be used to return the next set of items in the list.</p>"}))
    ListOfferingTransactionsResult.type = Types::ListOfferingTransactionsResult
    ListOfferingsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which can\n            be used to return the next set of items in the list.</p>"}))
    ListOfferingsRequest.type = Types::ListOfferingsRequest
    ListOfferingsResult.add_member(:offerings, Smithy::Schema::Shapes::ShapeRef.new(shape: Offerings, location_name: 'offerings', traits: {"smithy.api#documentation" => "<p>A value that represents the list offering results.</p>"}))
    ListOfferingsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which can\n            be used to return the next set of items in the list.</p>"}))
    ListOfferingsResult.type = Types::ListOfferingsResult
    ListProjectsRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Optional. If no Amazon Resource Name (ARN) is specified, then AWS Device Farm\n            returns a list of all projects for the AWS account. You can also specify a project\n            ARN.</p>"}))
    ListProjectsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which can\n            be used to return the next set of items in the list.</p>"}))
    ListProjectsRequest.type = Types::ListProjectsRequest
    ListProjectsResult.add_member(:projects, Smithy::Schema::Shapes::ShapeRef.new(shape: Projects, location_name: 'projects', traits: {"smithy.api#documentation" => "<p>Information about the projects.</p>"}))
    ListProjectsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the number of items that are returned is significantly large, this is an identifier that is also\n            returned. It can be used in a subsequent call to this operation to return the next set of items in the\n            list.</p>"}))
    ListProjectsResult.type = Types::ListProjectsResult
    ListRemoteAccessSessionsRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the project about which you are requesting\n            information.</p>", "smithy.api#required" => {}}))
    ListRemoteAccessSessionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which can\n            be used to return the next set of items in the list.</p>"}))
    ListRemoteAccessSessionsRequest.type = Types::ListRemoteAccessSessionsRequest
    ListRemoteAccessSessionsResult.add_member(:remote_access_sessions, Smithy::Schema::Shapes::ShapeRef.new(shape: RemoteAccessSessions, location_name: 'remoteAccessSessions', traits: {"smithy.api#documentation" => "<p>A container that represents the metadata from the service about each remote access session you are\n            requesting.</p>"}))
    ListRemoteAccessSessionsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which can\n            be used to return the next set of items in the list.</p>"}))
    ListRemoteAccessSessionsResult.type = Types::ListRemoteAccessSessionsResult
    ListRunsRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the project for which you want to list\n            runs.</p>", "smithy.api#required" => {}}))
    ListRunsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which can\n            be used to return the next set of items in the list.</p>"}))
    ListRunsRequest.type = Types::ListRunsRequest
    ListRunsResult.add_member(:runs, Smithy::Schema::Shapes::ShapeRef.new(shape: Runs, location_name: 'runs', traits: {"smithy.api#documentation" => "<p>Information about the runs.</p>"}))
    ListRunsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the number of items that are returned is significantly large, this is an identifier that is also\n            returned. It can be used in a subsequent call to this operation to return the next set of items in the\n            list.</p>"}))
    ListRunsResult.type = Types::ListRunsResult
    ListSamplesRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the job used to list samples.</p>", "smithy.api#required" => {}}))
    ListSamplesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which can\n            be used to return the next set of items in the list.</p>"}))
    ListSamplesRequest.type = Types::ListSamplesRequest
    ListSamplesResult.add_member(:samples, Smithy::Schema::Shapes::ShapeRef.new(shape: Samples, location_name: 'samples', traits: {"smithy.api#documentation" => "<p>Information about the samples.</p>"}))
    ListSamplesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the number of items that are returned is significantly large, this is an identifier that is also\n            returned. It can be used in a subsequent call to this operation to return the next set of items in the\n            list.</p>"}))
    ListSamplesResult.type = Types::ListSamplesResult
    ListSuitesRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The job's Amazon Resource Name (ARN).</p>", "smithy.api#required" => {}}))
    ListSuitesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which can\n            be used to return the next set of items in the list.</p>"}))
    ListSuitesRequest.type = Types::ListSuitesRequest
    ListSuitesResult.add_member(:suites, Smithy::Schema::Shapes::ShapeRef.new(shape: Suites, location_name: 'suites', traits: {"smithy.api#documentation" => "<p>Information about the suites.</p>"}))
    ListSuitesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the number of items that are returned is significantly large, this is an identifier that is also\n            returned. It can be used in a subsequent call to this operation to return the next set of items in the\n            list.</p>"}))
    ListSuitesResult.type = Types::ListSuitesResult
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFarmArn, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource or resources for which to list tags. You can associate tags\n            with the following Device Farm resources: <code>PROJECT</code>, <code>RUN</code>,\n                <code>NETWORK_PROFILE</code>, <code>INSTANCE_PROFILE</code>, <code>DEVICE_INSTANCE</code>,\n                <code>SESSION</code>, <code>DEVICE_POOL</code>, <code>DEVICE</code>, and\n            <code>VPCE_CONFIGURATION</code>.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to add to the resource. A tag is an array of key-value pairs. Tag keys can have a maximum\n            character length of 128 characters. Tag values can have a maximum length of 256 characters.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTestGridProjectsRequest.add_member(:max_result, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPageSize, location_name: 'maxResult', traits: {"smithy.api#documentation" => "<p>Return no more than this number of results.</p>"}))
    ListTestGridProjectsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>From a response, used to continue a paginated listing. </p>"}))
    ListTestGridProjectsRequest.type = Types::ListTestGridProjectsRequest
    ListTestGridProjectsResult.add_member(:test_grid_projects, Smithy::Schema::Shapes::ShapeRef.new(shape: TestGridProjects, location_name: 'testGridProjects', traits: {"smithy.api#documentation" => "<p>The list of TestGridProjects, based on a <a>ListTestGridProjectsRequest</a>.</p>"}))
    ListTestGridProjectsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Used for pagination. Pass into <a>ListTestGridProjects</a> to get more results in a paginated\n         request.</p>"}))
    ListTestGridProjectsResult.type = Types::ListTestGridProjectsResult
    ListTestGridSessionActionsRequest.add_member(:session_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFarmArn, location_name: 'sessionArn', traits: {"smithy.api#documentation" => "<p>The ARN of the session to retrieve.</p>", "smithy.api#required" => {}}))
    ListTestGridSessionActionsRequest.add_member(:max_result, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPageSize, location_name: 'maxResult', traits: {"smithy.api#documentation" => "<p>The maximum number of sessions to return per response.</p>"}))
    ListTestGridSessionActionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Pagination token.</p>"}))
    ListTestGridSessionActionsRequest.type = Types::ListTestGridSessionActionsRequest
    ListTestGridSessionActionsResult.add_member(:actions, Smithy::Schema::Shapes::ShapeRef.new(shape: TestGridSessionActions, location_name: 'actions', traits: {"smithy.api#documentation" => "<p>The action taken by the session.</p>"}))
    ListTestGridSessionActionsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Pagination token.</p>"}))
    ListTestGridSessionActionsResult.type = Types::ListTestGridSessionActionsResult
    ListTestGridSessionArtifactsRequest.add_member(:session_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFarmArn, location_name: 'sessionArn', traits: {"smithy.api#documentation" => "<p>The ARN of a <a>TestGridSession</a>. </p>", "smithy.api#required" => {}}))
    ListTestGridSessionArtifactsRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: TestGridSessionArtifactCategory, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Limit results to a specified type of artifact.</p>"}))
    ListTestGridSessionArtifactsRequest.add_member(:max_result, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPageSize, location_name: 'maxResult', traits: {"smithy.api#documentation" => "<p>The maximum number of results to be returned by a request.</p>"}))
    ListTestGridSessionArtifactsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Pagination token.</p>"}))
    ListTestGridSessionArtifactsRequest.type = Types::ListTestGridSessionArtifactsRequest
    ListTestGridSessionArtifactsResult.add_member(:artifacts, Smithy::Schema::Shapes::ShapeRef.new(shape: TestGridSessionArtifacts, location_name: 'artifacts', traits: {"smithy.api#documentation" => "<p>A list of test grid session artifacts for a <a>TestGridSession</a>.</p>"}))
    ListTestGridSessionArtifactsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Pagination token.</p>"}))
    ListTestGridSessionArtifactsResult.type = Types::ListTestGridSessionArtifactsResult
    ListTestGridSessionsRequest.add_member(:project_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFarmArn, location_name: 'projectArn', traits: {"smithy.api#documentation" => "<p>ARN of a <a>TestGridProject</a>.</p>", "smithy.api#required" => {}}))
    ListTestGridSessionsRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TestGridSessionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Return only sessions in this state.</p>"}))
    ListTestGridSessionsRequest.add_member(:creation_time_after, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'creationTimeAfter', traits: {"smithy.api#documentation" => "<p>Return only sessions created after this time.</p>"}))
    ListTestGridSessionsRequest.add_member(:creation_time_before, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'creationTimeBefore', traits: {"smithy.api#documentation" => "<p>Return only  sessions created before this time.</p>"}))
    ListTestGridSessionsRequest.add_member(:end_time_after, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'endTimeAfter', traits: {"smithy.api#documentation" => "<p>Return only sessions that ended after this time.</p>"}))
    ListTestGridSessionsRequest.add_member(:end_time_before, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'endTimeBefore', traits: {"smithy.api#documentation" => "<p>Return only sessions that ended before this time.</p>"}))
    ListTestGridSessionsRequest.add_member(:max_result, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPageSize, location_name: 'maxResult', traits: {"smithy.api#documentation" => "<p>Return only this many results at a time.</p>"}))
    ListTestGridSessionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Pagination token.</p>"}))
    ListTestGridSessionsRequest.type = Types::ListTestGridSessionsRequest
    ListTestGridSessionsResult.add_member(:test_grid_sessions, Smithy::Schema::Shapes::ShapeRef.new(shape: TestGridSessions, location_name: 'testGridSessions', traits: {"smithy.api#documentation" => "<p>The sessions that match the criteria in a <a>ListTestGridSessionsRequest</a>. </p>"}))
    ListTestGridSessionsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Pagination token.</p>"}))
    ListTestGridSessionsResult.type = Types::ListTestGridSessionsResult
    ListTestsRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The test suite's Amazon Resource Name (ARN).</p>", "smithy.api#required" => {}}))
    ListTestsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which can\n            be used to return the next set of items in the list.</p>"}))
    ListTestsRequest.type = Types::ListTestsRequest
    ListTestsResult.add_member(:tests, Smithy::Schema::Shapes::ShapeRef.new(shape: Tests, location_name: 'tests', traits: {"smithy.api#documentation" => "<p>Information about the tests.</p>"}))
    ListTestsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the number of items that are returned is significantly large, this is an identifier that is also\n            returned. It can be used in a subsequent call to this operation to return the next set of items in the\n            list.</p>"}))
    ListTestsResult.type = Types::ListTestsResult
    ListUniqueProblemsRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The unique problems' ARNs.</p>", "smithy.api#required" => {}}))
    ListUniqueProblemsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which can\n            be used to return the next set of items in the list.</p>"}))
    ListUniqueProblemsRequest.type = Types::ListUniqueProblemsRequest
    ListUniqueProblemsResult.add_member(:unique_problems, Smithy::Schema::Shapes::ShapeRef.new(shape: UniqueProblemsByExecutionResultMap, location_name: 'uniqueProblems', traits: {"smithy.api#documentation" => "<p>Information about the unique problems.</p>\n        <p>Allowed values include:</p>\n        <ul>\n            <li>\n                <p>PENDING</p>\n            </li>\n            <li>\n                <p>PASSED</p>\n            </li>\n            <li>\n                <p>WARNED</p>\n            </li>\n            <li>\n                <p>FAILED</p>\n            </li>\n            <li>\n                <p>SKIPPED</p>\n            </li>\n            <li>\n                <p>ERRORED</p>\n            </li>\n            <li>\n                <p>STOPPED</p>\n            </li>\n         </ul>"}))
    ListUniqueProblemsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the number of items that are returned is significantly large, this is an identifier that is also\n            returned. It can be used in a subsequent call to this operation to return the next set of items in the\n            list.</p>"}))
    ListUniqueProblemsResult.type = Types::ListUniqueProblemsResult
    ListUploadsRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the project for which you want to list\n            uploads.</p>", "smithy.api#required" => {}}))
    ListUploadsRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: UploadType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of upload.</p>\n        <p>Must be one of the following values:</p>\n        <ul>\n            <li>\n                <p>ANDROID_APP</p>\n            </li>\n            <li>\n                <p>IOS_APP</p>\n            </li>\n            <li>\n                <p>WEB_APP</p>\n            </li>\n            <li>\n                <p>EXTERNAL_DATA</p>\n            </li>\n            <li>\n                <p>APPIUM_JAVA_JUNIT_TEST_PACKAGE</p>\n            </li>\n            <li>\n                <p>APPIUM_JAVA_TESTNG_TEST_PACKAGE</p>\n            </li>\n            <li>\n                <p>APPIUM_PYTHON_TEST_PACKAGE</p>\n            </li>\n            <li>\n                <p>APPIUM_NODE_TEST_PACKAGE</p>\n            </li>\n            <li>\n                <p>APPIUM_RUBY_TEST_PACKAGE</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_PYTHON_TEST_PACKAGE</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_NODE_TEST_PACKAGE</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_RUBY_TEST_PACKAGE</p>\n            </li>\n            <li>\n                <p>INSTRUMENTATION_TEST_PACKAGE</p>\n            </li>\n            <li>\n                <p>XCTEST_TEST_PACKAGE</p>\n            </li>\n            <li>\n                <p>XCTEST_UI_TEST_PACKAGE</p>\n            </li>\n            <li>\n                <p>APPIUM_JAVA_JUNIT_TEST_SPEC</p>\n            </li>\n            <li>\n                <p>APPIUM_JAVA_TESTNG_TEST_SPEC</p>\n            </li>\n            <li>\n                <p>APPIUM_PYTHON_TEST_SPEC</p>\n            </li>\n            <li>\n                <p>APPIUM_NODE_TEST_SPEC</p>\n            </li>\n            <li>\n                <p> APPIUM_RUBY_TEST_SPEC</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_JAVA_JUNIT_TEST_SPEC</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_JAVA_TESTNG_TEST_SPEC</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_PYTHON_TEST_SPEC</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_NODE_TEST_SPEC</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_RUBY_TEST_SPEC</p>\n            </li>\n            <li>\n                <p>INSTRUMENTATION_TEST_SPEC</p>\n            </li>\n            <li>\n                <p>XCTEST_UI_TEST_SPEC</p>\n            </li>\n         </ul>"}))
    ListUploadsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which can\n            be used to return the next set of items in the list.</p>"}))
    ListUploadsRequest.type = Types::ListUploadsRequest
    ListUploadsResult.add_member(:uploads, Smithy::Schema::Shapes::ShapeRef.new(shape: Uploads, location_name: 'uploads', traits: {"smithy.api#documentation" => "<p>Information about the uploads.</p>"}))
    ListUploadsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the number of items that are returned is significantly large, this is an identifier that is also\n            returned. It can be used in a subsequent call to this operation to return the next set of items in the\n            list.</p>"}))
    ListUploadsResult.type = Types::ListUploadsResult
    ListVPCEConfigurationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>An integer that specifies the maximum number of items you want to return in the API response.</p>"}))
    ListVPCEConfigurationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which can be\n            used to return the next set of items in the list.</p>"}))
    ListVPCEConfigurationsRequest.type = Types::ListVPCEConfigurationsRequest
    ListVPCEConfigurationsResult.add_member(:vpce_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: VPCEConfigurations, location_name: 'vpceConfigurations', traits: {"smithy.api#documentation" => "<p>An array of <code>VPCEConfiguration</code> objects that contain information about your VPC endpoint\n            configuration.</p>"}))
    ListVPCEConfigurationsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous call to this operation, which can be\n            used to return the next set of items in the list.</p>"}))
    ListVPCEConfigurationsResult.type = Types::ListVPCEConfigurationsResult
    Location.add_member(:latitude, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'latitude', traits: {"smithy.api#documentation" => "<p>The latitude.</p>", "smithy.api#required" => {}}))
    Location.add_member(:longitude, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'longitude', traits: {"smithy.api#documentation" => "<p>The longitude.</p>", "smithy.api#required" => {}}))
    Location.type = Types::Location
    MaxSlotMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MaxSlotMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Integer)
    MonetaryAmount.add_member(:amount, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'amount', traits: {"smithy.api#documentation" => "<p>The numerical amount of an offering or transaction.</p>"}))
    MonetaryAmount.add_member(:currency_code, Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyCode, location_name: 'currencyCode', traits: {"smithy.api#documentation" => "<p>The currency code of a monetary amount. For example, <code>USD</code> means U.S. dollars.</p>"}))
    MonetaryAmount.type = Types::MonetaryAmount
    NetworkProfile.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the network profile.</p>"}))
    NetworkProfile.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the network profile.</p>"}))
    NetworkProfile.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the network profile.</p>"}))
    NetworkProfile.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkProfileType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of network profile. Valid values are listed here.</p>"}))
    NetworkProfile.add_member(:uplink_bandwidth_bits, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'uplinkBandwidthBits', traits: {"smithy.api#documentation" => "<p>The data throughput rate in bits per second, as an integer from 0 to\n            104857600.</p>"}))
    NetworkProfile.add_member(:downlink_bandwidth_bits, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'downlinkBandwidthBits', traits: {"smithy.api#documentation" => "<p>The data throughput rate in bits per second, as an integer from 0 to\n            104857600.</p>"}))
    NetworkProfile.add_member(:uplink_delay_ms, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'uplinkDelayMs', traits: {"smithy.api#documentation" => "<p>Delay time for all packets to destination in milliseconds as an integer from 0 to\n            2000.</p>"}))
    NetworkProfile.add_member(:downlink_delay_ms, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'downlinkDelayMs', traits: {"smithy.api#documentation" => "<p>Delay time for all packets to destination in milliseconds as an integer from 0 to\n            2000.</p>"}))
    NetworkProfile.add_member(:uplink_jitter_ms, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'uplinkJitterMs', traits: {"smithy.api#documentation" => "<p>Time variation in the delay of received packets in milliseconds as an integer from\n            0 to 2000.</p>"}))
    NetworkProfile.add_member(:downlink_jitter_ms, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'downlinkJitterMs', traits: {"smithy.api#documentation" => "<p>Time variation in the delay of received packets in milliseconds as an integer from\n            0 to 2000.</p>"}))
    NetworkProfile.add_member(:uplink_loss_percent, Smithy::Schema::Shapes::ShapeRef.new(shape: PercentInteger, location_name: 'uplinkLossPercent', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Proportion of transmitted packets that fail to arrive from 0 to 100\n            percent.</p>"}))
    NetworkProfile.add_member(:downlink_loss_percent, Smithy::Schema::Shapes::ShapeRef.new(shape: PercentInteger, location_name: 'downlinkLossPercent', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Proportion of received packets that fail to arrive from 0 to 100 percent.</p>"}))
    NetworkProfile.type = Types::NetworkProfile
    NetworkProfileType.add_member(:curated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CURATED', traits: {"smithy.api#enumValue" => "CURATED"}))
    NetworkProfileType.add_member(:private, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRIVATE', traits: {"smithy.api#enumValue" => "PRIVATE"}))
    NetworkProfiles.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkProfile)
    NotEligibleException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The HTTP response code of a Not Eligible exception.</p>"}))
    NotEligibleException.type = Types::NotEligibleException
    NotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any additional information about the exception.</p>"}))
    NotFoundException.type = Types::NotFoundException
    Offering.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingIdentifier, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID that corresponds to a device offering.</p>"}))
    Offering.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A string that describes the offering.</p>"}))
    Offering.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of offering (for example, <code>RECURRING</code>) for a device.</p>"}))
    Offering.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: DevicePlatform, location_name: 'platform', traits: {"smithy.api#documentation" => "<p>The platform of the device (for example, <code>ANDROID</code> or <code>IOS</code>).</p>"}))
    Offering.add_member(:recurring_charges, Smithy::Schema::Shapes::ShapeRef.new(shape: RecurringCharges, location_name: 'recurringCharges', traits: {"smithy.api#documentation" => "<p>Specifies whether there are recurring charges for the offering.</p>"}))
    Offering.type = Types::Offering
    OfferingPromotion.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingPromotionIdentifier, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the offering promotion.</p>"}))
    OfferingPromotion.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A string that describes the offering promotion.</p>"}))
    OfferingPromotion.type = Types::OfferingPromotion
    OfferingPromotions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingPromotion)
    OfferingStatus.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingTransactionType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type specified for the offering status.</p>"}))
    OfferingStatus.add_member(:offering, Smithy::Schema::Shapes::ShapeRef.new(shape: Offering, location_name: 'offering', traits: {"smithy.api#documentation" => "<p>Represents the metadata of an offering status.</p>"}))
    OfferingStatus.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'quantity', traits: {"smithy.api#documentation" => "<p>The number of available devices in the offering.</p>"}))
    OfferingStatus.add_member(:effective_on, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'effectiveOn', traits: {"smithy.api#documentation" => "<p>The date on which the offering is effective.</p>"}))
    OfferingStatus.type = Types::OfferingStatus
    OfferingStatusMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingIdentifier)
    OfferingStatusMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingStatus)
    OfferingTransaction.add_member(:offering_status, Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingStatus, location_name: 'offeringStatus', traits: {"smithy.api#documentation" => "<p>The status of an offering transaction.</p>"}))
    OfferingTransaction.add_member(:transaction_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionIdentifier, location_name: 'transactionId', traits: {"smithy.api#documentation" => "<p>The transaction ID of the offering transaction.</p>"}))
    OfferingTransaction.add_member(:offering_promotion_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingPromotionIdentifier, location_name: 'offeringPromotionId', traits: {"smithy.api#documentation" => "<p>The ID that corresponds to a device offering promotion.</p>"}))
    OfferingTransaction.add_member(:created_on, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'createdOn', traits: {"smithy.api#documentation" => "<p>The date on which an offering transaction was created.</p>"}))
    OfferingTransaction.add_member(:cost, Smithy::Schema::Shapes::ShapeRef.new(shape: MonetaryAmount, location_name: 'cost', traits: {"smithy.api#documentation" => "<p>The cost of an offering transaction.</p>"}))
    OfferingTransaction.type = Types::OfferingTransaction
    OfferingTransactionType.add_member(:purchase, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PURCHASE', traits: {"smithy.api#enumValue" => "PURCHASE"}))
    OfferingTransactionType.add_member(:renew, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RENEW', traits: {"smithy.api#enumValue" => "RENEW"}))
    OfferingTransactionType.add_member(:system, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYSTEM', traits: {"smithy.api#enumValue" => "SYSTEM"}))
    OfferingTransactions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingTransaction)
    OfferingType.add_member(:recurring, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RECURRING', traits: {"smithy.api#enumValue" => "RECURRING"}))
    Offerings.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Offering)
    PackageIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Problem.add_member(:run, Smithy::Schema::Shapes::ShapeRef.new(shape: ProblemDetail, location_name: 'run', traits: {"smithy.api#documentation" => "<p>Information about the associated run.</p>"}))
    Problem.add_member(:job, Smithy::Schema::Shapes::ShapeRef.new(shape: ProblemDetail, location_name: 'job', traits: {"smithy.api#documentation" => "<p>Information about the associated job.</p>"}))
    Problem.add_member(:suite, Smithy::Schema::Shapes::ShapeRef.new(shape: ProblemDetail, location_name: 'suite', traits: {"smithy.api#documentation" => "<p>Information about the associated suite.</p>"}))
    Problem.add_member(:test, Smithy::Schema::Shapes::ShapeRef.new(shape: ProblemDetail, location_name: 'test', traits: {"smithy.api#documentation" => "<p>Information about the associated test.</p>"}))
    Problem.add_member(:device, Smithy::Schema::Shapes::ShapeRef.new(shape: Device, location_name: 'device', traits: {"smithy.api#documentation" => "<p>Information about the associated device.</p>"}))
    Problem.add_member(:result, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionResult, location_name: 'result', traits: {"smithy.api#documentation" => "<p>The problem's result.</p>\n        <p>Allowed values include:</p>\n        <ul>\n            <li>\n                <p>PENDING</p>\n            </li>\n            <li>\n                <p>PASSED</p>\n            </li>\n            <li>\n                <p>WARNED</p>\n            </li>\n            <li>\n                <p>FAILED</p>\n            </li>\n            <li>\n                <p>SKIPPED</p>\n            </li>\n            <li>\n                <p>ERRORED</p>\n            </li>\n            <li>\n                <p>STOPPED</p>\n            </li>\n         </ul>"}))
    Problem.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A message about the problem's result.</p>"}))
    Problem.type = Types::Problem
    ProblemDetail.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The problem detail's ARN.</p>"}))
    ProblemDetail.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The problem detail's name.</p>"}))
    ProblemDetail.type = Types::ProblemDetail
    Problems.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Problem)
    Project.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The project's ARN.</p>"}))
    Project.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The project's name.</p>"}))
    Project.add_member(:default_job_timeout_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTimeoutMinutes, location_name: 'defaultJobTimeoutMinutes', traits: {"smithy.api#documentation" => "<p>The default number of minutes (at the project level) a test run executes before it times out. The\n            default value is 150 minutes.</p>"}))
    Project.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'created', traits: {"smithy.api#documentation" => "<p>When the project was created.</p>"}))
    Project.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: 'vpcConfig', traits: {"smithy.api#documentation" => "<p>The VPC security groups and subnets that are attached to a project.</p>"}))
    Project.type = Types::Project
    Projects.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Project)
    PurchaseOfferingRequest.add_member(:offering_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingIdentifier, location_name: 'offeringId', traits: {"smithy.api#documentation" => "<p>The ID of the offering.</p>", "smithy.api#required" => {}}))
    PurchaseOfferingRequest.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'quantity', traits: {"smithy.api#documentation" => "<p>The number of device slots to purchase in an offering request.</p>", "smithy.api#required" => {}}))
    PurchaseOfferingRequest.add_member(:offering_promotion_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingPromotionIdentifier, location_name: 'offeringPromotionId', traits: {"smithy.api#documentation" => "<p>The ID of the offering promotion to be applied to the purchase.</p>"}))
    PurchaseOfferingRequest.type = Types::PurchaseOfferingRequest
    PurchaseOfferingResult.add_member(:offering_transaction, Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingTransaction, location_name: 'offeringTransaction', traits: {"smithy.api#documentation" => "<p>Represents the offering transaction for the purchase result.</p>"}))
    PurchaseOfferingResult.type = Types::PurchaseOfferingResult
    PurchasedDevicesMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: DevicePlatform)
    PurchasedDevicesMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Integer)
    Radios.add_member(:wifi, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'wifi', traits: {"smithy.api#documentation" => "<p>True if Wi-Fi is enabled at the beginning of the test. Otherwise, false.</p>"}))
    Radios.add_member(:bluetooth, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'bluetooth', traits: {"smithy.api#documentation" => "<p>True if Bluetooth is enabled at the beginning of the test. Otherwise, false.</p>"}))
    Radios.add_member(:nfc, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'nfc', traits: {"smithy.api#documentation" => "<p>True if NFC is enabled at the beginning of the test. Otherwise, false.</p>"}))
    Radios.add_member(:gps, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'gps', traits: {"smithy.api#documentation" => "<p>True if GPS is enabled at the beginning of the test. Otherwise, false.</p>"}))
    Radios.type = Types::Radios
    RecurringCharge.add_member(:cost, Smithy::Schema::Shapes::ShapeRef.new(shape: MonetaryAmount, location_name: 'cost', traits: {"smithy.api#documentation" => "<p>The cost of the recurring charge.</p>"}))
    RecurringCharge.add_member(:frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: RecurringChargeFrequency, location_name: 'frequency', traits: {"smithy.api#documentation" => "<p>The frequency in which charges recur.</p>"}))
    RecurringCharge.type = Types::RecurringCharge
    RecurringChargeFrequency.add_member(:monthly, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MONTHLY', traits: {"smithy.api#enumValue" => "MONTHLY"}))
    RecurringCharges.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecurringCharge)
    RemoteAccessSession.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the remote access session.</p>"}))
    RemoteAccessSession.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the remote access session.</p>"}))
    RemoteAccessSession.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'created', traits: {"smithy.api#documentation" => "<p>The date and time the remote access session was created.</p>"}))
    RemoteAccessSession.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the remote access session. Can be any of the following:</p>\n        <ul>\n            <li>\n                <p>PENDING.</p>\n            </li>\n            <li>\n                <p>PENDING_CONCURRENCY.</p>\n            </li>\n            <li>\n                <p>PENDING_DEVICE.</p>\n            </li>\n            <li>\n                <p>PROCESSING.</p>\n            </li>\n            <li>\n                <p>SCHEDULING.</p>\n            </li>\n            <li>\n                <p>PREPARING.</p>\n            </li>\n            <li>\n                <p>RUNNING.</p>\n            </li>\n            <li>\n                <p>COMPLETED.</p>\n            </li>\n            <li>\n                <p>STOPPING.</p>\n            </li>\n         </ul>"}))
    RemoteAccessSession.add_member(:result, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionResult, location_name: 'result', traits: {"smithy.api#documentation" => "<p>The result of the remote access session. Can be any of the following:</p>\n        <ul>\n            <li>\n                <p>PENDING.</p>\n            </li>\n            <li>\n                <p>PASSED.</p>\n            </li>\n            <li>\n                <p>WARNED.</p>\n            </li>\n            <li>\n                <p>FAILED.</p>\n            </li>\n            <li>\n                <p>SKIPPED.</p>\n            </li>\n            <li>\n                <p>ERRORED.</p>\n            </li>\n            <li>\n                <p>STOPPED.</p>\n            </li>\n         </ul>"}))
    RemoteAccessSession.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A message about the remote access session.</p>"}))
    RemoteAccessSession.add_member(:started, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'started', traits: {"smithy.api#documentation" => "<p>The date and time the remote access session was started.</p>"}))
    RemoteAccessSession.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'stopped', traits: {"smithy.api#documentation" => "<p>The date and time the remote access session was stopped.</p>"}))
    RemoteAccessSession.add_member(:device, Smithy::Schema::Shapes::ShapeRef.new(shape: Device, location_name: 'device', traits: {"smithy.api#documentation" => "<p>The device (phone or tablet) used in the remote access session.</p>"}))
    RemoteAccessSession.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'instanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the instance.</p>"}))
    RemoteAccessSession.add_member(:remote_debug_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'remoteDebugEnabled', traits: {"smithy.api#documentation" => "<p>This flag is set to <code>true</code> if remote debugging is enabled for the remote\n            access session.</p>\n        <p>Remote debugging is <a href=\"https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html\">no\n            longer supported</a>.</p>"}))
    RemoteAccessSession.add_member(:remote_record_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'remoteRecordEnabled', traits: {"smithy.api#documentation" => "<p>This flag is set to <code>true</code> if remote recording is enabled for the remote\n            access session.</p>"}))
    RemoteAccessSession.add_member(:remote_record_app_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'remoteRecordAppArn', traits: {"smithy.api#documentation" => "<p>The ARN for the app to be recorded in the remote access session.</p>"}))
    RemoteAccessSession.add_member(:host_address, Smithy::Schema::Shapes::ShapeRef.new(shape: HostAddress, location_name: 'hostAddress', traits: {"smithy.api#documentation" => "<p>IP address of the EC2 host where you need to connect to remotely debug devices.\n            Only returned if remote debugging is enabled for the remote access session.</p>\n        <p>Remote debugging is <a href=\"https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html\">no\n            longer supported</a>.</p>"}))
    RemoteAccessSession.add_member(:client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientId, location_name: 'clientId', traits: {"smithy.api#documentation" => "<p>Unique identifier of your client for the remote access session. Only returned if\n            remote debugging is enabled for the remote access session.</p>\n        <p>Remote debugging is <a href=\"https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html\">no\n            longer supported</a>.</p>"}))
    RemoteAccessSession.add_member(:billing_method, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingMethod, location_name: 'billingMethod', traits: {"smithy.api#documentation" => "<p>The billing method of the remote access session. Possible values include <code>METERED</code> or\n                <code>UNMETERED</code>. For more information about metered devices, see <a href=\"https://docs.aws.amazon.com/devicefarm/latest/developerguide/welcome.html#welcome-terminology\">AWS Device Farm\n                terminology</a>.</p>"}))
    RemoteAccessSession.add_member(:device_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceMinutes, location_name: 'deviceMinutes', traits: {"smithy.api#documentation" => "<p>The number of minutes a device is used in a remote access session (including setup\n            and teardown minutes).</p>"}))
    RemoteAccessSession.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'endpoint', traits: {"smithy.api#documentation" => "<p>The endpoint for the remote access sesssion.</p>"}))
    RemoteAccessSession.add_member(:device_udid, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'deviceUdid', traits: {"smithy.api#documentation" => "<p>Unique device identifier for the remote device. Only returned if remote debugging\n            is enabled for the remote access session.</p>\n        <p>Remote debugging is <a href=\"https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html\">no\n            longer supported</a>.</p>"}))
    RemoteAccessSession.add_member(:interaction_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: InteractionMode, location_name: 'interactionMode', traits: {"smithy.api#documentation" => "<p>The interaction mode of the remote access session. Valid values are:</p>\n        <ul>\n            <li>\n                <p>INTERACTIVE: You can interact with the iOS device by viewing, touching, and\n                    rotating the screen. You cannot run XCUITest framework-based tests in this\n                    mode.</p>\n            </li>\n            <li>\n                <p>NO_VIDEO: You are connected to the device, but cannot interact with it or view the screen. This\n                    mode has the fastest test execution speed. You can run XCUITest framework-based tests in this\n                    mode.</p>\n            </li>\n            <li>\n                <p>VIDEO_ONLY: You can view the screen, but cannot touch or rotate it. You can run XCUITest\n                    framework-based tests and watch the screen in this mode.</p>\n            </li>\n         </ul>"}))
    RemoteAccessSession.add_member(:skip_app_resign, Smithy::Schema::Shapes::ShapeRef.new(shape: SkipAppResign, location_name: 'skipAppResign', traits: {"smithy.api#documentation" => "<p>When set to <code>true</code>, for private devices, Device Farm does not sign your app again. For public\n            devices, Device Farm always signs your apps again.</p>\n        <p>For more information about how Device Farm re-signs your apps, see <a href=\"http://aws.amazon.com/device-farm/faqs/\">Do you modify my app?</a> in the <i>AWS Device\n                Farm FAQs</i>.</p>"}))
    RemoteAccessSession.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: 'vpcConfig', traits: {"smithy.api#documentation" => "<p>The VPC security groups and subnets that are attached to a project.</p>"}))
    RemoteAccessSession.add_member(:device_proxy, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceProxy, location_name: 'deviceProxy', traits: {"smithy.api#documentation" => "<p>The device proxy configured for the remote access session.</p>"}))
    RemoteAccessSession.type = Types::RemoteAccessSession
    RemoteAccessSessions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoteAccessSession)
    RenewOfferingRequest.add_member(:offering_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingIdentifier, location_name: 'offeringId', traits: {"smithy.api#documentation" => "<p>The ID of a request to renew an offering.</p>", "smithy.api#required" => {}}))
    RenewOfferingRequest.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'quantity', traits: {"smithy.api#documentation" => "<p>The quantity requested in an offering renewal.</p>", "smithy.api#required" => {}}))
    RenewOfferingRequest.type = Types::RenewOfferingRequest
    RenewOfferingResult.add_member(:offering_transaction, Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingTransaction, location_name: 'offeringTransaction', traits: {"smithy.api#documentation" => "<p>Represents the status of the offering transaction for the renewal.</p>"}))
    RenewOfferingResult.type = Types::RenewOfferingResult
    Resolution.add_member(:width, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'width', traits: {"smithy.api#documentation" => "<p>The screen resolution's width, expressed in pixels.</p>"}))
    Resolution.add_member(:height, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'height', traits: {"smithy.api#documentation" => "<p>The screen resolution's height, expressed in pixels.</p>"}))
    Resolution.type = Types::Resolution
    Rule.add_member(:attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceAttribute, location_name: 'attribute', traits: {"smithy.api#documentation" => "<p>The rule's stringified attribute. For example, specify the value as\n                <code>\"\\\"abc\\\"\"</code>.</p>\n        <p>The supported operators for each attribute are provided in the following\n            list.</p>\n        <dl>\n            <dt>APPIUM_VERSION</dt>\n            <dd>\n                    <p>The Appium version for the test.</p>\n                    <p>Supported operators: <code>CONTAINS</code>\n               </p>\n                </dd>\n            <dt>ARN</dt>\n            <dd>\n                    <p>The Amazon Resource Name (ARN) of the device (for example,\n                        <code>arn:aws:devicefarm:us-west-2::device:12345Example</code>.</p>\n                    <p>Supported operators: <code>EQUALS</code>,\n                            <code>IN</code>, <code>NOT_IN</code>\n               </p>\n                </dd>\n            <dt>AVAILABILITY</dt>\n            <dd>\n                    <p>The current availability of the device. Valid values are AVAILABLE,\n                        HIGHLY_AVAILABLE, BUSY, or TEMPORARY_NOT_AVAILABLE.</p>\n                    <p>Supported operators: <code>EQUALS</code>\n               </p>\n                </dd>\n            <dt>FLEET_TYPE</dt>\n            <dd>\n                    <p>The fleet type. Valid values are PUBLIC or PRIVATE.</p>\n                    <p>Supported operators: <code>EQUALS</code>\n               </p>\n                </dd>\n            <dt>FORM_FACTOR</dt>\n            <dd>\n                    <p>The device form factor. Valid values are PHONE or TABLET.</p>\n                    <p>Supported operators: <code>EQUALS</code>,\n                            <code>IN</code>, <code>NOT_IN</code>\n               </p>\n                </dd>\n            <dt>INSTANCE_ARN</dt>\n            <dd>\n                    <p>The Amazon Resource Name (ARN) of the device instance.</p>\n                    <p>Supported operators: <code>IN</code>,\n                            <code>NOT_IN</code>\n               </p>\n                </dd>\n            <dt>INSTANCE_LABELS</dt>\n            <dd>\n                    <p>The label of the device instance.</p>\n                    <p>Supported operators: <code>CONTAINS</code>\n               </p>\n                </dd>\n            <dt>MANUFACTURER</dt>\n            <dd>\n                    <p>The device manufacturer (for example, Apple).</p>\n                    <p>Supported operators: <code>EQUALS</code>,\n                            <code>IN</code>, <code>NOT_IN</code>\n               </p>\n                </dd>\n            <dt>MODEL</dt>\n            <dd>\n                    <p>The device model, such as Apple iPad Air 2 or Google Pixel.</p>\n                    <p>Supported operators: <code>CONTAINS</code>,\n                            <code>EQUALS</code>, <code>IN</code>, <code>NOT_IN</code>\n               </p>\n                </dd>\n            <dt>OS_VERSION</dt>\n            <dd>\n                    <p>The operating system version (for example, 10.3.2).</p>\n                    <p>Supported operators: <code>EQUALS</code>,\n                            <code>GREATER_THAN</code>, <code>GREATER_THAN_OR_EQUALS</code>,\n                            <code>IN</code>, <code>LESS_THAN</code>,\n                            <code>LESS_THAN_OR_EQUALS</code>, <code>NOT_IN</code>\n               </p>\n                </dd>\n            <dt>PLATFORM</dt>\n            <dd>\n                    <p>The device platform. Valid values are ANDROID or IOS.</p>\n                    <p>Supported operators: <code>EQUALS</code>,\n                            <code>IN</code>, <code>NOT_IN</code>\n               </p>\n                </dd>\n            <dt>REMOTE_ACCESS_ENABLED</dt>\n            <dd>\n                    <p>Whether the device is enabled for remote access. Valid values are TRUE\n                        or FALSE.</p>\n                    <p>Supported operators: <code>EQUALS</code>\n               </p>\n                </dd>\n            <dt>REMOTE_DEBUG_ENABLED</dt>\n            <dd>\n                    <p>Whether the device is enabled for remote debugging. Valid values are\n                        TRUE or FALSE.</p>\n                    <p>Supported operators: <code>EQUALS</code>\n               </p>\n                    <p>Because remote debugging is <a href=\"https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html\">no\n                        longer supported</a>, this filter is ignored.</p>\n                </dd>\n         </dl>"}))
    Rule.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleOperator, location_name: 'operator', traits: {"smithy.api#documentation" => "<p>Specifies how Device Farm compares the rule's attribute to the value. For the\n            operators that are supported by each attribute, see the attribute\n            descriptions.</p>"}))
    Rule.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The rule's value.</p>"}))
    Rule.type = Types::Rule
    RuleOperator.add_member(:equals, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQUALS', traits: {"smithy.api#enumValue" => "EQUALS"}))
    RuleOperator.add_member(:less_than, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LESS_THAN', traits: {"smithy.api#enumValue" => "LESS_THAN"}))
    RuleOperator.add_member(:less_than_or_equals, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LESS_THAN_OR_EQUALS', traits: {"smithy.api#enumValue" => "LESS_THAN_OR_EQUALS"}))
    RuleOperator.add_member(:greater_than, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GREATER_THAN', traits: {"smithy.api#enumValue" => "GREATER_THAN"}))
    RuleOperator.add_member(:greater_than_or_equals, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GREATER_THAN_OR_EQUALS', traits: {"smithy.api#enumValue" => "GREATER_THAN_OR_EQUALS"}))
    RuleOperator.add_member(:in, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN', traits: {"smithy.api#enumValue" => "IN"}))
    RuleOperator.add_member(:not_in, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_IN', traits: {"smithy.api#enumValue" => "NOT_IN"}))
    RuleOperator.add_member(:contains, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTAINS', traits: {"smithy.api#enumValue" => "CONTAINS"}))
    Rules.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Rule)
    Run.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The run's ARN.</p>"}))
    Run.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The run's name.</p>"}))
    Run.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: TestType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The run's type.</p>\n        <p>Must be one of the following values:</p>\n        <ul>\n            <li>\n                <p>BUILTIN_FUZZ</p>\n            </li>\n            <li>\n                <p>APPIUM_JAVA_JUNIT</p>\n            </li>\n            <li>\n                <p>APPIUM_JAVA_TESTNG</p>\n            </li>\n            <li>\n                <p>APPIUM_PYTHON</p>\n            </li>\n            <li>\n                <p>APPIUM_NODE</p>\n            </li>\n            <li>\n                <p>APPIUM_RUBY</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_JAVA_JUNIT</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_JAVA_TESTNG</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_PYTHON</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_NODE</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_RUBY</p>\n            </li>\n            <li>\n                <p>INSTRUMENTATION</p>\n            </li>\n            <li>\n                <p>XCTEST</p>\n            </li>\n            <li>\n                <p>XCTEST_UI</p>\n            </li>\n         </ul>"}))
    Run.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: DevicePlatform, location_name: 'platform', traits: {"smithy.api#documentation" => "<p>The run's platform.</p>\n        <p>Allowed values include:</p>\n        <ul>\n            <li>\n                <p>ANDROID</p>\n            </li>\n            <li>\n                <p>IOS</p>\n            </li>\n         </ul>"}))
    Run.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'created', traits: {"smithy.api#documentation" => "<p>When the run was created.</p>"}))
    Run.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The run's status.</p>\n        <p>Allowed values include:</p>\n        <ul>\n            <li>\n                <p>PENDING</p>\n            </li>\n            <li>\n                <p>PENDING_CONCURRENCY</p>\n            </li>\n            <li>\n                <p>PENDING_DEVICE</p>\n            </li>\n            <li>\n                <p>PROCESSING</p>\n            </li>\n            <li>\n                <p>SCHEDULING</p>\n            </li>\n            <li>\n                <p>PREPARING</p>\n            </li>\n            <li>\n                <p>RUNNING</p>\n            </li>\n            <li>\n                <p>COMPLETED</p>\n            </li>\n            <li>\n                <p>STOPPING</p>\n            </li>\n         </ul>"}))
    Run.add_member(:result, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionResult, location_name: 'result', traits: {"smithy.api#documentation" => "<p>The run's result.</p>\n        <p>Allowed values include:</p>\n        <ul>\n            <li>\n                <p>PENDING</p>\n            </li>\n            <li>\n                <p>PASSED</p>\n            </li>\n            <li>\n                <p>WARNED</p>\n            </li>\n            <li>\n                <p>FAILED</p>\n            </li>\n            <li>\n                <p>SKIPPED</p>\n            </li>\n            <li>\n                <p>ERRORED</p>\n            </li>\n            <li>\n                <p>STOPPED</p>\n            </li>\n         </ul>"}))
    Run.add_member(:started, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'started', traits: {"smithy.api#documentation" => "<p>The run's start time.</p>"}))
    Run.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'stopped', traits: {"smithy.api#documentation" => "<p>The run's stop time.</p>"}))
    Run.add_member(:counters, Smithy::Schema::Shapes::ShapeRef.new(shape: Counters, location_name: 'counters', traits: {"smithy.api#documentation" => "<p>The run's result counters.</p>"}))
    Run.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A message about the run's result.</p>"}))
    Run.add_member(:total_jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'totalJobs', traits: {"smithy.api#documentation" => "<p>The total number of jobs for the run.</p>"}))
    Run.add_member(:completed_jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'completedJobs', traits: {"smithy.api#documentation" => "<p>The total number of completed jobs.</p>"}))
    Run.add_member(:billing_method, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingMethod, location_name: 'billingMethod', traits: {"smithy.api#documentation" => "<p>Specifies the billing method for a test run: <code>metered</code> or\n                <code>unmetered</code>. If the parameter is not specified, the default value is\n                <code>metered</code>.</p>\n        <note>\n            <p>If you have unmetered device slots, you must set this to <code>unmetered</code> to use them.\n                Otherwise, the run is counted toward metered device minutes.</p>\n        </note>"}))
    Run.add_member(:device_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceMinutes, location_name: 'deviceMinutes', traits: {"smithy.api#documentation" => "<p>Represents the total (metered or unmetered) minutes used by the test run.</p>"}))
    Run.add_member(:network_profile, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkProfile, location_name: 'networkProfile', traits: {"smithy.api#documentation" => "<p>The network profile being used for a test run.</p>"}))
    Run.add_member(:device_proxy, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceProxy, location_name: 'deviceProxy', traits: {"smithy.api#documentation" => "<p>The device proxy configured for the devices in the run.</p>"}))
    Run.add_member(:parsing_result_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'parsingResultUrl', traits: {"smithy.api#documentation" => "<p>Read-only URL for an object in an S3 bucket where you can get the parsing results of the test package.\n            If the test package doesn't parse, the reason why it doesn't parse appears in the file that this URL points\n            to.</p>"}))
    Run.add_member(:result_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionResultCode, location_name: 'resultCode', traits: {"smithy.api#documentation" => "<p>Supporting field for the result field. Set only if <code>result</code> is <code>SKIPPED</code>.\n                <code>PARSING_FAILED</code> if the result is skipped because of test package parsing failure.</p>"}))
    Run.add_member(:seed, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'seed', traits: {"smithy.api#documentation" => "<p>For fuzz tests, this is a seed to use for randomizing the UI fuzz test. Using the same\n            seed value between tests ensures identical event sequences.</p>"}))
    Run.add_member(:app_upload, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'appUpload', traits: {"smithy.api#documentation" => "<p>An app to upload or that has been uploaded.</p>"}))
    Run.add_member(:event_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'eventCount', traits: {"smithy.api#documentation" => "<p>For fuzz tests, this is the number of events, between 1 and 10000, that the UI fuzz\n            test should perform.</p>"}))
    Run.add_member(:job_timeout_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTimeoutMinutes, location_name: 'jobTimeoutMinutes', traits: {"smithy.api#documentation" => "<p>The number of minutes the job executes before it times out.</p>"}))
    Run.add_member(:device_pool_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'devicePoolArn', traits: {"smithy.api#documentation" => "<p>The ARN of the device pool for the run.</p>"}))
    Run.add_member(:locale, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'locale', traits: {"smithy.api#documentation" => "<p>Information about the locale that is used for the run.</p>"}))
    Run.add_member(:radios, Smithy::Schema::Shapes::ShapeRef.new(shape: Radios, location_name: 'radios', traits: {"smithy.api#documentation" => "<p>Information about the radio states for the run.</p>"}))
    Run.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: Location, location_name: 'location', traits: {"smithy.api#documentation" => "<p>Information about the location that is used for the run.</p>"}))
    Run.add_member(:customer_artifact_paths, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerArtifactPaths, location_name: 'customerArtifactPaths', traits: {"smithy.api#documentation" => "<p>Output <code>CustomerArtifactPaths</code> object for the test run.</p>"}))
    Run.add_member(:web_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'webUrl', traits: {"smithy.api#documentation" => "<p>The Device Farm console URL for the recording of the run.</p>"}))
    Run.add_member(:skip_app_resign, Smithy::Schema::Shapes::ShapeRef.new(shape: SkipAppResign, location_name: 'skipAppResign', traits: {"smithy.api#documentation" => "<p>When set to <code>true</code>, for private devices, Device Farm does not sign your app again. For public\n            devices, Device Farm always signs your apps again.</p>\n        <p>For more information about how Device Farm re-signs your apps, see <a href=\"http://aws.amazon.com/device-farm/faqs/\">Do you modify my app?</a> in the <i>AWS Device\n                Farm FAQs</i>.</p>"}))
    Run.add_member(:test_spec_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'testSpecArn', traits: {"smithy.api#documentation" => "<p>The ARN of the YAML-formatted test specification for the run.</p>"}))
    Run.add_member(:device_selection_result, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceSelectionResult, location_name: 'deviceSelectionResult', traits: {"smithy.api#documentation" => "<p>The results of a device filter used to select the devices for a test run.</p>"}))
    Run.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: 'vpcConfig', traits: {"smithy.api#documentation" => "<p>The VPC security groups and subnets that are attached to a project.</p>"}))
    Run.type = Types::Run
    Runs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Run)
    Sample.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The sample's ARN.</p>"}))
    Sample.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: SampleType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The sample's type.</p>\n        <p>Must be one of the following values:</p>\n        <ul>\n            <li>\n                <p>CPU: A CPU sample type. This is expressed as the app processing CPU time\n                    (including child processes) as reported by process, as a percentage.</p>\n            </li>\n            <li>\n                <p>MEMORY: A memory usage sample type. This is expressed as the total\n                    proportional set size of an app process, in kilobytes.</p>\n            </li>\n            <li>\n                <p>NATIVE_AVG_DRAWTIME</p>\n            </li>\n            <li>\n                <p>NATIVE_FPS</p>\n            </li>\n            <li>\n                <p>NATIVE_FRAMES</p>\n            </li>\n            <li>\n                <p>NATIVE_MAX_DRAWTIME</p>\n            </li>\n            <li>\n                <p>NATIVE_MIN_DRAWTIME</p>\n            </li>\n            <li>\n                <p>OPENGL_AVG_DRAWTIME</p>\n            </li>\n            <li>\n                <p>OPENGL_FPS</p>\n            </li>\n            <li>\n                <p>OPENGL_FRAMES</p>\n            </li>\n            <li>\n                <p>OPENGL_MAX_DRAWTIME</p>\n            </li>\n            <li>\n                <p>OPENGL_MIN_DRAWTIME</p>\n            </li>\n            <li>\n                <p>RX</p>\n            </li>\n            <li>\n                <p>RX_RATE: The total number of bytes per second (TCP and UDP) that are sent,\n                    by app process.</p>\n            </li>\n            <li>\n                <p>THREADS: A threads sample type. This is expressed as the total number of\n                    threads per app process.</p>\n            </li>\n            <li>\n                <p>TX</p>\n            </li>\n            <li>\n                <p>TX_RATE: The total number of bytes per second (TCP and UDP) that are\n                    received, by app process.</p>\n            </li>\n         </ul>"}))
    Sample.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: URL, location_name: 'url', traits: {"smithy.api#documentation" => "<p>The presigned Amazon S3 URL that can be used with a GET request to download the sample's\n            file.</p>"}))
    Sample.type = Types::Sample
    SampleType.add_member(:cpu, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CPU', traits: {"smithy.api#enumValue" => "CPU"}))
    SampleType.add_member(:memory, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEMORY', traits: {"smithy.api#enumValue" => "MEMORY"}))
    SampleType.add_member(:threads, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'THREADS', traits: {"smithy.api#enumValue" => "THREADS"}))
    SampleType.add_member(:rx_rate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RX_RATE', traits: {"smithy.api#enumValue" => "RX_RATE"}))
    SampleType.add_member(:tx_rate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TX_RATE', traits: {"smithy.api#enumValue" => "TX_RATE"}))
    SampleType.add_member(:rx, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RX', traits: {"smithy.api#enumValue" => "RX"}))
    SampleType.add_member(:tx, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TX', traits: {"smithy.api#enumValue" => "TX"}))
    SampleType.add_member(:native_frames, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NATIVE_FRAMES', traits: {"smithy.api#enumValue" => "NATIVE_FRAMES"}))
    SampleType.add_member(:native_fps, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NATIVE_FPS', traits: {"smithy.api#enumValue" => "NATIVE_FPS"}))
    SampleType.add_member(:native_min_drawtime, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NATIVE_MIN_DRAWTIME', traits: {"smithy.api#enumValue" => "NATIVE_MIN_DRAWTIME"}))
    SampleType.add_member(:native_avg_drawtime, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NATIVE_AVG_DRAWTIME', traits: {"smithy.api#enumValue" => "NATIVE_AVG_DRAWTIME"}))
    SampleType.add_member(:native_max_drawtime, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NATIVE_MAX_DRAWTIME', traits: {"smithy.api#enumValue" => "NATIVE_MAX_DRAWTIME"}))
    SampleType.add_member(:opengl_frames, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPENGL_FRAMES', traits: {"smithy.api#enumValue" => "OPENGL_FRAMES"}))
    SampleType.add_member(:opengl_fps, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPENGL_FPS', traits: {"smithy.api#enumValue" => "OPENGL_FPS"}))
    SampleType.add_member(:opengl_min_drawtime, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPENGL_MIN_DRAWTIME', traits: {"smithy.api#enumValue" => "OPENGL_MIN_DRAWTIME"}))
    SampleType.add_member(:opengl_avg_drawtime, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPENGL_AVG_DRAWTIME', traits: {"smithy.api#enumValue" => "OPENGL_AVG_DRAWTIME"}))
    SampleType.add_member(:opengl_max_drawtime, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPENGL_MAX_DRAWTIME', traits: {"smithy.api#enumValue" => "OPENGL_MAX_DRAWTIME"}))
    Samples.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Sample)
    ScheduleRunConfiguration.add_member(:extra_data_package_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'extraDataPackageArn', traits: {"smithy.api#documentation" => "<p>The ARN of the extra data for the run. The extra data is a .zip file that AWS Device Farm extracts to\n            external data for Android or the app's sandbox for iOS.</p>"}))
    ScheduleRunConfiguration.add_member(:network_profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'networkProfileArn', traits: {"smithy.api#documentation" => "<p>Reserved for internal use.</p>"}))
    ScheduleRunConfiguration.add_member(:locale, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'locale', traits: {"smithy.api#documentation" => "<p>Information about the locale that is used for the run.</p>"}))
    ScheduleRunConfiguration.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: Location, location_name: 'location', traits: {"smithy.api#documentation" => "<p>Information about the location that is used for the run.</p>"}))
    ScheduleRunConfiguration.add_member(:vpce_configuration_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceNames, location_name: 'vpceConfigurationArns', traits: {"smithy.api#documentation" => "<p>An array of ARNs for your VPC endpoint configurations.</p>"}))
    ScheduleRunConfiguration.add_member(:device_proxy, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceProxy, location_name: 'deviceProxy', traits: {"smithy.api#documentation" => "<p>The device proxy to be configured on the device for the run.</p>"}))
    ScheduleRunConfiguration.add_member(:customer_artifact_paths, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerArtifactPaths, location_name: 'customerArtifactPaths', traits: {"smithy.api#documentation" => "<p>Input <code>CustomerArtifactPaths</code> object for the scheduled run\n            configuration.</p>"}))
    ScheduleRunConfiguration.add_member(:radios, Smithy::Schema::Shapes::ShapeRef.new(shape: Radios, location_name: 'radios', traits: {"smithy.api#documentation" => "<p>Information about the radio states for the run.</p>"}))
    ScheduleRunConfiguration.add_member(:auxiliary_apps, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceNames, location_name: 'auxiliaryApps', traits: {"smithy.api#documentation" => "<p>A list of upload ARNs for app packages to be installed with your app.</p>"}))
    ScheduleRunConfiguration.add_member(:billing_method, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingMethod, location_name: 'billingMethod', traits: {"smithy.api#documentation" => "<p>Specifies the billing method for a test run: <code>metered</code> or\n                <code>unmetered</code>. If the parameter is not specified, the default value is\n                <code>metered</code>.</p>\n        <note>\n            <p>If you have purchased unmetered device slots, you must set this parameter to <code>unmetered</code> to\n                make use of them. Otherwise, your run counts against your metered time.</p>\n        </note>"}))
    ScheduleRunConfiguration.type = Types::ScheduleRunConfiguration
    ScheduleRunRequest.add_member(:project_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'projectArn', traits: {"smithy.api#documentation" => "<p>The ARN of the project for the run to be scheduled.</p>", "smithy.api#required" => {}}))
    ScheduleRunRequest.add_member(:app_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'appArn', traits: {"smithy.api#documentation" => "<p>The ARN of an application package to run tests against, created with <a>CreateUpload</a>.\n            See <a>ListUploads</a>.</p>"}))
    ScheduleRunRequest.add_member(:device_pool_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'devicePoolArn', traits: {"smithy.api#documentation" => "<p>The ARN of the device pool for the run to be scheduled.</p>"}))
    ScheduleRunRequest.add_member(:device_selection_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceSelectionConfiguration, location_name: 'deviceSelectionConfiguration', traits: {"smithy.api#documentation" => "<p>The filter criteria used to dynamically select a set of devices for a test run and the maximum number of\n            devices to be included in the run.</p>\n        <p>Either <b>\n               <code>devicePoolArn</code>\n            </b> or <b>\n               <code>deviceSelectionConfiguration</code>\n            </b> is required in a\n            request.</p>"}))
    ScheduleRunRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name for the run to be scheduled.</p>"}))
    ScheduleRunRequest.add_member(:test, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleRunTest, location_name: 'test', traits: {"smithy.api#documentation" => "<p>Information about the test for the run to be scheduled.</p>", "smithy.api#required" => {}}))
    ScheduleRunRequest.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleRunConfiguration, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>Information about the settings for the run to be scheduled.</p>"}))
    ScheduleRunRequest.add_member(:execution_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionConfiguration, location_name: 'executionConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies configuration information about a test run, such as the execution timeout\n            (in minutes).</p>"}))
    ScheduleRunRequest.type = Types::ScheduleRunRequest
    ScheduleRunResult.add_member(:run, Smithy::Schema::Shapes::ShapeRef.new(shape: Run, location_name: 'run', traits: {"smithy.api#documentation" => "<p>Information about the scheduled run.</p>"}))
    ScheduleRunResult.type = Types::ScheduleRunResult
    ScheduleRunTest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: TestType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The test's type.</p>\n        <p>Must be one of the following values:</p>\n        <ul>\n            <li>\n                <p>BUILTIN_FUZZ</p>\n            </li>\n            <li>\n                <p>APPIUM_JAVA_JUNIT</p>\n            </li>\n            <li>\n                <p>APPIUM_JAVA_TESTNG</p>\n            </li>\n            <li>\n                <p>APPIUM_PYTHON</p>\n            </li>\n            <li>\n                <p>APPIUM_NODE</p>\n            </li>\n            <li>\n                <p>APPIUM_RUBY</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_JAVA_JUNIT</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_JAVA_TESTNG</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_PYTHON</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_NODE</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_RUBY</p>\n            </li>\n            <li>\n                <p>INSTRUMENTATION</p>\n            </li>\n            <li>\n                <p>XCTEST</p>\n            </li>\n            <li>\n                <p>XCTEST_UI</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    ScheduleRunTest.add_member(:test_package_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'testPackageArn', traits: {"smithy.api#documentation" => "<p>The ARN of the uploaded test to be run.</p>"}))
    ScheduleRunTest.add_member(:test_spec_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'testSpecArn', traits: {"smithy.api#documentation" => "<p>The ARN of the YAML-formatted test specification.</p>"}))
    ScheduleRunTest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: Filter, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>The test's filter.</p>"}))
    ScheduleRunTest.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: TestParameters, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>The test's parameters, such as test framework parameters and fixture settings.\n            Parameters are represented by name-value pairs of strings.</p>\n        <p>For all tests:</p>\n        <ul>\n            <li>\n                <p>\n                  <code>app_performance_monitoring</code>: Performance monitoring is enabled by default.\n                    Set this parameter to false to disable it.</p>\n            </li>\n         </ul>\n        \n        <p>For Appium tests (all types):</p>\n        <ul>\n            <li>\n                <p>appium_version: The Appium version. Currently supported values are 1.6.5\n                    (and later), latest, and default.</p>\n                <ul>\n                  <li>\n                        \n                        <p>latest runs the latest Appium version supported by Device\n                            Farm (1.9.1).</p>\n                    </li>\n                  <li>\n                        <p>For default, Device Farm selects a compatible version of\n                            Appium for the device. The current behavior is to run 1.7.2 on Android\n                            devices and iOS 9 and earlier and 1.7.2 for iOS 10 and later.</p>\n                    </li>\n                  <li>\n                        <p>This behavior is subject to change.</p>\n                    </li>\n               </ul>\n            </li>\n         </ul>\n        <p>For fuzz tests (Android only):</p>\n        <ul>\n            <li>\n                <p>event_count: The number of events, between 1 and 10000, that the UI fuzz\n                    test should perform.</p>\n            </li>\n            <li>\n                <p>throttle: The time, in ms, between 0 and 1000, that the UI fuzz test should\n                    wait between events.</p>\n            </li>\n            <li>\n                <p>seed: A seed to use for randomizing the UI fuzz test. Using the same seed\n                    value between tests ensures identical event sequences.</p>\n            </li>\n         </ul>\n        \n        <p>For Instrumentation:</p>\n        <ul>\n            <li>\n                <p>filter: A test filter string. Examples:</p>\n                <ul>\n                  <li>\n                        <p>Running a single test case: <code>com.android.abc.Test1</code>\n                     </p>\n                    </li>\n                  <li>\n                        <p>Running a single test: <code>com.android.abc.Test1#smoke</code>\n                     </p>\n                    </li>\n                  <li>\n                        <p>Running multiple tests:\n                            <code>com.android.abc.Test1,com.android.abc.Test2</code>\n                     </p>\n                    </li>\n               </ul>\n            </li>\n         </ul>\n        <p>For XCTest and XCTestUI:</p>\n        <ul>\n            <li>\n                <p>filter: A test filter string. Examples:</p>\n                <ul>\n                  <li>\n                        <p>Running a single test class: <code>LoginTests</code>\n                     </p>\n                    </li>\n                  <li>\n                        <p>Running a multiple test classes: <code>LoginTests,SmokeTests</code>\n                     </p>\n                    </li>\n                  <li>\n                        <p>Running a single test: <code>LoginTests/testValid</code>\n                     </p>\n                    </li>\n                  <li>\n                        <p>Running multiple tests:\n                            <code>LoginTests/testValid,LoginTests/testInvalid</code>\n                     </p>\n                    </li>\n               </ul>\n            </li>\n         </ul>"}))
    ScheduleRunTest.type = Types::ScheduleRunTest
    SecurityGroupIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    ServiceAccountException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any additional information about the exception.</p>"}))
    ServiceAccountException.type = Types::ServiceAccountException
    StopJobRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Represents the Amazon Resource Name (ARN) of the Device Farm job to stop.</p>", "smithy.api#required" => {}}))
    StopJobRequest.type = Types::StopJobRequest
    StopJobResult.add_member(:job, Smithy::Schema::Shapes::ShapeRef.new(shape: Job, location_name: 'job', traits: {"smithy.api#documentation" => "<p>The job that was stopped.</p>"}))
    StopJobResult.type = Types::StopJobResult
    StopRemoteAccessSessionRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the remote access session to stop.</p>", "smithy.api#required" => {}}))
    StopRemoteAccessSessionRequest.type = Types::StopRemoteAccessSessionRequest
    StopRemoteAccessSessionResult.add_member(:remote_access_session, Smithy::Schema::Shapes::ShapeRef.new(shape: RemoteAccessSession, location_name: 'remoteAccessSession', traits: {"smithy.api#documentation" => "<p>A container that represents the metadata from the service about the remote access session you are\n            stopping.</p>"}))
    StopRemoteAccessSessionResult.type = Types::StopRemoteAccessSessionResult
    StopRunRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Represents the Amazon Resource Name (ARN) of the Device Farm run to stop.</p>", "smithy.api#required" => {}}))
    StopRunRequest.type = Types::StopRunRequest
    StopRunResult.add_member(:run, Smithy::Schema::Shapes::ShapeRef.new(shape: Run, location_name: 'run', traits: {"smithy.api#documentation" => "<p>The run that was stopped.</p>"}))
    StopRunResult.type = Types::StopRunResult
    SubnetIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    Suite.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The suite's ARN.</p>"}))
    Suite.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The suite's name.</p>"}))
    Suite.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: TestType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The suite's type.</p>\n        <p>Must be one of the following values:</p>\n        <ul>\n            <li>\n                <p>BUILTIN_FUZZ</p>\n            </li>\n            <li>\n                <p>APPIUM_JAVA_JUNIT</p>\n            </li>\n            <li>\n                <p>APPIUM_JAVA_TESTNG</p>\n            </li>\n            <li>\n                <p>APPIUM_PYTHON</p>\n            </li>\n            <li>\n                <p>APPIUM_NODE</p>\n            </li>\n            <li>\n                <p>APPIUM_RUBY</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_JAVA_JUNIT</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_JAVA_TESTNG</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_PYTHON</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_NODE</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_RUBY</p>\n            </li>\n            <li>\n                <p>INSTRUMENTATION</p>\n            </li>\n            <li>\n                <p>XCTEST</p>\n            </li>\n            <li>\n                <p>XCTEST_UI</p>\n            </li>\n         </ul>"}))
    Suite.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'created', traits: {"smithy.api#documentation" => "<p>When the suite was created.</p>"}))
    Suite.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The suite's status.</p>\n        <p>Allowed values include:</p>\n        <ul>\n            <li>\n                <p>PENDING</p>\n            </li>\n            <li>\n                <p>PENDING_CONCURRENCY</p>\n            </li>\n            <li>\n                <p>PENDING_DEVICE</p>\n            </li>\n            <li>\n                <p>PROCESSING</p>\n            </li>\n            <li>\n                <p>SCHEDULING</p>\n            </li>\n            <li>\n                <p>PREPARING</p>\n            </li>\n            <li>\n                <p>RUNNING</p>\n            </li>\n            <li>\n                <p>COMPLETED</p>\n            </li>\n            <li>\n                <p>STOPPING</p>\n            </li>\n         </ul>"}))
    Suite.add_member(:result, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionResult, location_name: 'result', traits: {"smithy.api#documentation" => "<p>The suite's result.</p>\n        <p>Allowed values include:</p>\n        <ul>\n            <li>\n                <p>PENDING</p>\n            </li>\n            <li>\n                <p>PASSED</p>\n            </li>\n            <li>\n                <p>WARNED</p>\n            </li>\n            <li>\n                <p>FAILED</p>\n            </li>\n            <li>\n                <p>SKIPPED</p>\n            </li>\n            <li>\n                <p>ERRORED</p>\n            </li>\n            <li>\n                <p>STOPPED</p>\n            </li>\n         </ul>"}))
    Suite.add_member(:started, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'started', traits: {"smithy.api#documentation" => "<p>The suite's start time.</p>"}))
    Suite.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'stopped', traits: {"smithy.api#documentation" => "<p>The suite's stop time.</p>"}))
    Suite.add_member(:counters, Smithy::Schema::Shapes::ShapeRef.new(shape: Counters, location_name: 'counters', traits: {"smithy.api#documentation" => "<p>The suite's result counters.</p>"}))
    Suite.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A message about the suite's result.</p>"}))
    Suite.add_member(:device_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceMinutes, location_name: 'deviceMinutes', traits: {"smithy.api#documentation" => "<p>Represents the total (metered or unmetered) minutes used by the test\n            suite.</p>"}))
    Suite.type = Types::Suite
    Suites.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Suite)
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>One part of a key-value pair that makes up a tag. A <code>key</code> is a general label that acts like a\n            category for more specific tag values.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The optional part of a key-value pair that makes up a tag. A <code>value</code> acts as a descriptor in a\n            tag category (key).</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagOperationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    TagOperationException.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceName'))
    TagOperationException.type = Types::TagOperationException
    TagPolicyException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    TagPolicyException.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceName'))
    TagPolicyException.type = Types::TagPolicyException
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFarmArn, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource or resources to which to add tags. You can associate tags\n            with the following Device Farm resources: <code>PROJECT</code>, <code>RUN</code>,\n                <code>NETWORK_PROFILE</code>, <code>INSTANCE_PROFILE</code>, <code>DEVICE_INSTANCE</code>,\n                <code>SESSION</code>, <code>DEVICE_POOL</code>, <code>DEVICE</code>, and\n            <code>VPCE_CONFIGURATION</code>.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to add to the resource. A tag is an array of key-value pairs. Tag keys can have a maximum\n            character length of 128 characters. Tag values can have a maximum length of 256 characters.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Test.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The test's ARN.</p>"}))
    Test.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The test's name.</p>"}))
    Test.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: TestType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The test's type.</p>\n        <p>Must be one of the following values:</p>\n        <ul>\n            <li>\n                <p>BUILTIN_FUZZ</p>\n            </li>\n            <li>\n                <p>APPIUM_JAVA_JUNIT</p>\n            </li>\n            <li>\n                <p>APPIUM_JAVA_TESTNG</p>\n            </li>\n            <li>\n                <p>APPIUM_PYTHON</p>\n            </li>\n            <li>\n                <p>APPIUM_NODE</p>\n            </li>\n            <li>\n                <p>APPIUM_RUBY</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_JAVA_JUNIT</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_JAVA_TESTNG</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_PYTHON</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_NODE</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_RUBY</p>\n            </li>\n            <li>\n                <p>INSTRUMENTATION</p>\n            </li>\n            <li>\n                <p>XCTEST</p>\n            </li>\n            <li>\n                <p>XCTEST_UI</p>\n            </li>\n         </ul>"}))
    Test.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'created', traits: {"smithy.api#documentation" => "<p>When the test was created.</p>"}))
    Test.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The test's status.</p>\n        <p>Allowed values include:</p>\n        <ul>\n            <li>\n                <p>PENDING</p>\n            </li>\n            <li>\n                <p>PENDING_CONCURRENCY</p>\n            </li>\n            <li>\n                <p>PENDING_DEVICE</p>\n            </li>\n            <li>\n                <p>PROCESSING</p>\n            </li>\n            <li>\n                <p>SCHEDULING</p>\n            </li>\n            <li>\n                <p>PREPARING</p>\n            </li>\n            <li>\n                <p>RUNNING</p>\n            </li>\n            <li>\n                <p>COMPLETED</p>\n            </li>\n            <li>\n                <p>STOPPING</p>\n            </li>\n         </ul>"}))
    Test.add_member(:result, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionResult, location_name: 'result', traits: {"smithy.api#documentation" => "<p>The test's result.</p>\n        <p>Allowed values include:</p>\n        <ul>\n            <li>\n                <p>PENDING</p>\n            </li>\n            <li>\n                <p>PASSED</p>\n            </li>\n            <li>\n                <p>WARNED</p>\n            </li>\n            <li>\n                <p>FAILED</p>\n            </li>\n            <li>\n                <p>SKIPPED</p>\n            </li>\n            <li>\n                <p>ERRORED</p>\n            </li>\n            <li>\n                <p>STOPPED</p>\n            </li>\n         </ul>"}))
    Test.add_member(:started, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'started', traits: {"smithy.api#documentation" => "<p>The test's start time.</p>"}))
    Test.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'stopped', traits: {"smithy.api#documentation" => "<p>The test's stop time.</p>"}))
    Test.add_member(:counters, Smithy::Schema::Shapes::ShapeRef.new(shape: Counters, location_name: 'counters', traits: {"smithy.api#documentation" => "<p>The test's result counters.</p>"}))
    Test.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A message about the test's result.</p>"}))
    Test.add_member(:device_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceMinutes, location_name: 'deviceMinutes', traits: {"smithy.api#documentation" => "<p>Represents the total (metered or unmetered) minutes used by the test.</p>"}))
    Test.type = Types::Test
    TestGridProject.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFarmArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN for the project.</p>"}))
    TestGridProject.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A human-readable name for the project.</p>"}))
    TestGridProject.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A human-readable description for the project.</p>"}))
    TestGridProject.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: TestGridVpcConfig, location_name: 'vpcConfig', traits: {"smithy.api#documentation" => "<p>The VPC security groups and subnets that are attached to a project.</p>"}))
    TestGridProject.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'created', traits: {"smithy.api#documentation" => "<p>When the project was created.</p>"}))
    TestGridProject.type = Types::TestGridProject
    TestGridProjects.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TestGridProject)
    TestGridSession.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFarmArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the session.</p>"}))
    TestGridSession.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TestGridSessionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The state of the session.</p>"}))
    TestGridSession.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'created', traits: {"smithy.api#documentation" => "<p>The time that the session was started.</p>"}))
    TestGridSession.add_member(:ended, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'ended', traits: {"smithy.api#documentation" => "<p>The time the session ended.</p>"}))
    TestGridSession.add_member(:billing_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'billingMinutes', traits: {"smithy.api#documentation" => "<p>The number of billed minutes that were used for this session. </p>"}))
    TestGridSession.add_member(:selenium_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'seleniumProperties', traits: {"smithy.api#documentation" => "<p>A JSON object of options and parameters passed to the Selenium WebDriver.</p>"}))
    TestGridSession.type = Types::TestGridSession
    TestGridSessionAction.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'action', traits: {"smithy.api#documentation" => "<p>The action taken by the session.</p>"}))
    TestGridSessionAction.add_member(:started, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'started', traits: {"smithy.api#documentation" => "<p>The time that the session invoked the action.</p>"}))
    TestGridSessionAction.add_member(:duration, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'duration', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds, that the action took to complete in the browser.</p>"}))
    TestGridSessionAction.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'statusCode', traits: {"smithy.api#documentation" => "<p>HTTP status code returned to the browser when the action was taken.</p>"}))
    TestGridSessionAction.add_member(:request_method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'requestMethod', traits: {"smithy.api#documentation" => "<p>HTTP method that the browser used to make the request.</p>"}))
    TestGridSessionAction.type = Types::TestGridSessionAction
    TestGridSessionActions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TestGridSessionAction)
    TestGridSessionArtifact.add_member(:filename, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'filename', traits: {"smithy.api#documentation" => "<p>The file name of the artifact.</p>"}))
    TestGridSessionArtifact.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: TestGridSessionArtifactType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The kind of artifact.</p>"}))
    TestGridSessionArtifact.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'url', traits: {"smithy.api#documentation" => "<p>A semi-stable URL to the content of the object.</p>"}))
    TestGridSessionArtifact.type = Types::TestGridSessionArtifact
    TestGridSessionArtifactCategory.add_member(:video, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VIDEO', traits: {"smithy.api#enumValue" => "VIDEO"}))
    TestGridSessionArtifactCategory.add_member(:log, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOG', traits: {"smithy.api#enumValue" => "LOG"}))
    TestGridSessionArtifactType.add_member(:unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    TestGridSessionArtifactType.add_member(:video, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VIDEO', traits: {"smithy.api#enumValue" => "VIDEO"}))
    TestGridSessionArtifactType.add_member(:selenium_log, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SELENIUM_LOG', traits: {"smithy.api#enumValue" => "SELENIUM_LOG"}))
    TestGridSessionArtifacts.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TestGridSessionArtifact)
    TestGridSessionStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    TestGridSessionStatus.add_member(:closed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOSED', traits: {"smithy.api#enumValue" => "CLOSED"}))
    TestGridSessionStatus.add_member(:errored, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERRORED', traits: {"smithy.api#enumValue" => "ERRORED"}))
    TestGridSessions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TestGridSession)
    TestGridVpcConfig.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: 'securityGroupIds', traits: {"smithy.api#documentation" => "<p>A list of VPC security group IDs in your Amazon VPC.</p>", "smithy.api#required" => {}}))
    TestGridVpcConfig.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'subnetIds', traits: {"smithy.api#documentation" => "<p>A list of VPC subnet IDs in your Amazon VPC.</p>", "smithy.api#required" => {}}))
    TestGridVpcConfig.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'vpcId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon VPC.</p>", "smithy.api#required" => {}}))
    TestGridVpcConfig.type = Types::TestGridVpcConfig
    TestParameters.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    TestParameters.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    TestType.add_member(:builtin_fuzz, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BUILTIN_FUZZ', traits: {"smithy.api#enumValue" => "BUILTIN_FUZZ"}))
    TestType.add_member(:appium_java_junit, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_JAVA_JUNIT', traits: {"smithy.api#enumValue" => "APPIUM_JAVA_JUNIT"}))
    TestType.add_member(:appium_java_testng, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_JAVA_TESTNG', traits: {"smithy.api#enumValue" => "APPIUM_JAVA_TESTNG"}))
    TestType.add_member(:appium_python, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_PYTHON', traits: {"smithy.api#enumValue" => "APPIUM_PYTHON"}))
    TestType.add_member(:appium_node, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_NODE', traits: {"smithy.api#enumValue" => "APPIUM_NODE"}))
    TestType.add_member(:appium_ruby, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_RUBY', traits: {"smithy.api#enumValue" => "APPIUM_RUBY"}))
    TestType.add_member(:appium_web_java_junit, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_WEB_JAVA_JUNIT', traits: {"smithy.api#enumValue" => "APPIUM_WEB_JAVA_JUNIT"}))
    TestType.add_member(:appium_web_java_testng, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_WEB_JAVA_TESTNG', traits: {"smithy.api#enumValue" => "APPIUM_WEB_JAVA_TESTNG"}))
    TestType.add_member(:appium_web_python, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_WEB_PYTHON', traits: {"smithy.api#enumValue" => "APPIUM_WEB_PYTHON"}))
    TestType.add_member(:appium_web_node, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_WEB_NODE', traits: {"smithy.api#enumValue" => "APPIUM_WEB_NODE"}))
    TestType.add_member(:appium_web_ruby, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_WEB_RUBY', traits: {"smithy.api#enumValue" => "APPIUM_WEB_RUBY"}))
    TestType.add_member(:instrumentation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTRUMENTATION', traits: {"smithy.api#enumValue" => "INSTRUMENTATION"}))
    TestType.add_member(:xctest, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'XCTEST', traits: {"smithy.api#enumValue" => "XCTEST"}))
    TestType.add_member(:xctest_ui, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'XCTEST_UI', traits: {"smithy.api#enumValue" => "XCTEST_UI"}))
    Tests.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Test)
    TooManyTagsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    TooManyTagsException.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceName'))
    TooManyTagsException.type = Types::TooManyTagsException
    TrialMinutes.add_member(:total, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'total', traits: {"smithy.api#documentation" => "<p>The total number of free trial minutes that the account started with.</p>"}))
    TrialMinutes.add_member(:remaining, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'remaining', traits: {"smithy.api#documentation" => "<p>The number of free trial minutes remaining in the account.</p>"}))
    TrialMinutes.type = Types::TrialMinutes
    UniqueProblem.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A message about the unique problems' result.</p>"}))
    UniqueProblem.add_member(:problems, Smithy::Schema::Shapes::ShapeRef.new(shape: Problems, location_name: 'problems', traits: {"smithy.api#documentation" => "<p>Information about the problems.</p>"}))
    UniqueProblem.type = Types::UniqueProblem
    UniqueProblems.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UniqueProblem)
    UniqueProblemsByExecutionResultMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionResult)
    UniqueProblemsByExecutionResultMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: UniqueProblems)
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFarmArn, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource or resources from which to delete tags. You can associate\n            tags with the following Device Farm resources: <code>PROJECT</code>, <code>RUN</code>,\n                <code>NETWORK_PROFILE</code>, <code>INSTANCE_PROFILE</code>, <code>DEVICE_INSTANCE</code>,\n                <code>SESSION</code>, <code>DEVICE_POOL</code>, <code>DEVICE</code>, and\n            <code>VPCE_CONFIGURATION</code>.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The keys of the tags to be removed.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateDeviceInstanceRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the device instance.</p>", "smithy.api#required" => {}}))
    UpdateDeviceInstanceRequest.add_member(:profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'profileArn', traits: {"smithy.api#documentation" => "<p>The ARN of the profile that you want to associate with the device instance.</p>"}))
    UpdateDeviceInstanceRequest.add_member(:labels, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceLabels, location_name: 'labels', traits: {"smithy.api#documentation" => "<p>An array of strings that you want to associate with the device instance.</p>"}))
    UpdateDeviceInstanceRequest.type = Types::UpdateDeviceInstanceRequest
    UpdateDeviceInstanceResult.add_member(:device_instance, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceInstance, location_name: 'deviceInstance', traits: {"smithy.api#documentation" => "<p>An object that contains information about your device instance.</p>"}))
    UpdateDeviceInstanceResult.type = Types::UpdateDeviceInstanceResult
    UpdateDevicePoolRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Device Farm device pool to update.</p>", "smithy.api#required" => {}}))
    UpdateDevicePoolRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A string that represents the name of the device pool to update.</p>"}))
    UpdateDevicePoolRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the device pool to update.</p>"}))
    UpdateDevicePoolRequest.add_member(:rules, Smithy::Schema::Shapes::ShapeRef.new(shape: Rules, location_name: 'rules', traits: {"smithy.api#documentation" => "<p>Represents the rules to modify for the device pool. Updating rules is optional. If you update rules for\n            your request, the update replaces the existing rules.</p>"}))
    UpdateDevicePoolRequest.add_member(:max_devices, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxDevices', traits: {"smithy.api#documentation" => "<p>The number of devices that Device Farm can add to your device pool. Device Farm adds\n            devices that are available and that meet the criteria that you assign for the\n                <code>rules</code> parameter. Depending on how many devices meet these constraints,\n            your device pool might contain fewer devices than the value for this parameter.</p>\n        <p>By specifying the maximum number of devices, you can control the costs that you incur\n            by running tests.</p>\n        <p>If you use this parameter in your request, you cannot use the\n                <code>clearMaxDevices</code> parameter in the same request.</p>"}))
    UpdateDevicePoolRequest.add_member(:clear_max_devices, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'clearMaxDevices', traits: {"smithy.api#documentation" => "<p>Sets whether the <code>maxDevices</code> parameter applies to your device pool. If you set this parameter\n            to <code>true</code>, the <code>maxDevices</code> parameter does not apply, and Device Farm does not limit\n            the number of devices that it adds to your device pool. In this case, Device Farm adds all available devices\n            that meet the criteria specified in the <code>rules</code> parameter.</p>\n        <p>If you use this parameter in your request, you cannot use the <code>maxDevices</code>\n            parameter in the same request.</p>"}))
    UpdateDevicePoolRequest.type = Types::UpdateDevicePoolRequest
    UpdateDevicePoolResult.add_member(:device_pool, Smithy::Schema::Shapes::ShapeRef.new(shape: DevicePool, location_name: 'devicePool', traits: {"smithy.api#documentation" => "<p>The device pool you just updated.</p>"}))
    UpdateDevicePoolResult.type = Types::UpdateDevicePoolResult
    UpdateInstanceProfileRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the instance profile.</p>", "smithy.api#required" => {}}))
    UpdateInstanceProfileRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The updated name for your instance profile.</p>"}))
    UpdateInstanceProfileRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The updated description for your instance profile.</p>"}))
    UpdateInstanceProfileRequest.add_member(:package_cleanup, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'packageCleanup', traits: {"smithy.api#documentation" => "<p>The updated choice for whether you want to specify package cleanup. The default value\n            is <code>false</code> for private devices.</p>"}))
    UpdateInstanceProfileRequest.add_member(:exclude_app_packages_from_cleanup, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageIds, location_name: 'excludeAppPackagesFromCleanup', traits: {"smithy.api#documentation" => "<p>An array of strings that specifies the list of app packages that should not be cleaned up from the device\n            after a test run is over.</p>\n        <p>The list of packages is only considered if you set <code>packageCleanup</code> to\n                <code>true</code>.</p>"}))
    UpdateInstanceProfileRequest.add_member(:reboot_after_use, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'rebootAfterUse', traits: {"smithy.api#documentation" => "<p>The updated choice for whether you want to reboot the device after use. The default\n            value is <code>true</code>.</p>"}))
    UpdateInstanceProfileRequest.type = Types::UpdateInstanceProfileRequest
    UpdateInstanceProfileResult.add_member(:instance_profile, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceProfile, location_name: 'instanceProfile', traits: {"smithy.api#documentation" => "<p>An object that contains information about your instance profile.</p>"}))
    UpdateInstanceProfileResult.type = Types::UpdateInstanceProfileResult
    UpdateNetworkProfileRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the project for which you want to update network\n            profile settings.</p>", "smithy.api#required" => {}}))
    UpdateNetworkProfileRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the network profile about which you are returning\n            information.</p>"}))
    UpdateNetworkProfileRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the network profile about which you are returning\n            information.</p>"}))
    UpdateNetworkProfileRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkProfileType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of network profile to return information about. Valid values are listed here.</p>"}))
    UpdateNetworkProfileRequest.add_member(:uplink_bandwidth_bits, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'uplinkBandwidthBits', traits: {"smithy.api#documentation" => "<p>The data throughput rate in bits per second, as an integer from 0 to\n            104857600.</p>"}))
    UpdateNetworkProfileRequest.add_member(:downlink_bandwidth_bits, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'downlinkBandwidthBits', traits: {"smithy.api#documentation" => "<p>The data throughput rate in bits per second, as an integer from 0 to\n            104857600.</p>"}))
    UpdateNetworkProfileRequest.add_member(:uplink_delay_ms, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'uplinkDelayMs', traits: {"smithy.api#documentation" => "<p>Delay time for all packets to destination in milliseconds as an integer from 0 to\n            2000.</p>"}))
    UpdateNetworkProfileRequest.add_member(:downlink_delay_ms, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'downlinkDelayMs', traits: {"smithy.api#documentation" => "<p>Delay time for all packets to destination in milliseconds as an integer from 0 to\n            2000.</p>"}))
    UpdateNetworkProfileRequest.add_member(:uplink_jitter_ms, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'uplinkJitterMs', traits: {"smithy.api#documentation" => "<p>Time variation in the delay of received packets in milliseconds as an integer from\n            0 to 2000.</p>"}))
    UpdateNetworkProfileRequest.add_member(:downlink_jitter_ms, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'downlinkJitterMs', traits: {"smithy.api#documentation" => "<p>Time variation in the delay of received packets in milliseconds as an integer from\n            0 to 2000.</p>"}))
    UpdateNetworkProfileRequest.add_member(:uplink_loss_percent, Smithy::Schema::Shapes::ShapeRef.new(shape: PercentInteger, location_name: 'uplinkLossPercent', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Proportion of transmitted packets that fail to arrive from 0 to 100\n            percent.</p>"}))
    UpdateNetworkProfileRequest.add_member(:downlink_loss_percent, Smithy::Schema::Shapes::ShapeRef.new(shape: PercentInteger, location_name: 'downlinkLossPercent', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Proportion of received packets that fail to arrive from 0 to 100 percent.</p>"}))
    UpdateNetworkProfileRequest.type = Types::UpdateNetworkProfileRequest
    UpdateNetworkProfileResult.add_member(:network_profile, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkProfile, location_name: 'networkProfile', traits: {"smithy.api#documentation" => "<p>A list of the available network profiles.</p>"}))
    UpdateNetworkProfileResult.type = Types::UpdateNetworkProfileResult
    UpdateProjectRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the project whose name to update.</p>", "smithy.api#required" => {}}))
    UpdateProjectRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A string that represents the new name of the project that you are updating.</p>"}))
    UpdateProjectRequest.add_member(:default_job_timeout_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTimeoutMinutes, location_name: 'defaultJobTimeoutMinutes', traits: {"smithy.api#documentation" => "<p>The number of minutes a test run in the project executes before it times out.</p>"}))
    UpdateProjectRequest.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: 'vpcConfig', traits: {"smithy.api#documentation" => "<p>The VPC security groups and subnets that are attached to a project.</p>"}))
    UpdateProjectRequest.type = Types::UpdateProjectRequest
    UpdateProjectResult.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: Project, location_name: 'project', traits: {"smithy.api#documentation" => "<p>The project to update.</p>"}))
    UpdateProjectResult.type = Types::UpdateProjectResult
    UpdateTestGridProjectRequest.add_member(:project_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFarmArn, location_name: 'projectArn', traits: {"smithy.api#documentation" => "<p>ARN of the project to update.</p>", "smithy.api#required" => {}}))
    UpdateTestGridProjectRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Human-readable name for the project.</p>"}))
    UpdateTestGridProjectRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>Human-readable description for the project.</p>"}))
    UpdateTestGridProjectRequest.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: TestGridVpcConfig, location_name: 'vpcConfig', traits: {"smithy.api#documentation" => "<p>The VPC security groups and subnets that are attached to a project.</p>"}))
    UpdateTestGridProjectRequest.type = Types::UpdateTestGridProjectRequest
    UpdateTestGridProjectResult.add_member(:test_grid_project, Smithy::Schema::Shapes::ShapeRef.new(shape: TestGridProject, location_name: 'testGridProject', traits: {"smithy.api#documentation" => "<p>The project, including updated information.</p>"}))
    UpdateTestGridProjectResult.type = Types::UpdateTestGridProjectResult
    UpdateUploadRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the uploaded test spec.</p>", "smithy.api#required" => {}}))
    UpdateUploadRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The upload's test spec file name. The name must not contain any forward slashes (/). The test spec file\n            name must end with the <code>.yaml</code> or <code>.yml</code> file extension.</p>"}))
    UpdateUploadRequest.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: 'contentType', traits: {"smithy.api#documentation" => "<p>The upload's content type (for example, <code>application/x-yaml</code>).</p>"}))
    UpdateUploadRequest.add_member(:edit_content, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'editContent', traits: {"smithy.api#documentation" => "<p>Set to true if the YAML file has changed and must be updated. Otherwise, set to false.</p>"}))
    UpdateUploadRequest.type = Types::UpdateUploadRequest
    UpdateUploadResult.add_member(:upload, Smithy::Schema::Shapes::ShapeRef.new(shape: Upload, location_name: 'upload', traits: {"smithy.api#documentation" => "<p>A test spec uploaded to Device Farm.</p>"}))
    UpdateUploadResult.type = Types::UpdateUploadResult
    UpdateVPCEConfigurationRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the VPC endpoint configuration you want to\n            update.</p>", "smithy.api#required" => {}}))
    UpdateVPCEConfigurationRequest.add_member(:vpce_configuration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VPCEConfigurationName, location_name: 'vpceConfigurationName', traits: {"smithy.api#documentation" => "<p>The friendly name you give to your VPC endpoint configuration to manage your configurations more\n            easily.</p>"}))
    UpdateVPCEConfigurationRequest.add_member(:vpce_service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VPCEServiceName, location_name: 'vpceServiceName', traits: {"smithy.api#documentation" => "<p>The name of the VPC endpoint service running in your AWS account that you want Device Farm to test.</p>"}))
    UpdateVPCEConfigurationRequest.add_member(:service_dns_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceDnsName, location_name: 'serviceDnsName', traits: {"smithy.api#documentation" => "<p>The DNS (domain) name used to connect to your private service in your VPC. The DNS name must not already\n            be in use on the internet.</p>"}))
    UpdateVPCEConfigurationRequest.add_member(:vpce_configuration_description, Smithy::Schema::Shapes::ShapeRef.new(shape: VPCEConfigurationDescription, location_name: 'vpceConfigurationDescription', traits: {"smithy.api#documentation" => "<p>An optional description that provides details about your VPC endpoint configuration.</p>"}))
    UpdateVPCEConfigurationRequest.type = Types::UpdateVPCEConfigurationRequest
    UpdateVPCEConfigurationResult.add_member(:vpce_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: VPCEConfiguration, location_name: 'vpceConfiguration', traits: {"smithy.api#documentation" => "<p>An object that contains information about your VPC endpoint configuration.</p>"}))
    UpdateVPCEConfigurationResult.type = Types::UpdateVPCEConfigurationResult
    Upload.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The upload's ARN.</p>"}))
    Upload.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The upload's file name.</p>"}))
    Upload.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'created', traits: {"smithy.api#documentation" => "<p>When the upload was created.</p>"}))
    Upload.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: UploadType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The upload's type.</p>\n        <p>Must be one of the following values:</p>\n        <ul>\n            <li>\n                <p>ANDROID_APP</p>\n            </li>\n            <li>\n                <p>IOS_APP</p>\n            </li>\n            <li>\n                <p>WEB_APP</p>\n            </li>\n            <li>\n                <p>EXTERNAL_DATA</p>\n            </li>\n            <li>\n                <p>APPIUM_JAVA_JUNIT_TEST_PACKAGE</p>\n            </li>\n            <li>\n                <p>APPIUM_JAVA_TESTNG_TEST_PACKAGE</p>\n            </li>\n            <li>\n                <p>APPIUM_PYTHON_TEST_PACKAGE</p>\n            </li>\n            <li>\n                <p>APPIUM_NODE_TEST_PACKAGE</p>\n            </li>\n            <li>\n                <p>APPIUM_RUBY_TEST_PACKAGE</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_PYTHON_TEST_PACKAGE</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_NODE_TEST_PACKAGE</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_RUBY_TEST_PACKAGE</p>\n            </li>\n            <li>\n                <p>INSTRUMENTATION_TEST_PACKAGE</p>\n            </li>\n            <li>\n                <p>XCTEST_TEST_PACKAGE</p>\n            </li>\n            <li>\n                <p>XCTEST_UI_TEST_PACKAGE</p>\n            </li>\n            <li>\n                <p>APPIUM_JAVA_JUNIT_TEST_SPEC</p>\n            </li>\n            <li>\n                <p>APPIUM_JAVA_TESTNG_TEST_SPEC</p>\n            </li>\n            <li>\n                <p>APPIUM_PYTHON_TEST_SPEC</p>\n            </li>\n            <li>\n                <p>APPIUM_NODE_TEST_SPEC</p>\n            </li>\n            <li>\n                <p>APPIUM_RUBY_TEST_SPEC</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_JAVA_JUNIT_TEST_SPEC</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_JAVA_TESTNG_TEST_SPEC</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_PYTHON_TEST_SPEC</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_NODE_TEST_SPEC</p>\n            </li>\n            <li>\n                <p>APPIUM_WEB_RUBY_TEST_SPEC</p>\n            </li>\n            <li>\n                <p>INSTRUMENTATION_TEST_SPEC</p>\n            </li>\n            <li>\n                <p>XCTEST_UI_TEST_SPEC</p>\n            </li>\n         </ul>"}))
    Upload.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: UploadStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The upload's status.</p>\n        <p>Must be one of the following values:</p>\n        <ul>\n            <li>\n                <p>FAILED</p>\n            </li>\n            <li>\n                <p>INITIALIZED</p>\n            </li>\n            <li>\n                <p>PROCESSING</p>\n            </li>\n            <li>\n                <p>SUCCEEDED</p>\n            </li>\n         </ul>"}))
    Upload.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveURL, location_name: 'url', traits: {"smithy.api#documentation" => "<p>The presigned Amazon S3 URL that was used to store a file using a PUT request.</p>"}))
    Upload.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: Metadata, location_name: 'metadata', traits: {"smithy.api#documentation" => "<p>The upload's metadata. For example, for Android, this contains information that is\n            parsed from the manifest and is displayed in the AWS Device Farm console after the\n            associated app is uploaded.</p>"}))
    Upload.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: 'contentType', traits: {"smithy.api#documentation" => "<p>The upload's content type (for example, <code>application/octet-stream</code>).</p>"}))
    Upload.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A message about the upload's result.</p>"}))
    Upload.add_member(:category, Smithy::Schema::Shapes::ShapeRef.new(shape: UploadCategory, location_name: 'category', traits: {"smithy.api#documentation" => "<p>The upload's category. Allowed values include:</p>\n        <ul>\n            <li>\n                <p>CURATED: An upload managed by AWS Device Farm.</p>\n            </li>\n            <li>\n                <p>PRIVATE: An upload managed by the AWS Device Farm customer.</p>\n            </li>\n         </ul>"}))
    Upload.type = Types::Upload
    UploadCategory.add_member(:curated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CURATED', traits: {"smithy.api#enumValue" => "CURATED"}))
    UploadCategory.add_member(:private, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRIVATE', traits: {"smithy.api#enumValue" => "PRIVATE"}))
    UploadStatus.add_member(:initialized, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INITIALIZED', traits: {"smithy.api#enumValue" => "INITIALIZED"}))
    UploadStatus.add_member(:processing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROCESSING', traits: {"smithy.api#enumValue" => "PROCESSING"}))
    UploadStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    UploadStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    UploadType.add_member(:android_app, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANDROID_APP', traits: {"smithy.api#enumValue" => "ANDROID_APP"}))
    UploadType.add_member(:ios_app, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IOS_APP', traits: {"smithy.api#enumValue" => "IOS_APP"}))
    UploadType.add_member(:web_app, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEB_APP', traits: {"smithy.api#enumValue" => "WEB_APP"}))
    UploadType.add_member(:external_data, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXTERNAL_DATA', traits: {"smithy.api#enumValue" => "EXTERNAL_DATA"}))
    UploadType.add_member(:appium_java_junit_test_package, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_JAVA_JUNIT_TEST_PACKAGE', traits: {"smithy.api#enumValue" => "APPIUM_JAVA_JUNIT_TEST_PACKAGE"}))
    UploadType.add_member(:appium_java_testng_test_package, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_JAVA_TESTNG_TEST_PACKAGE', traits: {"smithy.api#enumValue" => "APPIUM_JAVA_TESTNG_TEST_PACKAGE"}))
    UploadType.add_member(:appium_python_test_package, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_PYTHON_TEST_PACKAGE', traits: {"smithy.api#enumValue" => "APPIUM_PYTHON_TEST_PACKAGE"}))
    UploadType.add_member(:appium_node_test_package, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_NODE_TEST_PACKAGE', traits: {"smithy.api#enumValue" => "APPIUM_NODE_TEST_PACKAGE"}))
    UploadType.add_member(:appium_ruby_test_package, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_RUBY_TEST_PACKAGE', traits: {"smithy.api#enumValue" => "APPIUM_RUBY_TEST_PACKAGE"}))
    UploadType.add_member(:appium_web_java_junit_test_package, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE', traits: {"smithy.api#enumValue" => "APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE"}))
    UploadType.add_member(:appium_web_java_testng_test_package, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE', traits: {"smithy.api#enumValue" => "APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE"}))
    UploadType.add_member(:appium_web_python_test_package, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_WEB_PYTHON_TEST_PACKAGE', traits: {"smithy.api#enumValue" => "APPIUM_WEB_PYTHON_TEST_PACKAGE"}))
    UploadType.add_member(:appium_web_node_test_package, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_WEB_NODE_TEST_PACKAGE', traits: {"smithy.api#enumValue" => "APPIUM_WEB_NODE_TEST_PACKAGE"}))
    UploadType.add_member(:appium_web_ruby_test_package, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_WEB_RUBY_TEST_PACKAGE', traits: {"smithy.api#enumValue" => "APPIUM_WEB_RUBY_TEST_PACKAGE"}))
    UploadType.add_member(:calabash_test_package, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CALABASH_TEST_PACKAGE', traits: {"smithy.api#enumValue" => "CALABASH_TEST_PACKAGE"}))
    UploadType.add_member(:instrumentation_test_package, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTRUMENTATION_TEST_PACKAGE', traits: {"smithy.api#enumValue" => "INSTRUMENTATION_TEST_PACKAGE"}))
    UploadType.add_member(:uiautomation_test_package, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UIAUTOMATION_TEST_PACKAGE', traits: {"smithy.api#enumValue" => "UIAUTOMATION_TEST_PACKAGE"}))
    UploadType.add_member(:uiautomator_test_package, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UIAUTOMATOR_TEST_PACKAGE', traits: {"smithy.api#enumValue" => "UIAUTOMATOR_TEST_PACKAGE"}))
    UploadType.add_member(:xctest_test_package, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'XCTEST_TEST_PACKAGE', traits: {"smithy.api#enumValue" => "XCTEST_TEST_PACKAGE"}))
    UploadType.add_member(:xctest_ui_test_package, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'XCTEST_UI_TEST_PACKAGE', traits: {"smithy.api#enumValue" => "XCTEST_UI_TEST_PACKAGE"}))
    UploadType.add_member(:appium_java_junit_test_spec, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_JAVA_JUNIT_TEST_SPEC', traits: {"smithy.api#enumValue" => "APPIUM_JAVA_JUNIT_TEST_SPEC"}))
    UploadType.add_member(:appium_java_testng_test_spec, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_JAVA_TESTNG_TEST_SPEC', traits: {"smithy.api#enumValue" => "APPIUM_JAVA_TESTNG_TEST_SPEC"}))
    UploadType.add_member(:appium_python_test_spec, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_PYTHON_TEST_SPEC', traits: {"smithy.api#enumValue" => "APPIUM_PYTHON_TEST_SPEC"}))
    UploadType.add_member(:appium_node_test_spec, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_NODE_TEST_SPEC', traits: {"smithy.api#enumValue" => "APPIUM_NODE_TEST_SPEC"}))
    UploadType.add_member(:appium_ruby_test_spec, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_RUBY_TEST_SPEC', traits: {"smithy.api#enumValue" => "APPIUM_RUBY_TEST_SPEC"}))
    UploadType.add_member(:appium_web_java_junit_test_spec, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_WEB_JAVA_JUNIT_TEST_SPEC', traits: {"smithy.api#enumValue" => "APPIUM_WEB_JAVA_JUNIT_TEST_SPEC"}))
    UploadType.add_member(:appium_web_java_testng_test_spec, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_WEB_JAVA_TESTNG_TEST_SPEC', traits: {"smithy.api#enumValue" => "APPIUM_WEB_JAVA_TESTNG_TEST_SPEC"}))
    UploadType.add_member(:appium_web_python_test_spec, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_WEB_PYTHON_TEST_SPEC', traits: {"smithy.api#enumValue" => "APPIUM_WEB_PYTHON_TEST_SPEC"}))
    UploadType.add_member(:appium_web_node_test_spec, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_WEB_NODE_TEST_SPEC', traits: {"smithy.api#enumValue" => "APPIUM_WEB_NODE_TEST_SPEC"}))
    UploadType.add_member(:appium_web_ruby_test_spec, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_WEB_RUBY_TEST_SPEC', traits: {"smithy.api#enumValue" => "APPIUM_WEB_RUBY_TEST_SPEC"}))
    UploadType.add_member(:instrumentation_test_spec, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTRUMENTATION_TEST_SPEC', traits: {"smithy.api#enumValue" => "INSTRUMENTATION_TEST_SPEC"}))
    UploadType.add_member(:xctest_ui_test_spec, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'XCTEST_UI_TEST_SPEC', traits: {"smithy.api#enumValue" => "XCTEST_UI_TEST_SPEC"}))
    Uploads.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Upload)
    VPCEConfiguration.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the VPC endpoint configuration.</p>"}))
    VPCEConfiguration.add_member(:vpce_configuration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VPCEConfigurationName, location_name: 'vpceConfigurationName', traits: {"smithy.api#documentation" => "<p>The friendly name you give to your VPC endpoint configuration to manage your configurations more\n            easily.</p>"}))
    VPCEConfiguration.add_member(:vpce_service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VPCEServiceName, location_name: 'vpceServiceName', traits: {"smithy.api#documentation" => "<p>The name of the VPC endpoint service running in your AWS account that you want Device Farm to test.</p>"}))
    VPCEConfiguration.add_member(:service_dns_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceDnsName, location_name: 'serviceDnsName', traits: {"smithy.api#documentation" => "<p>The DNS name that maps to the private IP address of the service you want to\n            access.</p>"}))
    VPCEConfiguration.add_member(:vpce_configuration_description, Smithy::Schema::Shapes::ShapeRef.new(shape: VPCEConfigurationDescription, location_name: 'vpceConfigurationDescription', traits: {"smithy.api#documentation" => "<p>An optional description that provides details about your VPC endpoint configuration.</p>"}))
    VPCEConfiguration.type = Types::VPCEConfiguration
    VPCEConfigurations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VPCEConfiguration)
    VpcConfig.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupIds, location_name: 'securityGroupIds', traits: {"smithy.api#documentation" => "<p>An array of one or more security groups IDs in your Amazon VPC.</p>", "smithy.api#required" => {}}))
    VpcConfig.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSubnetIds, location_name: 'subnetIds', traits: {"smithy.api#documentation" => "<p>An array of one or more subnet IDs in your Amazon VPC.</p>", "smithy.api#required" => {}}))
    VpcConfig.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'vpcId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon VPC.</p>", "smithy.api#required" => {}}))
    VpcConfig.type = Types::VpcConfig
    VpcSecurityGroupIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupId)
    VpcSubnetIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId)

    DeviceFarm20150623 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.devicefarm#DeviceFarm_20150623"
      service.name = "DeviceFarm20150623"
      service.version = "2015-06-23"
      service.traits = {"aws.api#service" => {"sdkId" => "Device Farm", "arnNamespace" => "devicefarm", "cloudFormationName" => "DeviceFarm", "cloudTrailEventSource" => "devicefarm.amazonaws.com", "docId" => "devicefarm-2015-06-23", "endpointPrefix" => "devicefarm"}, "aws.auth#sigv4" => {"name" => "devicefarm"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Device Farm", "smithy.api#xmlNamespace" => {"uri" => "http://devicefarm.amazonaws.com/doc/2015-06-23/"}}
      service.add_operation(:create_device_pool, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#CreateDevicePool"
        operation.name = "CreateDevicePool"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDevicePoolRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDevicePoolResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:create_instance_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#CreateInstanceProfile"
        operation.name = "CreateInstanceProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInstanceProfileRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInstanceProfileResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:create_network_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#CreateNetworkProfile"
        operation.name = "CreateNetworkProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateNetworkProfileRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateNetworkProfileResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:create_project, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#CreateProject"
        operation.name = "CreateProject"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProjectRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProjectResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagOperationException)
        operation.traits = {}
      end)
      service.add_operation(:create_remote_access_session, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#CreateRemoteAccessSession"
        operation.name = "CreateRemoteAccessSession"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRemoteAccessSessionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRemoteAccessSessionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:create_test_grid_project, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#CreateTestGridProject"
        operation.name = "CreateTestGridProject"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTestGridProjectRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTestGridProjectResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:create_test_grid_url, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#CreateTestGridUrl"
        operation.name = "CreateTestGridUrl"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTestGridUrlRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTestGridUrlResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_upload, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#CreateUpload"
        operation.name = "CreateUpload"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUploadRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUploadResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:create_vpce_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#CreateVPCEConfiguration"
        operation.name = "CreateVPCEConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVPCEConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVPCEConfigurationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:delete_device_pool, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#DeleteDevicePool"
        operation.name = "DeleteDevicePool"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDevicePoolRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDevicePoolResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:delete_instance_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#DeleteInstanceProfile"
        operation.name = "DeleteInstanceProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInstanceProfileRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInstanceProfileResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:delete_network_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#DeleteNetworkProfile"
        operation.name = "DeleteNetworkProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteNetworkProfileRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteNetworkProfileResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:delete_project, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#DeleteProject"
        operation.name = "DeleteProject"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProjectRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProjectResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:delete_remote_access_session, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#DeleteRemoteAccessSession"
        operation.name = "DeleteRemoteAccessSession"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRemoteAccessSessionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRemoteAccessSessionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:delete_run, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#DeleteRun"
        operation.name = "DeleteRun"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRunRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRunResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:delete_test_grid_project, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#DeleteTestGridProject"
        operation.name = "DeleteTestGridProject"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTestGridProjectRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTestGridProjectResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CannotDeleteException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_upload, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#DeleteUpload"
        operation.name = "DeleteUpload"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUploadRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUploadResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:delete_vpce_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#DeleteVPCEConfiguration"
        operation.name = "DeleteVPCEConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVPCEConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVPCEConfigurationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:get_account_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#GetAccountSettings"
        operation.name = "GetAccountSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountSettingsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:get_device, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#GetDevice"
        operation.name = "GetDevice"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeviceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeviceResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:get_device_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#GetDeviceInstance"
        operation.name = "GetDeviceInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeviceInstanceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeviceInstanceResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:get_device_pool, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#GetDevicePool"
        operation.name = "GetDevicePool"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDevicePoolRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDevicePoolResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:get_device_pool_compatibility, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#GetDevicePoolCompatibility"
        operation.name = "GetDevicePoolCompatibility"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDevicePoolCompatibilityRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDevicePoolCompatibilityResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:get_instance_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#GetInstanceProfile"
        operation.name = "GetInstanceProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetInstanceProfileRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetInstanceProfileResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:get_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#GetJob"
        operation.name = "GetJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetJobResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:get_network_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#GetNetworkProfile"
        operation.name = "GetNetworkProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetNetworkProfileRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetNetworkProfileResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:get_offering_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#GetOfferingStatus"
        operation.name = "GetOfferingStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetOfferingStatusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetOfferingStatusResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotEligibleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetOfferingStatus.new
      end)
      service.add_operation(:get_project, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#GetProject"
        operation.name = "GetProject"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetProjectRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetProjectResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:get_remote_access_session, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#GetRemoteAccessSession"
        operation.name = "GetRemoteAccessSession"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRemoteAccessSessionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRemoteAccessSessionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:get_run, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#GetRun"
        operation.name = "GetRun"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRunRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRunResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:get_suite, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#GetSuite"
        operation.name = "GetSuite"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSuiteRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSuiteResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:get_test, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#GetTest"
        operation.name = "GetTest"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTestRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTestResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:get_test_grid_project, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#GetTestGridProject"
        operation.name = "GetTestGridProject"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTestGridProjectRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTestGridProjectResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_test_grid_session, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#GetTestGridSession"
        operation.name = "GetTestGridSession"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTestGridSessionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTestGridSessionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_upload, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#GetUpload"
        operation.name = "GetUpload"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetUploadRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetUploadResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:get_vpce_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#GetVPCEConfiguration"
        operation.name = "GetVPCEConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVPCEConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVPCEConfigurationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:install_to_remote_access_session, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#InstallToRemoteAccessSession"
        operation.name = "InstallToRemoteAccessSession"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: InstallToRemoteAccessSessionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: InstallToRemoteAccessSessionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:list_artifacts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListArtifacts"
        operation.name = "ListArtifacts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListArtifactsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListArtifactsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListArtifacts.new
      end)
      service.add_operation(:list_device_instances, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListDeviceInstances"
        operation.name = "ListDeviceInstances"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeviceInstancesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeviceInstancesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:list_device_pools, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListDevicePools"
        operation.name = "ListDevicePools"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDevicePoolsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDevicePoolsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListDevicePools.new
      end)
      service.add_operation(:list_devices, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListDevices"
        operation.name = "ListDevices"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDevicesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDevicesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListDevices.new
      end)
      service.add_operation(:list_instance_profiles, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListInstanceProfiles"
        operation.name = "ListInstanceProfiles"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInstanceProfilesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInstanceProfilesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:list_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListJobs"
        operation.name = "ListJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListJobs.new
      end)
      service.add_operation(:list_network_profiles, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListNetworkProfiles"
        operation.name = "ListNetworkProfiles"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListNetworkProfilesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListNetworkProfilesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:list_offering_promotions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListOfferingPromotions"
        operation.name = "ListOfferingPromotions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfferingPromotionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfferingPromotionsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotEligibleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:list_offering_transactions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListOfferingTransactions"
        operation.name = "ListOfferingTransactions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfferingTransactionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfferingTransactionsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotEligibleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListOfferingTransactions.new
      end)
      service.add_operation(:list_offerings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListOfferings"
        operation.name = "ListOfferings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfferingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfferingsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotEligibleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListOfferings.new
      end)
      service.add_operation(:list_projects, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListProjects"
        operation.name = "ListProjects"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProjectsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProjectsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListProjects.new
      end)
      service.add_operation(:list_remote_access_sessions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListRemoteAccessSessions"
        operation.name = "ListRemoteAccessSessions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRemoteAccessSessionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRemoteAccessSessionsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:list_runs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListRuns"
        operation.name = "ListRuns"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRunsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRunsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListRuns.new
      end)
      service.add_operation(:list_samples, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListSamples"
        operation.name = "ListSamples"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSamplesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSamplesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListSamples.new
      end)
      service.add_operation(:list_suites, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListSuites"
        operation.name = "ListSuites"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSuitesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSuitesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListSuites.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagOperationException)
        operation.traits = {}
      end)
      service.add_operation(:list_test_grid_projects, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListTestGridProjects"
        operation.name = "ListTestGridProjects"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTestGridProjectsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTestGridProjectsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTestGridProjects.new
      end)
      service.add_operation(:list_test_grid_session_actions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListTestGridSessionActions"
        operation.name = "ListTestGridSessionActions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTestGridSessionActionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTestGridSessionActionsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTestGridSessionActions.new
      end)
      service.add_operation(:list_test_grid_session_artifacts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListTestGridSessionArtifacts"
        operation.name = "ListTestGridSessionArtifacts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTestGridSessionArtifactsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTestGridSessionArtifactsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTestGridSessionArtifacts.new
      end)
      service.add_operation(:list_test_grid_sessions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListTestGridSessions"
        operation.name = "ListTestGridSessions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTestGridSessionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTestGridSessionsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTestGridSessions.new
      end)
      service.add_operation(:list_tests, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListTests"
        operation.name = "ListTests"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTestsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTestsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTests.new
      end)
      service.add_operation(:list_unique_problems, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListUniqueProblems"
        operation.name = "ListUniqueProblems"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListUniqueProblemsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListUniqueProblemsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListUniqueProblems.new
      end)
      service.add_operation(:list_uploads, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListUploads"
        operation.name = "ListUploads"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListUploadsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListUploadsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListUploads.new
      end)
      service.add_operation(:list_vpce_configurations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListVPCEConfigurations"
        operation.name = "ListVPCEConfigurations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVPCEConfigurationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVPCEConfigurationsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:purchase_offering, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#PurchaseOffering"
        operation.name = "PurchaseOffering"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PurchaseOfferingRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PurchaseOfferingResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotEligibleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:renew_offering, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#RenewOffering"
        operation.name = "RenewOffering"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RenewOfferingRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RenewOfferingResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotEligibleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:schedule_run, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ScheduleRun"
        operation.name = "ScheduleRun"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleRunRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleRunResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:stop_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#StopJob"
        operation.name = "StopJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopJobResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:stop_remote_access_session, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#StopRemoteAccessSession"
        operation.name = "StopRemoteAccessSession"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopRemoteAccessSessionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopRemoteAccessSessionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:stop_run, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#StopRun"
        operation.name = "StopRun"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopRunRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopRunResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagPolicyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagOperationException)
        operation.traits = {}
      end)
      service.add_operation(:update_device_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#UpdateDeviceInstance"
        operation.name = "UpdateDeviceInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDeviceInstanceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDeviceInstanceResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:update_device_pool, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#UpdateDevicePool"
        operation.name = "UpdateDevicePool"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDevicePoolRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDevicePoolResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:update_instance_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#UpdateInstanceProfile"
        operation.name = "UpdateInstanceProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateInstanceProfileRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateInstanceProfileResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:update_network_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#UpdateNetworkProfile"
        operation.name = "UpdateNetworkProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNetworkProfileRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNetworkProfileResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:update_project, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#UpdateProject"
        operation.name = "UpdateProject"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProjectRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProjectResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:update_test_grid_project, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#UpdateTestGridProject"
        operation.name = "UpdateTestGridProject"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTestGridProjectRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTestGridProjectResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_upload, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#UpdateUpload"
        operation.name = "UpdateUpload"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUploadRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUploadResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:update_vpce_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#UpdateVPCEConfiguration"
        operation.name = "UpdateVPCEConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVPCEConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVPCEConfigurationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
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
