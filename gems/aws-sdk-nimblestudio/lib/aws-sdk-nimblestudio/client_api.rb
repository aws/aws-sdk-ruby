# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::NimbleStudio
  # @api private
  module ClientApi

    include Seahorse::Model

    AcceptEulasRequest = Shapes::StructureShape.new(name: 'AcceptEulasRequest')
    AcceptEulasResponse = Shapes::StructureShape.new(name: 'AcceptEulasResponse')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ActiveDirectoryComputerAttribute = Shapes::StructureShape.new(name: 'ActiveDirectoryComputerAttribute')
    ActiveDirectoryComputerAttributeList = Shapes::ListShape.new(name: 'ActiveDirectoryComputerAttributeList')
    ActiveDirectoryComputerAttributeName = Shapes::StringShape.new(name: 'ActiveDirectoryComputerAttributeName')
    ActiveDirectoryComputerAttributeValue = Shapes::StringShape.new(name: 'ActiveDirectoryComputerAttributeValue')
    ActiveDirectoryConfiguration = Shapes::StructureShape.new(name: 'ActiveDirectoryConfiguration')
    ActiveDirectoryDnsIpAddress = Shapes::StringShape.new(name: 'ActiveDirectoryDnsIpAddress')
    ActiveDirectoryDnsIpAddressList = Shapes::ListShape.new(name: 'ActiveDirectoryDnsIpAddressList')
    ActiveDirectoryOrganizationalUnitDistinguishedName = Shapes::StringShape.new(name: 'ActiveDirectoryOrganizationalUnitDistinguishedName')
    AutomaticTerminationMode = Shapes::StringShape.new(name: 'AutomaticTerminationMode')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ComputeFarmConfiguration = Shapes::StructureShape.new(name: 'ComputeFarmConfiguration')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateLaunchProfileRequest = Shapes::StructureShape.new(name: 'CreateLaunchProfileRequest')
    CreateLaunchProfileResponse = Shapes::StructureShape.new(name: 'CreateLaunchProfileResponse')
    CreateStreamingImageRequest = Shapes::StructureShape.new(name: 'CreateStreamingImageRequest')
    CreateStreamingImageResponse = Shapes::StructureShape.new(name: 'CreateStreamingImageResponse')
    CreateStreamingSessionRequest = Shapes::StructureShape.new(name: 'CreateStreamingSessionRequest')
    CreateStreamingSessionResponse = Shapes::StructureShape.new(name: 'CreateStreamingSessionResponse')
    CreateStreamingSessionStreamRequest = Shapes::StructureShape.new(name: 'CreateStreamingSessionStreamRequest')
    CreateStreamingSessionStreamResponse = Shapes::StructureShape.new(name: 'CreateStreamingSessionStreamResponse')
    CreateStudioComponentRequest = Shapes::StructureShape.new(name: 'CreateStudioComponentRequest')
    CreateStudioComponentResponse = Shapes::StructureShape.new(name: 'CreateStudioComponentResponse')
    CreateStudioRequest = Shapes::StructureShape.new(name: 'CreateStudioRequest')
    CreateStudioResponse = Shapes::StructureShape.new(name: 'CreateStudioResponse')
    DeleteLaunchProfileMemberRequest = Shapes::StructureShape.new(name: 'DeleteLaunchProfileMemberRequest')
    DeleteLaunchProfileMemberResponse = Shapes::StructureShape.new(name: 'DeleteLaunchProfileMemberResponse')
    DeleteLaunchProfileRequest = Shapes::StructureShape.new(name: 'DeleteLaunchProfileRequest')
    DeleteLaunchProfileResponse = Shapes::StructureShape.new(name: 'DeleteLaunchProfileResponse')
    DeleteStreamingImageRequest = Shapes::StructureShape.new(name: 'DeleteStreamingImageRequest')
    DeleteStreamingImageResponse = Shapes::StructureShape.new(name: 'DeleteStreamingImageResponse')
    DeleteStreamingSessionRequest = Shapes::StructureShape.new(name: 'DeleteStreamingSessionRequest')
    DeleteStreamingSessionResponse = Shapes::StructureShape.new(name: 'DeleteStreamingSessionResponse')
    DeleteStudioComponentRequest = Shapes::StructureShape.new(name: 'DeleteStudioComponentRequest')
    DeleteStudioComponentResponse = Shapes::StructureShape.new(name: 'DeleteStudioComponentResponse')
    DeleteStudioMemberRequest = Shapes::StructureShape.new(name: 'DeleteStudioMemberRequest')
    DeleteStudioMemberResponse = Shapes::StructureShape.new(name: 'DeleteStudioMemberResponse')
    DeleteStudioRequest = Shapes::StructureShape.new(name: 'DeleteStudioRequest')
    DeleteStudioResponse = Shapes::StructureShape.new(name: 'DeleteStudioResponse')
    DirectoryId = Shapes::StringShape.new(name: 'DirectoryId')
    EC2ImageId = Shapes::StringShape.new(name: 'EC2ImageId')
    EC2SubnetId = Shapes::StringShape.new(name: 'EC2SubnetId')
    EC2SubnetIdList = Shapes::ListShape.new(name: 'EC2SubnetIdList')
    Eula = Shapes::StructureShape.new(name: 'Eula')
    EulaAcceptance = Shapes::StructureShape.new(name: 'EulaAcceptance')
    EulaAcceptanceId = Shapes::StringShape.new(name: 'EulaAcceptanceId')
    EulaAcceptanceList = Shapes::ListShape.new(name: 'EulaAcceptanceList')
    EulaId = Shapes::StringShape.new(name: 'EulaId')
    EulaIdList = Shapes::ListShape.new(name: 'EulaIdList')
    EulaList = Shapes::ListShape.new(name: 'EulaList')
    EulaName = Shapes::StringShape.new(name: 'EulaName')
    ExceptionContext = Shapes::MapShape.new(name: 'ExceptionContext')
    GetEulaRequest = Shapes::StructureShape.new(name: 'GetEulaRequest')
    GetEulaResponse = Shapes::StructureShape.new(name: 'GetEulaResponse')
    GetLaunchProfileDetailsRequest = Shapes::StructureShape.new(name: 'GetLaunchProfileDetailsRequest')
    GetLaunchProfileDetailsResponse = Shapes::StructureShape.new(name: 'GetLaunchProfileDetailsResponse')
    GetLaunchProfileInitializationRequest = Shapes::StructureShape.new(name: 'GetLaunchProfileInitializationRequest')
    GetLaunchProfileInitializationResponse = Shapes::StructureShape.new(name: 'GetLaunchProfileInitializationResponse')
    GetLaunchProfileMemberRequest = Shapes::StructureShape.new(name: 'GetLaunchProfileMemberRequest')
    GetLaunchProfileMemberResponse = Shapes::StructureShape.new(name: 'GetLaunchProfileMemberResponse')
    GetLaunchProfileRequest = Shapes::StructureShape.new(name: 'GetLaunchProfileRequest')
    GetLaunchProfileResponse = Shapes::StructureShape.new(name: 'GetLaunchProfileResponse')
    GetStreamingImageRequest = Shapes::StructureShape.new(name: 'GetStreamingImageRequest')
    GetStreamingImageResponse = Shapes::StructureShape.new(name: 'GetStreamingImageResponse')
    GetStreamingSessionBackupRequest = Shapes::StructureShape.new(name: 'GetStreamingSessionBackupRequest')
    GetStreamingSessionBackupResponse = Shapes::StructureShape.new(name: 'GetStreamingSessionBackupResponse')
    GetStreamingSessionRequest = Shapes::StructureShape.new(name: 'GetStreamingSessionRequest')
    GetStreamingSessionResponse = Shapes::StructureShape.new(name: 'GetStreamingSessionResponse')
    GetStreamingSessionStreamRequest = Shapes::StructureShape.new(name: 'GetStreamingSessionStreamRequest')
    GetStreamingSessionStreamResponse = Shapes::StructureShape.new(name: 'GetStreamingSessionStreamResponse')
    GetStudioComponentRequest = Shapes::StructureShape.new(name: 'GetStudioComponentRequest')
    GetStudioComponentResponse = Shapes::StructureShape.new(name: 'GetStudioComponentResponse')
    GetStudioMemberRequest = Shapes::StructureShape.new(name: 'GetStudioMemberRequest')
    GetStudioMemberResponse = Shapes::StructureShape.new(name: 'GetStudioMemberResponse')
    GetStudioRequest = Shapes::StructureShape.new(name: 'GetStudioRequest')
    GetStudioResponse = Shapes::StructureShape.new(name: 'GetStudioResponse')
    InternalServerErrorException = Shapes::StructureShape.new(name: 'InternalServerErrorException')
    LaunchProfile = Shapes::StructureShape.new(name: 'LaunchProfile')
    LaunchProfileDescription = Shapes::StringShape.new(name: 'LaunchProfileDescription')
    LaunchProfileId = Shapes::StringShape.new(name: 'LaunchProfileId')
    LaunchProfileInitialization = Shapes::StructureShape.new(name: 'LaunchProfileInitialization')
    LaunchProfileInitializationActiveDirectory = Shapes::StructureShape.new(name: 'LaunchProfileInitializationActiveDirectory')
    LaunchProfileInitializationScript = Shapes::StructureShape.new(name: 'LaunchProfileInitializationScript')
    LaunchProfileInitializationScriptList = Shapes::ListShape.new(name: 'LaunchProfileInitializationScriptList')
    LaunchProfileList = Shapes::ListShape.new(name: 'LaunchProfileList')
    LaunchProfileMembership = Shapes::StructureShape.new(name: 'LaunchProfileMembership')
    LaunchProfileMembershipList = Shapes::ListShape.new(name: 'LaunchProfileMembershipList')
    LaunchProfileName = Shapes::StringShape.new(name: 'LaunchProfileName')
    LaunchProfilePersona = Shapes::StringShape.new(name: 'LaunchProfilePersona')
    LaunchProfilePlatform = Shapes::StringShape.new(name: 'LaunchProfilePlatform')
    LaunchProfileProtocolVersion = Shapes::StringShape.new(name: 'LaunchProfileProtocolVersion')
    LaunchProfileProtocolVersionList = Shapes::ListShape.new(name: 'LaunchProfileProtocolVersionList')
    LaunchProfileSecurityGroupIdList = Shapes::ListShape.new(name: 'LaunchProfileSecurityGroupIdList')
    LaunchProfileState = Shapes::StringShape.new(name: 'LaunchProfileState')
    LaunchProfileStateList = Shapes::ListShape.new(name: 'LaunchProfileStateList')
    LaunchProfileStatusCode = Shapes::StringShape.new(name: 'LaunchProfileStatusCode')
    LaunchProfileStudioComponentIdList = Shapes::ListShape.new(name: 'LaunchProfileStudioComponentIdList')
    LaunchProfileValidationState = Shapes::StringShape.new(name: 'LaunchProfileValidationState')
    LaunchProfileValidationStatusCode = Shapes::StringShape.new(name: 'LaunchProfileValidationStatusCode')
    LaunchProfileValidationStatusMessage = Shapes::StringShape.new(name: 'LaunchProfileValidationStatusMessage')
    LaunchProfileValidationType = Shapes::StringShape.new(name: 'LaunchProfileValidationType')
    LaunchPurpose = Shapes::StringShape.new(name: 'LaunchPurpose')
    LicenseServiceConfiguration = Shapes::StructureShape.new(name: 'LicenseServiceConfiguration')
    LinuxMountPoint = Shapes::StringShape.new(name: 'LinuxMountPoint')
    ListEulaAcceptancesRequest = Shapes::StructureShape.new(name: 'ListEulaAcceptancesRequest')
    ListEulaAcceptancesResponse = Shapes::StructureShape.new(name: 'ListEulaAcceptancesResponse')
    ListEulasRequest = Shapes::StructureShape.new(name: 'ListEulasRequest')
    ListEulasResponse = Shapes::StructureShape.new(name: 'ListEulasResponse')
    ListLaunchProfileMembersRequest = Shapes::StructureShape.new(name: 'ListLaunchProfileMembersRequest')
    ListLaunchProfileMembersResponse = Shapes::StructureShape.new(name: 'ListLaunchProfileMembersResponse')
    ListLaunchProfilesRequest = Shapes::StructureShape.new(name: 'ListLaunchProfilesRequest')
    ListLaunchProfilesResponse = Shapes::StructureShape.new(name: 'ListLaunchProfilesResponse')
    ListStreamingImagesRequest = Shapes::StructureShape.new(name: 'ListStreamingImagesRequest')
    ListStreamingImagesResponse = Shapes::StructureShape.new(name: 'ListStreamingImagesResponse')
    ListStreamingSessionBackupsRequest = Shapes::StructureShape.new(name: 'ListStreamingSessionBackupsRequest')
    ListStreamingSessionBackupsResponse = Shapes::StructureShape.new(name: 'ListStreamingSessionBackupsResponse')
    ListStreamingSessionsRequest = Shapes::StructureShape.new(name: 'ListStreamingSessionsRequest')
    ListStreamingSessionsResponse = Shapes::StructureShape.new(name: 'ListStreamingSessionsResponse')
    ListStudioComponentsRequest = Shapes::StructureShape.new(name: 'ListStudioComponentsRequest')
    ListStudioComponentsResponse = Shapes::StructureShape.new(name: 'ListStudioComponentsResponse')
    ListStudioMembersRequest = Shapes::StructureShape.new(name: 'ListStudioMembersRequest')
    ListStudioMembersResponse = Shapes::StructureShape.new(name: 'ListStudioMembersResponse')
    ListStudiosRequest = Shapes::StructureShape.new(name: 'ListStudiosRequest')
    ListStudiosResponse = Shapes::StructureShape.new(name: 'ListStudiosResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NewLaunchProfileMember = Shapes::StructureShape.new(name: 'NewLaunchProfileMember')
    NewLaunchProfileMemberList = Shapes::ListShape.new(name: 'NewLaunchProfileMemberList')
    NewStudioMember = Shapes::StructureShape.new(name: 'NewStudioMember')
    NewStudioMemberList = Shapes::ListShape.new(name: 'NewStudioMemberList')
    PutLaunchProfileMembersRequest = Shapes::StructureShape.new(name: 'PutLaunchProfileMembersRequest')
    PutLaunchProfileMembersResponse = Shapes::StructureShape.new(name: 'PutLaunchProfileMembersResponse')
    PutStudioMembersRequest = Shapes::StructureShape.new(name: 'PutStudioMembersRequest')
    PutStudioMembersResponse = Shapes::StructureShape.new(name: 'PutStudioMembersResponse')
    Region = Shapes::StringShape.new(name: 'Region')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    ScriptParameterKey = Shapes::StringShape.new(name: 'ScriptParameterKey')
    ScriptParameterKeyValue = Shapes::StructureShape.new(name: 'ScriptParameterKeyValue')
    ScriptParameterValue = Shapes::StringShape.new(name: 'ScriptParameterValue')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SensitiveString = Shapes::StringShape.new(name: 'SensitiveString')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SessionBackupMode = Shapes::StringShape.new(name: 'SessionBackupMode')
    SessionPersistenceMode = Shapes::StringShape.new(name: 'SessionPersistenceMode')
    SharedFileSystemConfiguration = Shapes::StructureShape.new(name: 'SharedFileSystemConfiguration')
    StartStreamingSessionRequest = Shapes::StructureShape.new(name: 'StartStreamingSessionRequest')
    StartStreamingSessionResponse = Shapes::StructureShape.new(name: 'StartStreamingSessionResponse')
    StartStudioSSOConfigurationRepairRequest = Shapes::StructureShape.new(name: 'StartStudioSSOConfigurationRepairRequest')
    StartStudioSSOConfigurationRepairResponse = Shapes::StructureShape.new(name: 'StartStudioSSOConfigurationRepairResponse')
    StopStreamingSessionRequest = Shapes::StructureShape.new(name: 'StopStreamingSessionRequest')
    StopStreamingSessionResponse = Shapes::StructureShape.new(name: 'StopStreamingSessionResponse')
    StreamConfiguration = Shapes::StructureShape.new(name: 'StreamConfiguration')
    StreamConfigurationCreate = Shapes::StructureShape.new(name: 'StreamConfigurationCreate')
    StreamConfigurationMaxBackupsToRetain = Shapes::IntegerShape.new(name: 'StreamConfigurationMaxBackupsToRetain')
    StreamConfigurationMaxSessionLengthInMinutes = Shapes::IntegerShape.new(name: 'StreamConfigurationMaxSessionLengthInMinutes')
    StreamConfigurationMaxStoppedSessionLengthInMinutes = Shapes::IntegerShape.new(name: 'StreamConfigurationMaxStoppedSessionLengthInMinutes')
    StreamConfigurationSessionBackup = Shapes::StructureShape.new(name: 'StreamConfigurationSessionBackup')
    StreamConfigurationSessionStorage = Shapes::StructureShape.new(name: 'StreamConfigurationSessionStorage')
    StreamingClipboardMode = Shapes::StringShape.new(name: 'StreamingClipboardMode')
    StreamingImage = Shapes::StructureShape.new(name: 'StreamingImage')
    StreamingImageDescription = Shapes::StringShape.new(name: 'StreamingImageDescription')
    StreamingImageEncryptionConfiguration = Shapes::StructureShape.new(name: 'StreamingImageEncryptionConfiguration')
    StreamingImageEncryptionConfigurationKeyArn = Shapes::StringShape.new(name: 'StreamingImageEncryptionConfigurationKeyArn')
    StreamingImageEncryptionConfigurationKeyType = Shapes::StringShape.new(name: 'StreamingImageEncryptionConfigurationKeyType')
    StreamingImageId = Shapes::StringShape.new(name: 'StreamingImageId')
    StreamingImageIdList = Shapes::ListShape.new(name: 'StreamingImageIdList')
    StreamingImageList = Shapes::ListShape.new(name: 'StreamingImageList')
    StreamingImageName = Shapes::StringShape.new(name: 'StreamingImageName')
    StreamingImageOwner = Shapes::StringShape.new(name: 'StreamingImageOwner')
    StreamingImagePlatform = Shapes::StringShape.new(name: 'StreamingImagePlatform')
    StreamingImageState = Shapes::StringShape.new(name: 'StreamingImageState')
    StreamingImageStatusCode = Shapes::StringShape.new(name: 'StreamingImageStatusCode')
    StreamingInstanceType = Shapes::StringShape.new(name: 'StreamingInstanceType')
    StreamingInstanceTypeList = Shapes::ListShape.new(name: 'StreamingInstanceTypeList')
    StreamingSession = Shapes::StructureShape.new(name: 'StreamingSession')
    StreamingSessionBackup = Shapes::StructureShape.new(name: 'StreamingSessionBackup')
    StreamingSessionBackupList = Shapes::ListShape.new(name: 'StreamingSessionBackupList')
    StreamingSessionId = Shapes::StringShape.new(name: 'StreamingSessionId')
    StreamingSessionList = Shapes::ListShape.new(name: 'StreamingSessionList')
    StreamingSessionState = Shapes::StringShape.new(name: 'StreamingSessionState')
    StreamingSessionStatusCode = Shapes::StringShape.new(name: 'StreamingSessionStatusCode')
    StreamingSessionStorageMode = Shapes::StringShape.new(name: 'StreamingSessionStorageMode')
    StreamingSessionStorageModeList = Shapes::ListShape.new(name: 'StreamingSessionStorageModeList')
    StreamingSessionStorageRoot = Shapes::StructureShape.new(name: 'StreamingSessionStorageRoot')
    StreamingSessionStorageRootPathLinux = Shapes::StringShape.new(name: 'StreamingSessionStorageRootPathLinux')
    StreamingSessionStorageRootPathWindows = Shapes::StringShape.new(name: 'StreamingSessionStorageRootPathWindows')
    StreamingSessionStream = Shapes::StructureShape.new(name: 'StreamingSessionStream')
    StreamingSessionStreamExpirationInSeconds = Shapes::IntegerShape.new(name: 'StreamingSessionStreamExpirationInSeconds')
    StreamingSessionStreamState = Shapes::StringShape.new(name: 'StreamingSessionStreamState')
    StreamingSessionStreamStatusCode = Shapes::StringShape.new(name: 'StreamingSessionStreamStatusCode')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    Studio = Shapes::StructureShape.new(name: 'Studio')
    StudioComponent = Shapes::StructureShape.new(name: 'StudioComponent')
    StudioComponentConfiguration = Shapes::UnionShape.new(name: 'StudioComponentConfiguration')
    StudioComponentDescription = Shapes::StringShape.new(name: 'StudioComponentDescription')
    StudioComponentId = Shapes::StringShape.new(name: 'StudioComponentId')
    StudioComponentInitializationScript = Shapes::StructureShape.new(name: 'StudioComponentInitializationScript')
    StudioComponentInitializationScriptContent = Shapes::StringShape.new(name: 'StudioComponentInitializationScriptContent')
    StudioComponentInitializationScriptList = Shapes::ListShape.new(name: 'StudioComponentInitializationScriptList')
    StudioComponentInitializationScriptRunContext = Shapes::StringShape.new(name: 'StudioComponentInitializationScriptRunContext')
    StudioComponentList = Shapes::ListShape.new(name: 'StudioComponentList')
    StudioComponentName = Shapes::StringShape.new(name: 'StudioComponentName')
    StudioComponentScriptParameterKeyValueList = Shapes::ListShape.new(name: 'StudioComponentScriptParameterKeyValueList')
    StudioComponentSecurityGroupIdList = Shapes::ListShape.new(name: 'StudioComponentSecurityGroupIdList')
    StudioComponentState = Shapes::StringShape.new(name: 'StudioComponentState')
    StudioComponentStateList = Shapes::ListShape.new(name: 'StudioComponentStateList')
    StudioComponentStatusCode = Shapes::StringShape.new(name: 'StudioComponentStatusCode')
    StudioComponentSubtype = Shapes::StringShape.new(name: 'StudioComponentSubtype')
    StudioComponentSummary = Shapes::StructureShape.new(name: 'StudioComponentSummary')
    StudioComponentSummaryList = Shapes::ListShape.new(name: 'StudioComponentSummaryList')
    StudioComponentType = Shapes::StringShape.new(name: 'StudioComponentType')
    StudioComponentTypeList = Shapes::ListShape.new(name: 'StudioComponentTypeList')
    StudioDisplayName = Shapes::StringShape.new(name: 'StudioDisplayName')
    StudioEncryptionConfiguration = Shapes::StructureShape.new(name: 'StudioEncryptionConfiguration')
    StudioEncryptionConfigurationKeyArn = Shapes::StringShape.new(name: 'StudioEncryptionConfigurationKeyArn')
    StudioEncryptionConfigurationKeyType = Shapes::StringShape.new(name: 'StudioEncryptionConfigurationKeyType')
    StudioList = Shapes::ListShape.new(name: 'StudioList')
    StudioMembership = Shapes::StructureShape.new(name: 'StudioMembership')
    StudioMembershipList = Shapes::ListShape.new(name: 'StudioMembershipList')
    StudioName = Shapes::StringShape.new(name: 'StudioName')
    StudioPersona = Shapes::StringShape.new(name: 'StudioPersona')
    StudioState = Shapes::StringShape.new(name: 'StudioState')
    StudioStatusCode = Shapes::StringShape.new(name: 'StudioStatusCode')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    Tags = Shapes::MapShape.new(name: 'Tags')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp', timestampFormat: "iso8601")
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateLaunchProfileMemberRequest = Shapes::StructureShape.new(name: 'UpdateLaunchProfileMemberRequest')
    UpdateLaunchProfileMemberResponse = Shapes::StructureShape.new(name: 'UpdateLaunchProfileMemberResponse')
    UpdateLaunchProfileRequest = Shapes::StructureShape.new(name: 'UpdateLaunchProfileRequest')
    UpdateLaunchProfileResponse = Shapes::StructureShape.new(name: 'UpdateLaunchProfileResponse')
    UpdateStreamingImageRequest = Shapes::StructureShape.new(name: 'UpdateStreamingImageRequest')
    UpdateStreamingImageResponse = Shapes::StructureShape.new(name: 'UpdateStreamingImageResponse')
    UpdateStudioComponentRequest = Shapes::StructureShape.new(name: 'UpdateStudioComponentRequest')
    UpdateStudioComponentResponse = Shapes::StructureShape.new(name: 'UpdateStudioComponentResponse')
    UpdateStudioRequest = Shapes::StructureShape.new(name: 'UpdateStudioRequest')
    UpdateStudioResponse = Shapes::StructureShape.new(name: 'UpdateStudioResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationResult = Shapes::StructureShape.new(name: 'ValidationResult')
    ValidationResults = Shapes::ListShape.new(name: 'ValidationResults')
    VolumeConfiguration = Shapes::StructureShape.new(name: 'VolumeConfiguration')
    VolumeIops = Shapes::IntegerShape.new(name: 'VolumeIops')
    VolumeRetentionMode = Shapes::StringShape.new(name: 'VolumeRetentionMode')
    VolumeSizeInGiB = Shapes::IntegerShape.new(name: 'VolumeSizeInGiB')
    VolumeThroughputInMiBs = Shapes::IntegerShape.new(name: 'VolumeThroughputInMiBs')
    WindowsMountDrive = Shapes::StringShape.new(name: 'WindowsMountDrive')

    AcceptEulasRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    AcceptEulasRequest.add_member(:eula_ids, Shapes::ShapeRef.new(shape: EulaIdList, location_name: "eulaIds"))
    AcceptEulasRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    AcceptEulasRequest.struct_class = Types::AcceptEulasRequest

    AcceptEulasResponse.add_member(:eula_acceptances, Shapes::ShapeRef.new(shape: EulaAcceptanceList, location_name: "eulaAcceptances"))
    AcceptEulasResponse.struct_class = Types::AcceptEulasResponse

    AccessDeniedException.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "code"))
    AccessDeniedException.add_member(:context, Shapes::ShapeRef.new(shape: ExceptionContext, location_name: "context"))
    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ActiveDirectoryComputerAttribute.add_member(:name, Shapes::ShapeRef.new(shape: ActiveDirectoryComputerAttributeName, location_name: "name"))
    ActiveDirectoryComputerAttribute.add_member(:value, Shapes::ShapeRef.new(shape: ActiveDirectoryComputerAttributeValue, location_name: "value"))
    ActiveDirectoryComputerAttribute.struct_class = Types::ActiveDirectoryComputerAttribute

    ActiveDirectoryComputerAttributeList.member = Shapes::ShapeRef.new(shape: ActiveDirectoryComputerAttribute)

    ActiveDirectoryConfiguration.add_member(:computer_attributes, Shapes::ShapeRef.new(shape: ActiveDirectoryComputerAttributeList, location_name: "computerAttributes"))
    ActiveDirectoryConfiguration.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "directoryId"))
    ActiveDirectoryConfiguration.add_member(:organizational_unit_distinguished_name, Shapes::ShapeRef.new(shape: ActiveDirectoryOrganizationalUnitDistinguishedName, location_name: "organizationalUnitDistinguishedName"))
    ActiveDirectoryConfiguration.struct_class = Types::ActiveDirectoryConfiguration

    ActiveDirectoryDnsIpAddressList.member = Shapes::ShapeRef.new(shape: ActiveDirectoryDnsIpAddress)

    ComputeFarmConfiguration.add_member(:active_directory_user, Shapes::ShapeRef.new(shape: String, location_name: "activeDirectoryUser"))
    ComputeFarmConfiguration.add_member(:endpoint, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "endpoint"))
    ComputeFarmConfiguration.struct_class = Types::ComputeFarmConfiguration

    ConflictException.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "code"))
    ConflictException.add_member(:context, Shapes::ShapeRef.new(shape: ExceptionContext, location_name: "context"))
    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateLaunchProfileRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    CreateLaunchProfileRequest.add_member(:description, Shapes::ShapeRef.new(shape: LaunchProfileDescription, location_name: "description"))
    CreateLaunchProfileRequest.add_member(:ec2_subnet_ids, Shapes::ShapeRef.new(shape: EC2SubnetIdList, required: true, location_name: "ec2SubnetIds"))
    CreateLaunchProfileRequest.add_member(:launch_profile_protocol_versions, Shapes::ShapeRef.new(shape: LaunchProfileProtocolVersionList, required: true, location_name: "launchProfileProtocolVersions"))
    CreateLaunchProfileRequest.add_member(:name, Shapes::ShapeRef.new(shape: LaunchProfileName, required: true, location_name: "name"))
    CreateLaunchProfileRequest.add_member(:stream_configuration, Shapes::ShapeRef.new(shape: StreamConfigurationCreate, required: true, location_name: "streamConfiguration"))
    CreateLaunchProfileRequest.add_member(:studio_component_ids, Shapes::ShapeRef.new(shape: LaunchProfileStudioComponentIdList, required: true, location_name: "studioComponentIds"))
    CreateLaunchProfileRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    CreateLaunchProfileRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateLaunchProfileRequest.struct_class = Types::CreateLaunchProfileRequest

    CreateLaunchProfileResponse.add_member(:launch_profile, Shapes::ShapeRef.new(shape: LaunchProfile, location_name: "launchProfile"))
    CreateLaunchProfileResponse.struct_class = Types::CreateLaunchProfileResponse

    CreateStreamingImageRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    CreateStreamingImageRequest.add_member(:description, Shapes::ShapeRef.new(shape: StreamingImageDescription, location_name: "description"))
    CreateStreamingImageRequest.add_member(:ec2_image_id, Shapes::ShapeRef.new(shape: EC2ImageId, required: true, location_name: "ec2ImageId"))
    CreateStreamingImageRequest.add_member(:name, Shapes::ShapeRef.new(shape: StreamingImageName, required: true, location_name: "name"))
    CreateStreamingImageRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    CreateStreamingImageRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateStreamingImageRequest.struct_class = Types::CreateStreamingImageRequest

    CreateStreamingImageResponse.add_member(:streaming_image, Shapes::ShapeRef.new(shape: StreamingImage, location_name: "streamingImage"))
    CreateStreamingImageResponse.struct_class = Types::CreateStreamingImageResponse

    CreateStreamingSessionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    CreateStreamingSessionRequest.add_member(:ec2_instance_type, Shapes::ShapeRef.new(shape: StreamingInstanceType, location_name: "ec2InstanceType"))
    CreateStreamingSessionRequest.add_member(:launch_profile_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "launchProfileId"))
    CreateStreamingSessionRequest.add_member(:owned_by, Shapes::ShapeRef.new(shape: String, location_name: "ownedBy"))
    CreateStreamingSessionRequest.add_member(:streaming_image_id, Shapes::ShapeRef.new(shape: StreamingImageId, location_name: "streamingImageId"))
    CreateStreamingSessionRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    CreateStreamingSessionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateStreamingSessionRequest.struct_class = Types::CreateStreamingSessionRequest

    CreateStreamingSessionResponse.add_member(:session, Shapes::ShapeRef.new(shape: StreamingSession, location_name: "session"))
    CreateStreamingSessionResponse.struct_class = Types::CreateStreamingSessionResponse

    CreateStreamingSessionStreamRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    CreateStreamingSessionStreamRequest.add_member(:expiration_in_seconds, Shapes::ShapeRef.new(shape: StreamingSessionStreamExpirationInSeconds, location_name: "expirationInSeconds"))
    CreateStreamingSessionStreamRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "sessionId"))
    CreateStreamingSessionStreamRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    CreateStreamingSessionStreamRequest.struct_class = Types::CreateStreamingSessionStreamRequest

    CreateStreamingSessionStreamResponse.add_member(:stream, Shapes::ShapeRef.new(shape: StreamingSessionStream, location_name: "stream"))
    CreateStreamingSessionStreamResponse.struct_class = Types::CreateStreamingSessionStreamResponse

    CreateStudioComponentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    CreateStudioComponentRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: StudioComponentConfiguration, location_name: "configuration"))
    CreateStudioComponentRequest.add_member(:description, Shapes::ShapeRef.new(shape: StudioComponentDescription, location_name: "description"))
    CreateStudioComponentRequest.add_member(:ec2_security_group_ids, Shapes::ShapeRef.new(shape: StudioComponentSecurityGroupIdList, location_name: "ec2SecurityGroupIds"))
    CreateStudioComponentRequest.add_member(:initialization_scripts, Shapes::ShapeRef.new(shape: StudioComponentInitializationScriptList, location_name: "initializationScripts"))
    CreateStudioComponentRequest.add_member(:name, Shapes::ShapeRef.new(shape: StudioComponentName, required: true, location_name: "name"))
    CreateStudioComponentRequest.add_member(:runtime_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "runtimeRoleArn"))
    CreateStudioComponentRequest.add_member(:script_parameters, Shapes::ShapeRef.new(shape: StudioComponentScriptParameterKeyValueList, location_name: "scriptParameters"))
    CreateStudioComponentRequest.add_member(:secure_initialization_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "secureInitializationRoleArn"))
    CreateStudioComponentRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    CreateStudioComponentRequest.add_member(:subtype, Shapes::ShapeRef.new(shape: StudioComponentSubtype, location_name: "subtype"))
    CreateStudioComponentRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateStudioComponentRequest.add_member(:type, Shapes::ShapeRef.new(shape: StudioComponentType, required: true, location_name: "type"))
    CreateStudioComponentRequest.struct_class = Types::CreateStudioComponentRequest

    CreateStudioComponentResponse.add_member(:studio_component, Shapes::ShapeRef.new(shape: StudioComponent, location_name: "studioComponent"))
    CreateStudioComponentResponse.struct_class = Types::CreateStudioComponentResponse

    CreateStudioRequest.add_member(:admin_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "adminRoleArn"))
    CreateStudioRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    CreateStudioRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: StudioDisplayName, required: true, location_name: "displayName"))
    CreateStudioRequest.add_member(:studio_encryption_configuration, Shapes::ShapeRef.new(shape: StudioEncryptionConfiguration, location_name: "studioEncryptionConfiguration"))
    CreateStudioRequest.add_member(:studio_name, Shapes::ShapeRef.new(shape: StudioName, required: true, location_name: "studioName"))
    CreateStudioRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateStudioRequest.add_member(:user_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "userRoleArn"))
    CreateStudioRequest.struct_class = Types::CreateStudioRequest

    CreateStudioResponse.add_member(:studio, Shapes::ShapeRef.new(shape: Studio, location_name: "studio"))
    CreateStudioResponse.struct_class = Types::CreateStudioResponse

    DeleteLaunchProfileMemberRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    DeleteLaunchProfileMemberRequest.add_member(:launch_profile_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "launchProfileId"))
    DeleteLaunchProfileMemberRequest.add_member(:principal_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "principalId"))
    DeleteLaunchProfileMemberRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    DeleteLaunchProfileMemberRequest.struct_class = Types::DeleteLaunchProfileMemberRequest

    DeleteLaunchProfileMemberResponse.struct_class = Types::DeleteLaunchProfileMemberResponse

    DeleteLaunchProfileRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    DeleteLaunchProfileRequest.add_member(:launch_profile_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "launchProfileId"))
    DeleteLaunchProfileRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    DeleteLaunchProfileRequest.struct_class = Types::DeleteLaunchProfileRequest

    DeleteLaunchProfileResponse.add_member(:launch_profile, Shapes::ShapeRef.new(shape: LaunchProfile, location_name: "launchProfile"))
    DeleteLaunchProfileResponse.struct_class = Types::DeleteLaunchProfileResponse

    DeleteStreamingImageRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    DeleteStreamingImageRequest.add_member(:streaming_image_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "streamingImageId"))
    DeleteStreamingImageRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    DeleteStreamingImageRequest.struct_class = Types::DeleteStreamingImageRequest

    DeleteStreamingImageResponse.add_member(:streaming_image, Shapes::ShapeRef.new(shape: StreamingImage, location_name: "streamingImage"))
    DeleteStreamingImageResponse.struct_class = Types::DeleteStreamingImageResponse

    DeleteStreamingSessionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    DeleteStreamingSessionRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "sessionId"))
    DeleteStreamingSessionRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    DeleteStreamingSessionRequest.struct_class = Types::DeleteStreamingSessionRequest

    DeleteStreamingSessionResponse.add_member(:session, Shapes::ShapeRef.new(shape: StreamingSession, location_name: "session"))
    DeleteStreamingSessionResponse.struct_class = Types::DeleteStreamingSessionResponse

    DeleteStudioComponentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    DeleteStudioComponentRequest.add_member(:studio_component_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioComponentId"))
    DeleteStudioComponentRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    DeleteStudioComponentRequest.struct_class = Types::DeleteStudioComponentRequest

    DeleteStudioComponentResponse.add_member(:studio_component, Shapes::ShapeRef.new(shape: StudioComponent, location_name: "studioComponent"))
    DeleteStudioComponentResponse.struct_class = Types::DeleteStudioComponentResponse

    DeleteStudioMemberRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    DeleteStudioMemberRequest.add_member(:principal_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "principalId"))
    DeleteStudioMemberRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    DeleteStudioMemberRequest.struct_class = Types::DeleteStudioMemberRequest

    DeleteStudioMemberResponse.struct_class = Types::DeleteStudioMemberResponse

    DeleteStudioRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    DeleteStudioRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    DeleteStudioRequest.struct_class = Types::DeleteStudioRequest

    DeleteStudioResponse.add_member(:studio, Shapes::ShapeRef.new(shape: Studio, required: true, location_name: "studio"))
    DeleteStudioResponse.struct_class = Types::DeleteStudioResponse

    EC2SubnetIdList.member = Shapes::ShapeRef.new(shape: EC2SubnetId)

    Eula.add_member(:content, Shapes::ShapeRef.new(shape: String, location_name: "content"))
    Eula.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Eula.add_member(:eula_id, Shapes::ShapeRef.new(shape: EulaId, location_name: "eulaId"))
    Eula.add_member(:name, Shapes::ShapeRef.new(shape: EulaName, location_name: "name"))
    Eula.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    Eula.struct_class = Types::Eula

    EulaAcceptance.add_member(:accepted_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "acceptedAt"))
    EulaAcceptance.add_member(:accepted_by, Shapes::ShapeRef.new(shape: String, location_name: "acceptedBy"))
    EulaAcceptance.add_member(:acceptee_id, Shapes::ShapeRef.new(shape: String, location_name: "accepteeId"))
    EulaAcceptance.add_member(:eula_acceptance_id, Shapes::ShapeRef.new(shape: EulaAcceptanceId, location_name: "eulaAcceptanceId"))
    EulaAcceptance.add_member(:eula_id, Shapes::ShapeRef.new(shape: EulaId, location_name: "eulaId"))
    EulaAcceptance.struct_class = Types::EulaAcceptance

    EulaAcceptanceList.member = Shapes::ShapeRef.new(shape: EulaAcceptance)

    EulaIdList.member = Shapes::ShapeRef.new(shape: String)

    EulaList.member = Shapes::ShapeRef.new(shape: Eula)

    ExceptionContext.key = Shapes::ShapeRef.new(shape: String)
    ExceptionContext.value = Shapes::ShapeRef.new(shape: String)

    GetEulaRequest.add_member(:eula_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "eulaId"))
    GetEulaRequest.struct_class = Types::GetEulaRequest

    GetEulaResponse.add_member(:eula, Shapes::ShapeRef.new(shape: Eula, location_name: "eula"))
    GetEulaResponse.struct_class = Types::GetEulaResponse

    GetLaunchProfileDetailsRequest.add_member(:launch_profile_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "launchProfileId"))
    GetLaunchProfileDetailsRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    GetLaunchProfileDetailsRequest.struct_class = Types::GetLaunchProfileDetailsRequest

    GetLaunchProfileDetailsResponse.add_member(:launch_profile, Shapes::ShapeRef.new(shape: LaunchProfile, location_name: "launchProfile"))
    GetLaunchProfileDetailsResponse.add_member(:streaming_images, Shapes::ShapeRef.new(shape: StreamingImageList, location_name: "streamingImages"))
    GetLaunchProfileDetailsResponse.add_member(:studio_component_summaries, Shapes::ShapeRef.new(shape: StudioComponentSummaryList, location_name: "studioComponentSummaries"))
    GetLaunchProfileDetailsResponse.struct_class = Types::GetLaunchProfileDetailsResponse

    GetLaunchProfileInitializationRequest.add_member(:launch_profile_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "launchProfileId"))
    GetLaunchProfileInitializationRequest.add_member(:launch_profile_protocol_versions, Shapes::ShapeRef.new(shape: StringList, required: true, location: "querystring", location_name: "launchProfileProtocolVersions"))
    GetLaunchProfileInitializationRequest.add_member(:launch_purpose, Shapes::ShapeRef.new(shape: String, required: true, location: "querystring", location_name: "launchPurpose"))
    GetLaunchProfileInitializationRequest.add_member(:platform, Shapes::ShapeRef.new(shape: String, required: true, location: "querystring", location_name: "platform"))
    GetLaunchProfileInitializationRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    GetLaunchProfileInitializationRequest.struct_class = Types::GetLaunchProfileInitializationRequest

    GetLaunchProfileInitializationResponse.add_member(:launch_profile_initialization, Shapes::ShapeRef.new(shape: LaunchProfileInitialization, location_name: "launchProfileInitialization"))
    GetLaunchProfileInitializationResponse.struct_class = Types::GetLaunchProfileInitializationResponse

    GetLaunchProfileMemberRequest.add_member(:launch_profile_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "launchProfileId"))
    GetLaunchProfileMemberRequest.add_member(:principal_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "principalId"))
    GetLaunchProfileMemberRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    GetLaunchProfileMemberRequest.struct_class = Types::GetLaunchProfileMemberRequest

    GetLaunchProfileMemberResponse.add_member(:member, Shapes::ShapeRef.new(shape: LaunchProfileMembership, location_name: "member"))
    GetLaunchProfileMemberResponse.struct_class = Types::GetLaunchProfileMemberResponse

    GetLaunchProfileRequest.add_member(:launch_profile_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "launchProfileId"))
    GetLaunchProfileRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    GetLaunchProfileRequest.struct_class = Types::GetLaunchProfileRequest

    GetLaunchProfileResponse.add_member(:launch_profile, Shapes::ShapeRef.new(shape: LaunchProfile, location_name: "launchProfile"))
    GetLaunchProfileResponse.struct_class = Types::GetLaunchProfileResponse

    GetStreamingImageRequest.add_member(:streaming_image_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "streamingImageId"))
    GetStreamingImageRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    GetStreamingImageRequest.struct_class = Types::GetStreamingImageRequest

    GetStreamingImageResponse.add_member(:streaming_image, Shapes::ShapeRef.new(shape: StreamingImage, location_name: "streamingImage"))
    GetStreamingImageResponse.struct_class = Types::GetStreamingImageResponse

    GetStreamingSessionBackupRequest.add_member(:backup_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "backupId"))
    GetStreamingSessionBackupRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    GetStreamingSessionBackupRequest.struct_class = Types::GetStreamingSessionBackupRequest

    GetStreamingSessionBackupResponse.add_member(:streaming_session_backup, Shapes::ShapeRef.new(shape: StreamingSessionBackup, location_name: "streamingSessionBackup"))
    GetStreamingSessionBackupResponse.struct_class = Types::GetStreamingSessionBackupResponse

    GetStreamingSessionRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "sessionId"))
    GetStreamingSessionRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    GetStreamingSessionRequest.struct_class = Types::GetStreamingSessionRequest

    GetStreamingSessionResponse.add_member(:session, Shapes::ShapeRef.new(shape: StreamingSession, location_name: "session"))
    GetStreamingSessionResponse.struct_class = Types::GetStreamingSessionResponse

    GetStreamingSessionStreamRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "sessionId"))
    GetStreamingSessionStreamRequest.add_member(:stream_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "streamId"))
    GetStreamingSessionStreamRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    GetStreamingSessionStreamRequest.struct_class = Types::GetStreamingSessionStreamRequest

    GetStreamingSessionStreamResponse.add_member(:stream, Shapes::ShapeRef.new(shape: StreamingSessionStream, location_name: "stream"))
    GetStreamingSessionStreamResponse.struct_class = Types::GetStreamingSessionStreamResponse

    GetStudioComponentRequest.add_member(:studio_component_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioComponentId"))
    GetStudioComponentRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    GetStudioComponentRequest.struct_class = Types::GetStudioComponentRequest

    GetStudioComponentResponse.add_member(:studio_component, Shapes::ShapeRef.new(shape: StudioComponent, location_name: "studioComponent"))
    GetStudioComponentResponse.struct_class = Types::GetStudioComponentResponse

    GetStudioMemberRequest.add_member(:principal_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "principalId"))
    GetStudioMemberRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    GetStudioMemberRequest.struct_class = Types::GetStudioMemberRequest

    GetStudioMemberResponse.add_member(:member, Shapes::ShapeRef.new(shape: StudioMembership, location_name: "member"))
    GetStudioMemberResponse.struct_class = Types::GetStudioMemberResponse

    GetStudioRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    GetStudioRequest.struct_class = Types::GetStudioRequest

    GetStudioResponse.add_member(:studio, Shapes::ShapeRef.new(shape: Studio, required: true, location_name: "studio"))
    GetStudioResponse.struct_class = Types::GetStudioResponse

    InternalServerErrorException.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "code"))
    InternalServerErrorException.add_member(:context, Shapes::ShapeRef.new(shape: ExceptionContext, location_name: "context"))
    InternalServerErrorException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServerErrorException.struct_class = Types::InternalServerErrorException

    LaunchProfile.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    LaunchProfile.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    LaunchProfile.add_member(:created_by, Shapes::ShapeRef.new(shape: String, location_name: "createdBy"))
    LaunchProfile.add_member(:description, Shapes::ShapeRef.new(shape: LaunchProfileDescription, location_name: "description"))
    LaunchProfile.add_member(:ec2_subnet_ids, Shapes::ShapeRef.new(shape: EC2SubnetIdList, location_name: "ec2SubnetIds"))
    LaunchProfile.add_member(:launch_profile_id, Shapes::ShapeRef.new(shape: LaunchProfileId, location_name: "launchProfileId"))
    LaunchProfile.add_member(:launch_profile_protocol_versions, Shapes::ShapeRef.new(shape: LaunchProfileProtocolVersionList, location_name: "launchProfileProtocolVersions"))
    LaunchProfile.add_member(:name, Shapes::ShapeRef.new(shape: LaunchProfileName, location_name: "name"))
    LaunchProfile.add_member(:state, Shapes::ShapeRef.new(shape: LaunchProfileState, location_name: "state"))
    LaunchProfile.add_member(:status_code, Shapes::ShapeRef.new(shape: LaunchProfileStatusCode, location_name: "statusCode"))
    LaunchProfile.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "statusMessage"))
    LaunchProfile.add_member(:stream_configuration, Shapes::ShapeRef.new(shape: StreamConfiguration, location_name: "streamConfiguration"))
    LaunchProfile.add_member(:studio_component_ids, Shapes::ShapeRef.new(shape: LaunchProfileStudioComponentIdList, location_name: "studioComponentIds"))
    LaunchProfile.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    LaunchProfile.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    LaunchProfile.add_member(:updated_by, Shapes::ShapeRef.new(shape: String, location_name: "updatedBy"))
    LaunchProfile.add_member(:validation_results, Shapes::ShapeRef.new(shape: ValidationResults, location_name: "validationResults"))
    LaunchProfile.struct_class = Types::LaunchProfile

    LaunchProfileInitialization.add_member(:active_directory, Shapes::ShapeRef.new(shape: LaunchProfileInitializationActiveDirectory, location_name: "activeDirectory"))
    LaunchProfileInitialization.add_member(:ec2_security_group_ids, Shapes::ShapeRef.new(shape: LaunchProfileSecurityGroupIdList, location_name: "ec2SecurityGroupIds"))
    LaunchProfileInitialization.add_member(:launch_profile_id, Shapes::ShapeRef.new(shape: LaunchProfileId, location_name: "launchProfileId"))
    LaunchProfileInitialization.add_member(:launch_profile_protocol_version, Shapes::ShapeRef.new(shape: LaunchProfileProtocolVersion, location_name: "launchProfileProtocolVersion"))
    LaunchProfileInitialization.add_member(:launch_purpose, Shapes::ShapeRef.new(shape: LaunchPurpose, location_name: "launchPurpose"))
    LaunchProfileInitialization.add_member(:name, Shapes::ShapeRef.new(shape: LaunchProfileName, location_name: "name"))
    LaunchProfileInitialization.add_member(:platform, Shapes::ShapeRef.new(shape: LaunchProfilePlatform, location_name: "platform"))
    LaunchProfileInitialization.add_member(:system_initialization_scripts, Shapes::ShapeRef.new(shape: LaunchProfileInitializationScriptList, location_name: "systemInitializationScripts"))
    LaunchProfileInitialization.add_member(:user_initialization_scripts, Shapes::ShapeRef.new(shape: LaunchProfileInitializationScriptList, location_name: "userInitializationScripts"))
    LaunchProfileInitialization.struct_class = Types::LaunchProfileInitialization

    LaunchProfileInitializationActiveDirectory.add_member(:computer_attributes, Shapes::ShapeRef.new(shape: ActiveDirectoryComputerAttributeList, location_name: "computerAttributes"))
    LaunchProfileInitializationActiveDirectory.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "directoryId"))
    LaunchProfileInitializationActiveDirectory.add_member(:directory_name, Shapes::ShapeRef.new(shape: String, location_name: "directoryName"))
    LaunchProfileInitializationActiveDirectory.add_member(:dns_ip_addresses, Shapes::ShapeRef.new(shape: ActiveDirectoryDnsIpAddressList, location_name: "dnsIpAddresses"))
    LaunchProfileInitializationActiveDirectory.add_member(:organizational_unit_distinguished_name, Shapes::ShapeRef.new(shape: ActiveDirectoryOrganizationalUnitDistinguishedName, location_name: "organizationalUnitDistinguishedName"))
    LaunchProfileInitializationActiveDirectory.add_member(:studio_component_id, Shapes::ShapeRef.new(shape: StudioComponentId, location_name: "studioComponentId"))
    LaunchProfileInitializationActiveDirectory.add_member(:studio_component_name, Shapes::ShapeRef.new(shape: StudioComponentName, location_name: "studioComponentName"))
    LaunchProfileInitializationActiveDirectory.struct_class = Types::LaunchProfileInitializationActiveDirectory

    LaunchProfileInitializationScript.add_member(:runtime_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "runtimeRoleArn"))
    LaunchProfileInitializationScript.add_member(:script, Shapes::ShapeRef.new(shape: StudioComponentInitializationScriptContent, location_name: "script"))
    LaunchProfileInitializationScript.add_member(:secure_initialization_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "secureInitializationRoleArn"))
    LaunchProfileInitializationScript.add_member(:studio_component_id, Shapes::ShapeRef.new(shape: StudioComponentId, location_name: "studioComponentId"))
    LaunchProfileInitializationScript.add_member(:studio_component_name, Shapes::ShapeRef.new(shape: StudioComponentName, location_name: "studioComponentName"))
    LaunchProfileInitializationScript.struct_class = Types::LaunchProfileInitializationScript

    LaunchProfileInitializationScriptList.member = Shapes::ShapeRef.new(shape: LaunchProfileInitializationScript)

    LaunchProfileList.member = Shapes::ShapeRef.new(shape: LaunchProfile)

    LaunchProfileMembership.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: String, location_name: "identityStoreId"))
    LaunchProfileMembership.add_member(:persona, Shapes::ShapeRef.new(shape: LaunchProfilePersona, location_name: "persona"))
    LaunchProfileMembership.add_member(:principal_id, Shapes::ShapeRef.new(shape: String, location_name: "principalId"))
    LaunchProfileMembership.add_member(:sid, Shapes::ShapeRef.new(shape: String, location_name: "sid"))
    LaunchProfileMembership.struct_class = Types::LaunchProfileMembership

    LaunchProfileMembershipList.member = Shapes::ShapeRef.new(shape: LaunchProfileMembership)

    LaunchProfileProtocolVersionList.member = Shapes::ShapeRef.new(shape: LaunchProfileProtocolVersion)

    LaunchProfileSecurityGroupIdList.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    LaunchProfileStateList.member = Shapes::ShapeRef.new(shape: LaunchProfileState)

    LaunchProfileStudioComponentIdList.member = Shapes::ShapeRef.new(shape: String)

    LicenseServiceConfiguration.add_member(:endpoint, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "endpoint"))
    LicenseServiceConfiguration.struct_class = Types::LicenseServiceConfiguration

    ListEulaAcceptancesRequest.add_member(:eula_ids, Shapes::ShapeRef.new(shape: StringList, location: "querystring", location_name: "eulaIds"))
    ListEulaAcceptancesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListEulaAcceptancesRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    ListEulaAcceptancesRequest.struct_class = Types::ListEulaAcceptancesRequest

    ListEulaAcceptancesResponse.add_member(:eula_acceptances, Shapes::ShapeRef.new(shape: EulaAcceptanceList, location_name: "eulaAcceptances"))
    ListEulaAcceptancesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListEulaAcceptancesResponse.struct_class = Types::ListEulaAcceptancesResponse

    ListEulasRequest.add_member(:eula_ids, Shapes::ShapeRef.new(shape: StringList, location: "querystring", location_name: "eulaIds"))
    ListEulasRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListEulasRequest.struct_class = Types::ListEulasRequest

    ListEulasResponse.add_member(:eulas, Shapes::ShapeRef.new(shape: EulaList, location_name: "eulas"))
    ListEulasResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListEulasResponse.struct_class = Types::ListEulasResponse

    ListLaunchProfileMembersRequest.add_member(:launch_profile_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "launchProfileId"))
    ListLaunchProfileMembersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListLaunchProfileMembersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListLaunchProfileMembersRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    ListLaunchProfileMembersRequest.struct_class = Types::ListLaunchProfileMembersRequest

    ListLaunchProfileMembersResponse.add_member(:members, Shapes::ShapeRef.new(shape: LaunchProfileMembershipList, location_name: "members"))
    ListLaunchProfileMembersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListLaunchProfileMembersResponse.struct_class = Types::ListLaunchProfileMembersResponse

    ListLaunchProfilesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListLaunchProfilesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListLaunchProfilesRequest.add_member(:principal_id, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "principalId"))
    ListLaunchProfilesRequest.add_member(:states, Shapes::ShapeRef.new(shape: LaunchProfileStateList, location: "querystring", location_name: "states"))
    ListLaunchProfilesRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    ListLaunchProfilesRequest.struct_class = Types::ListLaunchProfilesRequest

    ListLaunchProfilesResponse.add_member(:launch_profiles, Shapes::ShapeRef.new(shape: LaunchProfileList, location_name: "launchProfiles"))
    ListLaunchProfilesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListLaunchProfilesResponse.struct_class = Types::ListLaunchProfilesResponse

    ListStreamingImagesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListStreamingImagesRequest.add_member(:owner, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "owner"))
    ListStreamingImagesRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    ListStreamingImagesRequest.struct_class = Types::ListStreamingImagesRequest

    ListStreamingImagesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListStreamingImagesResponse.add_member(:streaming_images, Shapes::ShapeRef.new(shape: StreamingImageList, location_name: "streamingImages"))
    ListStreamingImagesResponse.struct_class = Types::ListStreamingImagesResponse

    ListStreamingSessionBackupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListStreamingSessionBackupsRequest.add_member(:owned_by, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "ownedBy"))
    ListStreamingSessionBackupsRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    ListStreamingSessionBackupsRequest.struct_class = Types::ListStreamingSessionBackupsRequest

    ListStreamingSessionBackupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListStreamingSessionBackupsResponse.add_member(:streaming_session_backups, Shapes::ShapeRef.new(shape: StreamingSessionBackupList, location_name: "streamingSessionBackups"))
    ListStreamingSessionBackupsResponse.struct_class = Types::ListStreamingSessionBackupsResponse

    ListStreamingSessionsRequest.add_member(:created_by, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "createdBy"))
    ListStreamingSessionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListStreamingSessionsRequest.add_member(:owned_by, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "ownedBy"))
    ListStreamingSessionsRequest.add_member(:session_ids, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "sessionIds"))
    ListStreamingSessionsRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    ListStreamingSessionsRequest.struct_class = Types::ListStreamingSessionsRequest

    ListStreamingSessionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListStreamingSessionsResponse.add_member(:sessions, Shapes::ShapeRef.new(shape: StreamingSessionList, location_name: "sessions"))
    ListStreamingSessionsResponse.struct_class = Types::ListStreamingSessionsResponse

    ListStudioComponentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListStudioComponentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListStudioComponentsRequest.add_member(:states, Shapes::ShapeRef.new(shape: StudioComponentStateList, location: "querystring", location_name: "states"))
    ListStudioComponentsRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    ListStudioComponentsRequest.add_member(:types, Shapes::ShapeRef.new(shape: StudioComponentTypeList, location: "querystring", location_name: "types"))
    ListStudioComponentsRequest.struct_class = Types::ListStudioComponentsRequest

    ListStudioComponentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListStudioComponentsResponse.add_member(:studio_components, Shapes::ShapeRef.new(shape: StudioComponentList, location_name: "studioComponents"))
    ListStudioComponentsResponse.struct_class = Types::ListStudioComponentsResponse

    ListStudioMembersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListStudioMembersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListStudioMembersRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    ListStudioMembersRequest.struct_class = Types::ListStudioMembersRequest

    ListStudioMembersResponse.add_member(:members, Shapes::ShapeRef.new(shape: StudioMembershipList, location_name: "members"))
    ListStudioMembersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListStudioMembersResponse.struct_class = Types::ListStudioMembersResponse

    ListStudiosRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListStudiosRequest.struct_class = Types::ListStudiosRequest

    ListStudiosResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListStudiosResponse.add_member(:studios, Shapes::ShapeRef.new(shape: StudioList, required: true, location_name: "studios"))
    ListStudiosResponse.struct_class = Types::ListStudiosResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    NewLaunchProfileMember.add_member(:persona, Shapes::ShapeRef.new(shape: LaunchProfilePersona, required: true, location_name: "persona"))
    NewLaunchProfileMember.add_member(:principal_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "principalId"))
    NewLaunchProfileMember.struct_class = Types::NewLaunchProfileMember

    NewLaunchProfileMemberList.member = Shapes::ShapeRef.new(shape: NewLaunchProfileMember)

    NewStudioMember.add_member(:persona, Shapes::ShapeRef.new(shape: StudioPersona, required: true, location_name: "persona"))
    NewStudioMember.add_member(:principal_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "principalId"))
    NewStudioMember.struct_class = Types::NewStudioMember

    NewStudioMemberList.member = Shapes::ShapeRef.new(shape: NewStudioMember)

    PutLaunchProfileMembersRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    PutLaunchProfileMembersRequest.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "identityStoreId"))
    PutLaunchProfileMembersRequest.add_member(:launch_profile_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "launchProfileId"))
    PutLaunchProfileMembersRequest.add_member(:members, Shapes::ShapeRef.new(shape: NewLaunchProfileMemberList, required: true, location_name: "members"))
    PutLaunchProfileMembersRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    PutLaunchProfileMembersRequest.struct_class = Types::PutLaunchProfileMembersRequest

    PutLaunchProfileMembersResponse.struct_class = Types::PutLaunchProfileMembersResponse

    PutStudioMembersRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    PutStudioMembersRequest.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "identityStoreId"))
    PutStudioMembersRequest.add_member(:members, Shapes::ShapeRef.new(shape: NewStudioMemberList, required: true, location_name: "members"))
    PutStudioMembersRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    PutStudioMembersRequest.struct_class = Types::PutStudioMembersRequest

    PutStudioMembersResponse.struct_class = Types::PutStudioMembersResponse

    ResourceNotFoundException.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "code"))
    ResourceNotFoundException.add_member(:context, Shapes::ShapeRef.new(shape: ExceptionContext, location_name: "context"))
    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ScriptParameterKeyValue.add_member(:key, Shapes::ShapeRef.new(shape: ScriptParameterKey, location_name: "key"))
    ScriptParameterKeyValue.add_member(:value, Shapes::ShapeRef.new(shape: ScriptParameterValue, location_name: "value"))
    ScriptParameterKeyValue.struct_class = Types::ScriptParameterKeyValue

    ServiceQuotaExceededException.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "code"))
    ServiceQuotaExceededException.add_member(:context, Shapes::ShapeRef.new(shape: ExceptionContext, location_name: "context"))
    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SharedFileSystemConfiguration.add_member(:endpoint, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "endpoint"))
    SharedFileSystemConfiguration.add_member(:file_system_id, Shapes::ShapeRef.new(shape: String, location_name: "fileSystemId"))
    SharedFileSystemConfiguration.add_member(:linux_mount_point, Shapes::ShapeRef.new(shape: LinuxMountPoint, location_name: "linuxMountPoint"))
    SharedFileSystemConfiguration.add_member(:share_name, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "shareName"))
    SharedFileSystemConfiguration.add_member(:windows_mount_drive, Shapes::ShapeRef.new(shape: WindowsMountDrive, location_name: "windowsMountDrive"))
    SharedFileSystemConfiguration.struct_class = Types::SharedFileSystemConfiguration

    StartStreamingSessionRequest.add_member(:backup_id, Shapes::ShapeRef.new(shape: String, location_name: "backupId"))
    StartStreamingSessionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    StartStreamingSessionRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "sessionId"))
    StartStreamingSessionRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    StartStreamingSessionRequest.struct_class = Types::StartStreamingSessionRequest

    StartStreamingSessionResponse.add_member(:session, Shapes::ShapeRef.new(shape: StreamingSession, location_name: "session"))
    StartStreamingSessionResponse.struct_class = Types::StartStreamingSessionResponse

    StartStudioSSOConfigurationRepairRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    StartStudioSSOConfigurationRepairRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    StartStudioSSOConfigurationRepairRequest.struct_class = Types::StartStudioSSOConfigurationRepairRequest

    StartStudioSSOConfigurationRepairResponse.add_member(:studio, Shapes::ShapeRef.new(shape: Studio, required: true, location_name: "studio"))
    StartStudioSSOConfigurationRepairResponse.struct_class = Types::StartStudioSSOConfigurationRepairResponse

    StopStreamingSessionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    StopStreamingSessionRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "sessionId"))
    StopStreamingSessionRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    StopStreamingSessionRequest.add_member(:volume_retention_mode, Shapes::ShapeRef.new(shape: VolumeRetentionMode, location_name: "volumeRetentionMode"))
    StopStreamingSessionRequest.struct_class = Types::StopStreamingSessionRequest

    StopStreamingSessionResponse.add_member(:session, Shapes::ShapeRef.new(shape: StreamingSession, location_name: "session"))
    StopStreamingSessionResponse.struct_class = Types::StopStreamingSessionResponse

    StreamConfiguration.add_member(:automatic_termination_mode, Shapes::ShapeRef.new(shape: AutomaticTerminationMode, location_name: "automaticTerminationMode"))
    StreamConfiguration.add_member(:clipboard_mode, Shapes::ShapeRef.new(shape: StreamingClipboardMode, required: true, location_name: "clipboardMode"))
    StreamConfiguration.add_member(:ec2_instance_types, Shapes::ShapeRef.new(shape: StreamingInstanceTypeList, required: true, location_name: "ec2InstanceTypes"))
    StreamConfiguration.add_member(:max_session_length_in_minutes, Shapes::ShapeRef.new(shape: StreamConfigurationMaxSessionLengthInMinutes, location_name: "maxSessionLengthInMinutes"))
    StreamConfiguration.add_member(:max_stopped_session_length_in_minutes, Shapes::ShapeRef.new(shape: StreamConfigurationMaxStoppedSessionLengthInMinutes, location_name: "maxStoppedSessionLengthInMinutes"))
    StreamConfiguration.add_member(:session_backup, Shapes::ShapeRef.new(shape: StreamConfigurationSessionBackup, location_name: "sessionBackup"))
    StreamConfiguration.add_member(:session_persistence_mode, Shapes::ShapeRef.new(shape: SessionPersistenceMode, location_name: "sessionPersistenceMode"))
    StreamConfiguration.add_member(:session_storage, Shapes::ShapeRef.new(shape: StreamConfigurationSessionStorage, location_name: "sessionStorage"))
    StreamConfiguration.add_member(:streaming_image_ids, Shapes::ShapeRef.new(shape: StreamingImageIdList, required: true, location_name: "streamingImageIds"))
    StreamConfiguration.add_member(:volume_configuration, Shapes::ShapeRef.new(shape: VolumeConfiguration, location_name: "volumeConfiguration"))
    StreamConfiguration.struct_class = Types::StreamConfiguration

    StreamConfigurationCreate.add_member(:automatic_termination_mode, Shapes::ShapeRef.new(shape: AutomaticTerminationMode, location_name: "automaticTerminationMode"))
    StreamConfigurationCreate.add_member(:clipboard_mode, Shapes::ShapeRef.new(shape: StreamingClipboardMode, required: true, location_name: "clipboardMode"))
    StreamConfigurationCreate.add_member(:ec2_instance_types, Shapes::ShapeRef.new(shape: StreamingInstanceTypeList, required: true, location_name: "ec2InstanceTypes"))
    StreamConfigurationCreate.add_member(:max_session_length_in_minutes, Shapes::ShapeRef.new(shape: StreamConfigurationMaxSessionLengthInMinutes, location_name: "maxSessionLengthInMinutes"))
    StreamConfigurationCreate.add_member(:max_stopped_session_length_in_minutes, Shapes::ShapeRef.new(shape: StreamConfigurationMaxStoppedSessionLengthInMinutes, location_name: "maxStoppedSessionLengthInMinutes"))
    StreamConfigurationCreate.add_member(:session_backup, Shapes::ShapeRef.new(shape: StreamConfigurationSessionBackup, location_name: "sessionBackup"))
    StreamConfigurationCreate.add_member(:session_persistence_mode, Shapes::ShapeRef.new(shape: SessionPersistenceMode, location_name: "sessionPersistenceMode"))
    StreamConfigurationCreate.add_member(:session_storage, Shapes::ShapeRef.new(shape: StreamConfigurationSessionStorage, location_name: "sessionStorage"))
    StreamConfigurationCreate.add_member(:streaming_image_ids, Shapes::ShapeRef.new(shape: StreamingImageIdList, required: true, location_name: "streamingImageIds"))
    StreamConfigurationCreate.add_member(:volume_configuration, Shapes::ShapeRef.new(shape: VolumeConfiguration, location_name: "volumeConfiguration"))
    StreamConfigurationCreate.struct_class = Types::StreamConfigurationCreate

    StreamConfigurationSessionBackup.add_member(:max_backups_to_retain, Shapes::ShapeRef.new(shape: StreamConfigurationMaxBackupsToRetain, location_name: "maxBackupsToRetain"))
    StreamConfigurationSessionBackup.add_member(:mode, Shapes::ShapeRef.new(shape: SessionBackupMode, location_name: "mode"))
    StreamConfigurationSessionBackup.struct_class = Types::StreamConfigurationSessionBackup

    StreamConfigurationSessionStorage.add_member(:mode, Shapes::ShapeRef.new(shape: StreamingSessionStorageModeList, required: true, location_name: "mode"))
    StreamConfigurationSessionStorage.add_member(:root, Shapes::ShapeRef.new(shape: StreamingSessionStorageRoot, location_name: "root"))
    StreamConfigurationSessionStorage.struct_class = Types::StreamConfigurationSessionStorage

    StreamingImage.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    StreamingImage.add_member(:description, Shapes::ShapeRef.new(shape: StreamingImageDescription, location_name: "description"))
    StreamingImage.add_member(:ec2_image_id, Shapes::ShapeRef.new(shape: EC2ImageId, location_name: "ec2ImageId"))
    StreamingImage.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: StreamingImageEncryptionConfiguration, location_name: "encryptionConfiguration"))
    StreamingImage.add_member(:eula_ids, Shapes::ShapeRef.new(shape: EulaIdList, location_name: "eulaIds"))
    StreamingImage.add_member(:name, Shapes::ShapeRef.new(shape: StreamingImageName, location_name: "name"))
    StreamingImage.add_member(:owner, Shapes::ShapeRef.new(shape: StreamingImageOwner, location_name: "owner"))
    StreamingImage.add_member(:platform, Shapes::ShapeRef.new(shape: StreamingImagePlatform, location_name: "platform"))
    StreamingImage.add_member(:state, Shapes::ShapeRef.new(shape: StreamingImageState, location_name: "state"))
    StreamingImage.add_member(:status_code, Shapes::ShapeRef.new(shape: StreamingImageStatusCode, location_name: "statusCode"))
    StreamingImage.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "statusMessage"))
    StreamingImage.add_member(:streaming_image_id, Shapes::ShapeRef.new(shape: StreamingImageId, location_name: "streamingImageId"))
    StreamingImage.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    StreamingImage.struct_class = Types::StreamingImage

    StreamingImageEncryptionConfiguration.add_member(:key_arn, Shapes::ShapeRef.new(shape: StreamingImageEncryptionConfigurationKeyArn, location_name: "keyArn"))
    StreamingImageEncryptionConfiguration.add_member(:key_type, Shapes::ShapeRef.new(shape: StreamingImageEncryptionConfigurationKeyType, required: true, location_name: "keyType"))
    StreamingImageEncryptionConfiguration.struct_class = Types::StreamingImageEncryptionConfiguration

    StreamingImageIdList.member = Shapes::ShapeRef.new(shape: StreamingImageId)

    StreamingImageList.member = Shapes::ShapeRef.new(shape: StreamingImage)

    StreamingInstanceTypeList.member = Shapes::ShapeRef.new(shape: StreamingInstanceType)

    StreamingSession.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    StreamingSession.add_member(:automatic_termination_mode, Shapes::ShapeRef.new(shape: AutomaticTerminationMode, location_name: "automaticTerminationMode"))
    StreamingSession.add_member(:backup_mode, Shapes::ShapeRef.new(shape: SessionBackupMode, location_name: "backupMode"))
    StreamingSession.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    StreamingSession.add_member(:created_by, Shapes::ShapeRef.new(shape: String, location_name: "createdBy"))
    StreamingSession.add_member(:ec2_instance_type, Shapes::ShapeRef.new(shape: String, location_name: "ec2InstanceType"))
    StreamingSession.add_member(:launch_profile_id, Shapes::ShapeRef.new(shape: String, location_name: "launchProfileId"))
    StreamingSession.add_member(:max_backups_to_retain, Shapes::ShapeRef.new(shape: StreamConfigurationMaxBackupsToRetain, location_name: "maxBackupsToRetain"))
    StreamingSession.add_member(:owned_by, Shapes::ShapeRef.new(shape: String, location_name: "ownedBy"))
    StreamingSession.add_member(:session_id, Shapes::ShapeRef.new(shape: StreamingSessionId, location_name: "sessionId"))
    StreamingSession.add_member(:session_persistence_mode, Shapes::ShapeRef.new(shape: SessionPersistenceMode, location_name: "sessionPersistenceMode"))
    StreamingSession.add_member(:started_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startedAt"))
    StreamingSession.add_member(:started_by, Shapes::ShapeRef.new(shape: String, location_name: "startedBy"))
    StreamingSession.add_member(:started_from_backup_id, Shapes::ShapeRef.new(shape: String, location_name: "startedFromBackupId"))
    StreamingSession.add_member(:state, Shapes::ShapeRef.new(shape: StreamingSessionState, location_name: "state"))
    StreamingSession.add_member(:status_code, Shapes::ShapeRef.new(shape: StreamingSessionStatusCode, location_name: "statusCode"))
    StreamingSession.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "statusMessage"))
    StreamingSession.add_member(:stop_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "stopAt"))
    StreamingSession.add_member(:stopped_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "stoppedAt"))
    StreamingSession.add_member(:stopped_by, Shapes::ShapeRef.new(shape: String, location_name: "stoppedBy"))
    StreamingSession.add_member(:streaming_image_id, Shapes::ShapeRef.new(shape: StreamingImageId, location_name: "streamingImageId"))
    StreamingSession.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    StreamingSession.add_member(:terminate_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "terminateAt"))
    StreamingSession.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    StreamingSession.add_member(:updated_by, Shapes::ShapeRef.new(shape: String, location_name: "updatedBy"))
    StreamingSession.add_member(:volume_configuration, Shapes::ShapeRef.new(shape: VolumeConfiguration, location_name: "volumeConfiguration"))
    StreamingSession.add_member(:volume_retention_mode, Shapes::ShapeRef.new(shape: VolumeRetentionMode, location_name: "volumeRetentionMode"))
    StreamingSession.struct_class = Types::StreamingSession

    StreamingSessionBackup.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    StreamingSessionBackup.add_member(:backup_id, Shapes::ShapeRef.new(shape: String, location_name: "backupId"))
    StreamingSessionBackup.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    StreamingSessionBackup.add_member(:launch_profile_id, Shapes::ShapeRef.new(shape: String, location_name: "launchProfileId"))
    StreamingSessionBackup.add_member(:owned_by, Shapes::ShapeRef.new(shape: String, location_name: "ownedBy"))
    StreamingSessionBackup.add_member(:session_id, Shapes::ShapeRef.new(shape: StreamingSessionId, location_name: "sessionId"))
    StreamingSessionBackup.add_member(:state, Shapes::ShapeRef.new(shape: StreamingSessionState, location_name: "state"))
    StreamingSessionBackup.add_member(:status_code, Shapes::ShapeRef.new(shape: StreamingSessionStatusCode, location_name: "statusCode"))
    StreamingSessionBackup.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "statusMessage"))
    StreamingSessionBackup.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    StreamingSessionBackup.struct_class = Types::StreamingSessionBackup

    StreamingSessionBackupList.member = Shapes::ShapeRef.new(shape: StreamingSessionBackup)

    StreamingSessionList.member = Shapes::ShapeRef.new(shape: StreamingSession)

    StreamingSessionStorageModeList.member = Shapes::ShapeRef.new(shape: StreamingSessionStorageMode)

    StreamingSessionStorageRoot.add_member(:linux, Shapes::ShapeRef.new(shape: StreamingSessionStorageRootPathLinux, location_name: "linux"))
    StreamingSessionStorageRoot.add_member(:windows, Shapes::ShapeRef.new(shape: StreamingSessionStorageRootPathWindows, location_name: "windows"))
    StreamingSessionStorageRoot.struct_class = Types::StreamingSessionStorageRoot

    StreamingSessionStream.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    StreamingSessionStream.add_member(:created_by, Shapes::ShapeRef.new(shape: String, location_name: "createdBy"))
    StreamingSessionStream.add_member(:expires_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "expiresAt"))
    StreamingSessionStream.add_member(:owned_by, Shapes::ShapeRef.new(shape: String, location_name: "ownedBy"))
    StreamingSessionStream.add_member(:state, Shapes::ShapeRef.new(shape: StreamingSessionStreamState, location_name: "state"))
    StreamingSessionStream.add_member(:status_code, Shapes::ShapeRef.new(shape: StreamingSessionStreamStatusCode, location_name: "statusCode"))
    StreamingSessionStream.add_member(:stream_id, Shapes::ShapeRef.new(shape: String, location_name: "streamId"))
    StreamingSessionStream.add_member(:url, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "url"))
    StreamingSessionStream.struct_class = Types::StreamingSessionStream

    StringList.member = Shapes::ShapeRef.new(shape: String)

    Studio.add_member(:admin_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "adminRoleArn"))
    Studio.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    Studio.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Studio.add_member(:display_name, Shapes::ShapeRef.new(shape: StudioDisplayName, location_name: "displayName"))
    Studio.add_member(:home_region, Shapes::ShapeRef.new(shape: Region, location_name: "homeRegion"))
    Studio.add_member(:sso_client_id, Shapes::ShapeRef.new(shape: String, location_name: "ssoClientId"))
    Studio.add_member(:state, Shapes::ShapeRef.new(shape: StudioState, location_name: "state"))
    Studio.add_member(:status_code, Shapes::ShapeRef.new(shape: StudioStatusCode, location_name: "statusCode"))
    Studio.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "statusMessage"))
    Studio.add_member(:studio_encryption_configuration, Shapes::ShapeRef.new(shape: StudioEncryptionConfiguration, location_name: "studioEncryptionConfiguration"))
    Studio.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, location_name: "studioId"))
    Studio.add_member(:studio_name, Shapes::ShapeRef.new(shape: StudioName, location_name: "studioName"))
    Studio.add_member(:studio_url, Shapes::ShapeRef.new(shape: String, location_name: "studioUrl"))
    Studio.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    Studio.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    Studio.add_member(:user_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "userRoleArn"))
    Studio.struct_class = Types::Studio

    StudioComponent.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    StudioComponent.add_member(:configuration, Shapes::ShapeRef.new(shape: StudioComponentConfiguration, location_name: "configuration"))
    StudioComponent.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    StudioComponent.add_member(:created_by, Shapes::ShapeRef.new(shape: String, location_name: "createdBy"))
    StudioComponent.add_member(:description, Shapes::ShapeRef.new(shape: StudioComponentDescription, location_name: "description"))
    StudioComponent.add_member(:ec2_security_group_ids, Shapes::ShapeRef.new(shape: StudioComponentSecurityGroupIdList, location_name: "ec2SecurityGroupIds"))
    StudioComponent.add_member(:initialization_scripts, Shapes::ShapeRef.new(shape: StudioComponentInitializationScriptList, location_name: "initializationScripts"))
    StudioComponent.add_member(:name, Shapes::ShapeRef.new(shape: StudioComponentName, location_name: "name"))
    StudioComponent.add_member(:runtime_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "runtimeRoleArn"))
    StudioComponent.add_member(:script_parameters, Shapes::ShapeRef.new(shape: StudioComponentScriptParameterKeyValueList, location_name: "scriptParameters"))
    StudioComponent.add_member(:secure_initialization_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "secureInitializationRoleArn"))
    StudioComponent.add_member(:state, Shapes::ShapeRef.new(shape: StudioComponentState, location_name: "state"))
    StudioComponent.add_member(:status_code, Shapes::ShapeRef.new(shape: StudioComponentStatusCode, location_name: "statusCode"))
    StudioComponent.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "statusMessage"))
    StudioComponent.add_member(:studio_component_id, Shapes::ShapeRef.new(shape: StudioComponentId, location_name: "studioComponentId"))
    StudioComponent.add_member(:subtype, Shapes::ShapeRef.new(shape: StudioComponentSubtype, location_name: "subtype"))
    StudioComponent.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    StudioComponent.add_member(:type, Shapes::ShapeRef.new(shape: StudioComponentType, location_name: "type"))
    StudioComponent.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    StudioComponent.add_member(:updated_by, Shapes::ShapeRef.new(shape: String, location_name: "updatedBy"))
    StudioComponent.struct_class = Types::StudioComponent

    StudioComponentConfiguration.add_member(:active_directory_configuration, Shapes::ShapeRef.new(shape: ActiveDirectoryConfiguration, location_name: "activeDirectoryConfiguration"))
    StudioComponentConfiguration.add_member(:compute_farm_configuration, Shapes::ShapeRef.new(shape: ComputeFarmConfiguration, location_name: "computeFarmConfiguration"))
    StudioComponentConfiguration.add_member(:license_service_configuration, Shapes::ShapeRef.new(shape: LicenseServiceConfiguration, location_name: "licenseServiceConfiguration"))
    StudioComponentConfiguration.add_member(:shared_file_system_configuration, Shapes::ShapeRef.new(shape: SharedFileSystemConfiguration, location_name: "sharedFileSystemConfiguration"))
    StudioComponentConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    StudioComponentConfiguration.add_member_subclass(:active_directory_configuration, Types::StudioComponentConfiguration::ActiveDirectoryConfiguration)
    StudioComponentConfiguration.add_member_subclass(:compute_farm_configuration, Types::StudioComponentConfiguration::ComputeFarmConfiguration)
    StudioComponentConfiguration.add_member_subclass(:license_service_configuration, Types::StudioComponentConfiguration::LicenseServiceConfiguration)
    StudioComponentConfiguration.add_member_subclass(:shared_file_system_configuration, Types::StudioComponentConfiguration::SharedFileSystemConfiguration)
    StudioComponentConfiguration.add_member_subclass(:unknown, Types::StudioComponentConfiguration::Unknown)
    StudioComponentConfiguration.struct_class = Types::StudioComponentConfiguration

    StudioComponentInitializationScript.add_member(:launch_profile_protocol_version, Shapes::ShapeRef.new(shape: LaunchProfileProtocolVersion, location_name: "launchProfileProtocolVersion"))
    StudioComponentInitializationScript.add_member(:platform, Shapes::ShapeRef.new(shape: LaunchProfilePlatform, location_name: "platform"))
    StudioComponentInitializationScript.add_member(:run_context, Shapes::ShapeRef.new(shape: StudioComponentInitializationScriptRunContext, location_name: "runContext"))
    StudioComponentInitializationScript.add_member(:script, Shapes::ShapeRef.new(shape: StudioComponentInitializationScriptContent, location_name: "script"))
    StudioComponentInitializationScript.struct_class = Types::StudioComponentInitializationScript

    StudioComponentInitializationScriptList.member = Shapes::ShapeRef.new(shape: StudioComponentInitializationScript)

    StudioComponentList.member = Shapes::ShapeRef.new(shape: StudioComponent)

    StudioComponentScriptParameterKeyValueList.member = Shapes::ShapeRef.new(shape: ScriptParameterKeyValue)

    StudioComponentSecurityGroupIdList.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    StudioComponentStateList.member = Shapes::ShapeRef.new(shape: StudioComponentState)

    StudioComponentSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    StudioComponentSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: String, location_name: "createdBy"))
    StudioComponentSummary.add_member(:description, Shapes::ShapeRef.new(shape: StudioComponentDescription, location_name: "description"))
    StudioComponentSummary.add_member(:name, Shapes::ShapeRef.new(shape: StudioComponentName, location_name: "name"))
    StudioComponentSummary.add_member(:studio_component_id, Shapes::ShapeRef.new(shape: StudioComponentId, location_name: "studioComponentId"))
    StudioComponentSummary.add_member(:subtype, Shapes::ShapeRef.new(shape: StudioComponentSubtype, location_name: "subtype"))
    StudioComponentSummary.add_member(:type, Shapes::ShapeRef.new(shape: StudioComponentType, location_name: "type"))
    StudioComponentSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    StudioComponentSummary.add_member(:updated_by, Shapes::ShapeRef.new(shape: String, location_name: "updatedBy"))
    StudioComponentSummary.struct_class = Types::StudioComponentSummary

    StudioComponentSummaryList.member = Shapes::ShapeRef.new(shape: StudioComponentSummary)

    StudioComponentTypeList.member = Shapes::ShapeRef.new(shape: StudioComponentType)

    StudioEncryptionConfiguration.add_member(:key_arn, Shapes::ShapeRef.new(shape: StudioEncryptionConfigurationKeyArn, location_name: "keyArn"))
    StudioEncryptionConfiguration.add_member(:key_type, Shapes::ShapeRef.new(shape: StudioEncryptionConfigurationKeyType, required: true, location_name: "keyType"))
    StudioEncryptionConfiguration.struct_class = Types::StudioEncryptionConfiguration

    StudioList.member = Shapes::ShapeRef.new(shape: Studio)

    StudioMembership.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: String, location_name: "identityStoreId"))
    StudioMembership.add_member(:persona, Shapes::ShapeRef.new(shape: StudioPersona, location_name: "persona"))
    StudioMembership.add_member(:principal_id, Shapes::ShapeRef.new(shape: String, location_name: "principalId"))
    StudioMembership.add_member(:sid, Shapes::ShapeRef.new(shape: String, location_name: "sid"))
    StudioMembership.struct_class = Types::StudioMembership

    StudioMembershipList.member = Shapes::ShapeRef.new(shape: StudioMembership)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.key = Shapes::ShapeRef.new(shape: String)
    Tags.value = Shapes::ShapeRef.new(shape: String)

    ThrottlingException.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "code"))
    ThrottlingException.add_member(:context, Shapes::ShapeRef.new(shape: ExceptionContext, location_name: "context"))
    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: StringList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateLaunchProfileMemberRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    UpdateLaunchProfileMemberRequest.add_member(:launch_profile_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "launchProfileId"))
    UpdateLaunchProfileMemberRequest.add_member(:persona, Shapes::ShapeRef.new(shape: LaunchProfilePersona, required: true, location_name: "persona"))
    UpdateLaunchProfileMemberRequest.add_member(:principal_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "principalId"))
    UpdateLaunchProfileMemberRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    UpdateLaunchProfileMemberRequest.struct_class = Types::UpdateLaunchProfileMemberRequest

    UpdateLaunchProfileMemberResponse.add_member(:member, Shapes::ShapeRef.new(shape: LaunchProfileMembership, location_name: "member"))
    UpdateLaunchProfileMemberResponse.struct_class = Types::UpdateLaunchProfileMemberResponse

    UpdateLaunchProfileRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    UpdateLaunchProfileRequest.add_member(:description, Shapes::ShapeRef.new(shape: LaunchProfileDescription, location_name: "description"))
    UpdateLaunchProfileRequest.add_member(:launch_profile_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "launchProfileId"))
    UpdateLaunchProfileRequest.add_member(:launch_profile_protocol_versions, Shapes::ShapeRef.new(shape: LaunchProfileProtocolVersionList, location_name: "launchProfileProtocolVersions"))
    UpdateLaunchProfileRequest.add_member(:name, Shapes::ShapeRef.new(shape: LaunchProfileName, location_name: "name"))
    UpdateLaunchProfileRequest.add_member(:stream_configuration, Shapes::ShapeRef.new(shape: StreamConfigurationCreate, location_name: "streamConfiguration"))
    UpdateLaunchProfileRequest.add_member(:studio_component_ids, Shapes::ShapeRef.new(shape: LaunchProfileStudioComponentIdList, location_name: "studioComponentIds"))
    UpdateLaunchProfileRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    UpdateLaunchProfileRequest.struct_class = Types::UpdateLaunchProfileRequest

    UpdateLaunchProfileResponse.add_member(:launch_profile, Shapes::ShapeRef.new(shape: LaunchProfile, location_name: "launchProfile"))
    UpdateLaunchProfileResponse.struct_class = Types::UpdateLaunchProfileResponse

    UpdateStreamingImageRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    UpdateStreamingImageRequest.add_member(:description, Shapes::ShapeRef.new(shape: StreamingImageDescription, location_name: "description"))
    UpdateStreamingImageRequest.add_member(:name, Shapes::ShapeRef.new(shape: StreamingImageName, location_name: "name"))
    UpdateStreamingImageRequest.add_member(:streaming_image_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "streamingImageId"))
    UpdateStreamingImageRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    UpdateStreamingImageRequest.struct_class = Types::UpdateStreamingImageRequest

    UpdateStreamingImageResponse.add_member(:streaming_image, Shapes::ShapeRef.new(shape: StreamingImage, location_name: "streamingImage"))
    UpdateStreamingImageResponse.struct_class = Types::UpdateStreamingImageResponse

    UpdateStudioComponentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    UpdateStudioComponentRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: StudioComponentConfiguration, location_name: "configuration"))
    UpdateStudioComponentRequest.add_member(:description, Shapes::ShapeRef.new(shape: StudioComponentDescription, location_name: "description"))
    UpdateStudioComponentRequest.add_member(:ec2_security_group_ids, Shapes::ShapeRef.new(shape: StudioComponentSecurityGroupIdList, location_name: "ec2SecurityGroupIds"))
    UpdateStudioComponentRequest.add_member(:initialization_scripts, Shapes::ShapeRef.new(shape: StudioComponentInitializationScriptList, location_name: "initializationScripts"))
    UpdateStudioComponentRequest.add_member(:name, Shapes::ShapeRef.new(shape: StudioComponentName, location_name: "name"))
    UpdateStudioComponentRequest.add_member(:runtime_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "runtimeRoleArn"))
    UpdateStudioComponentRequest.add_member(:script_parameters, Shapes::ShapeRef.new(shape: StudioComponentScriptParameterKeyValueList, location_name: "scriptParameters"))
    UpdateStudioComponentRequest.add_member(:secure_initialization_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "secureInitializationRoleArn"))
    UpdateStudioComponentRequest.add_member(:studio_component_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioComponentId"))
    UpdateStudioComponentRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    UpdateStudioComponentRequest.add_member(:subtype, Shapes::ShapeRef.new(shape: StudioComponentSubtype, location_name: "subtype"))
    UpdateStudioComponentRequest.add_member(:type, Shapes::ShapeRef.new(shape: StudioComponentType, location_name: "type"))
    UpdateStudioComponentRequest.struct_class = Types::UpdateStudioComponentRequest

    UpdateStudioComponentResponse.add_member(:studio_component, Shapes::ShapeRef.new(shape: StudioComponent, location_name: "studioComponent"))
    UpdateStudioComponentResponse.struct_class = Types::UpdateStudioComponentResponse

    UpdateStudioRequest.add_member(:admin_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "adminRoleArn"))
    UpdateStudioRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    UpdateStudioRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: StudioDisplayName, location_name: "displayName"))
    UpdateStudioRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "studioId"))
    UpdateStudioRequest.add_member(:user_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "userRoleArn"))
    UpdateStudioRequest.struct_class = Types::UpdateStudioRequest

    UpdateStudioResponse.add_member(:studio, Shapes::ShapeRef.new(shape: Studio, required: true, location_name: "studio"))
    UpdateStudioResponse.struct_class = Types::UpdateStudioResponse

    ValidationException.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "code"))
    ValidationException.add_member(:context, Shapes::ShapeRef.new(shape: ExceptionContext, location_name: "context"))
    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    ValidationResult.add_member(:state, Shapes::ShapeRef.new(shape: LaunchProfileValidationState, required: true, location_name: "state"))
    ValidationResult.add_member(:status_code, Shapes::ShapeRef.new(shape: LaunchProfileValidationStatusCode, required: true, location_name: "statusCode"))
    ValidationResult.add_member(:status_message, Shapes::ShapeRef.new(shape: LaunchProfileValidationStatusMessage, required: true, location_name: "statusMessage"))
    ValidationResult.add_member(:type, Shapes::ShapeRef.new(shape: LaunchProfileValidationType, required: true, location_name: "type"))
    ValidationResult.struct_class = Types::ValidationResult

    ValidationResults.member = Shapes::ShapeRef.new(shape: ValidationResult)

    VolumeConfiguration.add_member(:iops, Shapes::ShapeRef.new(shape: VolumeIops, location_name: "iops"))
    VolumeConfiguration.add_member(:size, Shapes::ShapeRef.new(shape: VolumeSizeInGiB, location_name: "size"))
    VolumeConfiguration.add_member(:throughput, Shapes::ShapeRef.new(shape: VolumeThroughputInMiBs, location_name: "throughput"))
    VolumeConfiguration.struct_class = Types::VolumeConfiguration


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-08-01"

      api.metadata = {
        "apiVersion" => "2020-08-01",
        "endpointPrefix" => "nimble",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AmazonNimbleStudio",
        "serviceId" => "nimble",
        "signatureVersion" => "v4",
        "signingName" => "nimble",
        "uid" => "nimble-2020-08-01",
      }

      api.add_operation(:accept_eulas, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AcceptEulas"
        o.http_method = "POST"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/eula-acceptances"
        o.input = Shapes::ShapeRef.new(shape: AcceptEulasRequest)
        o.output = Shapes::ShapeRef.new(shape: AcceptEulasResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_launch_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLaunchProfile"
        o.http_method = "POST"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/launch-profiles"
        o.input = Shapes::ShapeRef.new(shape: CreateLaunchProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLaunchProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_streaming_image, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStreamingImage"
        o.http_method = "POST"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/streaming-images"
        o.input = Shapes::ShapeRef.new(shape: CreateStreamingImageRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateStreamingImageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_streaming_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStreamingSession"
        o.http_method = "POST"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/streaming-sessions"
        o.input = Shapes::ShapeRef.new(shape: CreateStreamingSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateStreamingSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_streaming_session_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStreamingSessionStream"
        o.http_method = "POST"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/streaming-sessions/{sessionId}/streams"
        o.input = Shapes::ShapeRef.new(shape: CreateStreamingSessionStreamRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateStreamingSessionStreamResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_studio, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStudio"
        o.http_method = "POST"
        o.http_request_uri = "/2020-08-01/studios"
        o.input = Shapes::ShapeRef.new(shape: CreateStudioRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateStudioResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_studio_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStudioComponent"
        o.http_method = "POST"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/studio-components"
        o.input = Shapes::ShapeRef.new(shape: CreateStudioComponentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateStudioComponentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_launch_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLaunchProfile"
        o.http_method = "DELETE"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/launch-profiles/{launchProfileId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteLaunchProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteLaunchProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_launch_profile_member, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLaunchProfileMember"
        o.http_method = "DELETE"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/launch-profiles/{launchProfileId}/membership/{principalId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteLaunchProfileMemberRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteLaunchProfileMemberResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_streaming_image, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteStreamingImage"
        o.http_method = "DELETE"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/streaming-images/{streamingImageId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteStreamingImageRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteStreamingImageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_streaming_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteStreamingSession"
        o.http_method = "DELETE"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/streaming-sessions/{sessionId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteStreamingSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteStreamingSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_studio, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteStudio"
        o.http_method = "DELETE"
        o.http_request_uri = "/2020-08-01/studios/{studioId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteStudioRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteStudioResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_studio_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteStudioComponent"
        o.http_method = "DELETE"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/studio-components/{studioComponentId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteStudioComponentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteStudioComponentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_studio_member, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteStudioMember"
        o.http_method = "DELETE"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/membership/{principalId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteStudioMemberRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteStudioMemberResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:get_eula, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEula"
        o.http_method = "GET"
        o.http_request_uri = "/2020-08-01/eulas/{eulaId}"
        o.input = Shapes::ShapeRef.new(shape: GetEulaRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEulaResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:get_launch_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLaunchProfile"
        o.http_method = "GET"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/launch-profiles/{launchProfileId}"
        o.input = Shapes::ShapeRef.new(shape: GetLaunchProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLaunchProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:get_launch_profile_details, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLaunchProfileDetails"
        o.http_method = "GET"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/launch-profiles/{launchProfileId}/details"
        o.input = Shapes::ShapeRef.new(shape: GetLaunchProfileDetailsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLaunchProfileDetailsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:get_launch_profile_initialization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLaunchProfileInitialization"
        o.http_method = "GET"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/launch-profiles/{launchProfileId}/init"
        o.input = Shapes::ShapeRef.new(shape: GetLaunchProfileInitializationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLaunchProfileInitializationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:get_launch_profile_member, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLaunchProfileMember"
        o.http_method = "GET"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/launch-profiles/{launchProfileId}/membership/{principalId}"
        o.input = Shapes::ShapeRef.new(shape: GetLaunchProfileMemberRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLaunchProfileMemberResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:get_streaming_image, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStreamingImage"
        o.http_method = "GET"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/streaming-images/{streamingImageId}"
        o.input = Shapes::ShapeRef.new(shape: GetStreamingImageRequest)
        o.output = Shapes::ShapeRef.new(shape: GetStreamingImageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:get_streaming_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStreamingSession"
        o.http_method = "GET"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/streaming-sessions/{sessionId}"
        o.input = Shapes::ShapeRef.new(shape: GetStreamingSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetStreamingSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:get_streaming_session_backup, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStreamingSessionBackup"
        o.http_method = "GET"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/streaming-session-backups/{backupId}"
        o.input = Shapes::ShapeRef.new(shape: GetStreamingSessionBackupRequest)
        o.output = Shapes::ShapeRef.new(shape: GetStreamingSessionBackupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_streaming_session_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStreamingSessionStream"
        o.http_method = "GET"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/streaming-sessions/{sessionId}/streams/{streamId}"
        o.input = Shapes::ShapeRef.new(shape: GetStreamingSessionStreamRequest)
        o.output = Shapes::ShapeRef.new(shape: GetStreamingSessionStreamResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:get_studio, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStudio"
        o.http_method = "GET"
        o.http_request_uri = "/2020-08-01/studios/{studioId}"
        o.input = Shapes::ShapeRef.new(shape: GetStudioRequest)
        o.output = Shapes::ShapeRef.new(shape: GetStudioResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:get_studio_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStudioComponent"
        o.http_method = "GET"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/studio-components/{studioComponentId}"
        o.input = Shapes::ShapeRef.new(shape: GetStudioComponentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetStudioComponentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:get_studio_member, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStudioMember"
        o.http_method = "GET"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/membership/{principalId}"
        o.input = Shapes::ShapeRef.new(shape: GetStudioMemberRequest)
        o.output = Shapes::ShapeRef.new(shape: GetStudioMemberResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:list_eula_acceptances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEulaAcceptances"
        o.http_method = "GET"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/eula-acceptances"
        o.input = Shapes::ShapeRef.new(shape: ListEulaAcceptancesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEulaAcceptancesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_eulas, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEulas"
        o.http_method = "GET"
        o.http_request_uri = "/2020-08-01/eulas"
        o.input = Shapes::ShapeRef.new(shape: ListEulasRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEulasResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_launch_profile_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLaunchProfileMembers"
        o.http_method = "GET"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/launch-profiles/{launchProfileId}/membership"
        o.input = Shapes::ShapeRef.new(shape: ListLaunchProfileMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLaunchProfileMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_launch_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLaunchProfiles"
        o.http_method = "GET"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/launch-profiles"
        o.input = Shapes::ShapeRef.new(shape: ListLaunchProfilesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLaunchProfilesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_streaming_images, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStreamingImages"
        o.http_method = "GET"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/streaming-images"
        o.input = Shapes::ShapeRef.new(shape: ListStreamingImagesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListStreamingImagesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_streaming_session_backups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStreamingSessionBackups"
        o.http_method = "GET"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/streaming-session-backups"
        o.input = Shapes::ShapeRef.new(shape: ListStreamingSessionBackupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListStreamingSessionBackupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_streaming_sessions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStreamingSessions"
        o.http_method = "GET"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/streaming-sessions"
        o.input = Shapes::ShapeRef.new(shape: ListStreamingSessionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListStreamingSessionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_studio_components, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStudioComponents"
        o.http_method = "GET"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/studio-components"
        o.input = Shapes::ShapeRef.new(shape: ListStudioComponentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListStudioComponentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_studio_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStudioMembers"
        o.http_method = "GET"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/membership"
        o.input = Shapes::ShapeRef.new(shape: ListStudioMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListStudioMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_studios, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStudios"
        o.http_method = "GET"
        o.http_request_uri = "/2020-08-01/studios"
        o.input = Shapes::ShapeRef.new(shape: ListStudiosRequest)
        o.output = Shapes::ShapeRef.new(shape: ListStudiosResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/2020-08-01/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:put_launch_profile_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutLaunchProfileMembers"
        o.http_method = "POST"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/launch-profiles/{launchProfileId}/membership"
        o.input = Shapes::ShapeRef.new(shape: PutLaunchProfileMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: PutLaunchProfileMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:put_studio_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutStudioMembers"
        o.http_method = "POST"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/membership"
        o.input = Shapes::ShapeRef.new(shape: PutStudioMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: PutStudioMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:start_streaming_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartStreamingSession"
        o.http_method = "POST"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/streaming-sessions/{sessionId}/start"
        o.input = Shapes::ShapeRef.new(shape: StartStreamingSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartStreamingSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:start_studio_sso_configuration_repair, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartStudioSSOConfigurationRepair"
        o.http_method = "PUT"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/sso-configuration"
        o.input = Shapes::ShapeRef.new(shape: StartStudioSSOConfigurationRepairRequest)
        o.output = Shapes::ShapeRef.new(shape: StartStudioSSOConfigurationRepairResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:stop_streaming_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopStreamingSession"
        o.http_method = "POST"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/streaming-sessions/{sessionId}/stop"
        o.input = Shapes::ShapeRef.new(shape: StopStreamingSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: StopStreamingSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/2020-08-01/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/2020-08-01/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:update_launch_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLaunchProfile"
        o.http_method = "PATCH"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/launch-profiles/{launchProfileId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateLaunchProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateLaunchProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:update_launch_profile_member, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLaunchProfileMember"
        o.http_method = "PATCH"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/launch-profiles/{launchProfileId}/membership/{principalId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateLaunchProfileMemberRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateLaunchProfileMemberResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:update_streaming_image, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateStreamingImage"
        o.http_method = "PATCH"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/streaming-images/{streamingImageId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateStreamingImageRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateStreamingImageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:update_studio, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateStudio"
        o.http_method = "PATCH"
        o.http_request_uri = "/2020-08-01/studios/{studioId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateStudioRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateStudioResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:update_studio_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateStudioComponent"
        o.http_method = "PATCH"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/studio-components/{studioComponentId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateStudioComponentRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateStudioComponentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)
    end

  end
end
