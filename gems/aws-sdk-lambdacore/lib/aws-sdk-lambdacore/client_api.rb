# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::LambdaCore
  # @api private
  module ClientApi

    include Seahorse::Model

    AssociatedComputeResourceTypesList = Shapes::ListShape.new(name: 'AssociatedComputeResourceTypesList')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ClientTokenString = Shapes::StringShape.new(name: 'ClientTokenString')
    Compatibility = Shapes::StructureShape.new(name: 'Compatibility')
    CompatibilityPolicy = Shapes::StringShape.new(name: 'CompatibilityPolicy')
    ComputeResourceType = Shapes::StringShape.new(name: 'ComputeResourceType')
    CoreTimestamp = Shapes::TimestampShape.new(name: 'CoreTimestamp', timestampFormat: "iso8601")
    CreateNetworkConnectorRequest = Shapes::StructureShape.new(name: 'CreateNetworkConnectorRequest')
    CreateNetworkConnectorResponse = Shapes::StructureShape.new(name: 'CreateNetworkConnectorResponse')
    CreateRuntimeAliasRequest = Shapes::StructureShape.new(name: 'CreateRuntimeAliasRequest')
    CreateRuntimeAliasResponse = Shapes::StructureShape.new(name: 'CreateRuntimeAliasResponse')
    CreateRuntimeRequest = Shapes::StructureShape.new(name: 'CreateRuntimeRequest')
    CreateRuntimeResponse = Shapes::StructureShape.new(name: 'CreateRuntimeResponse')
    CreateRuntimeVersionRequest = Shapes::StructureShape.new(name: 'CreateRuntimeVersionRequest')
    CreateRuntimeVersionResponse = Shapes::StructureShape.new(name: 'CreateRuntimeVersionResponse')
    DeleteNetworkConnectorRequest = Shapes::StructureShape.new(name: 'DeleteNetworkConnectorRequest')
    DeleteNetworkConnectorResponse = Shapes::StructureShape.new(name: 'DeleteNetworkConnectorResponse')
    DeleteRuntimeAliasRequest = Shapes::StructureShape.new(name: 'DeleteRuntimeAliasRequest')
    DeleteRuntimeAliasRequestRecoveryWindowInDaysInteger = Shapes::IntegerShape.new(name: 'DeleteRuntimeAliasRequestRecoveryWindowInDaysInteger')
    DeleteRuntimeAliasResponse = Shapes::StructureShape.new(name: 'DeleteRuntimeAliasResponse')
    DeleteRuntimeRequest = Shapes::StructureShape.new(name: 'DeleteRuntimeRequest')
    DeleteRuntimeRequestRecoveryWindowInDaysInteger = Shapes::IntegerShape.new(name: 'DeleteRuntimeRequestRecoveryWindowInDaysInteger')
    DeleteRuntimeResponse = Shapes::StructureShape.new(name: 'DeleteRuntimeResponse')
    DeleteRuntimeVersionRequest = Shapes::StructureShape.new(name: 'DeleteRuntimeVersionRequest')
    DeleteRuntimeVersionRequestRecoveryWindowInDaysInteger = Shapes::IntegerShape.new(name: 'DeleteRuntimeVersionRequestRecoveryWindowInDaysInteger')
    DeleteRuntimeVersionResponse = Shapes::StructureShape.new(name: 'DeleteRuntimeVersionResponse')
    GetNetworkConnectorRequest = Shapes::StructureShape.new(name: 'GetNetworkConnectorRequest')
    GetNetworkConnectorResponse = Shapes::StructureShape.new(name: 'GetNetworkConnectorResponse')
    GetRuntimeAliasRequest = Shapes::StructureShape.new(name: 'GetRuntimeAliasRequest')
    GetRuntimeAliasResponse = Shapes::StructureShape.new(name: 'GetRuntimeAliasResponse')
    GetRuntimeRequest = Shapes::StructureShape.new(name: 'GetRuntimeRequest')
    GetRuntimeResponse = Shapes::StructureShape.new(name: 'GetRuntimeResponse')
    GetRuntimeVersionRequest = Shapes::StructureShape.new(name: 'GetRuntimeVersionRequest')
    GetRuntimeVersionResponse = Shapes::StructureShape.new(name: 'GetRuntimeVersionResponse')
    IntegrationModel = Shapes::StringShape.new(name: 'IntegrationModel')
    IntegrationModelList = Shapes::ListShape.new(name: 'IntegrationModelList')
    InvalidParameterValueException = Shapes::StructureShape.new(name: 'InvalidParameterValueException')
    ListNetworkConnectorVersionsRequest = Shapes::StructureShape.new(name: 'ListNetworkConnectorVersionsRequest')
    ListNetworkConnectorVersionsResponse = Shapes::StructureShape.new(name: 'ListNetworkConnectorVersionsResponse')
    ListNetworkConnectorsRequest = Shapes::StructureShape.new(name: 'ListNetworkConnectorsRequest')
    ListNetworkConnectorsResponse = Shapes::StructureShape.new(name: 'ListNetworkConnectorsResponse')
    ListRuntimeAliasesRequest = Shapes::StructureShape.new(name: 'ListRuntimeAliasesRequest')
    ListRuntimeAliasesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListRuntimeAliasesRequestMaxResultsInteger')
    ListRuntimeAliasesResponse = Shapes::StructureShape.new(name: 'ListRuntimeAliasesResponse')
    ListRuntimeVersionsRequest = Shapes::StructureShape.new(name: 'ListRuntimeVersionsRequest')
    ListRuntimeVersionsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListRuntimeVersionsRequestMaxResultsInteger')
    ListRuntimeVersionsResponse = Shapes::StructureShape.new(name: 'ListRuntimeVersionsResponse')
    ListRuntimesRequest = Shapes::StructureShape.new(name: 'ListRuntimesRequest')
    ListRuntimesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListRuntimesRequestMaxResultsInteger')
    ListRuntimesResponse = Shapes::StructureShape.new(name: 'ListRuntimesResponse')
    MaxHundredListItems = Shapes::IntegerShape.new(name: 'MaxHundredListItems')
    NetworkConnectorArn = Shapes::StringShape.new(name: 'NetworkConnectorArn')
    NetworkConnectorConfiguration = Shapes::UnionShape.new(name: 'NetworkConnectorConfiguration')
    NetworkConnectorId = Shapes::StringShape.new(name: 'NetworkConnectorId')
    NetworkConnectorIdentifier = Shapes::StringShape.new(name: 'NetworkConnectorIdentifier')
    NetworkConnectorLastUpdateStatus = Shapes::StringShape.new(name: 'NetworkConnectorLastUpdateStatus')
    NetworkConnectorLastUpdateStatusReason = Shapes::StringShape.new(name: 'NetworkConnectorLastUpdateStatusReason')
    NetworkConnectorLastUpdateStatusReasonCode = Shapes::StringShape.new(name: 'NetworkConnectorLastUpdateStatusReasonCode')
    NetworkConnectorLimitExceededException = Shapes::StructureShape.new(name: 'NetworkConnectorLimitExceededException')
    NetworkConnectorName = Shapes::StringShape.new(name: 'NetworkConnectorName')
    NetworkConnectorRoleArn = Shapes::StringShape.new(name: 'NetworkConnectorRoleArn')
    NetworkConnectorSecurityGroupId = Shapes::StringShape.new(name: 'NetworkConnectorSecurityGroupId')
    NetworkConnectorSecurityGroupIds = Shapes::ListShape.new(name: 'NetworkConnectorSecurityGroupIds')
    NetworkConnectorState = Shapes::StringShape.new(name: 'NetworkConnectorState')
    NetworkConnectorStateReasonCode = Shapes::StringShape.new(name: 'NetworkConnectorStateReasonCode')
    NetworkConnectorSubnetId = Shapes::StringShape.new(name: 'NetworkConnectorSubnetId')
    NetworkConnectorSubnetIds = Shapes::ListShape.new(name: 'NetworkConnectorSubnetIds')
    NetworkConnectorSummary = Shapes::StructureShape.new(name: 'NetworkConnectorSummary')
    NetworkConnectorTagKey = Shapes::StringShape.new(name: 'NetworkConnectorTagKey')
    NetworkConnectorTagValue = Shapes::StringShape.new(name: 'NetworkConnectorTagValue')
    NetworkConnectorTags = Shapes::MapShape.new(name: 'NetworkConnectorTags')
    NetworkConnectorType = Shapes::StringShape.new(name: 'NetworkConnectorType')
    NetworkConnectorVersion = Shapes::IntegerShape.new(name: 'NetworkConnectorVersion')
    NetworkConnectorVersionSummary = Shapes::StructureShape.new(name: 'NetworkConnectorVersionSummary')
    NetworkConnectorVersionsList = Shapes::ListShape.new(name: 'NetworkConnectorVersionsList')
    NetworkConnectorVpcEgressConfiguration = Shapes::StructureShape.new(name: 'NetworkConnectorVpcEgressConfiguration')
    NetworkConnectorsList = Shapes::ListShape.new(name: 'NetworkConnectorsList')
    NetworkProtocol = Shapes::StringShape.new(name: 'NetworkProtocol')
    Platform = Shapes::StructureShape.new(name: 'Platform')
    PlatformList = Shapes::ListShape.new(name: 'PlatformList')
    ResourceConflictException = Shapes::StructureShape.new(name: 'ResourceConflictException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RestoreRuntimeRequest = Shapes::StructureShape.new(name: 'RestoreRuntimeRequest')
    RestoreRuntimeResponse = Shapes::StructureShape.new(name: 'RestoreRuntimeResponse')
    RuntimeAliasDescription = Shapes::StringShape.new(name: 'RuntimeAliasDescription')
    RuntimeAliasInfo = Shapes::StructureShape.new(name: 'RuntimeAliasInfo')
    RuntimeAliasList = Shapes::ListShape.new(name: 'RuntimeAliasList')
    RuntimeAliasName = Shapes::StringShape.new(name: 'RuntimeAliasName')
    RuntimeAliasState = Shapes::StringShape.new(name: 'RuntimeAliasState')
    RuntimeArchitecture = Shapes::StringShape.new(name: 'RuntimeArchitecture')
    RuntimeArchitectureList = Shapes::ListShape.new(name: 'RuntimeArchitectureList')
    RuntimeArn = Shapes::StringShape.new(name: 'RuntimeArn')
    RuntimeDescription = Shapes::StringShape.new(name: 'RuntimeDescription')
    RuntimeIdentifier = Shapes::StringShape.new(name: 'RuntimeIdentifier')
    RuntimeInfo = Shapes::StructureShape.new(name: 'RuntimeInfo')
    RuntimeLicenseInfo = Shapes::StringShape.new(name: 'RuntimeLicenseInfo')
    RuntimeLifecycleDate = Shapes::StringShape.new(name: 'RuntimeLifecycleDate')
    RuntimeList = Shapes::ListShape.new(name: 'RuntimeList')
    RuntimeName = Shapes::StringShape.new(name: 'RuntimeName')
    RuntimeReleaseLifecycle = Shapes::StructureShape.new(name: 'RuntimeReleaseLifecycle')
    RuntimeReleaseState = Shapes::StringShape.new(name: 'RuntimeReleaseState')
    RuntimeState = Shapes::StringShape.new(name: 'RuntimeState')
    RuntimeTimestamp = Shapes::StringShape.new(name: 'RuntimeTimestamp')
    RuntimeVersionInfo = Shapes::StructureShape.new(name: 'RuntimeVersionInfo')
    RuntimeVersionList = Shapes::ListShape.new(name: 'RuntimeVersionList')
    RuntimeVersionName = Shapes::StringShape.new(name: 'RuntimeVersionName')
    RuntimeVersionState = Shapes::StringShape.new(name: 'RuntimeVersionState')
    ServiceException = Shapes::StructureShape.new(name: 'ServiceException')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    String = Shapes::StringShape.new(name: 'String')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    ThrottleReason = Shapes::StringShape.new(name: 'ThrottleReason')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    UpdateNetworkConnectorRequest = Shapes::StructureShape.new(name: 'UpdateNetworkConnectorRequest')
    UpdateNetworkConnectorResponse = Shapes::StructureShape.new(name: 'UpdateNetworkConnectorResponse')
    UpdateRuntimeAliasRequest = Shapes::StructureShape.new(name: 'UpdateRuntimeAliasRequest')
    UpdateRuntimeAliasResponse = Shapes::StructureShape.new(name: 'UpdateRuntimeAliasResponse')
    UpdateRuntimeRequest = Shapes::StructureShape.new(name: 'UpdateRuntimeRequest')
    UpdateRuntimeResponse = Shapes::StructureShape.new(name: 'UpdateRuntimeResponse')
    UpdateRuntimeVersionRequest = Shapes::StructureShape.new(name: 'UpdateRuntimeVersionRequest')
    UpdateRuntimeVersionResponse = Shapes::StructureShape.new(name: 'UpdateRuntimeVersionResponse')

    AssociatedComputeResourceTypesList.member = Shapes::ShapeRef.new(shape: ComputeResourceType)

    Compatibility.add_member(:integration_models, Shapes::ShapeRef.new(shape: IntegrationModelList, location_name: "IntegrationModels"))
    Compatibility.add_member(:architectures, Shapes::ShapeRef.new(shape: RuntimeArchitectureList, location_name: "Architectures"))
    Compatibility.add_member(:managed_instances, Shapes::ShapeRef.new(shape: CompatibilityPolicy, location_name: "ManagedInstances"))
    Compatibility.struct_class = Types::Compatibility

    CreateNetworkConnectorRequest.add_member(:name, Shapes::ShapeRef.new(shape: NetworkConnectorName, required: true, location_name: "Name"))
    CreateNetworkConnectorRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: NetworkConnectorConfiguration, required: true, location_name: "Configuration"))
    CreateNetworkConnectorRequest.add_member(:operator_role, Shapes::ShapeRef.new(shape: NetworkConnectorRoleArn, location_name: "OperatorRole"))
    CreateNetworkConnectorRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenString, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateNetworkConnectorRequest.add_member(:tags, Shapes::ShapeRef.new(shape: NetworkConnectorTags, location_name: "Tags"))
    CreateNetworkConnectorRequest.struct_class = Types::CreateNetworkConnectorRequest

    CreateNetworkConnectorResponse.add_member(:arn, Shapes::ShapeRef.new(shape: NetworkConnectorArn, required: true, location_name: "Arn"))
    CreateNetworkConnectorResponse.add_member(:name, Shapes::ShapeRef.new(shape: NetworkConnectorName, required: true, location_name: "Name"))
    CreateNetworkConnectorResponse.add_member(:id, Shapes::ShapeRef.new(shape: NetworkConnectorId, required: true, location_name: "Id"))
    CreateNetworkConnectorResponse.add_member(:version_arn, Shapes::ShapeRef.new(shape: NetworkConnectorArn, location_name: "VersionArn"))
    CreateNetworkConnectorResponse.add_member(:version, Shapes::ShapeRef.new(shape: NetworkConnectorVersion, location_name: "Version"))
    CreateNetworkConnectorResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: NetworkConnectorConfiguration, location_name: "Configuration"))
    CreateNetworkConnectorResponse.add_member(:operator_role, Shapes::ShapeRef.new(shape: NetworkConnectorRoleArn, location_name: "OperatorRole"))
    CreateNetworkConnectorResponse.add_member(:state, Shapes::ShapeRef.new(shape: NetworkConnectorState, location_name: "State"))
    CreateNetworkConnectorResponse.struct_class = Types::CreateNetworkConnectorResponse

    CreateRuntimeAliasRequest.add_member(:runtime_name, Shapes::ShapeRef.new(shape: RuntimeIdentifier, required: true, location: "uri", location_name: "RuntimeName"))
    CreateRuntimeAliasRequest.add_member(:runtime_version, Shapes::ShapeRef.new(shape: RuntimeVersionName, required: true, location_name: "RuntimeVersion"))
    CreateRuntimeAliasRequest.add_member(:name, Shapes::ShapeRef.new(shape: RuntimeAliasName, required: true, location_name: "Name"))
    CreateRuntimeAliasRequest.add_member(:description, Shapes::ShapeRef.new(shape: RuntimeAliasDescription, location_name: "Description"))
    CreateRuntimeAliasRequest.add_member(:release_lifecycle, Shapes::ShapeRef.new(shape: RuntimeReleaseLifecycle, location_name: "ReleaseLifecycle"))
    CreateRuntimeAliasRequest.struct_class = Types::CreateRuntimeAliasRequest

    CreateRuntimeAliasResponse.add_member(:name, Shapes::ShapeRef.new(shape: RuntimeAliasName, required: true, location_name: "Name"))
    CreateRuntimeAliasResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RuntimeArn, required: true, location_name: "Arn"))
    CreateRuntimeAliasResponse.add_member(:runtime_version, Shapes::ShapeRef.new(shape: RuntimeVersionName, required: true, location_name: "RuntimeVersion"))
    CreateRuntimeAliasResponse.add_member(:runtime_version_arn, Shapes::ShapeRef.new(shape: RuntimeArn, required: true, location_name: "RuntimeVersionArn"))
    CreateRuntimeAliasResponse.add_member(:state, Shapes::ShapeRef.new(shape: RuntimeAliasState, required: true, location_name: "State"))
    CreateRuntimeAliasResponse.add_member(:description, Shapes::ShapeRef.new(shape: RuntimeAliasDescription, location_name: "Description"))
    CreateRuntimeAliasResponse.add_member(:release_lifecycle, Shapes::ShapeRef.new(shape: RuntimeReleaseLifecycle, location_name: "ReleaseLifecycle"))
    CreateRuntimeAliasResponse.add_member(:created, Shapes::ShapeRef.new(shape: RuntimeTimestamp, required: true, location_name: "Created"))
    CreateRuntimeAliasResponse.add_member(:last_modified, Shapes::ShapeRef.new(shape: RuntimeTimestamp, required: true, location_name: "LastModified"))
    CreateRuntimeAliasResponse.struct_class = Types::CreateRuntimeAliasResponse

    CreateRuntimeRequest.add_member(:name, Shapes::ShapeRef.new(shape: RuntimeName, required: true, location_name: "Name"))
    CreateRuntimeRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateRuntimeRequest.add_member(:description, Shapes::ShapeRef.new(shape: RuntimeDescription, location_name: "Description"))
    CreateRuntimeRequest.add_member(:license_info, Shapes::ShapeRef.new(shape: RuntimeLicenseInfo, location_name: "LicenseInfo"))
    CreateRuntimeRequest.add_member(:release_lifecycle, Shapes::ShapeRef.new(shape: RuntimeReleaseLifecycle, location_name: "ReleaseLifecycle"))
    CreateRuntimeRequest.struct_class = Types::CreateRuntimeRequest

    CreateRuntimeResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RuntimeArn, required: true, location_name: "Arn"))
    CreateRuntimeResponse.add_member(:name, Shapes::ShapeRef.new(shape: RuntimeName, required: true, location_name: "Name"))
    CreateRuntimeResponse.add_member(:description, Shapes::ShapeRef.new(shape: RuntimeDescription, location_name: "Description"))
    CreateRuntimeResponse.add_member(:license_info, Shapes::ShapeRef.new(shape: RuntimeLicenseInfo, location_name: "LicenseInfo"))
    CreateRuntimeResponse.add_member(:release_lifecycle, Shapes::ShapeRef.new(shape: RuntimeReleaseLifecycle, location_name: "ReleaseLifecycle"))
    CreateRuntimeResponse.add_member(:created, Shapes::ShapeRef.new(shape: RuntimeTimestamp, required: true, location_name: "Created"))
    CreateRuntimeResponse.add_member(:last_modified, Shapes::ShapeRef.new(shape: RuntimeTimestamp, required: true, location_name: "LastModified"))
    CreateRuntimeResponse.struct_class = Types::CreateRuntimeResponse

    CreateRuntimeVersionRequest.add_member(:runtime_name, Shapes::ShapeRef.new(shape: RuntimeIdentifier, required: true, location: "uri", location_name: "RuntimeName"))
    CreateRuntimeVersionRequest.add_member(:image_uri, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ImageUri"))
    CreateRuntimeVersionRequest.add_member(:name, Shapes::ShapeRef.new(shape: RuntimeVersionName, required: true, location_name: "Name"))
    CreateRuntimeVersionRequest.add_member(:release_notes, Shapes::ShapeRef.new(shape: String, location_name: "ReleaseNotes"))
    CreateRuntimeVersionRequest.add_member(:dry_run, Shapes::ShapeRef.new(shape: Boolean, location_name: "DryRun"))
    CreateRuntimeVersionRequest.struct_class = Types::CreateRuntimeVersionRequest

    CreateRuntimeVersionResponse.add_member(:name, Shapes::ShapeRef.new(shape: RuntimeVersionName, required: true, location_name: "Name"))
    CreateRuntimeVersionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RuntimeArn, required: true, location_name: "Arn"))
    CreateRuntimeVersionResponse.add_member(:resolved_uri, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResolvedUri"))
    CreateRuntimeVersionResponse.add_member(:state, Shapes::ShapeRef.new(shape: RuntimeVersionState, required: true, location_name: "State"))
    CreateRuntimeVersionResponse.add_member(:release_notes, Shapes::ShapeRef.new(shape: String, location_name: "ReleaseNotes"))
    CreateRuntimeVersionResponse.add_member(:platforms, Shapes::ShapeRef.new(shape: PlatformList, location_name: "Platforms"))
    CreateRuntimeVersionResponse.add_member(:compatibility, Shapes::ShapeRef.new(shape: Compatibility, location_name: "Compatibility"))
    CreateRuntimeVersionResponse.add_member(:created, Shapes::ShapeRef.new(shape: RuntimeTimestamp, required: true, location_name: "Created"))
    CreateRuntimeVersionResponse.add_member(:last_modified, Shapes::ShapeRef.new(shape: RuntimeTimestamp, required: true, location_name: "LastModified"))
    CreateRuntimeVersionResponse.struct_class = Types::CreateRuntimeVersionResponse

    DeleteNetworkConnectorRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: NetworkConnectorIdentifier, required: true, location: "uri", location_name: "Identifier"))
    DeleteNetworkConnectorRequest.struct_class = Types::DeleteNetworkConnectorRequest

    DeleteNetworkConnectorResponse.add_member(:arn, Shapes::ShapeRef.new(shape: NetworkConnectorArn, required: true, location_name: "Arn"))
    DeleteNetworkConnectorResponse.add_member(:name, Shapes::ShapeRef.new(shape: NetworkConnectorName, required: true, location_name: "Name"))
    DeleteNetworkConnectorResponse.add_member(:id, Shapes::ShapeRef.new(shape: NetworkConnectorId, required: true, location_name: "Id"))
    DeleteNetworkConnectorResponse.add_member(:version_arn, Shapes::ShapeRef.new(shape: NetworkConnectorArn, location_name: "VersionArn"))
    DeleteNetworkConnectorResponse.add_member(:version, Shapes::ShapeRef.new(shape: NetworkConnectorVersion, location_name: "Version"))
    DeleteNetworkConnectorResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: NetworkConnectorConfiguration, location_name: "Configuration"))
    DeleteNetworkConnectorResponse.add_member(:operator_role, Shapes::ShapeRef.new(shape: NetworkConnectorRoleArn, location_name: "OperatorRole"))
    DeleteNetworkConnectorResponse.add_member(:state, Shapes::ShapeRef.new(shape: NetworkConnectorState, location_name: "State"))
    DeleteNetworkConnectorResponse.struct_class = Types::DeleteNetworkConnectorResponse

    DeleteRuntimeAliasRequest.add_member(:runtime_name, Shapes::ShapeRef.new(shape: RuntimeIdentifier, required: true, location: "uri", location_name: "RuntimeName"))
    DeleteRuntimeAliasRequest.add_member(:name, Shapes::ShapeRef.new(shape: RuntimeAliasName, required: true, location: "uri", location_name: "Name"))
    DeleteRuntimeAliasRequest.add_member(:recovery_window_in_days, Shapes::ShapeRef.new(shape: DeleteRuntimeAliasRequestRecoveryWindowInDaysInteger, location: "header", location_name: "x-amzn-runtime-recovery-window-in-days"))
    DeleteRuntimeAliasRequest.struct_class = Types::DeleteRuntimeAliasRequest

    DeleteRuntimeAliasResponse.struct_class = Types::DeleteRuntimeAliasResponse

    DeleteRuntimeRequest.add_member(:runtime_name, Shapes::ShapeRef.new(shape: RuntimeIdentifier, required: true, location: "uri", location_name: "RuntimeName"))
    DeleteRuntimeRequest.add_member(:recovery_window_in_days, Shapes::ShapeRef.new(shape: DeleteRuntimeRequestRecoveryWindowInDaysInteger, location: "header", location_name: "x-amzn-runtime-recovery-window-in-days"))
    DeleteRuntimeRequest.struct_class = Types::DeleteRuntimeRequest

    DeleteRuntimeResponse.struct_class = Types::DeleteRuntimeResponse

    DeleteRuntimeVersionRequest.add_member(:runtime_name, Shapes::ShapeRef.new(shape: RuntimeIdentifier, required: true, location: "uri", location_name: "RuntimeName"))
    DeleteRuntimeVersionRequest.add_member(:name, Shapes::ShapeRef.new(shape: RuntimeVersionName, required: true, location: "uri", location_name: "Name"))
    DeleteRuntimeVersionRequest.add_member(:recovery_window_in_days, Shapes::ShapeRef.new(shape: DeleteRuntimeVersionRequestRecoveryWindowInDaysInteger, location: "header", location_name: "x-amzn-runtime-recovery-window-in-days"))
    DeleteRuntimeVersionRequest.struct_class = Types::DeleteRuntimeVersionRequest

    DeleteRuntimeVersionResponse.struct_class = Types::DeleteRuntimeVersionResponse

    GetNetworkConnectorRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: NetworkConnectorIdentifier, required: true, location: "uri", location_name: "Identifier"))
    GetNetworkConnectorRequest.struct_class = Types::GetNetworkConnectorRequest

    GetNetworkConnectorResponse.add_member(:arn, Shapes::ShapeRef.new(shape: NetworkConnectorArn, required: true, location_name: "Arn"))
    GetNetworkConnectorResponse.add_member(:name, Shapes::ShapeRef.new(shape: NetworkConnectorName, required: true, location_name: "Name"))
    GetNetworkConnectorResponse.add_member(:id, Shapes::ShapeRef.new(shape: NetworkConnectorId, required: true, location_name: "Id"))
    GetNetworkConnectorResponse.add_member(:version_arn, Shapes::ShapeRef.new(shape: NetworkConnectorArn, location_name: "VersionArn"))
    GetNetworkConnectorResponse.add_member(:version, Shapes::ShapeRef.new(shape: NetworkConnectorVersion, location_name: "Version"))
    GetNetworkConnectorResponse.add_member(:latest_version_arn, Shapes::ShapeRef.new(shape: NetworkConnectorArn, location_name: "LatestVersionArn"))
    GetNetworkConnectorResponse.add_member(:latest_version, Shapes::ShapeRef.new(shape: NetworkConnectorVersion, location_name: "LatestVersion"))
    GetNetworkConnectorResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: NetworkConnectorConfiguration, location_name: "Configuration"))
    GetNetworkConnectorResponse.add_member(:operator_role, Shapes::ShapeRef.new(shape: NetworkConnectorRoleArn, location_name: "OperatorRole"))
    GetNetworkConnectorResponse.add_member(:state, Shapes::ShapeRef.new(shape: NetworkConnectorState, location_name: "State"))
    GetNetworkConnectorResponse.add_member(:state_reason, Shapes::ShapeRef.new(shape: String, location_name: "StateReason"))
    GetNetworkConnectorResponse.add_member(:state_reason_code, Shapes::ShapeRef.new(shape: NetworkConnectorStateReasonCode, location_name: "StateReasonCode"))
    GetNetworkConnectorResponse.add_member(:last_update_status, Shapes::ShapeRef.new(shape: NetworkConnectorLastUpdateStatus, location_name: "LastUpdateStatus"))
    GetNetworkConnectorResponse.add_member(:last_update_status_reason, Shapes::ShapeRef.new(shape: NetworkConnectorLastUpdateStatusReason, location_name: "LastUpdateStatusReason"))
    GetNetworkConnectorResponse.add_member(:last_update_status_reason_code, Shapes::ShapeRef.new(shape: NetworkConnectorLastUpdateStatusReasonCode, location_name: "LastUpdateStatusReasonCode"))
    GetNetworkConnectorResponse.add_member(:last_modified, Shapes::ShapeRef.new(shape: CoreTimestamp, location_name: "LastModified"))
    GetNetworkConnectorResponse.struct_class = Types::GetNetworkConnectorResponse

    GetRuntimeAliasRequest.add_member(:runtime_name, Shapes::ShapeRef.new(shape: RuntimeIdentifier, required: true, location: "uri", location_name: "RuntimeName"))
    GetRuntimeAliasRequest.add_member(:name, Shapes::ShapeRef.new(shape: RuntimeAliasName, required: true, location: "uri", location_name: "Name"))
    GetRuntimeAliasRequest.struct_class = Types::GetRuntimeAliasRequest

    GetRuntimeAliasResponse.add_member(:name, Shapes::ShapeRef.new(shape: RuntimeAliasName, required: true, location_name: "Name"))
    GetRuntimeAliasResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RuntimeArn, required: true, location_name: "Arn"))
    GetRuntimeAliasResponse.add_member(:runtime_version, Shapes::ShapeRef.new(shape: RuntimeVersionName, required: true, location_name: "RuntimeVersion"))
    GetRuntimeAliasResponse.add_member(:runtime_version_arn, Shapes::ShapeRef.new(shape: RuntimeArn, required: true, location_name: "RuntimeVersionArn"))
    GetRuntimeAliasResponse.add_member(:state, Shapes::ShapeRef.new(shape: RuntimeAliasState, required: true, location_name: "State"))
    GetRuntimeAliasResponse.add_member(:pending_deletion_at, Shapes::ShapeRef.new(shape: RuntimeTimestamp, location_name: "PendingDeletionAt"))
    GetRuntimeAliasResponse.add_member(:description, Shapes::ShapeRef.new(shape: RuntimeAliasDescription, location_name: "Description"))
    GetRuntimeAliasResponse.add_member(:compatibility, Shapes::ShapeRef.new(shape: Compatibility, location_name: "Compatibility"))
    GetRuntimeAliasResponse.add_member(:release_lifecycle, Shapes::ShapeRef.new(shape: RuntimeReleaseLifecycle, location_name: "ReleaseLifecycle"))
    GetRuntimeAliasResponse.add_member(:created, Shapes::ShapeRef.new(shape: RuntimeTimestamp, required: true, location_name: "Created"))
    GetRuntimeAliasResponse.add_member(:last_modified, Shapes::ShapeRef.new(shape: RuntimeTimestamp, required: true, location_name: "LastModified"))
    GetRuntimeAliasResponse.struct_class = Types::GetRuntimeAliasResponse

    GetRuntimeRequest.add_member(:runtime_name, Shapes::ShapeRef.new(shape: RuntimeIdentifier, required: true, location: "uri", location_name: "RuntimeName"))
    GetRuntimeRequest.struct_class = Types::GetRuntimeRequest

    GetRuntimeResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RuntimeArn, required: true, location_name: "Arn"))
    GetRuntimeResponse.add_member(:name, Shapes::ShapeRef.new(shape: RuntimeName, required: true, location_name: "Name"))
    GetRuntimeResponse.add_member(:description, Shapes::ShapeRef.new(shape: RuntimeDescription, location_name: "Description"))
    GetRuntimeResponse.add_member(:license_info, Shapes::ShapeRef.new(shape: RuntimeLicenseInfo, location_name: "LicenseInfo"))
    GetRuntimeResponse.add_member(:release_lifecycle, Shapes::ShapeRef.new(shape: RuntimeReleaseLifecycle, location_name: "ReleaseLifecycle"))
    GetRuntimeResponse.add_member(:state, Shapes::ShapeRef.new(shape: RuntimeState, location_name: "State"))
    GetRuntimeResponse.add_member(:pending_deletion_at, Shapes::ShapeRef.new(shape: RuntimeTimestamp, location_name: "PendingDeletionAt"))
    GetRuntimeResponse.add_member(:created, Shapes::ShapeRef.new(shape: RuntimeTimestamp, required: true, location_name: "Created"))
    GetRuntimeResponse.add_member(:last_modified, Shapes::ShapeRef.new(shape: RuntimeTimestamp, required: true, location_name: "LastModified"))
    GetRuntimeResponse.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "Id"))
    GetRuntimeResponse.struct_class = Types::GetRuntimeResponse

    GetRuntimeVersionRequest.add_member(:runtime_name, Shapes::ShapeRef.new(shape: RuntimeIdentifier, required: true, location: "uri", location_name: "RuntimeName"))
    GetRuntimeVersionRequest.add_member(:name, Shapes::ShapeRef.new(shape: RuntimeVersionName, required: true, location: "uri", location_name: "Name"))
    GetRuntimeVersionRequest.struct_class = Types::GetRuntimeVersionRequest

    GetRuntimeVersionResponse.add_member(:name, Shapes::ShapeRef.new(shape: RuntimeVersionName, required: true, location_name: "Name"))
    GetRuntimeVersionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RuntimeArn, required: true, location_name: "Arn"))
    GetRuntimeVersionResponse.add_member(:resolved_uri, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResolvedUri"))
    GetRuntimeVersionResponse.add_member(:state, Shapes::ShapeRef.new(shape: RuntimeVersionState, required: true, location_name: "State"))
    GetRuntimeVersionResponse.add_member(:pending_deletion_at, Shapes::ShapeRef.new(shape: RuntimeTimestamp, location_name: "PendingDeletionAt"))
    GetRuntimeVersionResponse.add_member(:release_notes, Shapes::ShapeRef.new(shape: String, location_name: "ReleaseNotes"))
    GetRuntimeVersionResponse.add_member(:platforms, Shapes::ShapeRef.new(shape: PlatformList, location_name: "Platforms"))
    GetRuntimeVersionResponse.add_member(:compatibility, Shapes::ShapeRef.new(shape: Compatibility, location_name: "Compatibility"))
    GetRuntimeVersionResponse.add_member(:created, Shapes::ShapeRef.new(shape: RuntimeTimestamp, required: true, location_name: "Created"))
    GetRuntimeVersionResponse.add_member(:last_modified, Shapes::ShapeRef.new(shape: RuntimeTimestamp, required: true, location_name: "LastModified"))
    GetRuntimeVersionResponse.struct_class = Types::GetRuntimeVersionResponse

    IntegrationModelList.member = Shapes::ShapeRef.new(shape: IntegrationModel)

    InvalidParameterValueException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    InvalidParameterValueException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidParameterValueException.struct_class = Types::InvalidParameterValueException

    ListNetworkConnectorVersionsRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: NetworkConnectorIdentifier, required: true, location: "uri", location_name: "Identifier"))
    ListNetworkConnectorVersionsRequest.add_member(:state, Shapes::ShapeRef.new(shape: NetworkConnectorState, location: "querystring", location_name: "State"))
    ListNetworkConnectorVersionsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "Marker"))
    ListNetworkConnectorVersionsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: MaxHundredListItems, location: "querystring", location_name: "MaxItems"))
    ListNetworkConnectorVersionsRequest.struct_class = Types::ListNetworkConnectorVersionsRequest

    ListNetworkConnectorVersionsResponse.add_member(:network_connector_versions, Shapes::ShapeRef.new(shape: NetworkConnectorVersionsList, required: true, location_name: "NetworkConnectorVersions"))
    ListNetworkConnectorVersionsResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: String, location_name: "NextMarker"))
    ListNetworkConnectorVersionsResponse.struct_class = Types::ListNetworkConnectorVersionsResponse

    ListNetworkConnectorsRequest.add_member(:state, Shapes::ShapeRef.new(shape: NetworkConnectorState, location: "querystring", location_name: "State"))
    ListNetworkConnectorsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "Marker"))
    ListNetworkConnectorsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: MaxHundredListItems, location: "querystring", location_name: "MaxItems"))
    ListNetworkConnectorsRequest.struct_class = Types::ListNetworkConnectorsRequest

    ListNetworkConnectorsResponse.add_member(:network_connectors, Shapes::ShapeRef.new(shape: NetworkConnectorsList, required: true, location_name: "NetworkConnectors"))
    ListNetworkConnectorsResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: String, location_name: "NextMarker"))
    ListNetworkConnectorsResponse.struct_class = Types::ListNetworkConnectorsResponse

    ListRuntimeAliasesRequest.add_member(:runtime_name, Shapes::ShapeRef.new(shape: RuntimeIdentifier, required: true, location: "uri", location_name: "RuntimeName"))
    ListRuntimeAliasesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListRuntimeAliasesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListRuntimeAliasesRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListRuntimeAliasesRequest.struct_class = Types::ListRuntimeAliasesRequest

    ListRuntimeAliasesResponse.add_member(:items, Shapes::ShapeRef.new(shape: RuntimeAliasList, required: true, location_name: "Items"))
    ListRuntimeAliasesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListRuntimeAliasesResponse.struct_class = Types::ListRuntimeAliasesResponse

    ListRuntimeVersionsRequest.add_member(:runtime_name, Shapes::ShapeRef.new(shape: RuntimeIdentifier, required: true, location: "uri", location_name: "RuntimeName"))
    ListRuntimeVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListRuntimeVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListRuntimeVersionsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListRuntimeVersionsRequest.struct_class = Types::ListRuntimeVersionsRequest

    ListRuntimeVersionsResponse.add_member(:items, Shapes::ShapeRef.new(shape: RuntimeVersionList, required: true, location_name: "Items"))
    ListRuntimeVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListRuntimeVersionsResponse.struct_class = Types::ListRuntimeVersionsResponse

    ListRuntimesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListRuntimesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListRuntimesRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListRuntimesRequest.struct_class = Types::ListRuntimesRequest

    ListRuntimesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListRuntimesResponse.add_member(:items, Shapes::ShapeRef.new(shape: RuntimeList, required: true, location_name: "Items"))
    ListRuntimesResponse.struct_class = Types::ListRuntimesResponse

    NetworkConnectorConfiguration.add_member(:vpc_egress_configuration, Shapes::ShapeRef.new(shape: NetworkConnectorVpcEgressConfiguration, location_name: "VpcEgressConfiguration"))
    NetworkConnectorConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    NetworkConnectorConfiguration.add_member_subclass(:vpc_egress_configuration, Types::NetworkConnectorConfiguration::VpcEgressConfiguration)
    NetworkConnectorConfiguration.add_member_subclass(:unknown, Types::NetworkConnectorConfiguration::Unknown)
    NetworkConnectorConfiguration.struct_class = Types::NetworkConnectorConfiguration

    NetworkConnectorLimitExceededException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    NetworkConnectorLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    NetworkConnectorLimitExceededException.struct_class = Types::NetworkConnectorLimitExceededException

    NetworkConnectorSecurityGroupIds.member = Shapes::ShapeRef.new(shape: NetworkConnectorSecurityGroupId)

    NetworkConnectorSubnetIds.member = Shapes::ShapeRef.new(shape: NetworkConnectorSubnetId)

    NetworkConnectorSummary.add_member(:arn, Shapes::ShapeRef.new(shape: NetworkConnectorArn, required: true, location_name: "Arn"))
    NetworkConnectorSummary.add_member(:name, Shapes::ShapeRef.new(shape: NetworkConnectorName, required: true, location_name: "Name"))
    NetworkConnectorSummary.add_member(:id, Shapes::ShapeRef.new(shape: NetworkConnectorId, required: true, location_name: "Id"))
    NetworkConnectorSummary.add_member(:type, Shapes::ShapeRef.new(shape: NetworkConnectorType, required: true, location_name: "Type"))
    NetworkConnectorSummary.add_member(:state, Shapes::ShapeRef.new(shape: NetworkConnectorState, location_name: "State"))
    NetworkConnectorSummary.add_member(:last_modified, Shapes::ShapeRef.new(shape: CoreTimestamp, location_name: "LastModified"))
    NetworkConnectorSummary.add_member(:latest_version_arn, Shapes::ShapeRef.new(shape: NetworkConnectorArn, location_name: "LatestVersionArn"))
    NetworkConnectorSummary.add_member(:latest_version, Shapes::ShapeRef.new(shape: NetworkConnectorVersion, location_name: "LatestVersion"))
    NetworkConnectorSummary.struct_class = Types::NetworkConnectorSummary

    NetworkConnectorTags.key = Shapes::ShapeRef.new(shape: NetworkConnectorTagKey)
    NetworkConnectorTags.value = Shapes::ShapeRef.new(shape: NetworkConnectorTagValue)

    NetworkConnectorVersionSummary.add_member(:arn, Shapes::ShapeRef.new(shape: NetworkConnectorArn, required: true, location_name: "Arn"))
    NetworkConnectorVersionSummary.add_member(:version_arn, Shapes::ShapeRef.new(shape: NetworkConnectorArn, required: true, location_name: "VersionArn"))
    NetworkConnectorVersionSummary.add_member(:name, Shapes::ShapeRef.new(shape: NetworkConnectorName, required: true, location_name: "Name"))
    NetworkConnectorVersionSummary.add_member(:id, Shapes::ShapeRef.new(shape: NetworkConnectorId, required: true, location_name: "Id"))
    NetworkConnectorVersionSummary.add_member(:version, Shapes::ShapeRef.new(shape: NetworkConnectorVersion, required: true, location_name: "Version"))
    NetworkConnectorVersionSummary.add_member(:state, Shapes::ShapeRef.new(shape: NetworkConnectorState, required: true, location_name: "State"))
    NetworkConnectorVersionSummary.add_member(:state_reason, Shapes::ShapeRef.new(shape: String, location_name: "StateReason"))
    NetworkConnectorVersionSummary.add_member(:state_reason_code, Shapes::ShapeRef.new(shape: NetworkConnectorStateReasonCode, location_name: "StateReasonCode"))
    NetworkConnectorVersionSummary.add_member(:last_modified, Shapes::ShapeRef.new(shape: CoreTimestamp, location_name: "LastModified"))
    NetworkConnectorVersionSummary.struct_class = Types::NetworkConnectorVersionSummary

    NetworkConnectorVersionsList.member = Shapes::ShapeRef.new(shape: NetworkConnectorVersionSummary)

    NetworkConnectorVpcEgressConfiguration.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: NetworkConnectorSubnetIds, location_name: "SubnetIds"))
    NetworkConnectorVpcEgressConfiguration.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: NetworkConnectorSecurityGroupIds, location_name: "SecurityGroupIds"))
    NetworkConnectorVpcEgressConfiguration.add_member(:network_protocol, Shapes::ShapeRef.new(shape: NetworkProtocol, location_name: "NetworkProtocol"))
    NetworkConnectorVpcEgressConfiguration.add_member(:associated_compute_resource_types, Shapes::ShapeRef.new(shape: AssociatedComputeResourceTypesList, location_name: "AssociatedComputeResourceTypes"))
    NetworkConnectorVpcEgressConfiguration.struct_class = Types::NetworkConnectorVpcEgressConfiguration

    NetworkConnectorsList.member = Shapes::ShapeRef.new(shape: NetworkConnectorSummary)

    Platform.add_member(:architecture, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Architecture"))
    Platform.add_member(:os, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Os"))
    Platform.add_member(:digest, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Digest"))
    Platform.struct_class = Types::Platform

    PlatformList.member = Shapes::ShapeRef.new(shape: Platform)

    ResourceConflictException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    ResourceConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceConflictException.struct_class = Types::ResourceConflictException

    ResourceNotFoundException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RestoreRuntimeRequest.add_member(:runtime_name, Shapes::ShapeRef.new(shape: RuntimeIdentifier, required: true, location: "uri", location_name: "RuntimeName"))
    RestoreRuntimeRequest.add_member(:runtime_version, Shapes::ShapeRef.new(shape: RuntimeVersionName, location: "querystring", location_name: "RuntimeVersion"))
    RestoreRuntimeRequest.add_member(:runtime_alias, Shapes::ShapeRef.new(shape: RuntimeAliasName, location: "querystring", location_name: "RuntimeAlias"))
    RestoreRuntimeRequest.struct_class = Types::RestoreRuntimeRequest

    RestoreRuntimeResponse.add_member(:runtime_name, Shapes::ShapeRef.new(shape: RuntimeIdentifier, required: true, location_name: "RuntimeName"))
    RestoreRuntimeResponse.add_member(:runtime_version, Shapes::ShapeRef.new(shape: RuntimeVersionName, location_name: "RuntimeVersion"))
    RestoreRuntimeResponse.add_member(:runtime_alias, Shapes::ShapeRef.new(shape: RuntimeAliasName, location_name: "RuntimeAlias"))
    RestoreRuntimeResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RuntimeArn, required: true, location_name: "Arn"))
    RestoreRuntimeResponse.add_member(:state, Shapes::ShapeRef.new(shape: RuntimeState, required: true, location_name: "State"))
    RestoreRuntimeResponse.add_member(:last_modified, Shapes::ShapeRef.new(shape: RuntimeTimestamp, required: true, location_name: "LastModified"))
    RestoreRuntimeResponse.struct_class = Types::RestoreRuntimeResponse

    RuntimeAliasInfo.add_member(:name, Shapes::ShapeRef.new(shape: RuntimeAliasName, required: true, location_name: "Name"))
    RuntimeAliasInfo.add_member(:arn, Shapes::ShapeRef.new(shape: RuntimeArn, required: true, location_name: "Arn"))
    RuntimeAliasInfo.add_member(:runtime_version, Shapes::ShapeRef.new(shape: RuntimeVersionName, required: true, location_name: "RuntimeVersion"))
    RuntimeAliasInfo.add_member(:runtime_version_arn, Shapes::ShapeRef.new(shape: RuntimeArn, required: true, location_name: "RuntimeVersionArn"))
    RuntimeAliasInfo.add_member(:state, Shapes::ShapeRef.new(shape: RuntimeAliasState, required: true, location_name: "State"))
    RuntimeAliasInfo.add_member(:pending_deletion_at, Shapes::ShapeRef.new(shape: RuntimeTimestamp, location_name: "PendingDeletionAt"))
    RuntimeAliasInfo.add_member(:description, Shapes::ShapeRef.new(shape: RuntimeAliasDescription, location_name: "Description"))
    RuntimeAliasInfo.add_member(:compatibility, Shapes::ShapeRef.new(shape: Compatibility, location_name: "Compatibility"))
    RuntimeAliasInfo.add_member(:release_lifecycle, Shapes::ShapeRef.new(shape: RuntimeReleaseLifecycle, location_name: "ReleaseLifecycle"))
    RuntimeAliasInfo.add_member(:created, Shapes::ShapeRef.new(shape: RuntimeTimestamp, required: true, location_name: "Created"))
    RuntimeAliasInfo.add_member(:last_modified, Shapes::ShapeRef.new(shape: RuntimeTimestamp, required: true, location_name: "LastModified"))
    RuntimeAliasInfo.struct_class = Types::RuntimeAliasInfo

    RuntimeAliasList.member = Shapes::ShapeRef.new(shape: RuntimeAliasInfo)

    RuntimeArchitectureList.member = Shapes::ShapeRef.new(shape: RuntimeArchitecture)

    RuntimeInfo.add_member(:arn, Shapes::ShapeRef.new(shape: RuntimeArn, required: true, location_name: "Arn"))
    RuntimeInfo.add_member(:name, Shapes::ShapeRef.new(shape: RuntimeName, required: true, location_name: "Name"))
    RuntimeInfo.add_member(:description, Shapes::ShapeRef.new(shape: RuntimeDescription, location_name: "Description"))
    RuntimeInfo.add_member(:license_info, Shapes::ShapeRef.new(shape: RuntimeLicenseInfo, location_name: "LicenseInfo"))
    RuntimeInfo.add_member(:release_lifecycle, Shapes::ShapeRef.new(shape: RuntimeReleaseLifecycle, location_name: "ReleaseLifecycle"))
    RuntimeInfo.add_member(:state, Shapes::ShapeRef.new(shape: RuntimeState, location_name: "State"))
    RuntimeInfo.add_member(:pending_deletion_at, Shapes::ShapeRef.new(shape: RuntimeTimestamp, location_name: "PendingDeletionAt"))
    RuntimeInfo.add_member(:created, Shapes::ShapeRef.new(shape: RuntimeTimestamp, required: true, location_name: "Created"))
    RuntimeInfo.add_member(:last_modified, Shapes::ShapeRef.new(shape: RuntimeTimestamp, required: true, location_name: "LastModified"))
    RuntimeInfo.struct_class = Types::RuntimeInfo

    RuntimeList.member = Shapes::ShapeRef.new(shape: RuntimeInfo)

    RuntimeReleaseLifecycle.add_member(:release_state, Shapes::ShapeRef.new(shape: RuntimeReleaseState, location_name: "ReleaseState"))
    RuntimeReleaseLifecycle.add_member(:deprecation_date, Shapes::ShapeRef.new(shape: RuntimeLifecycleDate, location_name: "DeprecationDate"))
    RuntimeReleaseLifecycle.add_member(:function_create_block_date, Shapes::ShapeRef.new(shape: RuntimeLifecycleDate, location_name: "FunctionCreateBlockDate"))
    RuntimeReleaseLifecycle.add_member(:function_update_block_date, Shapes::ShapeRef.new(shape: RuntimeLifecycleDate, location_name: "FunctionUpdateBlockDate"))
    RuntimeReleaseLifecycle.struct_class = Types::RuntimeReleaseLifecycle

    RuntimeVersionInfo.add_member(:name, Shapes::ShapeRef.new(shape: RuntimeVersionName, required: true, location_name: "Name"))
    RuntimeVersionInfo.add_member(:arn, Shapes::ShapeRef.new(shape: RuntimeArn, required: true, location_name: "Arn"))
    RuntimeVersionInfo.add_member(:resolved_uri, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResolvedUri"))
    RuntimeVersionInfo.add_member(:state, Shapes::ShapeRef.new(shape: RuntimeVersionState, required: true, location_name: "State"))
    RuntimeVersionInfo.add_member(:pending_deletion_at, Shapes::ShapeRef.new(shape: RuntimeTimestamp, location_name: "PendingDeletionAt"))
    RuntimeVersionInfo.add_member(:release_notes, Shapes::ShapeRef.new(shape: String, location_name: "ReleaseNotes"))
    RuntimeVersionInfo.add_member(:compatibility, Shapes::ShapeRef.new(shape: Compatibility, location_name: "Compatibility"))
    RuntimeVersionInfo.add_member(:created, Shapes::ShapeRef.new(shape: RuntimeTimestamp, required: true, location_name: "Created"))
    RuntimeVersionInfo.add_member(:last_modified, Shapes::ShapeRef.new(shape: RuntimeTimestamp, required: true, location_name: "LastModified"))
    RuntimeVersionInfo.struct_class = Types::RuntimeVersionInfo

    RuntimeVersionList.member = Shapes::ShapeRef.new(shape: RuntimeVersionInfo)

    ServiceException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    ServiceException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceException.struct_class = Types::ServiceException

    ServiceQuotaExceededException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    TagMap.key = Shapes::ShapeRef.new(shape: String)
    TagMap.value = Shapes::ShapeRef.new(shape: String)

    TooManyRequestsException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Retry-After"))
    TooManyRequestsException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    TooManyRequestsException.add_member(:reason, Shapes::ShapeRef.new(shape: ThrottleReason, location_name: "Reason"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    UpdateNetworkConnectorRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: NetworkConnectorIdentifier, required: true, location: "uri", location_name: "Identifier"))
    UpdateNetworkConnectorRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: NetworkConnectorConfiguration, location_name: "Configuration"))
    UpdateNetworkConnectorRequest.add_member(:operator_role, Shapes::ShapeRef.new(shape: NetworkConnectorRoleArn, location_name: "OperatorRole"))
    UpdateNetworkConnectorRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenString, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    UpdateNetworkConnectorRequest.struct_class = Types::UpdateNetworkConnectorRequest

    UpdateNetworkConnectorResponse.add_member(:arn, Shapes::ShapeRef.new(shape: NetworkConnectorArn, required: true, location_name: "Arn"))
    UpdateNetworkConnectorResponse.add_member(:name, Shapes::ShapeRef.new(shape: NetworkConnectorName, required: true, location_name: "Name"))
    UpdateNetworkConnectorResponse.add_member(:id, Shapes::ShapeRef.new(shape: NetworkConnectorId, required: true, location_name: "Id"))
    UpdateNetworkConnectorResponse.add_member(:version_arn, Shapes::ShapeRef.new(shape: NetworkConnectorArn, location_name: "VersionArn"))
    UpdateNetworkConnectorResponse.add_member(:version, Shapes::ShapeRef.new(shape: NetworkConnectorVersion, location_name: "Version"))
    UpdateNetworkConnectorResponse.add_member(:operator_role, Shapes::ShapeRef.new(shape: NetworkConnectorRoleArn, location_name: "OperatorRole"))
    UpdateNetworkConnectorResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: NetworkConnectorConfiguration, location_name: "Configuration"))
    UpdateNetworkConnectorResponse.add_member(:state, Shapes::ShapeRef.new(shape: NetworkConnectorState, location_name: "State"))
    UpdateNetworkConnectorResponse.add_member(:last_update_status, Shapes::ShapeRef.new(shape: NetworkConnectorLastUpdateStatus, location_name: "LastUpdateStatus"))
    UpdateNetworkConnectorResponse.add_member(:last_update_status_reason, Shapes::ShapeRef.new(shape: NetworkConnectorLastUpdateStatusReason, location_name: "LastUpdateStatusReason"))
    UpdateNetworkConnectorResponse.add_member(:last_modified, Shapes::ShapeRef.new(shape: CoreTimestamp, location_name: "LastModified"))
    UpdateNetworkConnectorResponse.struct_class = Types::UpdateNetworkConnectorResponse

    UpdateRuntimeAliasRequest.add_member(:runtime_name, Shapes::ShapeRef.new(shape: RuntimeIdentifier, required: true, location: "uri", location_name: "RuntimeName"))
    UpdateRuntimeAliasRequest.add_member(:name, Shapes::ShapeRef.new(shape: RuntimeAliasName, required: true, location: "uri", location_name: "Name"))
    UpdateRuntimeAliasRequest.add_member(:runtime_version, Shapes::ShapeRef.new(shape: RuntimeVersionName, required: true, location_name: "RuntimeVersion"))
    UpdateRuntimeAliasRequest.add_member(:description, Shapes::ShapeRef.new(shape: RuntimeAliasDescription, location_name: "Description"))
    UpdateRuntimeAliasRequest.add_member(:release_lifecycle, Shapes::ShapeRef.new(shape: RuntimeReleaseLifecycle, location_name: "ReleaseLifecycle"))
    UpdateRuntimeAliasRequest.struct_class = Types::UpdateRuntimeAliasRequest

    UpdateRuntimeAliasResponse.add_member(:runtime_name, Shapes::ShapeRef.new(shape: RuntimeIdentifier, required: true, location_name: "RuntimeName"))
    UpdateRuntimeAliasResponse.add_member(:name, Shapes::ShapeRef.new(shape: RuntimeAliasName, required: true, location_name: "Name"))
    UpdateRuntimeAliasResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RuntimeArn, required: true, location_name: "Arn"))
    UpdateRuntimeAliasResponse.add_member(:runtime_version, Shapes::ShapeRef.new(shape: RuntimeVersionName, required: true, location_name: "RuntimeVersion"))
    UpdateRuntimeAliasResponse.add_member(:runtime_version_arn, Shapes::ShapeRef.new(shape: RuntimeArn, required: true, location_name: "RuntimeVersionArn"))
    UpdateRuntimeAliasResponse.add_member(:state, Shapes::ShapeRef.new(shape: RuntimeAliasState, required: true, location_name: "State"))
    UpdateRuntimeAliasResponse.add_member(:description, Shapes::ShapeRef.new(shape: RuntimeAliasDescription, location_name: "Description"))
    UpdateRuntimeAliasResponse.add_member(:compatibility, Shapes::ShapeRef.new(shape: Compatibility, location_name: "Compatibility"))
    UpdateRuntimeAliasResponse.add_member(:release_lifecycle, Shapes::ShapeRef.new(shape: RuntimeReleaseLifecycle, location_name: "ReleaseLifecycle"))
    UpdateRuntimeAliasResponse.add_member(:created, Shapes::ShapeRef.new(shape: RuntimeTimestamp, required: true, location_name: "Created"))
    UpdateRuntimeAliasResponse.add_member(:last_modified, Shapes::ShapeRef.new(shape: RuntimeTimestamp, required: true, location_name: "LastModified"))
    UpdateRuntimeAliasResponse.struct_class = Types::UpdateRuntimeAliasResponse

    UpdateRuntimeRequest.add_member(:runtime_name, Shapes::ShapeRef.new(shape: RuntimeIdentifier, required: true, location: "uri", location_name: "RuntimeName"))
    UpdateRuntimeRequest.add_member(:description, Shapes::ShapeRef.new(shape: RuntimeDescription, location_name: "Description"))
    UpdateRuntimeRequest.add_member(:license_info, Shapes::ShapeRef.new(shape: RuntimeLicenseInfo, location_name: "LicenseInfo"))
    UpdateRuntimeRequest.add_member(:release_lifecycle, Shapes::ShapeRef.new(shape: RuntimeReleaseLifecycle, location_name: "ReleaseLifecycle"))
    UpdateRuntimeRequest.struct_class = Types::UpdateRuntimeRequest

    UpdateRuntimeResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RuntimeArn, required: true, location_name: "Arn"))
    UpdateRuntimeResponse.add_member(:name, Shapes::ShapeRef.new(shape: RuntimeName, required: true, location_name: "Name"))
    UpdateRuntimeResponse.add_member(:description, Shapes::ShapeRef.new(shape: RuntimeDescription, location_name: "Description"))
    UpdateRuntimeResponse.add_member(:license_info, Shapes::ShapeRef.new(shape: RuntimeLicenseInfo, location_name: "LicenseInfo"))
    UpdateRuntimeResponse.add_member(:release_lifecycle, Shapes::ShapeRef.new(shape: RuntimeReleaseLifecycle, location_name: "ReleaseLifecycle"))
    UpdateRuntimeResponse.add_member(:created, Shapes::ShapeRef.new(shape: RuntimeTimestamp, required: true, location_name: "Created"))
    UpdateRuntimeResponse.add_member(:last_modified, Shapes::ShapeRef.new(shape: RuntimeTimestamp, required: true, location_name: "LastModified"))
    UpdateRuntimeResponse.struct_class = Types::UpdateRuntimeResponse

    UpdateRuntimeVersionRequest.add_member(:runtime_name, Shapes::ShapeRef.new(shape: RuntimeIdentifier, required: true, location: "uri", location_name: "RuntimeName"))
    UpdateRuntimeVersionRequest.add_member(:name, Shapes::ShapeRef.new(shape: RuntimeVersionName, required: true, location: "uri", location_name: "Name"))
    UpdateRuntimeVersionRequest.add_member(:release_notes, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReleaseNotes"))
    UpdateRuntimeVersionRequest.struct_class = Types::UpdateRuntimeVersionRequest

    UpdateRuntimeVersionResponse.add_member(:name, Shapes::ShapeRef.new(shape: RuntimeVersionName, required: true, location_name: "Name"))
    UpdateRuntimeVersionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RuntimeArn, required: true, location_name: "Arn"))
    UpdateRuntimeVersionResponse.add_member(:resolved_uri, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResolvedUri"))
    UpdateRuntimeVersionResponse.add_member(:state, Shapes::ShapeRef.new(shape: RuntimeVersionState, required: true, location_name: "State"))
    UpdateRuntimeVersionResponse.add_member(:release_notes, Shapes::ShapeRef.new(shape: String, location_name: "ReleaseNotes"))
    UpdateRuntimeVersionResponse.add_member(:platforms, Shapes::ShapeRef.new(shape: PlatformList, location_name: "Platforms"))
    UpdateRuntimeVersionResponse.add_member(:compatibility, Shapes::ShapeRef.new(shape: Compatibility, location_name: "Compatibility"))
    UpdateRuntimeVersionResponse.add_member(:created, Shapes::ShapeRef.new(shape: RuntimeTimestamp, required: true, location_name: "Created"))
    UpdateRuntimeVersionResponse.add_member(:last_modified, Shapes::ShapeRef.new(shape: RuntimeTimestamp, required: true, location_name: "LastModified"))
    UpdateRuntimeVersionResponse.struct_class = Types::UpdateRuntimeVersionResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2026-04-30"

      api.metadata = {
        "apiVersion" => "2026-04-30",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "lambda",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS Lambda Core",
        "serviceId" => "Lambda Core",
        "signatureVersion" => "v4",
        "signingName" => "lambda",
        "uid" => "lambda-core-2026-04-30",
      }

      api.add_operation(:create_network_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateNetworkConnector"
        o.http_method = "POST"
        o.http_request_uri = "/2026-04-04/network-connectors"
        o.input = Shapes::ShapeRef.new(shape: CreateNetworkConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateNetworkConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: NetworkConnectorLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:create_runtime, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRuntime"
        o.http_method = "POST"
        o.http_request_uri = "/2026-10-01/runtimes"
        o.input = Shapes::ShapeRef.new(shape: CreateRuntimeRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRuntimeResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:create_runtime_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRuntimeAlias"
        o.http_method = "POST"
        o.http_request_uri = "/2026-10-01/runtimes/{RuntimeName}/aliases"
        o.input = Shapes::ShapeRef.new(shape: CreateRuntimeAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRuntimeAliasResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_runtime_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRuntimeVersion"
        o.http_method = "POST"
        o.http_request_uri = "/2026-10-01/runtimes/{RuntimeName}/versions"
        o.input = Shapes::ShapeRef.new(shape: CreateRuntimeVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRuntimeVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_network_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteNetworkConnector"
        o.http_method = "DELETE"
        o.http_request_uri = "/2026-04-04/network-connectors/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteNetworkConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteNetworkConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_runtime, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRuntime"
        o.http_method = "DELETE"
        o.http_request_uri = "/2026-10-01/runtimes/{RuntimeName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRuntimeRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRuntimeResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_runtime_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRuntimeAlias"
        o.http_method = "DELETE"
        o.http_request_uri = "/2026-10-01/runtimes/{RuntimeName}/aliases/{Name}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRuntimeAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRuntimeAliasResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_runtime_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRuntimeVersion"
        o.http_method = "DELETE"
        o.http_request_uri = "/2026-10-01/runtimes/{RuntimeName}/versions/{Name}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRuntimeVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRuntimeVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_network_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetNetworkConnector"
        o.http_method = "GET"
        o.http_request_uri = "/2026-04-04/network-connectors/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetNetworkConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: GetNetworkConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_runtime, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRuntime"
        o.http_method = "GET"
        o.http_request_uri = "/2026-10-01/runtimes/{RuntimeName}"
        o.input = Shapes::ShapeRef.new(shape: GetRuntimeRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRuntimeResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_runtime_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRuntimeAlias"
        o.http_method = "GET"
        o.http_request_uri = "/2026-10-01/runtimes/{RuntimeName}/aliases/{Name}"
        o.input = Shapes::ShapeRef.new(shape: GetRuntimeAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRuntimeAliasResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_runtime_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRuntimeVersion"
        o.http_method = "GET"
        o.http_request_uri = "/2026-10-01/runtimes/{RuntimeName}/versions/{Name}"
        o.input = Shapes::ShapeRef.new(shape: GetRuntimeVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRuntimeVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_network_connector_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNetworkConnectorVersions"
        o.http_method = "GET"
        o.http_request_uri = "/2026-04-04/network-connectors/{Identifier}/versions"
        o.input = Shapes::ShapeRef.new(shape: ListNetworkConnectorVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNetworkConnectorVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_items",
          tokens: {
            "next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_network_connectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNetworkConnectors"
        o.http_method = "GET"
        o.http_request_uri = "/2026-04-04/network-connectors"
        o.input = Shapes::ShapeRef.new(shape: ListNetworkConnectorsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNetworkConnectorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_items",
          tokens: {
            "next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_runtime_aliases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRuntimeAliases"
        o.http_method = "GET"
        o.http_request_uri = "/2026-10-01/runtimes/{RuntimeName}/aliases"
        o.input = Shapes::ShapeRef.new(shape: ListRuntimeAliasesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRuntimeAliasesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_runtime_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRuntimeVersions"
        o.http_method = "GET"
        o.http_request_uri = "/2026-10-01/runtimes/{RuntimeName}/versions"
        o.input = Shapes::ShapeRef.new(shape: ListRuntimeVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRuntimeVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_runtimes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRuntimes"
        o.http_method = "GET"
        o.http_request_uri = "/2026-10-01/runtimes"
        o.input = Shapes::ShapeRef.new(shape: ListRuntimesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRuntimesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:restore_runtime, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestoreRuntime"
        o.http_method = "POST"
        o.http_request_uri = "/2026-10-01/runtimes/{RuntimeName}/restore"
        o.input = Shapes::ShapeRef.new(shape: RestoreRuntimeRequest)
        o.output = Shapes::ShapeRef.new(shape: RestoreRuntimeResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_network_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateNetworkConnector"
        o.http_method = "PUT"
        o.http_request_uri = "/2026-04-04/network-connectors/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateNetworkConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateNetworkConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: NetworkConnectorLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_runtime, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRuntime"
        o.http_method = "PUT"
        o.http_request_uri = "/2026-10-01/runtimes/{RuntimeName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateRuntimeRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRuntimeResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_runtime_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRuntimeAlias"
        o.http_method = "PUT"
        o.http_request_uri = "/2026-10-01/runtimes/{RuntimeName}/aliases/{Name}"
        o.input = Shapes::ShapeRef.new(shape: UpdateRuntimeAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRuntimeAliasResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_runtime_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRuntimeVersion"
        o.http_method = "PATCH"
        o.http_request_uri = "/2026-10-01/runtimes/{RuntimeName}/versions/{Name}"
        o.input = Shapes::ShapeRef.new(shape: UpdateRuntimeVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRuntimeVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
