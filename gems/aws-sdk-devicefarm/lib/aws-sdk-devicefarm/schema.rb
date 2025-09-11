# frozen_string_literal: true

# This is generated code!

module Aws::DeviceFarm
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AWSAccountNumber = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#AWSAccountNumber', name: 'AWSAccountNumber', traits: {"smithy.api#length" => {"min" => 2, "max" => 16}})
    AccountSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#AccountSettings', name: 'AccountSettings')
    AccountsCleanup = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.devicefarm#AccountsCleanup', name: 'AccountsCleanup')
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#AmazonResourceName', name: 'AmazonResourceName', traits: {"smithy.api#length" => {"min" => 32, "max" => 1011}, "smithy.api#pattern" => "^arn:aws:devicefarm:.+$"})
    AmazonResourceNames = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#AmazonResourceNames', name: 'AmazonResourceNames')
    AndroidPaths = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#AndroidPaths', name: 'AndroidPaths')
    AppPackagesCleanup = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.devicefarm#AppPackagesCleanup', name: 'AppPackagesCleanup')
    ArgumentException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ArgumentException', name: 'ArgumentException', traits: {"smithy.api#error" => "client"})
    Artifact = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#Artifact', name: 'Artifact')
    ArtifactCategory = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#ArtifactCategory', name: 'ArtifactCategory')
    ArtifactType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#ArtifactType', name: 'ArtifactType')
    Artifacts = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#Artifacts', name: 'Artifacts')
    BillingMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#BillingMethod', name: 'BillingMethod')
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.devicefarm#Boolean', name: 'Boolean')
    CPU = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CPU', name: 'CPU')
    CannotDeleteException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CannotDeleteException', name: 'CannotDeleteException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ClientId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#ClientId', name: 'ClientId', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    ContentType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#ContentType', name: 'ContentType', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    Counters = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#Counters', name: 'Counters')
    CreateDevicePoolRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CreateDevicePoolRequest', name: 'CreateDevicePoolRequest')
    CreateDevicePoolResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CreateDevicePoolResult', name: 'CreateDevicePoolResult')
    CreateInstanceProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CreateInstanceProfileRequest', name: 'CreateInstanceProfileRequest')
    CreateInstanceProfileResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CreateInstanceProfileResult', name: 'CreateInstanceProfileResult')
    CreateNetworkProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CreateNetworkProfileRequest', name: 'CreateNetworkProfileRequest')
    CreateNetworkProfileResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CreateNetworkProfileResult', name: 'CreateNetworkProfileResult')
    CreateProjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CreateProjectRequest', name: 'CreateProjectRequest')
    CreateProjectResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CreateProjectResult', name: 'CreateProjectResult')
    CreateRemoteAccessSessionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CreateRemoteAccessSessionConfiguration', name: 'CreateRemoteAccessSessionConfiguration')
    CreateRemoteAccessSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CreateRemoteAccessSessionRequest', name: 'CreateRemoteAccessSessionRequest')
    CreateRemoteAccessSessionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CreateRemoteAccessSessionResult', name: 'CreateRemoteAccessSessionResult')
    CreateTestGridProjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CreateTestGridProjectRequest', name: 'CreateTestGridProjectRequest')
    CreateTestGridProjectResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CreateTestGridProjectResult', name: 'CreateTestGridProjectResult')
    CreateTestGridUrlRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CreateTestGridUrlRequest', name: 'CreateTestGridUrlRequest')
    CreateTestGridUrlResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CreateTestGridUrlResult', name: 'CreateTestGridUrlResult')
    CreateUploadRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CreateUploadRequest', name: 'CreateUploadRequest')
    CreateUploadResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CreateUploadResult', name: 'CreateUploadResult')
    CreateVPCEConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CreateVPCEConfigurationRequest', name: 'CreateVPCEConfigurationRequest')
    CreateVPCEConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CreateVPCEConfigurationResult', name: 'CreateVPCEConfigurationResult')
    CurrencyCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#CurrencyCode', name: 'CurrencyCode')
    CustomerArtifactPaths = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#CustomerArtifactPaths', name: 'CustomerArtifactPaths')
    DateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.devicefarm#DateTime', name: 'DateTime')
    DeleteDevicePoolRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeleteDevicePoolRequest', name: 'DeleteDevicePoolRequest')
    DeleteDevicePoolResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeleteDevicePoolResult', name: 'DeleteDevicePoolResult')
    DeleteInstanceProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeleteInstanceProfileRequest', name: 'DeleteInstanceProfileRequest')
    DeleteInstanceProfileResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeleteInstanceProfileResult', name: 'DeleteInstanceProfileResult')
    DeleteNetworkProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeleteNetworkProfileRequest', name: 'DeleteNetworkProfileRequest')
    DeleteNetworkProfileResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeleteNetworkProfileResult', name: 'DeleteNetworkProfileResult')
    DeleteProjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeleteProjectRequest', name: 'DeleteProjectRequest')
    DeleteProjectResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeleteProjectResult', name: 'DeleteProjectResult')
    DeleteRemoteAccessSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeleteRemoteAccessSessionRequest', name: 'DeleteRemoteAccessSessionRequest')
    DeleteRemoteAccessSessionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeleteRemoteAccessSessionResult', name: 'DeleteRemoteAccessSessionResult')
    DeleteRunRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeleteRunRequest', name: 'DeleteRunRequest')
    DeleteRunResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeleteRunResult', name: 'DeleteRunResult')
    DeleteTestGridProjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeleteTestGridProjectRequest', name: 'DeleteTestGridProjectRequest')
    DeleteTestGridProjectResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeleteTestGridProjectResult', name: 'DeleteTestGridProjectResult')
    DeleteUploadRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeleteUploadRequest', name: 'DeleteUploadRequest')
    DeleteUploadResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeleteUploadResult', name: 'DeleteUploadResult')
    DeleteVPCEConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeleteVPCEConfigurationRequest', name: 'DeleteVPCEConfigurationRequest')
    DeleteVPCEConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeleteVPCEConfigurationResult', name: 'DeleteVPCEConfigurationResult')
    Device = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#Device', name: 'Device')
    DeviceAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#DeviceAttribute', name: 'DeviceAttribute')
    DeviceAvailability = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#DeviceAvailability', name: 'DeviceAvailability')
    DeviceFarmArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#DeviceFarmArn', name: 'DeviceFarmArn', traits: {"smithy.api#length" => {"min" => 32, "max" => 1011}, "smithy.api#pattern" => "^arn:aws:devicefarm:.+$"})
    DeviceFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeviceFilter', name: 'DeviceFilter')
    DeviceFilterAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#DeviceFilterAttribute', name: 'DeviceFilterAttribute')
    DeviceFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#DeviceFilterValues', name: 'DeviceFilterValues')
    DeviceFilters = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#DeviceFilters', name: 'DeviceFilters')
    DeviceFormFactor = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#DeviceFormFactor', name: 'DeviceFormFactor')
    DeviceHostPaths = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#DeviceHostPaths', name: 'DeviceHostPaths')
    DeviceInstance = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeviceInstance', name: 'DeviceInstance')
    DeviceInstances = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#DeviceInstances', name: 'DeviceInstances')
    DeviceMinutes = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeviceMinutes', name: 'DeviceMinutes')
    DevicePlatform = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#DevicePlatform', name: 'DevicePlatform')
    DevicePool = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DevicePool', name: 'DevicePool')
    DevicePoolCompatibilityResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DevicePoolCompatibilityResult', name: 'DevicePoolCompatibilityResult')
    DevicePoolCompatibilityResults = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#DevicePoolCompatibilityResults', name: 'DevicePoolCompatibilityResults')
    DevicePoolType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#DevicePoolType', name: 'DevicePoolType')
    DevicePools = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#DevicePools', name: 'DevicePools')
    DeviceProxy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeviceProxy', name: 'DeviceProxy')
    DeviceProxyHost = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#DeviceProxyHost', name: 'DeviceProxyHost', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^([a-zA-Z0-9])([a-zA-Z0-9-.]+)([a-zA-Z0-9])$"})
    DeviceProxyPort = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.devicefarm#DeviceProxyPort', name: 'DeviceProxyPort', traits: {"smithy.api#range" => {"min" => 1, "max" => 65535}})
    DeviceSelectionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeviceSelectionConfiguration', name: 'DeviceSelectionConfiguration')
    DeviceSelectionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#DeviceSelectionResult', name: 'DeviceSelectionResult')
    Devices = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#Devices', name: 'Devices')
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.devicefarm#Double', name: 'Double')
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#ExceptionMessage', name: 'ExceptionMessage')
    ExecutionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ExecutionConfiguration', name: 'ExecutionConfiguration')
    ExecutionResult = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#ExecutionResult', name: 'ExecutionResult')
    ExecutionResultCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#ExecutionResultCode', name: 'ExecutionResultCode')
    ExecutionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#ExecutionStatus', name: 'ExecutionStatus')
    Filter = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#Filter', name: 'Filter', traits: {"smithy.api#length" => {"min" => 0, "max" => 8192}})
    GetAccountSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetAccountSettingsRequest', name: 'GetAccountSettingsRequest')
    GetAccountSettingsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetAccountSettingsResult', name: 'GetAccountSettingsResult')
    GetDeviceInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetDeviceInstanceRequest', name: 'GetDeviceInstanceRequest')
    GetDeviceInstanceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetDeviceInstanceResult', name: 'GetDeviceInstanceResult')
    GetDevicePoolCompatibilityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetDevicePoolCompatibilityRequest', name: 'GetDevicePoolCompatibilityRequest')
    GetDevicePoolCompatibilityResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetDevicePoolCompatibilityResult', name: 'GetDevicePoolCompatibilityResult')
    GetDevicePoolRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetDevicePoolRequest', name: 'GetDevicePoolRequest')
    GetDevicePoolResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetDevicePoolResult', name: 'GetDevicePoolResult')
    GetDeviceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetDeviceRequest', name: 'GetDeviceRequest')
    GetDeviceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetDeviceResult', name: 'GetDeviceResult')
    GetInstanceProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetInstanceProfileRequest', name: 'GetInstanceProfileRequest')
    GetInstanceProfileResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetInstanceProfileResult', name: 'GetInstanceProfileResult')
    GetJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetJobRequest', name: 'GetJobRequest')
    GetJobResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetJobResult', name: 'GetJobResult')
    GetNetworkProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetNetworkProfileRequest', name: 'GetNetworkProfileRequest')
    GetNetworkProfileResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetNetworkProfileResult', name: 'GetNetworkProfileResult')
    GetOfferingStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetOfferingStatusRequest', name: 'GetOfferingStatusRequest')
    GetOfferingStatusResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetOfferingStatusResult', name: 'GetOfferingStatusResult')
    GetProjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetProjectRequest', name: 'GetProjectRequest')
    GetProjectResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetProjectResult', name: 'GetProjectResult')
    GetRemoteAccessSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetRemoteAccessSessionRequest', name: 'GetRemoteAccessSessionRequest')
    GetRemoteAccessSessionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetRemoteAccessSessionResult', name: 'GetRemoteAccessSessionResult')
    GetRunRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetRunRequest', name: 'GetRunRequest')
    GetRunResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetRunResult', name: 'GetRunResult')
    GetSuiteRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetSuiteRequest', name: 'GetSuiteRequest')
    GetSuiteResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetSuiteResult', name: 'GetSuiteResult')
    GetTestGridProjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetTestGridProjectRequest', name: 'GetTestGridProjectRequest')
    GetTestGridProjectResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetTestGridProjectResult', name: 'GetTestGridProjectResult')
    GetTestGridSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetTestGridSessionRequest', name: 'GetTestGridSessionRequest')
    GetTestGridSessionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetTestGridSessionResult', name: 'GetTestGridSessionResult')
    GetTestRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetTestRequest', name: 'GetTestRequest')
    GetTestResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetTestResult', name: 'GetTestResult')
    GetUploadRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetUploadRequest', name: 'GetUploadRequest')
    GetUploadResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetUploadResult', name: 'GetUploadResult')
    GetVPCEConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetVPCEConfigurationRequest', name: 'GetVPCEConfigurationRequest')
    GetVPCEConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#GetVPCEConfigurationResult', name: 'GetVPCEConfigurationResult')
    HostAddress = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#HostAddress', name: 'HostAddress', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    IdempotencyException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#IdempotencyException', name: 'IdempotencyException', traits: {"smithy.api#error" => "client"})
    IncompatibilityMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#IncompatibilityMessage', name: 'IncompatibilityMessage')
    IncompatibilityMessages = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#IncompatibilityMessages', name: 'IncompatibilityMessages')
    InstallToRemoteAccessSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#InstallToRemoteAccessSessionRequest', name: 'InstallToRemoteAccessSessionRequest')
    InstallToRemoteAccessSessionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#InstallToRemoteAccessSessionResult', name: 'InstallToRemoteAccessSessionResult')
    InstanceLabels = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#InstanceLabels', name: 'InstanceLabels')
    InstanceProfile = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#InstanceProfile', name: 'InstanceProfile')
    InstanceProfiles = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#InstanceProfiles', name: 'InstanceProfiles')
    InstanceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#InstanceStatus', name: 'InstanceStatus')
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.devicefarm#Integer', name: 'Integer')
    InteractionMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#InteractionMode', name: 'InteractionMode', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    InternalServiceException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#InternalServiceException', name: 'InternalServiceException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#InvalidOperationException', name: 'InvalidOperationException', traits: {"smithy.api#error" => "client"})
    IosPaths = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#IosPaths', name: 'IosPaths')
    Job = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#Job', name: 'Job')
    JobTimeoutMinutes = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.devicefarm#JobTimeoutMinutes', name: 'JobTimeoutMinutes')
    Jobs = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#Jobs', name: 'Jobs')
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client"})
    ListArtifactsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListArtifactsRequest', name: 'ListArtifactsRequest')
    ListArtifactsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListArtifactsResult', name: 'ListArtifactsResult')
    ListDeviceInstancesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListDeviceInstancesRequest', name: 'ListDeviceInstancesRequest')
    ListDeviceInstancesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListDeviceInstancesResult', name: 'ListDeviceInstancesResult')
    ListDevicePoolsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListDevicePoolsRequest', name: 'ListDevicePoolsRequest')
    ListDevicePoolsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListDevicePoolsResult', name: 'ListDevicePoolsResult')
    ListDevicesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListDevicesRequest', name: 'ListDevicesRequest')
    ListDevicesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListDevicesResult', name: 'ListDevicesResult')
    ListInstanceProfilesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListInstanceProfilesRequest', name: 'ListInstanceProfilesRequest')
    ListInstanceProfilesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListInstanceProfilesResult', name: 'ListInstanceProfilesResult')
    ListJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListJobsRequest', name: 'ListJobsRequest')
    ListJobsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListJobsResult', name: 'ListJobsResult')
    ListNetworkProfilesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListNetworkProfilesRequest', name: 'ListNetworkProfilesRequest')
    ListNetworkProfilesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListNetworkProfilesResult', name: 'ListNetworkProfilesResult')
    ListOfferingPromotionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListOfferingPromotionsRequest', name: 'ListOfferingPromotionsRequest')
    ListOfferingPromotionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListOfferingPromotionsResult', name: 'ListOfferingPromotionsResult')
    ListOfferingTransactionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListOfferingTransactionsRequest', name: 'ListOfferingTransactionsRequest')
    ListOfferingTransactionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListOfferingTransactionsResult', name: 'ListOfferingTransactionsResult')
    ListOfferingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListOfferingsRequest', name: 'ListOfferingsRequest')
    ListOfferingsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListOfferingsResult', name: 'ListOfferingsResult')
    ListProjectsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListProjectsRequest', name: 'ListProjectsRequest')
    ListProjectsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListProjectsResult', name: 'ListProjectsResult')
    ListRemoteAccessSessionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListRemoteAccessSessionsRequest', name: 'ListRemoteAccessSessionsRequest')
    ListRemoteAccessSessionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListRemoteAccessSessionsResult', name: 'ListRemoteAccessSessionsResult')
    ListRunsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListRunsRequest', name: 'ListRunsRequest')
    ListRunsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListRunsResult', name: 'ListRunsResult')
    ListSamplesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListSamplesRequest', name: 'ListSamplesRequest')
    ListSamplesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListSamplesResult', name: 'ListSamplesResult')
    ListSuitesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListSuitesRequest', name: 'ListSuitesRequest')
    ListSuitesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListSuitesResult', name: 'ListSuitesResult')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListTestGridProjectsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListTestGridProjectsRequest', name: 'ListTestGridProjectsRequest')
    ListTestGridProjectsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListTestGridProjectsResult', name: 'ListTestGridProjectsResult')
    ListTestGridSessionActionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListTestGridSessionActionsRequest', name: 'ListTestGridSessionActionsRequest')
    ListTestGridSessionActionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListTestGridSessionActionsResult', name: 'ListTestGridSessionActionsResult')
    ListTestGridSessionArtifactsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListTestGridSessionArtifactsRequest', name: 'ListTestGridSessionArtifactsRequest')
    ListTestGridSessionArtifactsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListTestGridSessionArtifactsResult', name: 'ListTestGridSessionArtifactsResult')
    ListTestGridSessionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListTestGridSessionsRequest', name: 'ListTestGridSessionsRequest')
    ListTestGridSessionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListTestGridSessionsResult', name: 'ListTestGridSessionsResult')
    ListTestsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListTestsRequest', name: 'ListTestsRequest')
    ListTestsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListTestsResult', name: 'ListTestsResult')
    ListUniqueProblemsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListUniqueProblemsRequest', name: 'ListUniqueProblemsRequest')
    ListUniqueProblemsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListUniqueProblemsResult', name: 'ListUniqueProblemsResult')
    ListUploadsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListUploadsRequest', name: 'ListUploadsRequest')
    ListUploadsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListUploadsResult', name: 'ListUploadsResult')
    ListVPCEConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListVPCEConfigurationsRequest', name: 'ListVPCEConfigurationsRequest')
    ListVPCEConfigurationsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ListVPCEConfigurationsResult', name: 'ListVPCEConfigurationsResult')
    Location = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#Location', name: 'Location')
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.devicefarm#Long', name: 'Long')
    MaxPageSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.devicefarm#MaxPageSize', name: 'MaxPageSize', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MaxSlotMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.devicefarm#MaxSlotMap', name: 'MaxSlotMap')
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#Message', name: 'Message', traits: {"smithy.api#length" => {"min" => 0, "max" => 16384}})
    Metadata = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#Metadata', name: 'Metadata', traits: {"smithy.api#length" => {"min" => 0, "max" => 8192}})
    MonetaryAmount = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#MonetaryAmount', name: 'MonetaryAmount')
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#Name', name: 'Name', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    NetworkProfile = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#NetworkProfile', name: 'NetworkProfile')
    NetworkProfileType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#NetworkProfileType', name: 'NetworkProfileType')
    NetworkProfiles = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#NetworkProfiles', name: 'NetworkProfiles')
    NonEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#NonEmptyString', name: 'NonEmptyString', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "\\S"})
    NotEligibleException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#NotEligibleException', name: 'NotEligibleException', traits: {"smithy.api#error" => "client"})
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#NotFoundException', name: 'NotFoundException', traits: {"smithy.api#error" => "client"})
    Offering = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#Offering', name: 'Offering')
    OfferingIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#OfferingIdentifier', name: 'OfferingIdentifier', traits: {"smithy.api#length" => {"min" => 32}})
    OfferingPromotion = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#OfferingPromotion', name: 'OfferingPromotion')
    OfferingPromotionIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#OfferingPromotionIdentifier', name: 'OfferingPromotionIdentifier', traits: {"smithy.api#length" => {"min" => 4}})
    OfferingPromotions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#OfferingPromotions', name: 'OfferingPromotions')
    OfferingStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#OfferingStatus', name: 'OfferingStatus')
    OfferingStatusMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.devicefarm#OfferingStatusMap', name: 'OfferingStatusMap')
    OfferingTransaction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#OfferingTransaction', name: 'OfferingTransaction')
    OfferingTransactionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#OfferingTransactionType', name: 'OfferingTransactionType')
    OfferingTransactions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#OfferingTransactions', name: 'OfferingTransactions')
    OfferingType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#OfferingType', name: 'OfferingType')
    Offerings = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#Offerings', name: 'Offerings')
    PackageIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#PackageIds', name: 'PackageIds')
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 4, "max" => 1024}})
    PercentInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.devicefarm#PercentInteger', name: 'PercentInteger', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    Problem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#Problem', name: 'Problem')
    ProblemDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ProblemDetail', name: 'ProblemDetail')
    Problems = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#Problems', name: 'Problems')
    Project = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#Project', name: 'Project')
    Projects = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#Projects', name: 'Projects')
    PurchaseOfferingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#PurchaseOfferingRequest', name: 'PurchaseOfferingRequest')
    PurchaseOfferingResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#PurchaseOfferingResult', name: 'PurchaseOfferingResult')
    PurchasedDevicesMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.devicefarm#PurchasedDevicesMap', name: 'PurchasedDevicesMap')
    Radios = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#Radios', name: 'Radios')
    RecurringCharge = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#RecurringCharge', name: 'RecurringCharge')
    RecurringChargeFrequency = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#RecurringChargeFrequency', name: 'RecurringChargeFrequency')
    RecurringCharges = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#RecurringCharges', name: 'RecurringCharges')
    RemoteAccessSession = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#RemoteAccessSession', name: 'RemoteAccessSession')
    RemoteAccessSessions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#RemoteAccessSessions', name: 'RemoteAccessSessions')
    RenewOfferingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#RenewOfferingRequest', name: 'RenewOfferingRequest')
    RenewOfferingResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#RenewOfferingResult', name: 'RenewOfferingResult')
    Resolution = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#Resolution', name: 'Resolution')
    ResourceDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#ResourceDescription', name: 'ResourceDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "\\S"})
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#ResourceId', name: 'ResourceId', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "\\S"})
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#ResourceName', name: 'ResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "\\S"})
    Rule = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#Rule', name: 'Rule')
    RuleOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#RuleOperator', name: 'RuleOperator')
    Rules = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#Rules', name: 'Rules')
    Run = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#Run', name: 'Run')
    Runs = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#Runs', name: 'Runs')
    Sample = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#Sample', name: 'Sample')
    SampleType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#SampleType', name: 'SampleType')
    Samples = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#Samples', name: 'Samples')
    ScheduleRunConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ScheduleRunConfiguration', name: 'ScheduleRunConfiguration')
    ScheduleRunRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ScheduleRunRequest', name: 'ScheduleRunRequest')
    ScheduleRunResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ScheduleRunResult', name: 'ScheduleRunResult')
    ScheduleRunTest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ScheduleRunTest', name: 'ScheduleRunTest')
    SecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#SecurityGroupId', name: 'SecurityGroupId', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^sg-[0-9a-fA-F]{8,}$"})
    SecurityGroupIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#SecurityGroupIds', name: 'SecurityGroupIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    SensitiveString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#SensitiveString', name: 'SensitiveString', traits: {"smithy.api#sensitive" => {}})
    SensitiveURL = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#SensitiveURL', name: 'SensitiveURL', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#sensitive" => {}})
    ServiceAccountException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#ServiceAccountException', name: 'ServiceAccountException', traits: {"smithy.api#error" => "client"})
    ServiceDnsName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#ServiceDnsName', name: 'ServiceDnsName', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    SkipAppResign = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.devicefarm#SkipAppResign', name: 'SkipAppResign')
    SshPublicKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#SshPublicKey', name: 'SshPublicKey', traits: {"smithy.api#length" => {"min" => 0, "max" => 8192}})
    StopJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#StopJobRequest', name: 'StopJobRequest')
    StopJobResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#StopJobResult', name: 'StopJobResult')
    StopRemoteAccessSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#StopRemoteAccessSessionRequest', name: 'StopRemoteAccessSessionRequest')
    StopRemoteAccessSessionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#StopRemoteAccessSessionResult', name: 'StopRemoteAccessSessionResult')
    StopRunRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#StopRunRequest', name: 'StopRunRequest')
    StopRunResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#StopRunResult', name: 'StopRunResult')
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#String', name: 'String')
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#SubnetId', name: 'SubnetId', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^subnet-[0-9a-fA-F]{8,}$"})
    SubnetIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#SubnetIds', name: 'SubnetIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 8}})
    Suite = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#Suite', name: 'Suite')
    Suites = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#Suites', name: 'Suites')
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#Tag', name: 'Tag')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 150}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 150}})
    TagOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#TagOperationException', name: 'TagOperationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TagPolicyException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#TagPolicyException', name: 'TagPolicyException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Test = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#Test', name: 'Test')
    TestGridProject = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#TestGridProject', name: 'TestGridProject')
    TestGridProjects = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#TestGridProjects', name: 'TestGridProjects')
    TestGridSession = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#TestGridSession', name: 'TestGridSession')
    TestGridSessionAction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#TestGridSessionAction', name: 'TestGridSessionAction')
    TestGridSessionActions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#TestGridSessionActions', name: 'TestGridSessionActions')
    TestGridSessionArtifact = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#TestGridSessionArtifact', name: 'TestGridSessionArtifact')
    TestGridSessionArtifactCategory = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#TestGridSessionArtifactCategory', name: 'TestGridSessionArtifactCategory')
    TestGridSessionArtifactType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#TestGridSessionArtifactType', name: 'TestGridSessionArtifactType')
    TestGridSessionArtifacts = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#TestGridSessionArtifacts', name: 'TestGridSessionArtifacts')
    TestGridSessionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#TestGridSessionStatus', name: 'TestGridSessionStatus')
    TestGridSessions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#TestGridSessions', name: 'TestGridSessions')
    TestGridUrlExpiresInSecondsInput = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.devicefarm#TestGridUrlExpiresInSecondsInput', name: 'TestGridUrlExpiresInSecondsInput', traits: {"smithy.api#range" => {"min" => 60, "max" => 86400}})
    TestGridVpcConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#TestGridVpcConfig', name: 'TestGridVpcConfig')
    TestParameters = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.devicefarm#TestParameters', name: 'TestParameters')
    TestType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#TestType', name: 'TestType')
    Tests = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#Tests', name: 'Tests')
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#TooManyTagsException', name: 'TooManyTagsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TransactionIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#TransactionIdentifier', name: 'TransactionIdentifier', traits: {"smithy.api#length" => {"min" => 32}})
    TrialMinutes = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#TrialMinutes', name: 'TrialMinutes')
    URL = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#URL', name: 'URL', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    UniqueProblem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#UniqueProblem', name: 'UniqueProblem')
    UniqueProblems = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#UniqueProblems', name: 'UniqueProblems')
    UniqueProblemsByExecutionResultMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.devicefarm#UniqueProblemsByExecutionResultMap', name: 'UniqueProblemsByExecutionResultMap')
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateDeviceInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#UpdateDeviceInstanceRequest', name: 'UpdateDeviceInstanceRequest')
    UpdateDeviceInstanceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#UpdateDeviceInstanceResult', name: 'UpdateDeviceInstanceResult')
    UpdateDevicePoolRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#UpdateDevicePoolRequest', name: 'UpdateDevicePoolRequest')
    UpdateDevicePoolResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#UpdateDevicePoolResult', name: 'UpdateDevicePoolResult')
    UpdateInstanceProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#UpdateInstanceProfileRequest', name: 'UpdateInstanceProfileRequest')
    UpdateInstanceProfileResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#UpdateInstanceProfileResult', name: 'UpdateInstanceProfileResult')
    UpdateNetworkProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#UpdateNetworkProfileRequest', name: 'UpdateNetworkProfileRequest')
    UpdateNetworkProfileResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#UpdateNetworkProfileResult', name: 'UpdateNetworkProfileResult')
    UpdateProjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#UpdateProjectRequest', name: 'UpdateProjectRequest')
    UpdateProjectResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#UpdateProjectResult', name: 'UpdateProjectResult')
    UpdateTestGridProjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#UpdateTestGridProjectRequest', name: 'UpdateTestGridProjectRequest')
    UpdateTestGridProjectResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#UpdateTestGridProjectResult', name: 'UpdateTestGridProjectResult')
    UpdateUploadRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#UpdateUploadRequest', name: 'UpdateUploadRequest')
    UpdateUploadResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#UpdateUploadResult', name: 'UpdateUploadResult')
    UpdateVPCEConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#UpdateVPCEConfigurationRequest', name: 'UpdateVPCEConfigurationRequest')
    UpdateVPCEConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#UpdateVPCEConfigurationResult', name: 'UpdateVPCEConfigurationResult')
    Upload = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#Upload', name: 'Upload')
    UploadCategory = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#UploadCategory', name: 'UploadCategory')
    UploadStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#UploadStatus', name: 'UploadStatus')
    UploadType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.devicefarm#UploadType', name: 'UploadType')
    Uploads = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#Uploads', name: 'Uploads')
    VPCEConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#VPCEConfiguration', name: 'VPCEConfiguration')
    VPCEConfigurationDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#VPCEConfigurationDescription', name: 'VPCEConfigurationDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    VPCEConfigurationName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#VPCEConfigurationName', name: 'VPCEConfigurationName', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    VPCEConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#VPCEConfigurations', name: 'VPCEConfigurations')
    VPCEServiceName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.devicefarm#VPCEServiceName', name: 'VPCEServiceName', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    VideoCapture = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.devicefarm#VideoCapture', name: 'VideoCapture')
    VpcConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.devicefarm#VpcConfig', name: 'VpcConfig')
    VpcSecurityGroupIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#VpcSecurityGroupIds', name: 'VpcSecurityGroupIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    VpcSubnetIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.devicefarm#VpcSubnetIds', name: 'VpcSubnetIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 8}})

    AccountSettings.add_member(:aws_account_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountNumber, location_name: 'awsAccountNumber'))
    AccountSettings.add_member(:unmetered_devices, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PurchasedDevicesMap, location_name: 'unmeteredDevices'))
    AccountSettings.add_member(:unmetered_remote_access_devices, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PurchasedDevicesMap, location_name: 'unmeteredRemoteAccessDevices'))
    AccountSettings.add_member(:max_job_timeout_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobTimeoutMinutes, location_name: 'maxJobTimeoutMinutes'))
    AccountSettings.add_member(:trial_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrialMinutes, location_name: 'trialMinutes'))
    AccountSettings.add_member(:max_slots, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSlotMap, location_name: 'maxSlots'))
    AccountSettings.add_member(:default_job_timeout_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobTimeoutMinutes, location_name: 'defaultJobTimeoutMinutes'))
    AccountSettings.add_member(:skip_app_resign, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SkipAppResign, location_name: 'skipAppResign'))
    AccountSettings.type = Types::AccountSettings
    AmazonResourceNames.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName)
    AndroidPaths.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ArgumentException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    ArgumentException.type = Types::ArgumentException
    Artifact.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn'))
    Artifact.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    Artifact.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactType, location_name: 'type'))
    Artifact.add_member(:extension, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'extension'))
    Artifact.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: URL, location_name: 'url'))
    Artifact.type = Types::Artifact
    ArtifactCategory.add_member(:screenshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCREENSHOT', traits: {"smithy.api#enumValue" => "SCREENSHOT"}))
    ArtifactCategory.add_member(:file, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FILE', traits: {"smithy.api#enumValue" => "FILE"}))
    ArtifactCategory.add_member(:log, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOG', traits: {"smithy.api#enumValue" => "LOG"}))
    ArtifactType.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    ArtifactType.add_member(:screenshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCREENSHOT', traits: {"smithy.api#enumValue" => "SCREENSHOT"}))
    ArtifactType.add_member(:device_log, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEVICE_LOG', traits: {"smithy.api#enumValue" => "DEVICE_LOG"}))
    ArtifactType.add_member(:message_log, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MESSAGE_LOG', traits: {"smithy.api#enumValue" => "MESSAGE_LOG"}))
    ArtifactType.add_member(:video_log, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VIDEO_LOG', traits: {"smithy.api#enumValue" => "VIDEO_LOG"}))
    ArtifactType.add_member(:result_log, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESULT_LOG', traits: {"smithy.api#enumValue" => "RESULT_LOG"}))
    ArtifactType.add_member(:service_log, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVICE_LOG', traits: {"smithy.api#enumValue" => "SERVICE_LOG"}))
    ArtifactType.add_member(:webkit_log, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEBKIT_LOG', traits: {"smithy.api#enumValue" => "WEBKIT_LOG"}))
    ArtifactType.add_member(:instrumentation_output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTRUMENTATION_OUTPUT', traits: {"smithy.api#enumValue" => "INSTRUMENTATION_OUTPUT"}))
    ArtifactType.add_member(:exerciser_monkey_output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXERCISER_MONKEY_OUTPUT', traits: {"smithy.api#enumValue" => "EXERCISER_MONKEY_OUTPUT"}))
    ArtifactType.add_member(:calabash_json_output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CALABASH_JSON_OUTPUT', traits: {"smithy.api#enumValue" => "CALABASH_JSON_OUTPUT"}))
    ArtifactType.add_member(:calabash_pretty_output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CALABASH_PRETTY_OUTPUT', traits: {"smithy.api#enumValue" => "CALABASH_PRETTY_OUTPUT"}))
    ArtifactType.add_member(:calabash_standard_output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CALABASH_STANDARD_OUTPUT', traits: {"smithy.api#enumValue" => "CALABASH_STANDARD_OUTPUT"}))
    ArtifactType.add_member(:calabash_java_xml_output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CALABASH_JAVA_XML_OUTPUT', traits: {"smithy.api#enumValue" => "CALABASH_JAVA_XML_OUTPUT"}))
    ArtifactType.add_member(:automation_output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTOMATION_OUTPUT', traits: {"smithy.api#enumValue" => "AUTOMATION_OUTPUT"}))
    ArtifactType.add_member(:appium_server_output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_SERVER_OUTPUT', traits: {"smithy.api#enumValue" => "APPIUM_SERVER_OUTPUT"}))
    ArtifactType.add_member(:appium_java_output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_JAVA_OUTPUT', traits: {"smithy.api#enumValue" => "APPIUM_JAVA_OUTPUT"}))
    ArtifactType.add_member(:appium_java_xml_output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_JAVA_XML_OUTPUT', traits: {"smithy.api#enumValue" => "APPIUM_JAVA_XML_OUTPUT"}))
    ArtifactType.add_member(:appium_python_output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_PYTHON_OUTPUT', traits: {"smithy.api#enumValue" => "APPIUM_PYTHON_OUTPUT"}))
    ArtifactType.add_member(:appium_python_xml_output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_PYTHON_XML_OUTPUT', traits: {"smithy.api#enumValue" => "APPIUM_PYTHON_XML_OUTPUT"}))
    ArtifactType.add_member(:explorer_event_log, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPLORER_EVENT_LOG', traits: {"smithy.api#enumValue" => "EXPLORER_EVENT_LOG"}))
    ArtifactType.add_member(:explorer_summary_log, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPLORER_SUMMARY_LOG', traits: {"smithy.api#enumValue" => "EXPLORER_SUMMARY_LOG"}))
    ArtifactType.add_member(:application_crash_report, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPLICATION_CRASH_REPORT', traits: {"smithy.api#enumValue" => "APPLICATION_CRASH_REPORT"}))
    ArtifactType.add_member(:xctest_log, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'XCTEST_LOG', traits: {"smithy.api#enumValue" => "XCTEST_LOG"}))
    ArtifactType.add_member(:video, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VIDEO', traits: {"smithy.api#enumValue" => "VIDEO"}))
    ArtifactType.add_member(:customer_artifact, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOMER_ARTIFACT', traits: {"smithy.api#enumValue" => "CUSTOMER_ARTIFACT"}))
    ArtifactType.add_member(:customer_artifact_log, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOMER_ARTIFACT_LOG', traits: {"smithy.api#enumValue" => "CUSTOMER_ARTIFACT_LOG"}))
    ArtifactType.add_member(:testspec_output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TESTSPEC_OUTPUT', traits: {"smithy.api#enumValue" => "TESTSPEC_OUTPUT"}))
    Artifacts.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Artifact)
    BillingMethod.add_member(:metered, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'METERED', traits: {"smithy.api#enumValue" => "METERED"}))
    BillingMethod.add_member(:unmetered, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNMETERED', traits: {"smithy.api#enumValue" => "UNMETERED"}))
    CPU.add_member(:frequency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'frequency'))
    CPU.add_member(:architecture, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'architecture'))
    CPU.add_member(:clock, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'clock'))
    CPU.type = Types::CPU
    CannotDeleteException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    CannotDeleteException.type = Types::CannotDeleteException
    Counters.add_member(:total, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'total'))
    Counters.add_member(:passed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'passed'))
    Counters.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'failed'))
    Counters.add_member(:warned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'warned'))
    Counters.add_member(:errored, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'errored'))
    Counters.add_member(:stopped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'stopped'))
    Counters.add_member(:skipped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'skipped'))
    Counters.type = Types::Counters
    CreateDevicePoolRequest.add_member(:project_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'projectArn', traits: {"smithy.api#required" => {}}))
    CreateDevicePoolRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateDevicePoolRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'description'))
    CreateDevicePoolRequest.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rules, location_name: 'rules', traits: {"smithy.api#required" => {}}))
    CreateDevicePoolRequest.add_member(:max_devices, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxDevices'))
    CreateDevicePoolRequest.type = Types::CreateDevicePoolRequest
    CreateDevicePoolResult.add_member(:device_pool, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DevicePool, location_name: 'devicePool'))
    CreateDevicePoolResult.type = Types::CreateDevicePoolResult
    CreateInstanceProfileRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateInstanceProfileRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'description'))
    CreateInstanceProfileRequest.add_member(:package_cleanup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'packageCleanup'))
    CreateInstanceProfileRequest.add_member(:exclude_app_packages_from_cleanup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageIds, location_name: 'excludeAppPackagesFromCleanup'))
    CreateInstanceProfileRequest.add_member(:reboot_after_use, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'rebootAfterUse'))
    CreateInstanceProfileRequest.type = Types::CreateInstanceProfileRequest
    CreateInstanceProfileResult.add_member(:instance_profile, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceProfile, location_name: 'instanceProfile'))
    CreateInstanceProfileResult.type = Types::CreateInstanceProfileResult
    CreateNetworkProfileRequest.add_member(:project_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'projectArn', traits: {"smithy.api#required" => {}}))
    CreateNetworkProfileRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateNetworkProfileRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'description'))
    CreateNetworkProfileRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkProfileType, location_name: 'type'))
    CreateNetworkProfileRequest.add_member(:uplink_bandwidth_bits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'uplinkBandwidthBits'))
    CreateNetworkProfileRequest.add_member(:downlink_bandwidth_bits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'downlinkBandwidthBits'))
    CreateNetworkProfileRequest.add_member(:uplink_delay_ms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'uplinkDelayMs'))
    CreateNetworkProfileRequest.add_member(:downlink_delay_ms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'downlinkDelayMs'))
    CreateNetworkProfileRequest.add_member(:uplink_jitter_ms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'uplinkJitterMs'))
    CreateNetworkProfileRequest.add_member(:downlink_jitter_ms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'downlinkJitterMs'))
    CreateNetworkProfileRequest.add_member(:uplink_loss_percent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PercentInteger, location_name: 'uplinkLossPercent', traits: {"smithy.api#default" => 0}))
    CreateNetworkProfileRequest.add_member(:downlink_loss_percent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PercentInteger, location_name: 'downlinkLossPercent', traits: {"smithy.api#default" => 0}))
    CreateNetworkProfileRequest.type = Types::CreateNetworkProfileRequest
    CreateNetworkProfileResult.add_member(:network_profile, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkProfile, location_name: 'networkProfile'))
    CreateNetworkProfileResult.type = Types::CreateNetworkProfileResult
    CreateProjectRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateProjectRequest.add_member(:default_job_timeout_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobTimeoutMinutes, location_name: 'defaultJobTimeoutMinutes'))
    CreateProjectRequest.add_member(:vpc_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: 'vpcConfig'))
    CreateProjectRequest.type = Types::CreateProjectRequest
    CreateProjectResult.add_member(:project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Project, location_name: 'project'))
    CreateProjectResult.type = Types::CreateProjectResult
    CreateRemoteAccessSessionConfiguration.add_member(:billing_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingMethod, location_name: 'billingMethod'))
    CreateRemoteAccessSessionConfiguration.add_member(:vpce_configuration_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceNames, location_name: 'vpceConfigurationArns'))
    CreateRemoteAccessSessionConfiguration.add_member(:device_proxy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceProxy, location_name: 'deviceProxy'))
    CreateRemoteAccessSessionConfiguration.type = Types::CreateRemoteAccessSessionConfiguration
    CreateRemoteAccessSessionRequest.add_member(:project_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'projectArn', traits: {"smithy.api#required" => {}}))
    CreateRemoteAccessSessionRequest.add_member(:device_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'deviceArn', traits: {"smithy.api#required" => {}}))
    CreateRemoteAccessSessionRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'instanceArn'))
    CreateRemoteAccessSessionRequest.add_member(:ssh_public_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SshPublicKey, location_name: 'sshPublicKey'))
    CreateRemoteAccessSessionRequest.add_member(:remote_debug_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'remoteDebugEnabled'))
    CreateRemoteAccessSessionRequest.add_member(:remote_record_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'remoteRecordEnabled'))
    CreateRemoteAccessSessionRequest.add_member(:remote_record_app_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'remoteRecordAppArn'))
    CreateRemoteAccessSessionRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    CreateRemoteAccessSessionRequest.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientId, location_name: 'clientId'))
    CreateRemoteAccessSessionRequest.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRemoteAccessSessionConfiguration, location_name: 'configuration'))
    CreateRemoteAccessSessionRequest.add_member(:interaction_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InteractionMode, location_name: 'interactionMode'))
    CreateRemoteAccessSessionRequest.add_member(:skip_app_resign, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'skipAppResign'))
    CreateRemoteAccessSessionRequest.type = Types::CreateRemoteAccessSessionRequest
    CreateRemoteAccessSessionResult.add_member(:remote_access_session, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoteAccessSession, location_name: 'remoteAccessSession'))
    CreateRemoteAccessSessionResult.type = Types::CreateRemoteAccessSessionResult
    CreateTestGridProjectRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateTestGridProjectRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description'))
    CreateTestGridProjectRequest.add_member(:vpc_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestGridVpcConfig, location_name: 'vpcConfig'))
    CreateTestGridProjectRequest.type = Types::CreateTestGridProjectRequest
    CreateTestGridProjectResult.add_member(:test_grid_project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestGridProject, location_name: 'testGridProject'))
    CreateTestGridProjectResult.type = Types::CreateTestGridProjectResult
    CreateTestGridUrlRequest.add_member(:project_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFarmArn, location_name: 'projectArn', traits: {"smithy.api#required" => {}}))
    CreateTestGridUrlRequest.add_member(:expires_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestGridUrlExpiresInSecondsInput, location_name: 'expiresInSeconds', traits: {"smithy.api#required" => {}}))
    CreateTestGridUrlRequest.type = Types::CreateTestGridUrlRequest
    CreateTestGridUrlResult.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'url'))
    CreateTestGridUrlResult.add_member(:expires, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'expires'))
    CreateTestGridUrlResult.type = Types::CreateTestGridUrlResult
    CreateUploadRequest.add_member(:project_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'projectArn', traits: {"smithy.api#required" => {}}))
    CreateUploadRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateUploadRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    CreateUploadRequest.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: 'contentType'))
    CreateUploadRequest.type = Types::CreateUploadRequest
    CreateUploadResult.add_member(:upload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Upload, location_name: 'upload'))
    CreateUploadResult.type = Types::CreateUploadResult
    CreateVPCEConfigurationRequest.add_member(:vpce_configuration_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCEConfigurationName, location_name: 'vpceConfigurationName', traits: {"smithy.api#required" => {}}))
    CreateVPCEConfigurationRequest.add_member(:vpce_service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCEServiceName, location_name: 'vpceServiceName', traits: {"smithy.api#required" => {}}))
    CreateVPCEConfigurationRequest.add_member(:service_dns_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceDnsName, location_name: 'serviceDnsName', traits: {"smithy.api#required" => {}}))
    CreateVPCEConfigurationRequest.add_member(:vpce_configuration_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCEConfigurationDescription, location_name: 'vpceConfigurationDescription'))
    CreateVPCEConfigurationRequest.type = Types::CreateVPCEConfigurationRequest
    CreateVPCEConfigurationResult.add_member(:vpce_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCEConfiguration, location_name: 'vpceConfiguration'))
    CreateVPCEConfigurationResult.type = Types::CreateVPCEConfigurationResult
    CurrencyCode.add_member(:usd, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USD', traits: {"smithy.api#enumValue" => "USD"}))
    CustomerArtifactPaths.add_member(:ios_paths, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IosPaths, location_name: 'iosPaths'))
    CustomerArtifactPaths.add_member(:android_paths, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AndroidPaths, location_name: 'androidPaths'))
    CustomerArtifactPaths.add_member(:device_host_paths, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceHostPaths, location_name: 'deviceHostPaths'))
    CustomerArtifactPaths.type = Types::CustomerArtifactPaths
    DeleteDevicePoolRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    DeleteDevicePoolRequest.type = Types::DeleteDevicePoolRequest
    DeleteDevicePoolResult.type = Types::DeleteDevicePoolResult
    DeleteInstanceProfileRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    DeleteInstanceProfileRequest.type = Types::DeleteInstanceProfileRequest
    DeleteInstanceProfileResult.type = Types::DeleteInstanceProfileResult
    DeleteNetworkProfileRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    DeleteNetworkProfileRequest.type = Types::DeleteNetworkProfileRequest
    DeleteNetworkProfileResult.type = Types::DeleteNetworkProfileResult
    DeleteProjectRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    DeleteProjectRequest.type = Types::DeleteProjectRequest
    DeleteProjectResult.type = Types::DeleteProjectResult
    DeleteRemoteAccessSessionRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    DeleteRemoteAccessSessionRequest.type = Types::DeleteRemoteAccessSessionRequest
    DeleteRemoteAccessSessionResult.type = Types::DeleteRemoteAccessSessionResult
    DeleteRunRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    DeleteRunRequest.type = Types::DeleteRunRequest
    DeleteRunResult.type = Types::DeleteRunResult
    DeleteTestGridProjectRequest.add_member(:project_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFarmArn, location_name: 'projectArn', traits: {"smithy.api#required" => {}}))
    DeleteTestGridProjectRequest.type = Types::DeleteTestGridProjectRequest
    DeleteTestGridProjectResult.type = Types::DeleteTestGridProjectResult
    DeleteUploadRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    DeleteUploadRequest.type = Types::DeleteUploadRequest
    DeleteUploadResult.type = Types::DeleteUploadResult
    DeleteVPCEConfigurationRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    DeleteVPCEConfigurationRequest.type = Types::DeleteVPCEConfigurationRequest
    DeleteVPCEConfigurationResult.type = Types::DeleteVPCEConfigurationResult
    Device.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn'))
    Device.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    Device.add_member(:manufacturer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'manufacturer'))
    Device.add_member(:model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'model'))
    Device.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'modelId'))
    Device.add_member(:form_factor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFormFactor, location_name: 'formFactor'))
    Device.add_member(:platform, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DevicePlatform, location_name: 'platform'))
    Device.add_member(:os, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'os'))
    Device.add_member(:cpu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CPU, location_name: 'cpu'))
    Device.add_member(:resolution, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Resolution, location_name: 'resolution'))
    Device.add_member(:heap_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'heapSize'))
    Device.add_member(:memory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'memory'))
    Device.add_member(:image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'image'))
    Device.add_member(:carrier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'carrier'))
    Device.add_member(:radio, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'radio'))
    Device.add_member(:remote_access_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'remoteAccessEnabled'))
    Device.add_member(:remote_debug_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'remoteDebugEnabled'))
    Device.add_member(:fleet_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'fleetType'))
    Device.add_member(:fleet_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'fleetName'))
    Device.add_member(:instances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceInstances, location_name: 'instances'))
    Device.add_member(:availability, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceAvailability, location_name: 'availability'))
    Device.type = Types::Device
    DeviceAttribute.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ARN', traits: {"smithy.api#enumValue" => "ARN"}))
    DeviceAttribute.add_member(:platform, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PLATFORM', traits: {"smithy.api#enumValue" => "PLATFORM"}))
    DeviceAttribute.add_member(:form_factor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FORM_FACTOR', traits: {"smithy.api#enumValue" => "FORM_FACTOR"}))
    DeviceAttribute.add_member(:manufacturer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANUFACTURER', traits: {"smithy.api#enumValue" => "MANUFACTURER"}))
    DeviceAttribute.add_member(:remote_access_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REMOTE_ACCESS_ENABLED', traits: {"smithy.api#enumValue" => "REMOTE_ACCESS_ENABLED"}))
    DeviceAttribute.add_member(:remote_debug_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REMOTE_DEBUG_ENABLED', traits: {"smithy.api#enumValue" => "REMOTE_DEBUG_ENABLED"}))
    DeviceAttribute.add_member(:appium_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_VERSION', traits: {"smithy.api#enumValue" => "APPIUM_VERSION"}))
    DeviceAttribute.add_member(:instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTANCE_ARN', traits: {"smithy.api#enumValue" => "INSTANCE_ARN"}))
    DeviceAttribute.add_member(:instance_labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTANCE_LABELS', traits: {"smithy.api#enumValue" => "INSTANCE_LABELS"}))
    DeviceAttribute.add_member(:fleet_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FLEET_TYPE', traits: {"smithy.api#enumValue" => "FLEET_TYPE"}))
    DeviceAttribute.add_member(:os_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OS_VERSION', traits: {"smithy.api#enumValue" => "OS_VERSION"}))
    DeviceAttribute.add_member(:model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MODEL', traits: {"smithy.api#enumValue" => "MODEL"}))
    DeviceAttribute.add_member(:availability, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABILITY', traits: {"smithy.api#enumValue" => "AVAILABILITY"}))
    DeviceAvailability.add_member(:temporary_not_available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEMPORARY_NOT_AVAILABLE', traits: {"smithy.api#enumValue" => "TEMPORARY_NOT_AVAILABLE"}))
    DeviceAvailability.add_member(:busy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BUSY', traits: {"smithy.api#enumValue" => "BUSY"}))
    DeviceAvailability.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    DeviceAvailability.add_member(:highly_available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HIGHLY_AVAILABLE', traits: {"smithy.api#enumValue" => "HIGHLY_AVAILABLE"}))
    DeviceFilter.add_member(:attribute, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFilterAttribute, location_name: 'attribute', traits: {"smithy.api#required" => {}}))
    DeviceFilter.add_member(:operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleOperator, location_name: 'operator', traits: {"smithy.api#required" => {}}))
    DeviceFilter.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFilterValues, location_name: 'values', traits: {"smithy.api#required" => {}}))
    DeviceFilter.type = Types::DeviceFilter
    DeviceFilterAttribute.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ARN', traits: {"smithy.api#enumValue" => "ARN"}))
    DeviceFilterAttribute.add_member(:platform, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PLATFORM', traits: {"smithy.api#enumValue" => "PLATFORM"}))
    DeviceFilterAttribute.add_member(:os_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OS_VERSION', traits: {"smithy.api#enumValue" => "OS_VERSION"}))
    DeviceFilterAttribute.add_member(:model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MODEL', traits: {"smithy.api#enumValue" => "MODEL"}))
    DeviceFilterAttribute.add_member(:availability, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABILITY', traits: {"smithy.api#enumValue" => "AVAILABILITY"}))
    DeviceFilterAttribute.add_member(:form_factor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FORM_FACTOR', traits: {"smithy.api#enumValue" => "FORM_FACTOR"}))
    DeviceFilterAttribute.add_member(:manufacturer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANUFACTURER', traits: {"smithy.api#enumValue" => "MANUFACTURER"}))
    DeviceFilterAttribute.add_member(:remote_access_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REMOTE_ACCESS_ENABLED', traits: {"smithy.api#enumValue" => "REMOTE_ACCESS_ENABLED"}))
    DeviceFilterAttribute.add_member(:remote_debug_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REMOTE_DEBUG_ENABLED', traits: {"smithy.api#enumValue" => "REMOTE_DEBUG_ENABLED"}))
    DeviceFilterAttribute.add_member(:instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTANCE_ARN', traits: {"smithy.api#enumValue" => "INSTANCE_ARN"}))
    DeviceFilterAttribute.add_member(:instance_labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTANCE_LABELS', traits: {"smithy.api#enumValue" => "INSTANCE_LABELS"}))
    DeviceFilterAttribute.add_member(:fleet_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FLEET_TYPE', traits: {"smithy.api#enumValue" => "FLEET_TYPE"}))
    DeviceFilterValues.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    DeviceFilters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFilter)
    DeviceFormFactor.add_member(:phone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PHONE', traits: {"smithy.api#enumValue" => "PHONE"}))
    DeviceFormFactor.add_member(:tablet, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TABLET', traits: {"smithy.api#enumValue" => "TABLET"}))
    DeviceHostPaths.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    DeviceInstance.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn'))
    DeviceInstance.add_member(:device_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'deviceArn'))
    DeviceInstance.add_member(:labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceLabels, location_name: 'labels'))
    DeviceInstance.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceStatus, location_name: 'status'))
    DeviceInstance.add_member(:udid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'udid'))
    DeviceInstance.add_member(:instance_profile, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceProfile, location_name: 'instanceProfile'))
    DeviceInstance.type = Types::DeviceInstance
    DeviceInstances.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceInstance)
    DeviceMinutes.add_member(:total, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'total'))
    DeviceMinutes.add_member(:metered, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'metered'))
    DeviceMinutes.add_member(:unmetered, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'unmetered'))
    DeviceMinutes.type = Types::DeviceMinutes
    DevicePlatform.add_member(:android, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANDROID', traits: {"smithy.api#enumValue" => "ANDROID"}))
    DevicePlatform.add_member(:ios, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IOS', traits: {"smithy.api#enumValue" => "IOS"}))
    DevicePool.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn'))
    DevicePool.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    DevicePool.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'description'))
    DevicePool.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DevicePoolType, location_name: 'type'))
    DevicePool.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rules, location_name: 'rules'))
    DevicePool.add_member(:max_devices, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxDevices'))
    DevicePool.type = Types::DevicePool
    DevicePoolCompatibilityResult.add_member(:device, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Device, location_name: 'device'))
    DevicePoolCompatibilityResult.add_member(:compatible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'compatible'))
    DevicePoolCompatibilityResult.add_member(:incompatibility_messages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibilityMessages, location_name: 'incompatibilityMessages'))
    DevicePoolCompatibilityResult.type = Types::DevicePoolCompatibilityResult
    DevicePoolCompatibilityResults.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DevicePoolCompatibilityResult)
    DevicePoolType.add_member(:curated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CURATED', traits: {"smithy.api#enumValue" => "CURATED"}))
    DevicePoolType.add_member(:private, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRIVATE', traits: {"smithy.api#enumValue" => "PRIVATE"}))
    DevicePools.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DevicePool)
    DeviceProxy.add_member(:host, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceProxyHost, location_name: 'host', traits: {"smithy.api#required" => {}}))
    DeviceProxy.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceProxyPort, location_name: 'port', traits: {"smithy.api#default" => 3128, "smithy.api#required" => {}}))
    DeviceProxy.type = Types::DeviceProxy
    DeviceSelectionConfiguration.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFilters, location_name: 'filters', traits: {"smithy.api#required" => {}}))
    DeviceSelectionConfiguration.add_member(:max_devices, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxDevices', traits: {"smithy.api#required" => {}}))
    DeviceSelectionConfiguration.type = Types::DeviceSelectionConfiguration
    DeviceSelectionResult.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFilters, location_name: 'filters'))
    DeviceSelectionResult.add_member(:matched_devices_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'matchedDevicesCount'))
    DeviceSelectionResult.add_member(:max_devices, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxDevices'))
    DeviceSelectionResult.type = Types::DeviceSelectionResult
    Devices.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Device)
    ExecutionConfiguration.add_member(:job_timeout_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobTimeoutMinutes, location_name: 'jobTimeoutMinutes'))
    ExecutionConfiguration.add_member(:accounts_cleanup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountsCleanup, location_name: 'accountsCleanup'))
    ExecutionConfiguration.add_member(:app_packages_cleanup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppPackagesCleanup, location_name: 'appPackagesCleanup'))
    ExecutionConfiguration.add_member(:video_capture, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VideoCapture, location_name: 'videoCapture'))
    ExecutionConfiguration.add_member(:skip_app_resign, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SkipAppResign, location_name: 'skipAppResign'))
    ExecutionConfiguration.type = Types::ExecutionConfiguration
    ExecutionResult.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    ExecutionResult.add_member(:passed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PASSED', traits: {"smithy.api#enumValue" => "PASSED"}))
    ExecutionResult.add_member(:warned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WARNED', traits: {"smithy.api#enumValue" => "WARNED"}))
    ExecutionResult.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ExecutionResult.add_member(:skipped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SKIPPED', traits: {"smithy.api#enumValue" => "SKIPPED"}))
    ExecutionResult.add_member(:errored, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERRORED', traits: {"smithy.api#enumValue" => "ERRORED"}))
    ExecutionResult.add_member(:stopped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "STOPPED"}))
    ExecutionResultCode.add_member(:parsing_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARSING_FAILED', traits: {"smithy.api#enumValue" => "PARSING_FAILED"}))
    ExecutionResultCode.add_member(:vpc_endpoint_setup_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VPC_ENDPOINT_SETUP_FAILED', traits: {"smithy.api#enumValue" => "VPC_ENDPOINT_SETUP_FAILED"}))
    ExecutionStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    ExecutionStatus.add_member(:pending_concurrnecy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_CONCURRNECY', traits: {"smithy.api#enumValue" => "PENDING_CONCURRENCY"}))
    ExecutionStatus.add_member(:pending_device, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_DEVICE', traits: {"smithy.api#enumValue" => "PENDING_DEVICE"}))
    ExecutionStatus.add_member(:processing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROCESSING', traits: {"smithy.api#enumValue" => "PROCESSING"}))
    ExecutionStatus.add_member(:scheduling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCHEDULING', traits: {"smithy.api#enumValue" => "SCHEDULING"}))
    ExecutionStatus.add_member(:preparing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PREPARING', traits: {"smithy.api#enumValue" => "PREPARING"}))
    ExecutionStatus.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    ExecutionStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ExecutionStatus.add_member(:stopping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPING', traits: {"smithy.api#enumValue" => "STOPPING"}))
    GetAccountSettingsRequest.type = Types::GetAccountSettingsRequest
    GetAccountSettingsResult.add_member(:account_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSettings, location_name: 'accountSettings'))
    GetAccountSettingsResult.type = Types::GetAccountSettingsResult
    GetDeviceInstanceRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    GetDeviceInstanceRequest.type = Types::GetDeviceInstanceRequest
    GetDeviceInstanceResult.add_member(:device_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceInstance, location_name: 'deviceInstance'))
    GetDeviceInstanceResult.type = Types::GetDeviceInstanceResult
    GetDevicePoolCompatibilityRequest.add_member(:device_pool_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'devicePoolArn', traits: {"smithy.api#required" => {}}))
    GetDevicePoolCompatibilityRequest.add_member(:app_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'appArn'))
    GetDevicePoolCompatibilityRequest.add_member(:test_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestType, location_name: 'testType'))
    GetDevicePoolCompatibilityRequest.add_member(:test, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleRunTest, location_name: 'test'))
    GetDevicePoolCompatibilityRequest.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleRunConfiguration, location_name: 'configuration'))
    GetDevicePoolCompatibilityRequest.add_member(:project_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'projectArn'))
    GetDevicePoolCompatibilityRequest.type = Types::GetDevicePoolCompatibilityRequest
    GetDevicePoolCompatibilityResult.add_member(:compatible_devices, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DevicePoolCompatibilityResults, location_name: 'compatibleDevices'))
    GetDevicePoolCompatibilityResult.add_member(:incompatible_devices, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DevicePoolCompatibilityResults, location_name: 'incompatibleDevices'))
    GetDevicePoolCompatibilityResult.type = Types::GetDevicePoolCompatibilityResult
    GetDevicePoolRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    GetDevicePoolRequest.type = Types::GetDevicePoolRequest
    GetDevicePoolResult.add_member(:device_pool, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DevicePool, location_name: 'devicePool'))
    GetDevicePoolResult.type = Types::GetDevicePoolResult
    GetDeviceRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    GetDeviceRequest.type = Types::GetDeviceRequest
    GetDeviceResult.add_member(:device, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Device, location_name: 'device'))
    GetDeviceResult.type = Types::GetDeviceResult
    GetInstanceProfileRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    GetInstanceProfileRequest.type = Types::GetInstanceProfileRequest
    GetInstanceProfileResult.add_member(:instance_profile, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceProfile, location_name: 'instanceProfile'))
    GetInstanceProfileResult.type = Types::GetInstanceProfileResult
    GetJobRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    GetJobRequest.type = Types::GetJobRequest
    GetJobResult.add_member(:job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Job, location_name: 'job'))
    GetJobResult.type = Types::GetJobResult
    GetNetworkProfileRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    GetNetworkProfileRequest.type = Types::GetNetworkProfileRequest
    GetNetworkProfileResult.add_member(:network_profile, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkProfile, location_name: 'networkProfile'))
    GetNetworkProfileResult.type = Types::GetNetworkProfileResult
    GetOfferingStatusRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    GetOfferingStatusRequest.type = Types::GetOfferingStatusRequest
    GetOfferingStatusResult.add_member(:current, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingStatusMap, location_name: 'current'))
    GetOfferingStatusResult.add_member(:next_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingStatusMap, location_name: 'nextPeriod'))
    GetOfferingStatusResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    GetOfferingStatusResult.type = Types::GetOfferingStatusResult
    GetProjectRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    GetProjectRequest.type = Types::GetProjectRequest
    GetProjectResult.add_member(:project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Project, location_name: 'project'))
    GetProjectResult.type = Types::GetProjectResult
    GetRemoteAccessSessionRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    GetRemoteAccessSessionRequest.type = Types::GetRemoteAccessSessionRequest
    GetRemoteAccessSessionResult.add_member(:remote_access_session, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoteAccessSession, location_name: 'remoteAccessSession'))
    GetRemoteAccessSessionResult.type = Types::GetRemoteAccessSessionResult
    GetRunRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    GetRunRequest.type = Types::GetRunRequest
    GetRunResult.add_member(:run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Run, location_name: 'run'))
    GetRunResult.type = Types::GetRunResult
    GetSuiteRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    GetSuiteRequest.type = Types::GetSuiteRequest
    GetSuiteResult.add_member(:suite, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Suite, location_name: 'suite'))
    GetSuiteResult.type = Types::GetSuiteResult
    GetTestGridProjectRequest.add_member(:project_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFarmArn, location_name: 'projectArn', traits: {"smithy.api#required" => {}}))
    GetTestGridProjectRequest.type = Types::GetTestGridProjectRequest
    GetTestGridProjectResult.add_member(:test_grid_project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestGridProject, location_name: 'testGridProject'))
    GetTestGridProjectResult.type = Types::GetTestGridProjectResult
    GetTestGridSessionRequest.add_member(:project_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFarmArn, location_name: 'projectArn'))
    GetTestGridSessionRequest.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'sessionId'))
    GetTestGridSessionRequest.add_member(:session_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFarmArn, location_name: 'sessionArn'))
    GetTestGridSessionRequest.type = Types::GetTestGridSessionRequest
    GetTestGridSessionResult.add_member(:test_grid_session, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestGridSession, location_name: 'testGridSession'))
    GetTestGridSessionResult.type = Types::GetTestGridSessionResult
    GetTestRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    GetTestRequest.type = Types::GetTestRequest
    GetTestResult.add_member(:test, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Test, location_name: 'test'))
    GetTestResult.type = Types::GetTestResult
    GetUploadRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    GetUploadRequest.type = Types::GetUploadRequest
    GetUploadResult.add_member(:upload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Upload, location_name: 'upload'))
    GetUploadResult.type = Types::GetUploadResult
    GetVPCEConfigurationRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    GetVPCEConfigurationRequest.type = Types::GetVPCEConfigurationRequest
    GetVPCEConfigurationResult.add_member(:vpce_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCEConfiguration, location_name: 'vpceConfiguration'))
    GetVPCEConfigurationResult.type = Types::GetVPCEConfigurationResult
    IdempotencyException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    IdempotencyException.type = Types::IdempotencyException
    IncompatibilityMessage.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    IncompatibilityMessage.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceAttribute, location_name: 'type'))
    IncompatibilityMessage.type = Types::IncompatibilityMessage
    IncompatibilityMessages.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibilityMessage)
    InstallToRemoteAccessSessionRequest.add_member(:remote_access_session_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'remoteAccessSessionArn', traits: {"smithy.api#required" => {}}))
    InstallToRemoteAccessSessionRequest.add_member(:app_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'appArn', traits: {"smithy.api#required" => {}}))
    InstallToRemoteAccessSessionRequest.type = Types::InstallToRemoteAccessSessionRequest
    InstallToRemoteAccessSessionResult.add_member(:app_upload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Upload, location_name: 'appUpload'))
    InstallToRemoteAccessSessionResult.type = Types::InstallToRemoteAccessSessionResult
    InstanceLabels.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    InstanceProfile.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn'))
    InstanceProfile.add_member(:package_cleanup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'packageCleanup'))
    InstanceProfile.add_member(:exclude_app_packages_from_cleanup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageIds, location_name: 'excludeAppPackagesFromCleanup'))
    InstanceProfile.add_member(:reboot_after_use, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'rebootAfterUse'))
    InstanceProfile.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    InstanceProfile.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'description'))
    InstanceProfile.type = Types::InstanceProfile
    InstanceProfiles.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceProfile)
    InstanceStatus.add_member(:in_use, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_USE', traits: {"smithy.api#enumValue" => "IN_USE"}))
    InstanceStatus.add_member(:preparing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PREPARING', traits: {"smithy.api#enumValue" => "PREPARING"}))
    InstanceStatus.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    InstanceStatus.add_member(:not_available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_AVAILABLE', traits: {"smithy.api#enumValue" => "NOT_AVAILABLE"}))
    InteractionMode.add_member(:interactive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERACTIVE', traits: {"smithy.api#enumValue" => "INTERACTIVE"}))
    InteractionMode.add_member(:no_video, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_VIDEO', traits: {"smithy.api#enumValue" => "NO_VIDEO"}))
    InteractionMode.add_member(:video_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VIDEO_ONLY', traits: {"smithy.api#enumValue" => "VIDEO_ONLY"}))
    InternalServiceException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    InternalServiceException.type = Types::InternalServiceException
    InvalidOperationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    InvalidOperationException.type = Types::InvalidOperationException
    IosPaths.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Job.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn'))
    Job.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    Job.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestType, location_name: 'type'))
    Job.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'created'))
    Job.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: 'status'))
    Job.add_member(:result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionResult, location_name: 'result'))
    Job.add_member(:started, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'started'))
    Job.add_member(:stopped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'stopped'))
    Job.add_member(:counters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Counters, location_name: 'counters'))
    Job.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    Job.add_member(:device, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Device, location_name: 'device'))
    Job.add_member(:instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'instanceArn'))
    Job.add_member(:device_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceMinutes, location_name: 'deviceMinutes'))
    Job.add_member(:video_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'videoEndpoint'))
    Job.add_member(:video_capture, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VideoCapture, location_name: 'videoCapture'))
    Job.type = Types::Job
    Jobs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Job)
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    LimitExceededException.type = Types::LimitExceededException
    ListArtifactsRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    ListArtifactsRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactCategory, location_name: 'type', traits: {"smithy.api#required" => {}}))
    ListArtifactsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListArtifactsRequest.type = Types::ListArtifactsRequest
    ListArtifactsResult.add_member(:artifacts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Artifacts, location_name: 'artifacts'))
    ListArtifactsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListArtifactsResult.type = Types::ListArtifactsResult
    ListDeviceInstancesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxResults'))
    ListDeviceInstancesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListDeviceInstancesRequest.type = Types::ListDeviceInstancesRequest
    ListDeviceInstancesResult.add_member(:device_instances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceInstances, location_name: 'deviceInstances'))
    ListDeviceInstancesResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListDeviceInstancesResult.type = Types::ListDeviceInstancesResult
    ListDevicePoolsRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    ListDevicePoolsRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DevicePoolType, location_name: 'type'))
    ListDevicePoolsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListDevicePoolsRequest.type = Types::ListDevicePoolsRequest
    ListDevicePoolsResult.add_member(:device_pools, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DevicePools, location_name: 'devicePools'))
    ListDevicePoolsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListDevicePoolsResult.type = Types::ListDevicePoolsResult
    ListDevicesRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn'))
    ListDevicesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListDevicesRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFilters, location_name: 'filters'))
    ListDevicesRequest.type = Types::ListDevicesRequest
    ListDevicesResult.add_member(:devices, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Devices, location_name: 'devices'))
    ListDevicesResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListDevicesResult.type = Types::ListDevicesResult
    ListInstanceProfilesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxResults'))
    ListInstanceProfilesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListInstanceProfilesRequest.type = Types::ListInstanceProfilesRequest
    ListInstanceProfilesResult.add_member(:instance_profiles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceProfiles, location_name: 'instanceProfiles'))
    ListInstanceProfilesResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListInstanceProfilesResult.type = Types::ListInstanceProfilesResult
    ListJobsRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    ListJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListJobsRequest.type = Types::ListJobsRequest
    ListJobsResult.add_member(:jobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Jobs, location_name: 'jobs'))
    ListJobsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListJobsResult.type = Types::ListJobsResult
    ListNetworkProfilesRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    ListNetworkProfilesRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkProfileType, location_name: 'type'))
    ListNetworkProfilesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListNetworkProfilesRequest.type = Types::ListNetworkProfilesRequest
    ListNetworkProfilesResult.add_member(:network_profiles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkProfiles, location_name: 'networkProfiles'))
    ListNetworkProfilesResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListNetworkProfilesResult.type = Types::ListNetworkProfilesResult
    ListOfferingPromotionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListOfferingPromotionsRequest.type = Types::ListOfferingPromotionsRequest
    ListOfferingPromotionsResult.add_member(:offering_promotions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingPromotions, location_name: 'offeringPromotions'))
    ListOfferingPromotionsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListOfferingPromotionsResult.type = Types::ListOfferingPromotionsResult
    ListOfferingTransactionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListOfferingTransactionsRequest.type = Types::ListOfferingTransactionsRequest
    ListOfferingTransactionsResult.add_member(:offering_transactions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingTransactions, location_name: 'offeringTransactions'))
    ListOfferingTransactionsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListOfferingTransactionsResult.type = Types::ListOfferingTransactionsResult
    ListOfferingsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListOfferingsRequest.type = Types::ListOfferingsRequest
    ListOfferingsResult.add_member(:offerings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Offerings, location_name: 'offerings'))
    ListOfferingsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListOfferingsResult.type = Types::ListOfferingsResult
    ListProjectsRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn'))
    ListProjectsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListProjectsRequest.type = Types::ListProjectsRequest
    ListProjectsResult.add_member(:projects, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Projects, location_name: 'projects'))
    ListProjectsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListProjectsResult.type = Types::ListProjectsResult
    ListRemoteAccessSessionsRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    ListRemoteAccessSessionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListRemoteAccessSessionsRequest.type = Types::ListRemoteAccessSessionsRequest
    ListRemoteAccessSessionsResult.add_member(:remote_access_sessions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoteAccessSessions, location_name: 'remoteAccessSessions'))
    ListRemoteAccessSessionsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListRemoteAccessSessionsResult.type = Types::ListRemoteAccessSessionsResult
    ListRunsRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    ListRunsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListRunsRequest.type = Types::ListRunsRequest
    ListRunsResult.add_member(:runs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Runs, location_name: 'runs'))
    ListRunsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListRunsResult.type = Types::ListRunsResult
    ListSamplesRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    ListSamplesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListSamplesRequest.type = Types::ListSamplesRequest
    ListSamplesResult.add_member(:samples, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Samples, location_name: 'samples'))
    ListSamplesResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListSamplesResult.type = Types::ListSamplesResult
    ListSuitesRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    ListSuitesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListSuitesRequest.type = Types::ListSuitesRequest
    ListSuitesResult.add_member(:suites, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Suites, location_name: 'suites'))
    ListSuitesResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListSuitesResult.type = Types::ListSuitesResult
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFarmArn, location_name: 'ResourceARN', traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTestGridProjectsRequest.add_member(:max_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPageSize, location_name: 'maxResult'))
    ListTestGridProjectsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListTestGridProjectsRequest.type = Types::ListTestGridProjectsRequest
    ListTestGridProjectsResult.add_member(:test_grid_projects, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestGridProjects, location_name: 'testGridProjects'))
    ListTestGridProjectsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListTestGridProjectsResult.type = Types::ListTestGridProjectsResult
    ListTestGridSessionActionsRequest.add_member(:session_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFarmArn, location_name: 'sessionArn', traits: {"smithy.api#required" => {}}))
    ListTestGridSessionActionsRequest.add_member(:max_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPageSize, location_name: 'maxResult'))
    ListTestGridSessionActionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListTestGridSessionActionsRequest.type = Types::ListTestGridSessionActionsRequest
    ListTestGridSessionActionsResult.add_member(:actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestGridSessionActions, location_name: 'actions'))
    ListTestGridSessionActionsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListTestGridSessionActionsResult.type = Types::ListTestGridSessionActionsResult
    ListTestGridSessionArtifactsRequest.add_member(:session_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFarmArn, location_name: 'sessionArn', traits: {"smithy.api#required" => {}}))
    ListTestGridSessionArtifactsRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestGridSessionArtifactCategory, location_name: 'type'))
    ListTestGridSessionArtifactsRequest.add_member(:max_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPageSize, location_name: 'maxResult'))
    ListTestGridSessionArtifactsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListTestGridSessionArtifactsRequest.type = Types::ListTestGridSessionArtifactsRequest
    ListTestGridSessionArtifactsResult.add_member(:artifacts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestGridSessionArtifacts, location_name: 'artifacts'))
    ListTestGridSessionArtifactsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListTestGridSessionArtifactsResult.type = Types::ListTestGridSessionArtifactsResult
    ListTestGridSessionsRequest.add_member(:project_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFarmArn, location_name: 'projectArn', traits: {"smithy.api#required" => {}}))
    ListTestGridSessionsRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestGridSessionStatus, location_name: 'status'))
    ListTestGridSessionsRequest.add_member(:creation_time_after, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'creationTimeAfter'))
    ListTestGridSessionsRequest.add_member(:creation_time_before, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'creationTimeBefore'))
    ListTestGridSessionsRequest.add_member(:end_time_after, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'endTimeAfter'))
    ListTestGridSessionsRequest.add_member(:end_time_before, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'endTimeBefore'))
    ListTestGridSessionsRequest.add_member(:max_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPageSize, location_name: 'maxResult'))
    ListTestGridSessionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListTestGridSessionsRequest.type = Types::ListTestGridSessionsRequest
    ListTestGridSessionsResult.add_member(:test_grid_sessions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestGridSessions, location_name: 'testGridSessions'))
    ListTestGridSessionsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListTestGridSessionsResult.type = Types::ListTestGridSessionsResult
    ListTestsRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    ListTestsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListTestsRequest.type = Types::ListTestsRequest
    ListTestsResult.add_member(:tests, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tests, location_name: 'tests'))
    ListTestsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListTestsResult.type = Types::ListTestsResult
    ListUniqueProblemsRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    ListUniqueProblemsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListUniqueProblemsRequest.type = Types::ListUniqueProblemsRequest
    ListUniqueProblemsResult.add_member(:unique_problems, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UniqueProblemsByExecutionResultMap, location_name: 'uniqueProblems'))
    ListUniqueProblemsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListUniqueProblemsResult.type = Types::ListUniqueProblemsResult
    ListUploadsRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    ListUploadsRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadType, location_name: 'type'))
    ListUploadsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListUploadsRequest.type = Types::ListUploadsRequest
    ListUploadsResult.add_member(:uploads, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uploads, location_name: 'uploads'))
    ListUploadsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListUploadsResult.type = Types::ListUploadsResult
    ListVPCEConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxResults'))
    ListVPCEConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListVPCEConfigurationsRequest.type = Types::ListVPCEConfigurationsRequest
    ListVPCEConfigurationsResult.add_member(:vpce_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCEConfigurations, location_name: 'vpceConfigurations'))
    ListVPCEConfigurationsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListVPCEConfigurationsResult.type = Types::ListVPCEConfigurationsResult
    Location.add_member(:latitude, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'latitude', traits: {"smithy.api#required" => {}}))
    Location.add_member(:longitude, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'longitude', traits: {"smithy.api#required" => {}}))
    Location.type = Types::Location
    MaxSlotMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MaxSlotMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer)
    MonetaryAmount.add_member(:amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'amount'))
    MonetaryAmount.add_member(:currency_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyCode, location_name: 'currencyCode'))
    MonetaryAmount.type = Types::MonetaryAmount
    NetworkProfile.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn'))
    NetworkProfile.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    NetworkProfile.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'description'))
    NetworkProfile.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkProfileType, location_name: 'type'))
    NetworkProfile.add_member(:uplink_bandwidth_bits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'uplinkBandwidthBits'))
    NetworkProfile.add_member(:downlink_bandwidth_bits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'downlinkBandwidthBits'))
    NetworkProfile.add_member(:uplink_delay_ms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'uplinkDelayMs'))
    NetworkProfile.add_member(:downlink_delay_ms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'downlinkDelayMs'))
    NetworkProfile.add_member(:uplink_jitter_ms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'uplinkJitterMs'))
    NetworkProfile.add_member(:downlink_jitter_ms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'downlinkJitterMs'))
    NetworkProfile.add_member(:uplink_loss_percent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PercentInteger, location_name: 'uplinkLossPercent', traits: {"smithy.api#default" => 0}))
    NetworkProfile.add_member(:downlink_loss_percent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PercentInteger, location_name: 'downlinkLossPercent', traits: {"smithy.api#default" => 0}))
    NetworkProfile.type = Types::NetworkProfile
    NetworkProfileType.add_member(:curated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CURATED', traits: {"smithy.api#enumValue" => "CURATED"}))
    NetworkProfileType.add_member(:private, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRIVATE', traits: {"smithy.api#enumValue" => "PRIVATE"}))
    NetworkProfiles.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkProfile)
    NotEligibleException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    NotEligibleException.type = Types::NotEligibleException
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    NotFoundException.type = Types::NotFoundException
    Offering.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingIdentifier, location_name: 'id'))
    Offering.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'description'))
    Offering.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingType, location_name: 'type'))
    Offering.add_member(:platform, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DevicePlatform, location_name: 'platform'))
    Offering.add_member(:recurring_charges, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecurringCharges, location_name: 'recurringCharges'))
    Offering.type = Types::Offering
    OfferingPromotion.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingPromotionIdentifier, location_name: 'id'))
    OfferingPromotion.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'description'))
    OfferingPromotion.type = Types::OfferingPromotion
    OfferingPromotions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingPromotion)
    OfferingStatus.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingTransactionType, location_name: 'type'))
    OfferingStatus.add_member(:offering, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Offering, location_name: 'offering'))
    OfferingStatus.add_member(:quantity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'quantity'))
    OfferingStatus.add_member(:effective_on, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'effectiveOn'))
    OfferingStatus.type = Types::OfferingStatus
    OfferingStatusMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingIdentifier)
    OfferingStatusMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingStatus)
    OfferingTransaction.add_member(:offering_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingStatus, location_name: 'offeringStatus'))
    OfferingTransaction.add_member(:transaction_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionIdentifier, location_name: 'transactionId'))
    OfferingTransaction.add_member(:offering_promotion_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingPromotionIdentifier, location_name: 'offeringPromotionId'))
    OfferingTransaction.add_member(:created_on, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'createdOn'))
    OfferingTransaction.add_member(:cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MonetaryAmount, location_name: 'cost'))
    OfferingTransaction.type = Types::OfferingTransaction
    OfferingTransactionType.add_member(:purchase, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PURCHASE', traits: {"smithy.api#enumValue" => "PURCHASE"}))
    OfferingTransactionType.add_member(:renew, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RENEW', traits: {"smithy.api#enumValue" => "RENEW"}))
    OfferingTransactionType.add_member(:system, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYSTEM', traits: {"smithy.api#enumValue" => "SYSTEM"}))
    OfferingTransactions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingTransaction)
    OfferingType.add_member(:recurring, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RECURRING', traits: {"smithy.api#enumValue" => "RECURRING"}))
    Offerings.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Offering)
    PackageIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Problem.add_member(:run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProblemDetail, location_name: 'run'))
    Problem.add_member(:job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProblemDetail, location_name: 'job'))
    Problem.add_member(:suite, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProblemDetail, location_name: 'suite'))
    Problem.add_member(:test, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProblemDetail, location_name: 'test'))
    Problem.add_member(:device, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Device, location_name: 'device'))
    Problem.add_member(:result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionResult, location_name: 'result'))
    Problem.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    Problem.type = Types::Problem
    ProblemDetail.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn'))
    ProblemDetail.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    ProblemDetail.type = Types::ProblemDetail
    Problems.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Problem)
    Project.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn'))
    Project.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    Project.add_member(:default_job_timeout_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobTimeoutMinutes, location_name: 'defaultJobTimeoutMinutes'))
    Project.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'created'))
    Project.add_member(:vpc_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: 'vpcConfig'))
    Project.type = Types::Project
    Projects.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Project)
    PurchaseOfferingRequest.add_member(:offering_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingIdentifier, location_name: 'offeringId', traits: {"smithy.api#required" => {}}))
    PurchaseOfferingRequest.add_member(:quantity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'quantity', traits: {"smithy.api#required" => {}}))
    PurchaseOfferingRequest.add_member(:offering_promotion_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingPromotionIdentifier, location_name: 'offeringPromotionId'))
    PurchaseOfferingRequest.type = Types::PurchaseOfferingRequest
    PurchaseOfferingResult.add_member(:offering_transaction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingTransaction, location_name: 'offeringTransaction'))
    PurchaseOfferingResult.type = Types::PurchaseOfferingResult
    PurchasedDevicesMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DevicePlatform)
    PurchasedDevicesMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer)
    Radios.add_member(:wifi, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'wifi'))
    Radios.add_member(:bluetooth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'bluetooth'))
    Radios.add_member(:nfc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'nfc'))
    Radios.add_member(:gps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'gps'))
    Radios.type = Types::Radios
    RecurringCharge.add_member(:cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MonetaryAmount, location_name: 'cost'))
    RecurringCharge.add_member(:frequency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecurringChargeFrequency, location_name: 'frequency'))
    RecurringCharge.type = Types::RecurringCharge
    RecurringChargeFrequency.add_member(:monthly, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MONTHLY', traits: {"smithy.api#enumValue" => "MONTHLY"}))
    RecurringCharges.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecurringCharge)
    RemoteAccessSession.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn'))
    RemoteAccessSession.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    RemoteAccessSession.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'created'))
    RemoteAccessSession.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: 'status'))
    RemoteAccessSession.add_member(:result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionResult, location_name: 'result'))
    RemoteAccessSession.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    RemoteAccessSession.add_member(:started, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'started'))
    RemoteAccessSession.add_member(:stopped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'stopped'))
    RemoteAccessSession.add_member(:device, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Device, location_name: 'device'))
    RemoteAccessSession.add_member(:instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'instanceArn'))
    RemoteAccessSession.add_member(:remote_debug_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'remoteDebugEnabled'))
    RemoteAccessSession.add_member(:remote_record_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'remoteRecordEnabled'))
    RemoteAccessSession.add_member(:remote_record_app_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'remoteRecordAppArn'))
    RemoteAccessSession.add_member(:host_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostAddress, location_name: 'hostAddress'))
    RemoteAccessSession.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientId, location_name: 'clientId'))
    RemoteAccessSession.add_member(:billing_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingMethod, location_name: 'billingMethod'))
    RemoteAccessSession.add_member(:device_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceMinutes, location_name: 'deviceMinutes'))
    RemoteAccessSession.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'endpoint'))
    RemoteAccessSession.add_member(:device_udid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'deviceUdid'))
    RemoteAccessSession.add_member(:interaction_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InteractionMode, location_name: 'interactionMode'))
    RemoteAccessSession.add_member(:skip_app_resign, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SkipAppResign, location_name: 'skipAppResign'))
    RemoteAccessSession.add_member(:vpc_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: 'vpcConfig'))
    RemoteAccessSession.add_member(:device_proxy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceProxy, location_name: 'deviceProxy'))
    RemoteAccessSession.type = Types::RemoteAccessSession
    RemoteAccessSessions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoteAccessSession)
    RenewOfferingRequest.add_member(:offering_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingIdentifier, location_name: 'offeringId', traits: {"smithy.api#required" => {}}))
    RenewOfferingRequest.add_member(:quantity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'quantity', traits: {"smithy.api#required" => {}}))
    RenewOfferingRequest.type = Types::RenewOfferingRequest
    RenewOfferingResult.add_member(:offering_transaction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingTransaction, location_name: 'offeringTransaction'))
    RenewOfferingResult.type = Types::RenewOfferingResult
    Resolution.add_member(:width, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'width'))
    Resolution.add_member(:height, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'height'))
    Resolution.type = Types::Resolution
    Rule.add_member(:attribute, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceAttribute, location_name: 'attribute'))
    Rule.add_member(:operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleOperator, location_name: 'operator'))
    Rule.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'value'))
    Rule.type = Types::Rule
    RuleOperator.add_member(:equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQUALS', traits: {"smithy.api#enumValue" => "EQUALS"}))
    RuleOperator.add_member(:less_than, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LESS_THAN', traits: {"smithy.api#enumValue" => "LESS_THAN"}))
    RuleOperator.add_member(:less_than_or_equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LESS_THAN_OR_EQUALS', traits: {"smithy.api#enumValue" => "LESS_THAN_OR_EQUALS"}))
    RuleOperator.add_member(:greater_than, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GREATER_THAN', traits: {"smithy.api#enumValue" => "GREATER_THAN"}))
    RuleOperator.add_member(:greater_than_or_equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GREATER_THAN_OR_EQUALS', traits: {"smithy.api#enumValue" => "GREATER_THAN_OR_EQUALS"}))
    RuleOperator.add_member(:in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN', traits: {"smithy.api#enumValue" => "IN"}))
    RuleOperator.add_member(:not_in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_IN', traits: {"smithy.api#enumValue" => "NOT_IN"}))
    RuleOperator.add_member(:contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTAINS', traits: {"smithy.api#enumValue" => "CONTAINS"}))
    Rules.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rule)
    Run.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn'))
    Run.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    Run.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestType, location_name: 'type'))
    Run.add_member(:platform, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DevicePlatform, location_name: 'platform'))
    Run.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'created'))
    Run.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: 'status'))
    Run.add_member(:result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionResult, location_name: 'result'))
    Run.add_member(:started, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'started'))
    Run.add_member(:stopped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'stopped'))
    Run.add_member(:counters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Counters, location_name: 'counters'))
    Run.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    Run.add_member(:total_jobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'totalJobs'))
    Run.add_member(:completed_jobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'completedJobs'))
    Run.add_member(:billing_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingMethod, location_name: 'billingMethod'))
    Run.add_member(:device_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceMinutes, location_name: 'deviceMinutes'))
    Run.add_member(:network_profile, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkProfile, location_name: 'networkProfile'))
    Run.add_member(:device_proxy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceProxy, location_name: 'deviceProxy'))
    Run.add_member(:parsing_result_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'parsingResultUrl'))
    Run.add_member(:result_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionResultCode, location_name: 'resultCode'))
    Run.add_member(:seed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'seed'))
    Run.add_member(:app_upload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'appUpload'))
    Run.add_member(:event_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'eventCount'))
    Run.add_member(:job_timeout_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobTimeoutMinutes, location_name: 'jobTimeoutMinutes'))
    Run.add_member(:device_pool_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'devicePoolArn'))
    Run.add_member(:locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'locale'))
    Run.add_member(:radios, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Radios, location_name: 'radios'))
    Run.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Location, location_name: 'location'))
    Run.add_member(:customer_artifact_paths, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerArtifactPaths, location_name: 'customerArtifactPaths'))
    Run.add_member(:web_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'webUrl'))
    Run.add_member(:skip_app_resign, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SkipAppResign, location_name: 'skipAppResign'))
    Run.add_member(:test_spec_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'testSpecArn'))
    Run.add_member(:device_selection_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceSelectionResult, location_name: 'deviceSelectionResult'))
    Run.add_member(:vpc_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: 'vpcConfig'))
    Run.type = Types::Run
    Runs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Run)
    Sample.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn'))
    Sample.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SampleType, location_name: 'type'))
    Sample.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: URL, location_name: 'url'))
    Sample.type = Types::Sample
    SampleType.add_member(:cpu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CPU', traits: {"smithy.api#enumValue" => "CPU"}))
    SampleType.add_member(:memory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEMORY', traits: {"smithy.api#enumValue" => "MEMORY"}))
    SampleType.add_member(:threads, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'THREADS', traits: {"smithy.api#enumValue" => "THREADS"}))
    SampleType.add_member(:rx_rate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RX_RATE', traits: {"smithy.api#enumValue" => "RX_RATE"}))
    SampleType.add_member(:tx_rate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TX_RATE', traits: {"smithy.api#enumValue" => "TX_RATE"}))
    SampleType.add_member(:rx, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RX', traits: {"smithy.api#enumValue" => "RX"}))
    SampleType.add_member(:tx, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TX', traits: {"smithy.api#enumValue" => "TX"}))
    SampleType.add_member(:native_frames, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NATIVE_FRAMES', traits: {"smithy.api#enumValue" => "NATIVE_FRAMES"}))
    SampleType.add_member(:native_fps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NATIVE_FPS', traits: {"smithy.api#enumValue" => "NATIVE_FPS"}))
    SampleType.add_member(:native_min_drawtime, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NATIVE_MIN_DRAWTIME', traits: {"smithy.api#enumValue" => "NATIVE_MIN_DRAWTIME"}))
    SampleType.add_member(:native_avg_drawtime, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NATIVE_AVG_DRAWTIME', traits: {"smithy.api#enumValue" => "NATIVE_AVG_DRAWTIME"}))
    SampleType.add_member(:native_max_drawtime, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NATIVE_MAX_DRAWTIME', traits: {"smithy.api#enumValue" => "NATIVE_MAX_DRAWTIME"}))
    SampleType.add_member(:opengl_frames, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPENGL_FRAMES', traits: {"smithy.api#enumValue" => "OPENGL_FRAMES"}))
    SampleType.add_member(:opengl_fps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPENGL_FPS', traits: {"smithy.api#enumValue" => "OPENGL_FPS"}))
    SampleType.add_member(:opengl_min_drawtime, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPENGL_MIN_DRAWTIME', traits: {"smithy.api#enumValue" => "OPENGL_MIN_DRAWTIME"}))
    SampleType.add_member(:opengl_avg_drawtime, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPENGL_AVG_DRAWTIME', traits: {"smithy.api#enumValue" => "OPENGL_AVG_DRAWTIME"}))
    SampleType.add_member(:opengl_max_drawtime, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPENGL_MAX_DRAWTIME', traits: {"smithy.api#enumValue" => "OPENGL_MAX_DRAWTIME"}))
    Samples.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Sample)
    ScheduleRunConfiguration.add_member(:extra_data_package_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'extraDataPackageArn'))
    ScheduleRunConfiguration.add_member(:network_profile_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'networkProfileArn'))
    ScheduleRunConfiguration.add_member(:locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'locale'))
    ScheduleRunConfiguration.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Location, location_name: 'location'))
    ScheduleRunConfiguration.add_member(:vpce_configuration_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceNames, location_name: 'vpceConfigurationArns'))
    ScheduleRunConfiguration.add_member(:device_proxy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceProxy, location_name: 'deviceProxy'))
    ScheduleRunConfiguration.add_member(:customer_artifact_paths, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerArtifactPaths, location_name: 'customerArtifactPaths'))
    ScheduleRunConfiguration.add_member(:radios, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Radios, location_name: 'radios'))
    ScheduleRunConfiguration.add_member(:auxiliary_apps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceNames, location_name: 'auxiliaryApps'))
    ScheduleRunConfiguration.add_member(:billing_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingMethod, location_name: 'billingMethod'))
    ScheduleRunConfiguration.type = Types::ScheduleRunConfiguration
    ScheduleRunRequest.add_member(:project_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'projectArn', traits: {"smithy.api#required" => {}}))
    ScheduleRunRequest.add_member(:app_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'appArn'))
    ScheduleRunRequest.add_member(:device_pool_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'devicePoolArn'))
    ScheduleRunRequest.add_member(:device_selection_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceSelectionConfiguration, location_name: 'deviceSelectionConfiguration'))
    ScheduleRunRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    ScheduleRunRequest.add_member(:test, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleRunTest, location_name: 'test', traits: {"smithy.api#required" => {}}))
    ScheduleRunRequest.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleRunConfiguration, location_name: 'configuration'))
    ScheduleRunRequest.add_member(:execution_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionConfiguration, location_name: 'executionConfiguration'))
    ScheduleRunRequest.type = Types::ScheduleRunRequest
    ScheduleRunResult.add_member(:run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Run, location_name: 'run'))
    ScheduleRunResult.type = Types::ScheduleRunResult
    ScheduleRunTest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    ScheduleRunTest.add_member(:test_package_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'testPackageArn'))
    ScheduleRunTest.add_member(:test_spec_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'testSpecArn'))
    ScheduleRunTest.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filter, location_name: 'filter'))
    ScheduleRunTest.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestParameters, location_name: 'parameters'))
    ScheduleRunTest.type = Types::ScheduleRunTest
    SecurityGroupIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    ServiceAccountException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    ServiceAccountException.type = Types::ServiceAccountException
    StopJobRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    StopJobRequest.type = Types::StopJobRequest
    StopJobResult.add_member(:job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Job, location_name: 'job'))
    StopJobResult.type = Types::StopJobResult
    StopRemoteAccessSessionRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    StopRemoteAccessSessionRequest.type = Types::StopRemoteAccessSessionRequest
    StopRemoteAccessSessionResult.add_member(:remote_access_session, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoteAccessSession, location_name: 'remoteAccessSession'))
    StopRemoteAccessSessionResult.type = Types::StopRemoteAccessSessionResult
    StopRunRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    StopRunRequest.type = Types::StopRunRequest
    StopRunResult.add_member(:run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Run, location_name: 'run'))
    StopRunResult.type = Types::StopRunResult
    SubnetIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    Suite.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn'))
    Suite.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    Suite.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestType, location_name: 'type'))
    Suite.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'created'))
    Suite.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: 'status'))
    Suite.add_member(:result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionResult, location_name: 'result'))
    Suite.add_member(:started, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'started'))
    Suite.add_member(:stopped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'stopped'))
    Suite.add_member(:counters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Counters, location_name: 'counters'))
    Suite.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    Suite.add_member(:device_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceMinutes, location_name: 'deviceMinutes'))
    Suite.type = Types::Suite
    Suites.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Suite)
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagOperationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    TagOperationException.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceName'))
    TagOperationException.type = Types::TagOperationException
    TagPolicyException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    TagPolicyException.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceName'))
    TagPolicyException.type = Types::TagPolicyException
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFarmArn, location_name: 'ResourceARN', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Test.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn'))
    Test.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    Test.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestType, location_name: 'type'))
    Test.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'created'))
    Test.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: 'status'))
    Test.add_member(:result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionResult, location_name: 'result'))
    Test.add_member(:started, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'started'))
    Test.add_member(:stopped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'stopped'))
    Test.add_member(:counters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Counters, location_name: 'counters'))
    Test.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    Test.add_member(:device_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceMinutes, location_name: 'deviceMinutes'))
    Test.type = Types::Test
    TestGridProject.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFarmArn, location_name: 'arn'))
    TestGridProject.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    TestGridProject.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description'))
    TestGridProject.add_member(:vpc_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestGridVpcConfig, location_name: 'vpcConfig'))
    TestGridProject.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'created'))
    TestGridProject.type = Types::TestGridProject
    TestGridProjects.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestGridProject)
    TestGridSession.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFarmArn, location_name: 'arn'))
    TestGridSession.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestGridSessionStatus, location_name: 'status'))
    TestGridSession.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'created'))
    TestGridSession.add_member(:ended, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'ended'))
    TestGridSession.add_member(:billing_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'billingMinutes'))
    TestGridSession.add_member(:selenium_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'seleniumProperties'))
    TestGridSession.type = Types::TestGridSession
    TestGridSessionAction.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'action'))
    TestGridSessionAction.add_member(:started, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'started'))
    TestGridSessionAction.add_member(:duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'duration'))
    TestGridSessionAction.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'statusCode'))
    TestGridSessionAction.add_member(:request_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'requestMethod'))
    TestGridSessionAction.type = Types::TestGridSessionAction
    TestGridSessionActions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestGridSessionAction)
    TestGridSessionArtifact.add_member(:filename, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'filename'))
    TestGridSessionArtifact.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestGridSessionArtifactType, location_name: 'type'))
    TestGridSessionArtifact.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'url'))
    TestGridSessionArtifact.type = Types::TestGridSessionArtifact
    TestGridSessionArtifactCategory.add_member(:video, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VIDEO', traits: {"smithy.api#enumValue" => "VIDEO"}))
    TestGridSessionArtifactCategory.add_member(:log, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOG', traits: {"smithy.api#enumValue" => "LOG"}))
    TestGridSessionArtifactType.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    TestGridSessionArtifactType.add_member(:video, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VIDEO', traits: {"smithy.api#enumValue" => "VIDEO"}))
    TestGridSessionArtifactType.add_member(:selenium_log, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SELENIUM_LOG', traits: {"smithy.api#enumValue" => "SELENIUM_LOG"}))
    TestGridSessionArtifacts.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestGridSessionArtifact)
    TestGridSessionStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    TestGridSessionStatus.add_member(:closed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOSED', traits: {"smithy.api#enumValue" => "CLOSED"}))
    TestGridSessionStatus.add_member(:errored, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERRORED', traits: {"smithy.api#enumValue" => "ERRORED"}))
    TestGridSessions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestGridSession)
    TestGridVpcConfig.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: 'securityGroupIds', traits: {"smithy.api#required" => {}}))
    TestGridVpcConfig.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'subnetIds', traits: {"smithy.api#required" => {}}))
    TestGridVpcConfig.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'vpcId', traits: {"smithy.api#required" => {}}))
    TestGridVpcConfig.type = Types::TestGridVpcConfig
    TestParameters.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    TestParameters.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    TestType.add_member(:builtin_fuzz, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BUILTIN_FUZZ', traits: {"smithy.api#enumValue" => "BUILTIN_FUZZ"}))
    TestType.add_member(:appium_java_junit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_JAVA_JUNIT', traits: {"smithy.api#enumValue" => "APPIUM_JAVA_JUNIT"}))
    TestType.add_member(:appium_java_testng, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_JAVA_TESTNG', traits: {"smithy.api#enumValue" => "APPIUM_JAVA_TESTNG"}))
    TestType.add_member(:appium_python, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_PYTHON', traits: {"smithy.api#enumValue" => "APPIUM_PYTHON"}))
    TestType.add_member(:appium_node, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_NODE', traits: {"smithy.api#enumValue" => "APPIUM_NODE"}))
    TestType.add_member(:appium_ruby, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_RUBY', traits: {"smithy.api#enumValue" => "APPIUM_RUBY"}))
    TestType.add_member(:appium_web_java_junit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_WEB_JAVA_JUNIT', traits: {"smithy.api#enumValue" => "APPIUM_WEB_JAVA_JUNIT"}))
    TestType.add_member(:appium_web_java_testng, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_WEB_JAVA_TESTNG', traits: {"smithy.api#enumValue" => "APPIUM_WEB_JAVA_TESTNG"}))
    TestType.add_member(:appium_web_python, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_WEB_PYTHON', traits: {"smithy.api#enumValue" => "APPIUM_WEB_PYTHON"}))
    TestType.add_member(:appium_web_node, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_WEB_NODE', traits: {"smithy.api#enumValue" => "APPIUM_WEB_NODE"}))
    TestType.add_member(:appium_web_ruby, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_WEB_RUBY', traits: {"smithy.api#enumValue" => "APPIUM_WEB_RUBY"}))
    TestType.add_member(:instrumentation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTRUMENTATION', traits: {"smithy.api#enumValue" => "INSTRUMENTATION"}))
    TestType.add_member(:xctest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'XCTEST', traits: {"smithy.api#enumValue" => "XCTEST"}))
    TestType.add_member(:xctest_ui, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'XCTEST_UI', traits: {"smithy.api#enumValue" => "XCTEST_UI"}))
    Tests.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Test)
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    TooManyTagsException.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceName'))
    TooManyTagsException.type = Types::TooManyTagsException
    TrialMinutes.add_member(:total, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'total'))
    TrialMinutes.add_member(:remaining, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'remaining'))
    TrialMinutes.type = Types::TrialMinutes
    UniqueProblem.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    UniqueProblem.add_member(:problems, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Problems, location_name: 'problems'))
    UniqueProblem.type = Types::UniqueProblem
    UniqueProblems.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UniqueProblem)
    UniqueProblemsByExecutionResultMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionResult)
    UniqueProblemsByExecutionResultMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UniqueProblems)
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFarmArn, location_name: 'ResourceARN', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateDeviceInstanceRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    UpdateDeviceInstanceRequest.add_member(:profile_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'profileArn'))
    UpdateDeviceInstanceRequest.add_member(:labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceLabels, location_name: 'labels'))
    UpdateDeviceInstanceRequest.type = Types::UpdateDeviceInstanceRequest
    UpdateDeviceInstanceResult.add_member(:device_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceInstance, location_name: 'deviceInstance'))
    UpdateDeviceInstanceResult.type = Types::UpdateDeviceInstanceResult
    UpdateDevicePoolRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    UpdateDevicePoolRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    UpdateDevicePoolRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'description'))
    UpdateDevicePoolRequest.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rules, location_name: 'rules'))
    UpdateDevicePoolRequest.add_member(:max_devices, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxDevices'))
    UpdateDevicePoolRequest.add_member(:clear_max_devices, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'clearMaxDevices'))
    UpdateDevicePoolRequest.type = Types::UpdateDevicePoolRequest
    UpdateDevicePoolResult.add_member(:device_pool, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DevicePool, location_name: 'devicePool'))
    UpdateDevicePoolResult.type = Types::UpdateDevicePoolResult
    UpdateInstanceProfileRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    UpdateInstanceProfileRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    UpdateInstanceProfileRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'description'))
    UpdateInstanceProfileRequest.add_member(:package_cleanup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'packageCleanup'))
    UpdateInstanceProfileRequest.add_member(:exclude_app_packages_from_cleanup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageIds, location_name: 'excludeAppPackagesFromCleanup'))
    UpdateInstanceProfileRequest.add_member(:reboot_after_use, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'rebootAfterUse'))
    UpdateInstanceProfileRequest.type = Types::UpdateInstanceProfileRequest
    UpdateInstanceProfileResult.add_member(:instance_profile, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceProfile, location_name: 'instanceProfile'))
    UpdateInstanceProfileResult.type = Types::UpdateInstanceProfileResult
    UpdateNetworkProfileRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    UpdateNetworkProfileRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    UpdateNetworkProfileRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'description'))
    UpdateNetworkProfileRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkProfileType, location_name: 'type'))
    UpdateNetworkProfileRequest.add_member(:uplink_bandwidth_bits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'uplinkBandwidthBits'))
    UpdateNetworkProfileRequest.add_member(:downlink_bandwidth_bits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'downlinkBandwidthBits'))
    UpdateNetworkProfileRequest.add_member(:uplink_delay_ms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'uplinkDelayMs'))
    UpdateNetworkProfileRequest.add_member(:downlink_delay_ms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'downlinkDelayMs'))
    UpdateNetworkProfileRequest.add_member(:uplink_jitter_ms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'uplinkJitterMs'))
    UpdateNetworkProfileRequest.add_member(:downlink_jitter_ms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'downlinkJitterMs'))
    UpdateNetworkProfileRequest.add_member(:uplink_loss_percent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PercentInteger, location_name: 'uplinkLossPercent', traits: {"smithy.api#default" => 0}))
    UpdateNetworkProfileRequest.add_member(:downlink_loss_percent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PercentInteger, location_name: 'downlinkLossPercent', traits: {"smithy.api#default" => 0}))
    UpdateNetworkProfileRequest.type = Types::UpdateNetworkProfileRequest
    UpdateNetworkProfileResult.add_member(:network_profile, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkProfile, location_name: 'networkProfile'))
    UpdateNetworkProfileResult.type = Types::UpdateNetworkProfileResult
    UpdateProjectRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    UpdateProjectRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    UpdateProjectRequest.add_member(:default_job_timeout_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobTimeoutMinutes, location_name: 'defaultJobTimeoutMinutes'))
    UpdateProjectRequest.add_member(:vpc_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: 'vpcConfig'))
    UpdateProjectRequest.type = Types::UpdateProjectRequest
    UpdateProjectResult.add_member(:project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Project, location_name: 'project'))
    UpdateProjectResult.type = Types::UpdateProjectResult
    UpdateTestGridProjectRequest.add_member(:project_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceFarmArn, location_name: 'projectArn', traits: {"smithy.api#required" => {}}))
    UpdateTestGridProjectRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name'))
    UpdateTestGridProjectRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description'))
    UpdateTestGridProjectRequest.add_member(:vpc_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestGridVpcConfig, location_name: 'vpcConfig'))
    UpdateTestGridProjectRequest.type = Types::UpdateTestGridProjectRequest
    UpdateTestGridProjectResult.add_member(:test_grid_project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestGridProject, location_name: 'testGridProject'))
    UpdateTestGridProjectResult.type = Types::UpdateTestGridProjectResult
    UpdateUploadRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    UpdateUploadRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    UpdateUploadRequest.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: 'contentType'))
    UpdateUploadRequest.add_member(:edit_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'editContent'))
    UpdateUploadRequest.type = Types::UpdateUploadRequest
    UpdateUploadResult.add_member(:upload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Upload, location_name: 'upload'))
    UpdateUploadResult.type = Types::UpdateUploadResult
    UpdateVPCEConfigurationRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    UpdateVPCEConfigurationRequest.add_member(:vpce_configuration_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCEConfigurationName, location_name: 'vpceConfigurationName'))
    UpdateVPCEConfigurationRequest.add_member(:vpce_service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCEServiceName, location_name: 'vpceServiceName'))
    UpdateVPCEConfigurationRequest.add_member(:service_dns_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceDnsName, location_name: 'serviceDnsName'))
    UpdateVPCEConfigurationRequest.add_member(:vpce_configuration_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCEConfigurationDescription, location_name: 'vpceConfigurationDescription'))
    UpdateVPCEConfigurationRequest.type = Types::UpdateVPCEConfigurationRequest
    UpdateVPCEConfigurationResult.add_member(:vpce_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCEConfiguration, location_name: 'vpceConfiguration'))
    UpdateVPCEConfigurationResult.type = Types::UpdateVPCEConfigurationResult
    Upload.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn'))
    Upload.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name'))
    Upload.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'created'))
    Upload.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadType, location_name: 'type'))
    Upload.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadStatus, location_name: 'status'))
    Upload.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveURL, location_name: 'url'))
    Upload.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Metadata, location_name: 'metadata'))
    Upload.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: 'contentType'))
    Upload.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    Upload.add_member(:category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadCategory, location_name: 'category'))
    Upload.type = Types::Upload
    UploadCategory.add_member(:curated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CURATED', traits: {"smithy.api#enumValue" => "CURATED"}))
    UploadCategory.add_member(:private, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRIVATE', traits: {"smithy.api#enumValue" => "PRIVATE"}))
    UploadStatus.add_member(:initialized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INITIALIZED', traits: {"smithy.api#enumValue" => "INITIALIZED"}))
    UploadStatus.add_member(:processing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROCESSING', traits: {"smithy.api#enumValue" => "PROCESSING"}))
    UploadStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    UploadStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    UploadType.add_member(:android_app, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANDROID_APP', traits: {"smithy.api#enumValue" => "ANDROID_APP"}))
    UploadType.add_member(:ios_app, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IOS_APP', traits: {"smithy.api#enumValue" => "IOS_APP"}))
    UploadType.add_member(:web_app, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEB_APP', traits: {"smithy.api#enumValue" => "WEB_APP"}))
    UploadType.add_member(:external_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXTERNAL_DATA', traits: {"smithy.api#enumValue" => "EXTERNAL_DATA"}))
    UploadType.add_member(:appium_java_junit_test_package, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_JAVA_JUNIT_TEST_PACKAGE', traits: {"smithy.api#enumValue" => "APPIUM_JAVA_JUNIT_TEST_PACKAGE"}))
    UploadType.add_member(:appium_java_testng_test_package, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_JAVA_TESTNG_TEST_PACKAGE', traits: {"smithy.api#enumValue" => "APPIUM_JAVA_TESTNG_TEST_PACKAGE"}))
    UploadType.add_member(:appium_python_test_package, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_PYTHON_TEST_PACKAGE', traits: {"smithy.api#enumValue" => "APPIUM_PYTHON_TEST_PACKAGE"}))
    UploadType.add_member(:appium_node_test_package, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_NODE_TEST_PACKAGE', traits: {"smithy.api#enumValue" => "APPIUM_NODE_TEST_PACKAGE"}))
    UploadType.add_member(:appium_ruby_test_package, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_RUBY_TEST_PACKAGE', traits: {"smithy.api#enumValue" => "APPIUM_RUBY_TEST_PACKAGE"}))
    UploadType.add_member(:appium_web_java_junit_test_package, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE', traits: {"smithy.api#enumValue" => "APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE"}))
    UploadType.add_member(:appium_web_java_testng_test_package, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE', traits: {"smithy.api#enumValue" => "APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE"}))
    UploadType.add_member(:appium_web_python_test_package, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_WEB_PYTHON_TEST_PACKAGE', traits: {"smithy.api#enumValue" => "APPIUM_WEB_PYTHON_TEST_PACKAGE"}))
    UploadType.add_member(:appium_web_node_test_package, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_WEB_NODE_TEST_PACKAGE', traits: {"smithy.api#enumValue" => "APPIUM_WEB_NODE_TEST_PACKAGE"}))
    UploadType.add_member(:appium_web_ruby_test_package, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_WEB_RUBY_TEST_PACKAGE', traits: {"smithy.api#enumValue" => "APPIUM_WEB_RUBY_TEST_PACKAGE"}))
    UploadType.add_member(:calabash_test_package, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CALABASH_TEST_PACKAGE', traits: {"smithy.api#enumValue" => "CALABASH_TEST_PACKAGE"}))
    UploadType.add_member(:instrumentation_test_package, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTRUMENTATION_TEST_PACKAGE', traits: {"smithy.api#enumValue" => "INSTRUMENTATION_TEST_PACKAGE"}))
    UploadType.add_member(:uiautomation_test_package, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UIAUTOMATION_TEST_PACKAGE', traits: {"smithy.api#enumValue" => "UIAUTOMATION_TEST_PACKAGE"}))
    UploadType.add_member(:uiautomator_test_package, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UIAUTOMATOR_TEST_PACKAGE', traits: {"smithy.api#enumValue" => "UIAUTOMATOR_TEST_PACKAGE"}))
    UploadType.add_member(:xctest_test_package, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'XCTEST_TEST_PACKAGE', traits: {"smithy.api#enumValue" => "XCTEST_TEST_PACKAGE"}))
    UploadType.add_member(:xctest_ui_test_package, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'XCTEST_UI_TEST_PACKAGE', traits: {"smithy.api#enumValue" => "XCTEST_UI_TEST_PACKAGE"}))
    UploadType.add_member(:appium_java_junit_test_spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_JAVA_JUNIT_TEST_SPEC', traits: {"smithy.api#enumValue" => "APPIUM_JAVA_JUNIT_TEST_SPEC"}))
    UploadType.add_member(:appium_java_testng_test_spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_JAVA_TESTNG_TEST_SPEC', traits: {"smithy.api#enumValue" => "APPIUM_JAVA_TESTNG_TEST_SPEC"}))
    UploadType.add_member(:appium_python_test_spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_PYTHON_TEST_SPEC', traits: {"smithy.api#enumValue" => "APPIUM_PYTHON_TEST_SPEC"}))
    UploadType.add_member(:appium_node_test_spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_NODE_TEST_SPEC', traits: {"smithy.api#enumValue" => "APPIUM_NODE_TEST_SPEC"}))
    UploadType.add_member(:appium_ruby_test_spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_RUBY_TEST_SPEC', traits: {"smithy.api#enumValue" => "APPIUM_RUBY_TEST_SPEC"}))
    UploadType.add_member(:appium_web_java_junit_test_spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_WEB_JAVA_JUNIT_TEST_SPEC', traits: {"smithy.api#enumValue" => "APPIUM_WEB_JAVA_JUNIT_TEST_SPEC"}))
    UploadType.add_member(:appium_web_java_testng_test_spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_WEB_JAVA_TESTNG_TEST_SPEC', traits: {"smithy.api#enumValue" => "APPIUM_WEB_JAVA_TESTNG_TEST_SPEC"}))
    UploadType.add_member(:appium_web_python_test_spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_WEB_PYTHON_TEST_SPEC', traits: {"smithy.api#enumValue" => "APPIUM_WEB_PYTHON_TEST_SPEC"}))
    UploadType.add_member(:appium_web_node_test_spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_WEB_NODE_TEST_SPEC', traits: {"smithy.api#enumValue" => "APPIUM_WEB_NODE_TEST_SPEC"}))
    UploadType.add_member(:appium_web_ruby_test_spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPIUM_WEB_RUBY_TEST_SPEC', traits: {"smithy.api#enumValue" => "APPIUM_WEB_RUBY_TEST_SPEC"}))
    UploadType.add_member(:instrumentation_test_spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTRUMENTATION_TEST_SPEC', traits: {"smithy.api#enumValue" => "INSTRUMENTATION_TEST_SPEC"}))
    UploadType.add_member(:xctest_ui_test_spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'XCTEST_UI_TEST_SPEC', traits: {"smithy.api#enumValue" => "XCTEST_UI_TEST_SPEC"}))
    Uploads.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Upload)
    VPCEConfiguration.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'arn'))
    VPCEConfiguration.add_member(:vpce_configuration_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCEConfigurationName, location_name: 'vpceConfigurationName'))
    VPCEConfiguration.add_member(:vpce_service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCEServiceName, location_name: 'vpceServiceName'))
    VPCEConfiguration.add_member(:service_dns_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceDnsName, location_name: 'serviceDnsName'))
    VPCEConfiguration.add_member(:vpce_configuration_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCEConfigurationDescription, location_name: 'vpceConfigurationDescription'))
    VPCEConfiguration.type = Types::VPCEConfiguration
    VPCEConfigurations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCEConfiguration)
    VpcConfig.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupIds, location_name: 'securityGroupIds', traits: {"smithy.api#required" => {}}))
    VpcConfig.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSubnetIds, location_name: 'subnetIds', traits: {"smithy.api#required" => {}}))
    VpcConfig.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'vpcId', traits: {"smithy.api#required" => {}}))
    VpcConfig.type = Types::VpcConfig
    VpcSecurityGroupIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupId)
    VpcSubnetIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId)

    DeviceFarm20150623 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.devicefarm#DeviceFarm_20150623"
      service.name = "DeviceFarm20150623"
      service.version = "2015-06-23"
      service.traits = {"aws.api#service" => {"sdkId" => "Device Farm", "arnNamespace" => "devicefarm", "cloudFormationName" => "DeviceFarm", "cloudTrailEventSource" => "devicefarm.amazonaws.com", "docId" => "devicefarm-2015-06-23", "endpointPrefix" => "devicefarm"}, "aws.auth#sigv4" => {"name" => "devicefarm"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Device Farm", "smithy.api#xmlNamespace" => {"uri" => "http://devicefarm.amazonaws.com/doc/2015-06-23/"}}
      service.add_operation(:create_device_pool, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#CreateDevicePool"
        operation.name = "CreateDevicePool"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDevicePoolRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDevicePoolResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:create_instance_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#CreateInstanceProfile"
        operation.name = "CreateInstanceProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInstanceProfileRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInstanceProfileResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:create_network_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#CreateNetworkProfile"
        operation.name = "CreateNetworkProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateNetworkProfileRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateNetworkProfileResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:create_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#CreateProject"
        operation.name = "CreateProject"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProjectRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProjectResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagOperationException)
        operation.traits = {}
      end)
      service.add_operation(:create_remote_access_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#CreateRemoteAccessSession"
        operation.name = "CreateRemoteAccessSession"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRemoteAccessSessionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRemoteAccessSessionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:create_test_grid_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#CreateTestGridProject"
        operation.name = "CreateTestGridProject"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTestGridProjectRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTestGridProjectResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:create_test_grid_url, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#CreateTestGridUrl"
        operation.name = "CreateTestGridUrl"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTestGridUrlRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTestGridUrlResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_upload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#CreateUpload"
        operation.name = "CreateUpload"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUploadRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUploadResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:create_vpce_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#CreateVPCEConfiguration"
        operation.name = "CreateVPCEConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVPCEConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVPCEConfigurationResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:delete_device_pool, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#DeleteDevicePool"
        operation.name = "DeleteDevicePool"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDevicePoolRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDevicePoolResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:delete_instance_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#DeleteInstanceProfile"
        operation.name = "DeleteInstanceProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInstanceProfileRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInstanceProfileResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:delete_network_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#DeleteNetworkProfile"
        operation.name = "DeleteNetworkProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteNetworkProfileRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteNetworkProfileResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:delete_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#DeleteProject"
        operation.name = "DeleteProject"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProjectRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProjectResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:delete_remote_access_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#DeleteRemoteAccessSession"
        operation.name = "DeleteRemoteAccessSession"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRemoteAccessSessionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRemoteAccessSessionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:delete_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#DeleteRun"
        operation.name = "DeleteRun"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRunRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRunResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:delete_test_grid_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#DeleteTestGridProject"
        operation.name = "DeleteTestGridProject"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTestGridProjectRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTestGridProjectResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CannotDeleteException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_upload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#DeleteUpload"
        operation.name = "DeleteUpload"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUploadRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUploadResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:delete_vpce_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#DeleteVPCEConfiguration"
        operation.name = "DeleteVPCEConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVPCEConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVPCEConfigurationResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:get_account_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#GetAccountSettings"
        operation.name = "GetAccountSettings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountSettingsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountSettingsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:get_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#GetDevice"
        operation.name = "GetDevice"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeviceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeviceResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:get_device_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#GetDeviceInstance"
        operation.name = "GetDeviceInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeviceInstanceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeviceInstanceResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:get_device_pool, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#GetDevicePool"
        operation.name = "GetDevicePool"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDevicePoolRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDevicePoolResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:get_device_pool_compatibility, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#GetDevicePoolCompatibility"
        operation.name = "GetDevicePoolCompatibility"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDevicePoolCompatibilityRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDevicePoolCompatibilityResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:get_instance_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#GetInstanceProfile"
        operation.name = "GetInstanceProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInstanceProfileRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInstanceProfileResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:get_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#GetJob"
        operation.name = "GetJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetJobResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:get_network_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#GetNetworkProfile"
        operation.name = "GetNetworkProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetNetworkProfileRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetNetworkProfileResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:get_offering_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#GetOfferingStatus"
        operation.name = "GetOfferingStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetOfferingStatusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetOfferingStatusResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotEligibleException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetOfferingStatus.new
      end)
      service.add_operation(:get_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#GetProject"
        operation.name = "GetProject"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetProjectRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetProjectResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:get_remote_access_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#GetRemoteAccessSession"
        operation.name = "GetRemoteAccessSession"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRemoteAccessSessionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRemoteAccessSessionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:get_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#GetRun"
        operation.name = "GetRun"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRunRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRunResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:get_suite, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#GetSuite"
        operation.name = "GetSuite"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSuiteRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSuiteResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:get_test, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#GetTest"
        operation.name = "GetTest"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTestRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTestResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:get_test_grid_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#GetTestGridProject"
        operation.name = "GetTestGridProject"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTestGridProjectRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTestGridProjectResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_test_grid_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#GetTestGridSession"
        operation.name = "GetTestGridSession"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTestGridSessionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTestGridSessionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_upload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#GetUpload"
        operation.name = "GetUpload"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetUploadRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetUploadResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:get_vpce_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#GetVPCEConfiguration"
        operation.name = "GetVPCEConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetVPCEConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetVPCEConfigurationResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:install_to_remote_access_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#InstallToRemoteAccessSession"
        operation.name = "InstallToRemoteAccessSession"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstallToRemoteAccessSessionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstallToRemoteAccessSessionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:list_artifacts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListArtifacts"
        operation.name = "ListArtifacts"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListArtifactsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListArtifactsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListArtifacts.new
      end)
      service.add_operation(:list_device_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListDeviceInstances"
        operation.name = "ListDeviceInstances"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeviceInstancesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeviceInstancesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:list_device_pools, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListDevicePools"
        operation.name = "ListDevicePools"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDevicePoolsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDevicePoolsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListDevicePools.new
      end)
      service.add_operation(:list_devices, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListDevices"
        operation.name = "ListDevices"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDevicesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDevicesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListDevices.new
      end)
      service.add_operation(:list_instance_profiles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListInstanceProfiles"
        operation.name = "ListInstanceProfiles"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListInstanceProfilesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListInstanceProfilesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:list_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListJobs"
        operation.name = "ListJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListJobs.new
      end)
      service.add_operation(:list_network_profiles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListNetworkProfiles"
        operation.name = "ListNetworkProfiles"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListNetworkProfilesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListNetworkProfilesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:list_offering_promotions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListOfferingPromotions"
        operation.name = "ListOfferingPromotions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfferingPromotionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfferingPromotionsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotEligibleException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:list_offering_transactions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListOfferingTransactions"
        operation.name = "ListOfferingTransactions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfferingTransactionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfferingTransactionsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotEligibleException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListOfferingTransactions.new
      end)
      service.add_operation(:list_offerings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListOfferings"
        operation.name = "ListOfferings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfferingsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfferingsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotEligibleException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListOfferings.new
      end)
      service.add_operation(:list_projects, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListProjects"
        operation.name = "ListProjects"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListProjectsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListProjectsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListProjects.new
      end)
      service.add_operation(:list_remote_access_sessions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListRemoteAccessSessions"
        operation.name = "ListRemoteAccessSessions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRemoteAccessSessionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRemoteAccessSessionsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:list_runs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListRuns"
        operation.name = "ListRuns"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRunsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRunsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListRuns.new
      end)
      service.add_operation(:list_samples, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListSamples"
        operation.name = "ListSamples"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSamplesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSamplesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListSamples.new
      end)
      service.add_operation(:list_suites, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListSuites"
        operation.name = "ListSuites"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSuitesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSuitesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListSuites.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagOperationException)
        operation.traits = {}
      end)
      service.add_operation(:list_test_grid_projects, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListTestGridProjects"
        operation.name = "ListTestGridProjects"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTestGridProjectsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTestGridProjectsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTestGridProjects.new
      end)
      service.add_operation(:list_test_grid_session_actions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListTestGridSessionActions"
        operation.name = "ListTestGridSessionActions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTestGridSessionActionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTestGridSessionActionsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTestGridSessionActions.new
      end)
      service.add_operation(:list_test_grid_session_artifacts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListTestGridSessionArtifacts"
        operation.name = "ListTestGridSessionArtifacts"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTestGridSessionArtifactsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTestGridSessionArtifactsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTestGridSessionArtifacts.new
      end)
      service.add_operation(:list_test_grid_sessions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListTestGridSessions"
        operation.name = "ListTestGridSessions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTestGridSessionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTestGridSessionsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTestGridSessions.new
      end)
      service.add_operation(:list_tests, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListTests"
        operation.name = "ListTests"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTestsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTestsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTests.new
      end)
      service.add_operation(:list_unique_problems, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListUniqueProblems"
        operation.name = "ListUniqueProblems"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListUniqueProblemsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListUniqueProblemsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListUniqueProblems.new
      end)
      service.add_operation(:list_uploads, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListUploads"
        operation.name = "ListUploads"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListUploadsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListUploadsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListUploads.new
      end)
      service.add_operation(:list_vpce_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ListVPCEConfigurations"
        operation.name = "ListVPCEConfigurations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVPCEConfigurationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVPCEConfigurationsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:purchase_offering, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#PurchaseOffering"
        operation.name = "PurchaseOffering"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PurchaseOfferingRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PurchaseOfferingResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotEligibleException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:renew_offering, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#RenewOffering"
        operation.name = "RenewOffering"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RenewOfferingRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RenewOfferingResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotEligibleException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:schedule_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#ScheduleRun"
        operation.name = "ScheduleRun"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleRunRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleRunResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:stop_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#StopJob"
        operation.name = "StopJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopJobResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:stop_remote_access_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#StopRemoteAccessSession"
        operation.name = "StopRemoteAccessSession"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopRemoteAccessSessionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopRemoteAccessSessionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:stop_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#StopRun"
        operation.name = "StopRun"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopRunRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopRunResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagPolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagOperationException)
        operation.traits = {}
      end)
      service.add_operation(:update_device_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#UpdateDeviceInstance"
        operation.name = "UpdateDeviceInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDeviceInstanceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDeviceInstanceResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:update_device_pool, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#UpdateDevicePool"
        operation.name = "UpdateDevicePool"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDevicePoolRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDevicePoolResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:update_instance_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#UpdateInstanceProfile"
        operation.name = "UpdateInstanceProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateInstanceProfileRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateInstanceProfileResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:update_network_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#UpdateNetworkProfile"
        operation.name = "UpdateNetworkProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNetworkProfileRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNetworkProfileResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:update_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#UpdateProject"
        operation.name = "UpdateProject"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProjectRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProjectResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:update_test_grid_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#UpdateTestGridProject"
        operation.name = "UpdateTestGridProject"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTestGridProjectRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTestGridProjectResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_upload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#UpdateUpload"
        operation.name = "UpdateUpload"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUploadRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUploadResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
      end)
      service.add_operation(:update_vpce_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devicefarm#UpdateVPCEConfiguration"
        operation.name = "UpdateVPCEConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVPCEConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVPCEConfigurationResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountException)
        operation.traits = {}
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
