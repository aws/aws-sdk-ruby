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

    AcceptEulasInput = Shapes::StructureShape.new(name: 'AcceptEulasInput')
    AcceptEulasOutput = Shapes::StructureShape.new(name: 'AcceptEulasOutput')
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
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ComputeFarmConfiguration = Shapes::StructureShape.new(name: 'ComputeFarmConfiguration')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateLaunchProfileInput = Shapes::StructureShape.new(name: 'CreateLaunchProfileInput')
    CreateLaunchProfileOutput = Shapes::StructureShape.new(name: 'CreateLaunchProfileOutput')
    CreateLaunchProfileRequest = Shapes::StructureShape.new(name: 'CreateLaunchProfileRequest')
    CreateLaunchProfileResponse = Shapes::StructureShape.new(name: 'CreateLaunchProfileResponse')
    CreateStreamingImageInput = Shapes::StructureShape.new(name: 'CreateStreamingImageInput')
    CreateStreamingImageOutput = Shapes::StructureShape.new(name: 'CreateStreamingImageOutput')
    CreateStreamingImageRequest = Shapes::StructureShape.new(name: 'CreateStreamingImageRequest')
    CreateStreamingImageResponse = Shapes::StructureShape.new(name: 'CreateStreamingImageResponse')
    CreateStreamingSessionInput = Shapes::StructureShape.new(name: 'CreateStreamingSessionInput')
    CreateStreamingSessionOutput = Shapes::StructureShape.new(name: 'CreateStreamingSessionOutput')
    CreateStreamingSessionRequest = Shapes::StructureShape.new(name: 'CreateStreamingSessionRequest')
    CreateStreamingSessionResponse = Shapes::StructureShape.new(name: 'CreateStreamingSessionResponse')
    CreateStreamingSessionStreamInput = Shapes::StructureShape.new(name: 'CreateStreamingSessionStreamInput')
    CreateStreamingSessionStreamOutput = Shapes::StructureShape.new(name: 'CreateStreamingSessionStreamOutput')
    CreateStreamingSessionStreamRequest = Shapes::StructureShape.new(name: 'CreateStreamingSessionStreamRequest')
    CreateStreamingSessionStreamResponse = Shapes::StructureShape.new(name: 'CreateStreamingSessionStreamResponse')
    CreateStudioComponentInput = Shapes::StructureShape.new(name: 'CreateStudioComponentInput')
    CreateStudioComponentOutput = Shapes::StructureShape.new(name: 'CreateStudioComponentOutput')
    CreateStudioComponentRequest = Shapes::StructureShape.new(name: 'CreateStudioComponentRequest')
    CreateStudioComponentResponse = Shapes::StructureShape.new(name: 'CreateStudioComponentResponse')
    CreateStudioInput = Shapes::StructureShape.new(name: 'CreateStudioInput')
    CreateStudioOutput = Shapes::StructureShape.new(name: 'CreateStudioOutput')
    CreateStudioRequest = Shapes::StructureShape.new(name: 'CreateStudioRequest')
    CreateStudioResponse = Shapes::StructureShape.new(name: 'CreateStudioResponse')
    DeleteLaunchProfileMemberOutput = Shapes::StructureShape.new(name: 'DeleteLaunchProfileMemberOutput')
    DeleteLaunchProfileMemberRequest = Shapes::StructureShape.new(name: 'DeleteLaunchProfileMemberRequest')
    DeleteLaunchProfileMemberResponse = Shapes::StructureShape.new(name: 'DeleteLaunchProfileMemberResponse')
    DeleteLaunchProfileOutput = Shapes::StructureShape.new(name: 'DeleteLaunchProfileOutput')
    DeleteLaunchProfileRequest = Shapes::StructureShape.new(name: 'DeleteLaunchProfileRequest')
    DeleteLaunchProfileResponse = Shapes::StructureShape.new(name: 'DeleteLaunchProfileResponse')
    DeleteStreamingImageOutput = Shapes::StructureShape.new(name: 'DeleteStreamingImageOutput')
    DeleteStreamingImageRequest = Shapes::StructureShape.new(name: 'DeleteStreamingImageRequest')
    DeleteStreamingImageResponse = Shapes::StructureShape.new(name: 'DeleteStreamingImageResponse')
    DeleteStreamingSessionOutput = Shapes::StructureShape.new(name: 'DeleteStreamingSessionOutput')
    DeleteStreamingSessionRequest = Shapes::StructureShape.new(name: 'DeleteStreamingSessionRequest')
    DeleteStreamingSessionResponse = Shapes::StructureShape.new(name: 'DeleteStreamingSessionResponse')
    DeleteStudioComponentOutput = Shapes::StructureShape.new(name: 'DeleteStudioComponentOutput')
    DeleteStudioComponentRequest = Shapes::StructureShape.new(name: 'DeleteStudioComponentRequest')
    DeleteStudioComponentResponse = Shapes::StructureShape.new(name: 'DeleteStudioComponentResponse')
    DeleteStudioMemberOutput = Shapes::StructureShape.new(name: 'DeleteStudioMemberOutput')
    DeleteStudioMemberRequest = Shapes::StructureShape.new(name: 'DeleteStudioMemberRequest')
    DeleteStudioMemberResponse = Shapes::StructureShape.new(name: 'DeleteStudioMemberResponse')
    DeleteStudioOutput = Shapes::StructureShape.new(name: 'DeleteStudioOutput')
    DeleteStudioRequest = Shapes::StructureShape.new(name: 'DeleteStudioRequest')
    DeleteStudioResponse = Shapes::StructureShape.new(name: 'DeleteStudioResponse')
    DirectoryId = Shapes::StringShape.new(name: 'DirectoryId')
    EC2ImageId = Shapes::StringShape.new(name: 'EC2ImageId')
    EC2SubnetId = Shapes::StringShape.new(name: 'EC2SubnetId')
    EC2SubnetIdList = Shapes::ListShape.new(name: 'EC2SubnetIdList')
    Empty = Shapes::StructureShape.new(name: 'Empty')
    Eula = Shapes::StructureShape.new(name: 'Eula')
    EulaAcceptance = Shapes::StructureShape.new(name: 'EulaAcceptance')
    EulaAcceptanceId = Shapes::StringShape.new(name: 'EulaAcceptanceId')
    EulaAcceptanceList = Shapes::ListShape.new(name: 'EulaAcceptanceList')
    EulaId = Shapes::StringShape.new(name: 'EulaId')
    EulaIdList = Shapes::ListShape.new(name: 'EulaIdList')
    EulaList = Shapes::ListShape.new(name: 'EulaList')
    EulaName = Shapes::StringShape.new(name: 'EulaName')
    ExceptionContext = Shapes::MapShape.new(name: 'ExceptionContext')
    GetEulaOutput = Shapes::StructureShape.new(name: 'GetEulaOutput')
    GetEulaRequest = Shapes::StructureShape.new(name: 'GetEulaRequest')
    GetEulaResponse = Shapes::StructureShape.new(name: 'GetEulaResponse')
    GetLaunchProfileDetailsOutput = Shapes::StructureShape.new(name: 'GetLaunchProfileDetailsOutput')
    GetLaunchProfileDetailsRequest = Shapes::StructureShape.new(name: 'GetLaunchProfileDetailsRequest')
    GetLaunchProfileDetailsResponse = Shapes::StructureShape.new(name: 'GetLaunchProfileDetailsResponse')
    GetLaunchProfileInitializationOutput = Shapes::StructureShape.new(name: 'GetLaunchProfileInitializationOutput')
    GetLaunchProfileInitializationRequest = Shapes::StructureShape.new(name: 'GetLaunchProfileInitializationRequest')
    GetLaunchProfileInitializationResponse = Shapes::StructureShape.new(name: 'GetLaunchProfileInitializationResponse')
    GetLaunchProfileMemberOutput = Shapes::StructureShape.new(name: 'GetLaunchProfileMemberOutput')
    GetLaunchProfileMemberRequest = Shapes::StructureShape.new(name: 'GetLaunchProfileMemberRequest')
    GetLaunchProfileMemberResponse = Shapes::StructureShape.new(name: 'GetLaunchProfileMemberResponse')
    GetLaunchProfileOutput = Shapes::StructureShape.new(name: 'GetLaunchProfileOutput')
    GetLaunchProfileRequest = Shapes::StructureShape.new(name: 'GetLaunchProfileRequest')
    GetLaunchProfileResponse = Shapes::StructureShape.new(name: 'GetLaunchProfileResponse')
    GetStreamingImageOutput = Shapes::StructureShape.new(name: 'GetStreamingImageOutput')
    GetStreamingImageRequest = Shapes::StructureShape.new(name: 'GetStreamingImageRequest')
    GetStreamingImageResponse = Shapes::StructureShape.new(name: 'GetStreamingImageResponse')
    GetStreamingSessionOutput = Shapes::StructureShape.new(name: 'GetStreamingSessionOutput')
    GetStreamingSessionRequest = Shapes::StructureShape.new(name: 'GetStreamingSessionRequest')
    GetStreamingSessionResponse = Shapes::StructureShape.new(name: 'GetStreamingSessionResponse')
    GetStreamingSessionStreamOutput = Shapes::StructureShape.new(name: 'GetStreamingSessionStreamOutput')
    GetStreamingSessionStreamRequest = Shapes::StructureShape.new(name: 'GetStreamingSessionStreamRequest')
    GetStreamingSessionStreamResponse = Shapes::StructureShape.new(name: 'GetStreamingSessionStreamResponse')
    GetStudioComponentOutput = Shapes::StructureShape.new(name: 'GetStudioComponentOutput')
    GetStudioComponentRequest = Shapes::StructureShape.new(name: 'GetStudioComponentRequest')
    GetStudioComponentResponse = Shapes::StructureShape.new(name: 'GetStudioComponentResponse')
    GetStudioMemberOutput = Shapes::StructureShape.new(name: 'GetStudioMemberOutput')
    GetStudioMemberRequest = Shapes::StructureShape.new(name: 'GetStudioMemberRequest')
    GetStudioMemberResponse = Shapes::StructureShape.new(name: 'GetStudioMemberResponse')
    GetStudioOutput = Shapes::StructureShape.new(name: 'GetStudioOutput')
    GetStudioRequest = Shapes::StructureShape.new(name: 'GetStudioRequest')
    GetStudioResponse = Shapes::StructureShape.new(name: 'GetStudioResponse')
    InternalServerErrorException = Shapes::StructureShape.new(name: 'InternalServerErrorException')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
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
    LaunchProfileStatusCode = Shapes::StringShape.new(name: 'LaunchProfileStatusCode')
    LaunchProfileStudioComponentIdList = Shapes::ListShape.new(name: 'LaunchProfileStudioComponentIdList')
    LaunchPurpose = Shapes::StringShape.new(name: 'LaunchPurpose')
    LicenseServiceConfiguration = Shapes::StructureShape.new(name: 'LicenseServiceConfiguration')
    LinuxMountPoint = Shapes::StringShape.new(name: 'LinuxMountPoint')
    ListEulaAcceptancesOutput = Shapes::StructureShape.new(name: 'ListEulaAcceptancesOutput')
    ListEulaAcceptancesRequest = Shapes::StructureShape.new(name: 'ListEulaAcceptancesRequest')
    ListEulaAcceptancesResponse = Shapes::StructureShape.new(name: 'ListEulaAcceptancesResponse')
    ListEulasOutput = Shapes::StructureShape.new(name: 'ListEulasOutput')
    ListEulasRequest = Shapes::StructureShape.new(name: 'ListEulasRequest')
    ListEulasResponse = Shapes::StructureShape.new(name: 'ListEulasResponse')
    ListLaunchProfileMembersOutput = Shapes::StructureShape.new(name: 'ListLaunchProfileMembersOutput')
    ListLaunchProfileMembersRequest = Shapes::StructureShape.new(name: 'ListLaunchProfileMembersRequest')
    ListLaunchProfileMembersResponse = Shapes::StructureShape.new(name: 'ListLaunchProfileMembersResponse')
    ListLaunchProfilesOutput = Shapes::StructureShape.new(name: 'ListLaunchProfilesOutput')
    ListLaunchProfilesRequest = Shapes::StructureShape.new(name: 'ListLaunchProfilesRequest')
    ListLaunchProfilesResponse = Shapes::StructureShape.new(name: 'ListLaunchProfilesResponse')
    ListStreamingImagesOutput = Shapes::StructureShape.new(name: 'ListStreamingImagesOutput')
    ListStreamingImagesRequest = Shapes::StructureShape.new(name: 'ListStreamingImagesRequest')
    ListStreamingImagesResponse = Shapes::StructureShape.new(name: 'ListStreamingImagesResponse')
    ListStreamingSessionsOutput = Shapes::StructureShape.new(name: 'ListStreamingSessionsOutput')
    ListStreamingSessionsRequest = Shapes::StructureShape.new(name: 'ListStreamingSessionsRequest')
    ListStreamingSessionsResponse = Shapes::StructureShape.new(name: 'ListStreamingSessionsResponse')
    ListStudioComponentsOutput = Shapes::StructureShape.new(name: 'ListStudioComponentsOutput')
    ListStudioComponentsRequest = Shapes::StructureShape.new(name: 'ListStudioComponentsRequest')
    ListStudioComponentsResponse = Shapes::StructureShape.new(name: 'ListStudioComponentsResponse')
    ListStudioMembersOutput = Shapes::StructureShape.new(name: 'ListStudioMembersOutput')
    ListStudioMembersRequest = Shapes::StructureShape.new(name: 'ListStudioMembersRequest')
    ListStudioMembersResponse = Shapes::StructureShape.new(name: 'ListStudioMembersResponse')
    ListStudiosOutput = Shapes::StructureShape.new(name: 'ListStudiosOutput')
    ListStudiosRequest = Shapes::StructureShape.new(name: 'ListStudiosRequest')
    ListStudiosResponse = Shapes::StructureShape.new(name: 'ListStudiosResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTagsOutput = Shapes::StructureShape.new(name: 'ListTagsOutput')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NewLaunchProfileMember = Shapes::StructureShape.new(name: 'NewLaunchProfileMember')
    NewLaunchProfileMemberList = Shapes::ListShape.new(name: 'NewLaunchProfileMemberList')
    NewStudioMember = Shapes::StructureShape.new(name: 'NewStudioMember')
    NewStudioMemberList = Shapes::ListShape.new(name: 'NewStudioMemberList')
    PutLaunchProfileMembersInput = Shapes::StructureShape.new(name: 'PutLaunchProfileMembersInput')
    PutLaunchProfileMembersRequest = Shapes::StructureShape.new(name: 'PutLaunchProfileMembersRequest')
    PutLaunchProfileMembersResponse = Shapes::StructureShape.new(name: 'PutLaunchProfileMembersResponse')
    PutStudioMembersInput = Shapes::StructureShape.new(name: 'PutStudioMembersInput')
    PutStudioMembersOutput = Shapes::StructureShape.new(name: 'PutStudioMembersOutput')
    PutStudioMembersRequest = Shapes::StructureShape.new(name: 'PutStudioMembersRequest')
    PutStudioMembersResponse = Shapes::StructureShape.new(name: 'PutStudioMembersResponse')
    Region = Shapes::StringShape.new(name: 'Region')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ScriptParameterKey = Shapes::StringShape.new(name: 'ScriptParameterKey')
    ScriptParameterKeyValue = Shapes::StructureShape.new(name: 'ScriptParameterKeyValue')
    ScriptParameterValue = Shapes::StringShape.new(name: 'ScriptParameterValue')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SharedFileSystemConfiguration = Shapes::StructureShape.new(name: 'SharedFileSystemConfiguration')
    StartStudioSSOConfigurationRepairOutput = Shapes::StructureShape.new(name: 'StartStudioSSOConfigurationRepairOutput')
    StartStudioSSOConfigurationRepairRequest = Shapes::StructureShape.new(name: 'StartStudioSSOConfigurationRepairRequest')
    StartStudioSSOConfigurationRepairResponse = Shapes::StructureShape.new(name: 'StartStudioSSOConfigurationRepairResponse')
    StreamConfiguration = Shapes::StructureShape.new(name: 'StreamConfiguration')
    StreamConfigurationCreate = Shapes::StructureShape.new(name: 'StreamConfigurationCreate')
    StreamConfigurationMaxSessionLengthInMinutes = Shapes::IntegerShape.new(name: 'StreamConfigurationMaxSessionLengthInMinutes')
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
    StreamingImageSessionId = Shapes::StringShape.new(name: 'StreamingImageSessionId')
    StreamingImageState = Shapes::StringShape.new(name: 'StreamingImageState')
    StreamingImageStatusCode = Shapes::StringShape.new(name: 'StreamingImageStatusCode')
    StreamingInstanceType = Shapes::StringShape.new(name: 'StreamingInstanceType')
    StreamingInstanceTypeList = Shapes::ListShape.new(name: 'StreamingInstanceTypeList')
    StreamingSession = Shapes::StructureShape.new(name: 'StreamingSession')
    StreamingSessionList = Shapes::ListShape.new(name: 'StreamingSessionList')
    StreamingSessionState = Shapes::StringShape.new(name: 'StreamingSessionState')
    StreamingSessionStatusCode = Shapes::StringShape.new(name: 'StreamingSessionStatusCode')
    StreamingSessionStream = Shapes::StructureShape.new(name: 'StreamingSessionStream')
    StreamingSessionStreamExpirationInSeconds = Shapes::IntegerShape.new(name: 'StreamingSessionStreamExpirationInSeconds')
    StreamingSessionStreamState = Shapes::StringShape.new(name: 'StreamingSessionStreamState')
    StreamingSessionStreamStatusCode = Shapes::StringShape.new(name: 'StreamingSessionStreamStatusCode')
    Studio = Shapes::StructureShape.new(name: 'Studio')
    StudioComponent = Shapes::StructureShape.new(name: 'StudioComponent')
    StudioComponentConfiguration = Shapes::StructureShape.new(name: 'StudioComponentConfiguration')
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
    StudioComponentStatusCode = Shapes::StringShape.new(name: 'StudioComponentStatusCode')
    StudioComponentSubtype = Shapes::StringShape.new(name: 'StudioComponentSubtype')
    StudioComponentSummary = Shapes::StructureShape.new(name: 'StudioComponentSummary')
    StudioComponentSummaryList = Shapes::ListShape.new(name: 'StudioComponentSummaryList')
    StudioComponentType = Shapes::StringShape.new(name: 'StudioComponentType')
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
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    Tags = Shapes::MapShape.new(name: 'Tags')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp', timestampFormat: "iso8601")
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateLaunchProfileInput = Shapes::StructureShape.new(name: 'UpdateLaunchProfileInput')
    UpdateLaunchProfileMemberInput = Shapes::StructureShape.new(name: 'UpdateLaunchProfileMemberInput')
    UpdateLaunchProfileMemberRequest = Shapes::StructureShape.new(name: 'UpdateLaunchProfileMemberRequest')
    UpdateLaunchProfileMemberResponse = Shapes::StructureShape.new(name: 'UpdateLaunchProfileMemberResponse')
    UpdateLaunchProfileOutput = Shapes::StructureShape.new(name: 'UpdateLaunchProfileOutput')
    UpdateLaunchProfileRequest = Shapes::StructureShape.new(name: 'UpdateLaunchProfileRequest')
    UpdateLaunchProfileResponse = Shapes::StructureShape.new(name: 'UpdateLaunchProfileResponse')
    UpdateStreamingImageInput = Shapes::StructureShape.new(name: 'UpdateStreamingImageInput')
    UpdateStreamingImageOutput = Shapes::StructureShape.new(name: 'UpdateStreamingImageOutput')
    UpdateStreamingImageRequest = Shapes::StructureShape.new(name: 'UpdateStreamingImageRequest')
    UpdateStreamingImageResponse = Shapes::StructureShape.new(name: 'UpdateStreamingImageResponse')
    UpdateStudioComponentInput = Shapes::StructureShape.new(name: 'UpdateStudioComponentInput')
    UpdateStudioComponentOutput = Shapes::StructureShape.new(name: 'UpdateStudioComponentOutput')
    UpdateStudioComponentRequest = Shapes::StructureShape.new(name: 'UpdateStudioComponentRequest')
    UpdateStudioComponentResponse = Shapes::StructureShape.new(name: 'UpdateStudioComponentResponse')
    UpdateStudioInput = Shapes::StructureShape.new(name: 'UpdateStudioInput')
    UpdateStudioOutput = Shapes::StructureShape.new(name: 'UpdateStudioOutput')
    UpdateStudioRequest = Shapes::StructureShape.new(name: 'UpdateStudioRequest')
    UpdateStudioResponse = Shapes::StructureShape.new(name: 'UpdateStudioResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    WindowsMountDrive = Shapes::StringShape.new(name: 'WindowsMountDrive')
    __boolean = Shapes::BooleanShape.new(name: '__boolean')
    __double = Shapes::FloatShape.new(name: '__double')
    __integer = Shapes::IntegerShape.new(name: '__integer')
    __listOf__string = Shapes::ListShape.new(name: '__listOf__string')
    __long = Shapes::IntegerShape.new(name: '__long')
    __string = Shapes::StringShape.new(name: '__string')
    __timestampIso8601 = Shapes::TimestampShape.new(name: '__timestampIso8601', timestampFormat: "iso8601")
    __timestampUnix = Shapes::TimestampShape.new(name: '__timestampUnix', timestampFormat: "unixTimestamp")
    multiValueQueryStringList = Shapes::ListShape.new(name: 'multiValueQueryStringList')

    AcceptEulasInput.add_member(:eula_ids, Shapes::ShapeRef.new(shape: EulaIdList, location_name: "eulaIds"))
    AcceptEulasInput.struct_class = Types::AcceptEulasInput

    AcceptEulasOutput.add_member(:eula_acceptances, Shapes::ShapeRef.new(shape: EulaAcceptanceList, location_name: "eulaAcceptances"))
    AcceptEulasOutput.struct_class = Types::AcceptEulasOutput

    AcceptEulasRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    AcceptEulasRequest.add_member(:eula_ids, Shapes::ShapeRef.new(shape: EulaIdList, location_name: "eulaIds"))
    AcceptEulasRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "studioId"))
    AcceptEulasRequest.struct_class = Types::AcceptEulasRequest

    AcceptEulasResponse.add_member(:eula_acceptances, Shapes::ShapeRef.new(shape: EulaAcceptanceList, location_name: "eulaAcceptances"))
    AcceptEulasResponse.struct_class = Types::AcceptEulasResponse

    AccessDeniedException.add_member(:code, Shapes::ShapeRef.new(shape: __string, location_name: "code"))
    AccessDeniedException.add_member(:context, Shapes::ShapeRef.new(shape: ExceptionContext, location_name: "context"))
    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
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

    ComputeFarmConfiguration.add_member(:active_directory_user, Shapes::ShapeRef.new(shape: __string, location_name: "activeDirectoryUser"))
    ComputeFarmConfiguration.add_member(:endpoint, Shapes::ShapeRef.new(shape: __string, location_name: "endpoint"))
    ComputeFarmConfiguration.struct_class = Types::ComputeFarmConfiguration

    ConflictException.add_member(:code, Shapes::ShapeRef.new(shape: __string, location_name: "code"))
    ConflictException.add_member(:context, Shapes::ShapeRef.new(shape: ExceptionContext, location_name: "context"))
    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateLaunchProfileInput.add_member(:description, Shapes::ShapeRef.new(shape: LaunchProfileDescription, location_name: "description"))
    CreateLaunchProfileInput.add_member(:ec2_subnet_ids, Shapes::ShapeRef.new(shape: EC2SubnetIdList, required: true, location_name: "ec2SubnetIds"))
    CreateLaunchProfileInput.add_member(:launch_profile_protocol_versions, Shapes::ShapeRef.new(shape: LaunchProfileProtocolVersionList, required: true, location_name: "launchProfileProtocolVersions"))
    CreateLaunchProfileInput.add_member(:name, Shapes::ShapeRef.new(shape: LaunchProfileName, required: true, location_name: "name"))
    CreateLaunchProfileInput.add_member(:stream_configuration, Shapes::ShapeRef.new(shape: StreamConfigurationCreate, required: true, location_name: "streamConfiguration"))
    CreateLaunchProfileInput.add_member(:studio_component_ids, Shapes::ShapeRef.new(shape: LaunchProfileStudioComponentIdList, required: true, location_name: "studioComponentIds"))
    CreateLaunchProfileInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateLaunchProfileInput.struct_class = Types::CreateLaunchProfileInput

    CreateLaunchProfileOutput.add_member(:launch_profile, Shapes::ShapeRef.new(shape: LaunchProfile, location_name: "launchProfile"))
    CreateLaunchProfileOutput.struct_class = Types::CreateLaunchProfileOutput

    CreateLaunchProfileRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    CreateLaunchProfileRequest.add_member(:description, Shapes::ShapeRef.new(shape: LaunchProfileDescription, location_name: "description"))
    CreateLaunchProfileRequest.add_member(:ec2_subnet_ids, Shapes::ShapeRef.new(shape: EC2SubnetIdList, required: true, location_name: "ec2SubnetIds"))
    CreateLaunchProfileRequest.add_member(:launch_profile_protocol_versions, Shapes::ShapeRef.new(shape: LaunchProfileProtocolVersionList, required: true, location_name: "launchProfileProtocolVersions"))
    CreateLaunchProfileRequest.add_member(:name, Shapes::ShapeRef.new(shape: LaunchProfileName, required: true, location_name: "name"))
    CreateLaunchProfileRequest.add_member(:stream_configuration, Shapes::ShapeRef.new(shape: StreamConfigurationCreate, required: true, location_name: "streamConfiguration"))
    CreateLaunchProfileRequest.add_member(:studio_component_ids, Shapes::ShapeRef.new(shape: LaunchProfileStudioComponentIdList, required: true, location_name: "studioComponentIds"))
    CreateLaunchProfileRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "studioId"))
    CreateLaunchProfileRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateLaunchProfileRequest.struct_class = Types::CreateLaunchProfileRequest

    CreateLaunchProfileResponse.add_member(:launch_profile, Shapes::ShapeRef.new(shape: LaunchProfile, location_name: "launchProfile"))
    CreateLaunchProfileResponse.struct_class = Types::CreateLaunchProfileResponse

    CreateStreamingImageInput.add_member(:description, Shapes::ShapeRef.new(shape: StreamingImageDescription, location_name: "description"))
    CreateStreamingImageInput.add_member(:ec2_image_id, Shapes::ShapeRef.new(shape: EC2ImageId, required: true, location_name: "ec2ImageId"))
    CreateStreamingImageInput.add_member(:name, Shapes::ShapeRef.new(shape: StreamingImageName, required: true, location_name: "name"))
    CreateStreamingImageInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateStreamingImageInput.struct_class = Types::CreateStreamingImageInput

    CreateStreamingImageOutput.add_member(:streaming_image, Shapes::ShapeRef.new(shape: StreamingImage, location_name: "streamingImage"))
    CreateStreamingImageOutput.struct_class = Types::CreateStreamingImageOutput

    CreateStreamingImageRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    CreateStreamingImageRequest.add_member(:description, Shapes::ShapeRef.new(shape: StreamingImageDescription, location_name: "description"))
    CreateStreamingImageRequest.add_member(:ec2_image_id, Shapes::ShapeRef.new(shape: EC2ImageId, required: true, location_name: "ec2ImageId"))
    CreateStreamingImageRequest.add_member(:name, Shapes::ShapeRef.new(shape: StreamingImageName, required: true, location_name: "name"))
    CreateStreamingImageRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "studioId"))
    CreateStreamingImageRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateStreamingImageRequest.struct_class = Types::CreateStreamingImageRequest

    CreateStreamingImageResponse.add_member(:streaming_image, Shapes::ShapeRef.new(shape: StreamingImage, location_name: "streamingImage"))
    CreateStreamingImageResponse.struct_class = Types::CreateStreamingImageResponse

    CreateStreamingSessionInput.add_member(:ec2_instance_type, Shapes::ShapeRef.new(shape: StreamingInstanceType, location_name: "ec2InstanceType"))
    CreateStreamingSessionInput.add_member(:launch_profile_id, Shapes::ShapeRef.new(shape: __string, location_name: "launchProfileId"))
    CreateStreamingSessionInput.add_member(:streaming_image_id, Shapes::ShapeRef.new(shape: StreamingImageId, location_name: "streamingImageId"))
    CreateStreamingSessionInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateStreamingSessionInput.struct_class = Types::CreateStreamingSessionInput

    CreateStreamingSessionOutput.add_member(:session, Shapes::ShapeRef.new(shape: StreamingSession, location_name: "session"))
    CreateStreamingSessionOutput.struct_class = Types::CreateStreamingSessionOutput

    CreateStreamingSessionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    CreateStreamingSessionRequest.add_member(:ec2_instance_type, Shapes::ShapeRef.new(shape: StreamingInstanceType, location_name: "ec2InstanceType"))
    CreateStreamingSessionRequest.add_member(:launch_profile_id, Shapes::ShapeRef.new(shape: __string, location_name: "launchProfileId"))
    CreateStreamingSessionRequest.add_member(:streaming_image_id, Shapes::ShapeRef.new(shape: StreamingImageId, location_name: "streamingImageId"))
    CreateStreamingSessionRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "studioId"))
    CreateStreamingSessionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateStreamingSessionRequest.struct_class = Types::CreateStreamingSessionRequest

    CreateStreamingSessionResponse.add_member(:session, Shapes::ShapeRef.new(shape: StreamingSession, location_name: "session"))
    CreateStreamingSessionResponse.struct_class = Types::CreateStreamingSessionResponse

    CreateStreamingSessionStreamInput.add_member(:expiration_in_seconds, Shapes::ShapeRef.new(shape: StreamingSessionStreamExpirationInSeconds, location_name: "expirationInSeconds"))
    CreateStreamingSessionStreamInput.struct_class = Types::CreateStreamingSessionStreamInput

    CreateStreamingSessionStreamOutput.add_member(:stream, Shapes::ShapeRef.new(shape: StreamingSessionStream, location_name: "stream"))
    CreateStreamingSessionStreamOutput.struct_class = Types::CreateStreamingSessionStreamOutput

    CreateStreamingSessionStreamRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    CreateStreamingSessionStreamRequest.add_member(:expiration_in_seconds, Shapes::ShapeRef.new(shape: StreamingSessionStreamExpirationInSeconds, location_name: "expirationInSeconds"))
    CreateStreamingSessionStreamRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "sessionId"))
    CreateStreamingSessionStreamRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "studioId"))
    CreateStreamingSessionStreamRequest.struct_class = Types::CreateStreamingSessionStreamRequest

    CreateStreamingSessionStreamResponse.add_member(:stream, Shapes::ShapeRef.new(shape: StreamingSessionStream, location_name: "stream"))
    CreateStreamingSessionStreamResponse.struct_class = Types::CreateStreamingSessionStreamResponse

    CreateStudioComponentInput.add_member(:configuration, Shapes::ShapeRef.new(shape: StudioComponentConfiguration, location_name: "configuration"))
    CreateStudioComponentInput.add_member(:description, Shapes::ShapeRef.new(shape: StudioComponentDescription, location_name: "description"))
    CreateStudioComponentInput.add_member(:ec2_security_group_ids, Shapes::ShapeRef.new(shape: StudioComponentSecurityGroupIdList, location_name: "ec2SecurityGroupIds"))
    CreateStudioComponentInput.add_member(:initialization_scripts, Shapes::ShapeRef.new(shape: StudioComponentInitializationScriptList, location_name: "initializationScripts"))
    CreateStudioComponentInput.add_member(:name, Shapes::ShapeRef.new(shape: StudioComponentName, required: true, location_name: "name"))
    CreateStudioComponentInput.add_member(:script_parameters, Shapes::ShapeRef.new(shape: StudioComponentScriptParameterKeyValueList, location_name: "scriptParameters"))
    CreateStudioComponentInput.add_member(:subtype, Shapes::ShapeRef.new(shape: StudioComponentSubtype, location_name: "subtype"))
    CreateStudioComponentInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateStudioComponentInput.add_member(:type, Shapes::ShapeRef.new(shape: StudioComponentType, required: true, location_name: "type"))
    CreateStudioComponentInput.struct_class = Types::CreateStudioComponentInput

    CreateStudioComponentOutput.add_member(:studio_component, Shapes::ShapeRef.new(shape: StudioComponent, location_name: "studioComponent"))
    CreateStudioComponentOutput.struct_class = Types::CreateStudioComponentOutput

    CreateStudioComponentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    CreateStudioComponentRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: StudioComponentConfiguration, location_name: "configuration"))
    CreateStudioComponentRequest.add_member(:description, Shapes::ShapeRef.new(shape: StudioComponentDescription, location_name: "description"))
    CreateStudioComponentRequest.add_member(:ec2_security_group_ids, Shapes::ShapeRef.new(shape: StudioComponentSecurityGroupIdList, location_name: "ec2SecurityGroupIds"))
    CreateStudioComponentRequest.add_member(:initialization_scripts, Shapes::ShapeRef.new(shape: StudioComponentInitializationScriptList, location_name: "initializationScripts"))
    CreateStudioComponentRequest.add_member(:name, Shapes::ShapeRef.new(shape: StudioComponentName, required: true, location_name: "name"))
    CreateStudioComponentRequest.add_member(:script_parameters, Shapes::ShapeRef.new(shape: StudioComponentScriptParameterKeyValueList, location_name: "scriptParameters"))
    CreateStudioComponentRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "studioId"))
    CreateStudioComponentRequest.add_member(:subtype, Shapes::ShapeRef.new(shape: StudioComponentSubtype, location_name: "subtype"))
    CreateStudioComponentRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateStudioComponentRequest.add_member(:type, Shapes::ShapeRef.new(shape: StudioComponentType, required: true, location_name: "type"))
    CreateStudioComponentRequest.struct_class = Types::CreateStudioComponentRequest

    CreateStudioComponentResponse.add_member(:studio_component, Shapes::ShapeRef.new(shape: StudioComponent, location_name: "studioComponent"))
    CreateStudioComponentResponse.struct_class = Types::CreateStudioComponentResponse

    CreateStudioInput.add_member(:admin_role_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "adminRoleArn"))
    CreateStudioInput.add_member(:display_name, Shapes::ShapeRef.new(shape: StudioDisplayName, required: true, location_name: "displayName"))
    CreateStudioInput.add_member(:studio_encryption_configuration, Shapes::ShapeRef.new(shape: StudioEncryptionConfiguration, location_name: "studioEncryptionConfiguration"))
    CreateStudioInput.add_member(:studio_name, Shapes::ShapeRef.new(shape: StudioName, required: true, location_name: "studioName"))
    CreateStudioInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateStudioInput.add_member(:user_role_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "userRoleArn"))
    CreateStudioInput.struct_class = Types::CreateStudioInput

    CreateStudioOutput.add_member(:studio, Shapes::ShapeRef.new(shape: Studio, location_name: "studio"))
    CreateStudioOutput.struct_class = Types::CreateStudioOutput

    CreateStudioRequest.add_member(:admin_role_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "adminRoleArn"))
    CreateStudioRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    CreateStudioRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: StudioDisplayName, required: true, location_name: "displayName"))
    CreateStudioRequest.add_member(:studio_encryption_configuration, Shapes::ShapeRef.new(shape: StudioEncryptionConfiguration, location_name: "studioEncryptionConfiguration"))
    CreateStudioRequest.add_member(:studio_name, Shapes::ShapeRef.new(shape: StudioName, required: true, location_name: "studioName"))
    CreateStudioRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateStudioRequest.add_member(:user_role_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "userRoleArn"))
    CreateStudioRequest.struct_class = Types::CreateStudioRequest

    CreateStudioResponse.add_member(:studio, Shapes::ShapeRef.new(shape: Studio, location_name: "studio"))
    CreateStudioResponse.struct_class = Types::CreateStudioResponse

    DeleteLaunchProfileMemberOutput.struct_class = Types::DeleteLaunchProfileMemberOutput

    DeleteLaunchProfileMemberRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    DeleteLaunchProfileMemberRequest.add_member(:launch_profile_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "launchProfileId"))
    DeleteLaunchProfileMemberRequest.add_member(:principal_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "principalId"))
    DeleteLaunchProfileMemberRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "studioId"))
    DeleteLaunchProfileMemberRequest.struct_class = Types::DeleteLaunchProfileMemberRequest

    DeleteLaunchProfileMemberResponse.struct_class = Types::DeleteLaunchProfileMemberResponse

    DeleteLaunchProfileOutput.add_member(:launch_profile, Shapes::ShapeRef.new(shape: LaunchProfile, location_name: "launchProfile"))
    DeleteLaunchProfileOutput.struct_class = Types::DeleteLaunchProfileOutput

    DeleteLaunchProfileRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    DeleteLaunchProfileRequest.add_member(:launch_profile_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "launchProfileId"))
    DeleteLaunchProfileRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "studioId"))
    DeleteLaunchProfileRequest.struct_class = Types::DeleteLaunchProfileRequest

    DeleteLaunchProfileResponse.add_member(:launch_profile, Shapes::ShapeRef.new(shape: LaunchProfile, location_name: "launchProfile"))
    DeleteLaunchProfileResponse.struct_class = Types::DeleteLaunchProfileResponse

    DeleteStreamingImageOutput.add_member(:streaming_image, Shapes::ShapeRef.new(shape: StreamingImage, location_name: "streamingImage"))
    DeleteStreamingImageOutput.struct_class = Types::DeleteStreamingImageOutput

    DeleteStreamingImageRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    DeleteStreamingImageRequest.add_member(:streaming_image_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "streamingImageId"))
    DeleteStreamingImageRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "studioId"))
    DeleteStreamingImageRequest.struct_class = Types::DeleteStreamingImageRequest

    DeleteStreamingImageResponse.add_member(:streaming_image, Shapes::ShapeRef.new(shape: StreamingImage, location_name: "streamingImage"))
    DeleteStreamingImageResponse.struct_class = Types::DeleteStreamingImageResponse

    DeleteStreamingSessionOutput.add_member(:session, Shapes::ShapeRef.new(shape: StreamingSession, location_name: "session"))
    DeleteStreamingSessionOutput.struct_class = Types::DeleteStreamingSessionOutput

    DeleteStreamingSessionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    DeleteStreamingSessionRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "sessionId"))
    DeleteStreamingSessionRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "studioId"))
    DeleteStreamingSessionRequest.struct_class = Types::DeleteStreamingSessionRequest

    DeleteStreamingSessionResponse.add_member(:session, Shapes::ShapeRef.new(shape: StreamingSession, location_name: "session"))
    DeleteStreamingSessionResponse.struct_class = Types::DeleteStreamingSessionResponse

    DeleteStudioComponentOutput.add_member(:studio_component, Shapes::ShapeRef.new(shape: StudioComponent, location_name: "studioComponent"))
    DeleteStudioComponentOutput.struct_class = Types::DeleteStudioComponentOutput

    DeleteStudioComponentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    DeleteStudioComponentRequest.add_member(:studio_component_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "studioComponentId"))
    DeleteStudioComponentRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "studioId"))
    DeleteStudioComponentRequest.struct_class = Types::DeleteStudioComponentRequest

    DeleteStudioComponentResponse.add_member(:studio_component, Shapes::ShapeRef.new(shape: StudioComponent, location_name: "studioComponent"))
    DeleteStudioComponentResponse.struct_class = Types::DeleteStudioComponentResponse

    DeleteStudioMemberOutput.struct_class = Types::DeleteStudioMemberOutput

    DeleteStudioMemberRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    DeleteStudioMemberRequest.add_member(:principal_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "principalId"))
    DeleteStudioMemberRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "studioId"))
    DeleteStudioMemberRequest.struct_class = Types::DeleteStudioMemberRequest

    DeleteStudioMemberResponse.struct_class = Types::DeleteStudioMemberResponse

    DeleteStudioOutput.add_member(:studio, Shapes::ShapeRef.new(shape: Studio, location_name: "studio"))
    DeleteStudioOutput.struct_class = Types::DeleteStudioOutput

    DeleteStudioRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    DeleteStudioRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "studioId"))
    DeleteStudioRequest.struct_class = Types::DeleteStudioRequest

    DeleteStudioResponse.add_member(:studio, Shapes::ShapeRef.new(shape: Studio, location_name: "studio"))
    DeleteStudioResponse.struct_class = Types::DeleteStudioResponse

    EC2SubnetIdList.member = Shapes::ShapeRef.new(shape: EC2SubnetId)

    Empty.struct_class = Types::Empty

    Eula.add_member(:content, Shapes::ShapeRef.new(shape: __string, location_name: "content"))
    Eula.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Eula.add_member(:eula_id, Shapes::ShapeRef.new(shape: EulaId, location_name: "eulaId"))
    Eula.add_member(:name, Shapes::ShapeRef.new(shape: EulaName, location_name: "name"))
    Eula.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    Eula.struct_class = Types::Eula

    EulaAcceptance.add_member(:accepted_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "acceptedAt"))
    EulaAcceptance.add_member(:accepted_by, Shapes::ShapeRef.new(shape: __string, location_name: "acceptedBy"))
    EulaAcceptance.add_member(:acceptee_id, Shapes::ShapeRef.new(shape: __string, location_name: "accepteeId"))
    EulaAcceptance.add_member(:eula_acceptance_id, Shapes::ShapeRef.new(shape: EulaAcceptanceId, location_name: "eulaAcceptanceId"))
    EulaAcceptance.add_member(:eula_id, Shapes::ShapeRef.new(shape: EulaId, location_name: "eulaId"))
    EulaAcceptance.struct_class = Types::EulaAcceptance

    EulaAcceptanceList.member = Shapes::ShapeRef.new(shape: EulaAcceptance)

    EulaIdList.member = Shapes::ShapeRef.new(shape: __string)

    EulaList.member = Shapes::ShapeRef.new(shape: Eula)

    ExceptionContext.key = Shapes::ShapeRef.new(shape: __string)
    ExceptionContext.value = Shapes::ShapeRef.new(shape: __string)

    GetEulaOutput.add_member(:eula, Shapes::ShapeRef.new(shape: Eula, location_name: "eula"))
    GetEulaOutput.struct_class = Types::GetEulaOutput

    GetEulaRequest.add_member(:eula_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "eulaId"))
    GetEulaRequest.struct_class = Types::GetEulaRequest

    GetEulaResponse.add_member(:eula, Shapes::ShapeRef.new(shape: Eula, location_name: "eula"))
    GetEulaResponse.struct_class = Types::GetEulaResponse

    GetLaunchProfileDetailsOutput.add_member(:launch_profile, Shapes::ShapeRef.new(shape: LaunchProfile, location_name: "launchProfile"))
    GetLaunchProfileDetailsOutput.add_member(:streaming_images, Shapes::ShapeRef.new(shape: StreamingImageList, location_name: "streamingImages"))
    GetLaunchProfileDetailsOutput.add_member(:studio_component_summaries, Shapes::ShapeRef.new(shape: StudioComponentSummaryList, location_name: "studioComponentSummaries"))
    GetLaunchProfileDetailsOutput.struct_class = Types::GetLaunchProfileDetailsOutput

    GetLaunchProfileDetailsRequest.add_member(:launch_profile_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "launchProfileId"))
    GetLaunchProfileDetailsRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "studioId"))
    GetLaunchProfileDetailsRequest.struct_class = Types::GetLaunchProfileDetailsRequest

    GetLaunchProfileDetailsResponse.add_member(:launch_profile, Shapes::ShapeRef.new(shape: LaunchProfile, location_name: "launchProfile"))
    GetLaunchProfileDetailsResponse.add_member(:streaming_images, Shapes::ShapeRef.new(shape: StreamingImageList, location_name: "streamingImages"))
    GetLaunchProfileDetailsResponse.add_member(:studio_component_summaries, Shapes::ShapeRef.new(shape: StudioComponentSummaryList, location_name: "studioComponentSummaries"))
    GetLaunchProfileDetailsResponse.struct_class = Types::GetLaunchProfileDetailsResponse

    GetLaunchProfileInitializationOutput.add_member(:launch_profile_initialization, Shapes::ShapeRef.new(shape: LaunchProfileInitialization, location_name: "launchProfileInitialization"))
    GetLaunchProfileInitializationOutput.struct_class = Types::GetLaunchProfileInitializationOutput

    GetLaunchProfileInitializationRequest.add_member(:launch_profile_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "launchProfileId"))
    GetLaunchProfileInitializationRequest.add_member(:launch_profile_protocol_versions, Shapes::ShapeRef.new(shape: multiValueQueryStringList, required: true, location: "querystring", location_name: "launchProfileProtocolVersions"))
    GetLaunchProfileInitializationRequest.add_member(:launch_purpose, Shapes::ShapeRef.new(shape: __string, required: true, location: "querystring", location_name: "launchPurpose"))
    GetLaunchProfileInitializationRequest.add_member(:platform, Shapes::ShapeRef.new(shape: __string, required: true, location: "querystring", location_name: "platform"))
    GetLaunchProfileInitializationRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "studioId"))
    GetLaunchProfileInitializationRequest.struct_class = Types::GetLaunchProfileInitializationRequest

    GetLaunchProfileInitializationResponse.add_member(:launch_profile_initialization, Shapes::ShapeRef.new(shape: LaunchProfileInitialization, location_name: "launchProfileInitialization"))
    GetLaunchProfileInitializationResponse.struct_class = Types::GetLaunchProfileInitializationResponse

    GetLaunchProfileMemberOutput.add_member(:member, Shapes::ShapeRef.new(shape: LaunchProfileMembership, location_name: "member"))
    GetLaunchProfileMemberOutput.struct_class = Types::GetLaunchProfileMemberOutput

    GetLaunchProfileMemberRequest.add_member(:launch_profile_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "launchProfileId"))
    GetLaunchProfileMemberRequest.add_member(:principal_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "principalId"))
    GetLaunchProfileMemberRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "studioId"))
    GetLaunchProfileMemberRequest.struct_class = Types::GetLaunchProfileMemberRequest

    GetLaunchProfileMemberResponse.add_member(:member, Shapes::ShapeRef.new(shape: LaunchProfileMembership, location_name: "member"))
    GetLaunchProfileMemberResponse.struct_class = Types::GetLaunchProfileMemberResponse

    GetLaunchProfileOutput.add_member(:launch_profile, Shapes::ShapeRef.new(shape: LaunchProfile, location_name: "launchProfile"))
    GetLaunchProfileOutput.struct_class = Types::GetLaunchProfileOutput

    GetLaunchProfileRequest.add_member(:launch_profile_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "launchProfileId"))
    GetLaunchProfileRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "studioId"))
    GetLaunchProfileRequest.struct_class = Types::GetLaunchProfileRequest

    GetLaunchProfileResponse.add_member(:launch_profile, Shapes::ShapeRef.new(shape: LaunchProfile, location_name: "launchProfile"))
    GetLaunchProfileResponse.struct_class = Types::GetLaunchProfileResponse

    GetStreamingImageOutput.add_member(:streaming_image, Shapes::ShapeRef.new(shape: StreamingImage, location_name: "streamingImage"))
    GetStreamingImageOutput.struct_class = Types::GetStreamingImageOutput

    GetStreamingImageRequest.add_member(:streaming_image_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "streamingImageId"))
    GetStreamingImageRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "studioId"))
    GetStreamingImageRequest.struct_class = Types::GetStreamingImageRequest

    GetStreamingImageResponse.add_member(:streaming_image, Shapes::ShapeRef.new(shape: StreamingImage, location_name: "streamingImage"))
    GetStreamingImageResponse.struct_class = Types::GetStreamingImageResponse

    GetStreamingSessionOutput.add_member(:session, Shapes::ShapeRef.new(shape: StreamingSession, location_name: "session"))
    GetStreamingSessionOutput.struct_class = Types::GetStreamingSessionOutput

    GetStreamingSessionRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "sessionId"))
    GetStreamingSessionRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "studioId"))
    GetStreamingSessionRequest.struct_class = Types::GetStreamingSessionRequest

    GetStreamingSessionResponse.add_member(:session, Shapes::ShapeRef.new(shape: StreamingSession, location_name: "session"))
    GetStreamingSessionResponse.struct_class = Types::GetStreamingSessionResponse

    GetStreamingSessionStreamOutput.add_member(:stream, Shapes::ShapeRef.new(shape: StreamingSessionStream, location_name: "stream"))
    GetStreamingSessionStreamOutput.struct_class = Types::GetStreamingSessionStreamOutput

    GetStreamingSessionStreamRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "sessionId"))
    GetStreamingSessionStreamRequest.add_member(:stream_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "streamId"))
    GetStreamingSessionStreamRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "studioId"))
    GetStreamingSessionStreamRequest.struct_class = Types::GetStreamingSessionStreamRequest

    GetStreamingSessionStreamResponse.add_member(:stream, Shapes::ShapeRef.new(shape: StreamingSessionStream, location_name: "stream"))
    GetStreamingSessionStreamResponse.struct_class = Types::GetStreamingSessionStreamResponse

    GetStudioComponentOutput.add_member(:studio_component, Shapes::ShapeRef.new(shape: StudioComponent, location_name: "studioComponent"))
    GetStudioComponentOutput.struct_class = Types::GetStudioComponentOutput

    GetStudioComponentRequest.add_member(:studio_component_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "studioComponentId"))
    GetStudioComponentRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "studioId"))
    GetStudioComponentRequest.struct_class = Types::GetStudioComponentRequest

    GetStudioComponentResponse.add_member(:studio_component, Shapes::ShapeRef.new(shape: StudioComponent, location_name: "studioComponent"))
    GetStudioComponentResponse.struct_class = Types::GetStudioComponentResponse

    GetStudioMemberOutput.add_member(:member, Shapes::ShapeRef.new(shape: StudioMembership, location_name: "member"))
    GetStudioMemberOutput.struct_class = Types::GetStudioMemberOutput

    GetStudioMemberRequest.add_member(:principal_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "principalId"))
    GetStudioMemberRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "studioId"))
    GetStudioMemberRequest.struct_class = Types::GetStudioMemberRequest

    GetStudioMemberResponse.add_member(:member, Shapes::ShapeRef.new(shape: StudioMembership, location_name: "member"))
    GetStudioMemberResponse.struct_class = Types::GetStudioMemberResponse

    GetStudioOutput.add_member(:studio, Shapes::ShapeRef.new(shape: Studio, location_name: "studio"))
    GetStudioOutput.struct_class = Types::GetStudioOutput

    GetStudioRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "studioId"))
    GetStudioRequest.struct_class = Types::GetStudioRequest

    GetStudioResponse.add_member(:studio, Shapes::ShapeRef.new(shape: Studio, location_name: "studio"))
    GetStudioResponse.struct_class = Types::GetStudioResponse

    InternalServerErrorException.add_member(:code, Shapes::ShapeRef.new(shape: __string, location_name: "code"))
    InternalServerErrorException.add_member(:context, Shapes::ShapeRef.new(shape: ExceptionContext, location_name: "context"))
    InternalServerErrorException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    InternalServerErrorException.struct_class = Types::InternalServerErrorException

    InternalServerException.add_member(:code, Shapes::ShapeRef.new(shape: __string, location_name: "code"))
    InternalServerException.add_member(:context, Shapes::ShapeRef.new(shape: ExceptionContext, location_name: "context"))
    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    LaunchProfile.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    LaunchProfile.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    LaunchProfile.add_member(:created_by, Shapes::ShapeRef.new(shape: __string, location_name: "createdBy"))
    LaunchProfile.add_member(:description, Shapes::ShapeRef.new(shape: LaunchProfileDescription, location_name: "description"))
    LaunchProfile.add_member(:ec2_subnet_ids, Shapes::ShapeRef.new(shape: EC2SubnetIdList, location_name: "ec2SubnetIds"))
    LaunchProfile.add_member(:launch_profile_id, Shapes::ShapeRef.new(shape: LaunchProfileId, location_name: "launchProfileId"))
    LaunchProfile.add_member(:launch_profile_protocol_versions, Shapes::ShapeRef.new(shape: LaunchProfileProtocolVersionList, location_name: "launchProfileProtocolVersions"))
    LaunchProfile.add_member(:name, Shapes::ShapeRef.new(shape: LaunchProfileName, location_name: "name"))
    LaunchProfile.add_member(:state, Shapes::ShapeRef.new(shape: LaunchProfileState, location_name: "state"))
    LaunchProfile.add_member(:status_code, Shapes::ShapeRef.new(shape: LaunchProfileStatusCode, location_name: "statusCode"))
    LaunchProfile.add_member(:status_message, Shapes::ShapeRef.new(shape: __string, location_name: "statusMessage"))
    LaunchProfile.add_member(:stream_configuration, Shapes::ShapeRef.new(shape: StreamConfiguration, location_name: "streamConfiguration"))
    LaunchProfile.add_member(:studio_component_ids, Shapes::ShapeRef.new(shape: LaunchProfileStudioComponentIdList, location_name: "studioComponentIds"))
    LaunchProfile.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    LaunchProfile.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    LaunchProfile.add_member(:updated_by, Shapes::ShapeRef.new(shape: __string, location_name: "updatedBy"))
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
    LaunchProfileInitializationActiveDirectory.add_member(:directory_name, Shapes::ShapeRef.new(shape: __string, location_name: "directoryName"))
    LaunchProfileInitializationActiveDirectory.add_member(:dns_ip_addresses, Shapes::ShapeRef.new(shape: ActiveDirectoryDnsIpAddressList, location_name: "dnsIpAddresses"))
    LaunchProfileInitializationActiveDirectory.add_member(:organizational_unit_distinguished_name, Shapes::ShapeRef.new(shape: ActiveDirectoryOrganizationalUnitDistinguishedName, location_name: "organizationalUnitDistinguishedName"))
    LaunchProfileInitializationActiveDirectory.add_member(:studio_component_id, Shapes::ShapeRef.new(shape: StudioComponentId, location_name: "studioComponentId"))
    LaunchProfileInitializationActiveDirectory.add_member(:studio_component_name, Shapes::ShapeRef.new(shape: StudioComponentName, location_name: "studioComponentName"))
    LaunchProfileInitializationActiveDirectory.struct_class = Types::LaunchProfileInitializationActiveDirectory

    LaunchProfileInitializationScript.add_member(:script, Shapes::ShapeRef.new(shape: StudioComponentInitializationScriptContent, location_name: "script"))
    LaunchProfileInitializationScript.add_member(:studio_component_id, Shapes::ShapeRef.new(shape: StudioComponentId, location_name: "studioComponentId"))
    LaunchProfileInitializationScript.add_member(:studio_component_name, Shapes::ShapeRef.new(shape: StudioComponentName, location_name: "studioComponentName"))
    LaunchProfileInitializationScript.struct_class = Types::LaunchProfileInitializationScript

    LaunchProfileInitializationScriptList.member = Shapes::ShapeRef.new(shape: LaunchProfileInitializationScript)

    LaunchProfileList.member = Shapes::ShapeRef.new(shape: LaunchProfile)

    LaunchProfileMembership.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: __string, location_name: "identityStoreId"))
    LaunchProfileMembership.add_member(:persona, Shapes::ShapeRef.new(shape: LaunchProfilePersona, location_name: "persona"))
    LaunchProfileMembership.add_member(:principal_id, Shapes::ShapeRef.new(shape: __string, location_name: "principalId"))
    LaunchProfileMembership.struct_class = Types::LaunchProfileMembership

    LaunchProfileMembershipList.member = Shapes::ShapeRef.new(shape: LaunchProfileMembership)

    LaunchProfileProtocolVersionList.member = Shapes::ShapeRef.new(shape: LaunchProfileProtocolVersion)

    LaunchProfileSecurityGroupIdList.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    LaunchProfileStudioComponentIdList.member = Shapes::ShapeRef.new(shape: __string)

    LicenseServiceConfiguration.add_member(:endpoint, Shapes::ShapeRef.new(shape: __string, location_name: "endpoint"))
    LicenseServiceConfiguration.struct_class = Types::LicenseServiceConfiguration

    ListEulaAcceptancesOutput.add_member(:eula_acceptances, Shapes::ShapeRef.new(shape: EulaAcceptanceList, location_name: "eulaAcceptances"))
    ListEulaAcceptancesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListEulaAcceptancesOutput.struct_class = Types::ListEulaAcceptancesOutput

    ListEulaAcceptancesRequest.add_member(:eula_ids, Shapes::ShapeRef.new(shape: multiValueQueryStringList, location: "querystring", location_name: "eulaIds"))
    ListEulaAcceptancesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListEulaAcceptancesRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "studioId"))
    ListEulaAcceptancesRequest.struct_class = Types::ListEulaAcceptancesRequest

    ListEulaAcceptancesResponse.add_member(:eula_acceptances, Shapes::ShapeRef.new(shape: EulaAcceptanceList, location_name: "eulaAcceptances"))
    ListEulaAcceptancesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListEulaAcceptancesResponse.struct_class = Types::ListEulaAcceptancesResponse

    ListEulasOutput.add_member(:eulas, Shapes::ShapeRef.new(shape: EulaList, location_name: "eulas"))
    ListEulasOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListEulasOutput.struct_class = Types::ListEulasOutput

    ListEulasRequest.add_member(:eula_ids, Shapes::ShapeRef.new(shape: multiValueQueryStringList, location: "querystring", location_name: "eulaIds"))
    ListEulasRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListEulasRequest.struct_class = Types::ListEulasRequest

    ListEulasResponse.add_member(:eulas, Shapes::ShapeRef.new(shape: EulaList, location_name: "eulas"))
    ListEulasResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListEulasResponse.struct_class = Types::ListEulasResponse

    ListLaunchProfileMembersOutput.add_member(:members, Shapes::ShapeRef.new(shape: LaunchProfileMembershipList, location_name: "members"))
    ListLaunchProfileMembersOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListLaunchProfileMembersOutput.struct_class = Types::ListLaunchProfileMembersOutput

    ListLaunchProfileMembersRequest.add_member(:launch_profile_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "launchProfileId"))
    ListLaunchProfileMembersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListLaunchProfileMembersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListLaunchProfileMembersRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "studioId"))
    ListLaunchProfileMembersRequest.struct_class = Types::ListLaunchProfileMembersRequest

    ListLaunchProfileMembersResponse.add_member(:members, Shapes::ShapeRef.new(shape: LaunchProfileMembershipList, location_name: "members"))
    ListLaunchProfileMembersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListLaunchProfileMembersResponse.struct_class = Types::ListLaunchProfileMembersResponse

    ListLaunchProfilesOutput.add_member(:launch_profiles, Shapes::ShapeRef.new(shape: LaunchProfileList, location_name: "launchProfiles"))
    ListLaunchProfilesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListLaunchProfilesOutput.struct_class = Types::ListLaunchProfilesOutput

    ListLaunchProfilesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListLaunchProfilesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListLaunchProfilesRequest.add_member(:principal_id, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "principalId"))
    ListLaunchProfilesRequest.add_member(:states, Shapes::ShapeRef.new(shape: multiValueQueryStringList, location: "querystring", location_name: "states"))
    ListLaunchProfilesRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "studioId"))
    ListLaunchProfilesRequest.struct_class = Types::ListLaunchProfilesRequest

    ListLaunchProfilesResponse.add_member(:launch_profiles, Shapes::ShapeRef.new(shape: LaunchProfileList, location_name: "launchProfiles"))
    ListLaunchProfilesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListLaunchProfilesResponse.struct_class = Types::ListLaunchProfilesResponse

    ListStreamingImagesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListStreamingImagesOutput.add_member(:streaming_images, Shapes::ShapeRef.new(shape: StreamingImageList, location_name: "streamingImages"))
    ListStreamingImagesOutput.struct_class = Types::ListStreamingImagesOutput

    ListStreamingImagesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListStreamingImagesRequest.add_member(:owner, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "owner"))
    ListStreamingImagesRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "studioId"))
    ListStreamingImagesRequest.struct_class = Types::ListStreamingImagesRequest

    ListStreamingImagesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListStreamingImagesResponse.add_member(:streaming_images, Shapes::ShapeRef.new(shape: StreamingImageList, location_name: "streamingImages"))
    ListStreamingImagesResponse.struct_class = Types::ListStreamingImagesResponse

    ListStreamingSessionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListStreamingSessionsOutput.add_member(:sessions, Shapes::ShapeRef.new(shape: StreamingSessionList, location_name: "sessions"))
    ListStreamingSessionsOutput.struct_class = Types::ListStreamingSessionsOutput

    ListStreamingSessionsRequest.add_member(:created_by, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "createdBy"))
    ListStreamingSessionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListStreamingSessionsRequest.add_member(:session_ids, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "sessionIds"))
    ListStreamingSessionsRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "studioId"))
    ListStreamingSessionsRequest.struct_class = Types::ListStreamingSessionsRequest

    ListStreamingSessionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListStreamingSessionsResponse.add_member(:sessions, Shapes::ShapeRef.new(shape: StreamingSessionList, location_name: "sessions"))
    ListStreamingSessionsResponse.struct_class = Types::ListStreamingSessionsResponse

    ListStudioComponentsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListStudioComponentsOutput.add_member(:studio_components, Shapes::ShapeRef.new(shape: StudioComponentList, location_name: "studioComponents"))
    ListStudioComponentsOutput.struct_class = Types::ListStudioComponentsOutput

    ListStudioComponentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListStudioComponentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListStudioComponentsRequest.add_member(:states, Shapes::ShapeRef.new(shape: multiValueQueryStringList, location: "querystring", location_name: "states"))
    ListStudioComponentsRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "studioId"))
    ListStudioComponentsRequest.add_member(:types, Shapes::ShapeRef.new(shape: multiValueQueryStringList, location: "querystring", location_name: "types"))
    ListStudioComponentsRequest.struct_class = Types::ListStudioComponentsRequest

    ListStudioComponentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListStudioComponentsResponse.add_member(:studio_components, Shapes::ShapeRef.new(shape: StudioComponentList, location_name: "studioComponents"))
    ListStudioComponentsResponse.struct_class = Types::ListStudioComponentsResponse

    ListStudioMembersOutput.add_member(:members, Shapes::ShapeRef.new(shape: StudioMembershipList, location_name: "members"))
    ListStudioMembersOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListStudioMembersOutput.struct_class = Types::ListStudioMembersOutput

    ListStudioMembersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListStudioMembersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListStudioMembersRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "studioId"))
    ListStudioMembersRequest.struct_class = Types::ListStudioMembersRequest

    ListStudioMembersResponse.add_member(:members, Shapes::ShapeRef.new(shape: StudioMembershipList, location_name: "members"))
    ListStudioMembersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListStudioMembersResponse.struct_class = Types::ListStudioMembersResponse

    ListStudiosOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListStudiosOutput.add_member(:studios, Shapes::ShapeRef.new(shape: StudioList, location_name: "studios"))
    ListStudiosOutput.struct_class = Types::ListStudiosOutput

    ListStudiosRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListStudiosRequest.struct_class = Types::ListStudiosRequest

    ListStudiosResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListStudiosResponse.add_member(:studios, Shapes::ShapeRef.new(shape: StudioList, location_name: "studios"))
    ListStudiosResponse.struct_class = Types::ListStudiosResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTagsOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ListTagsOutput.struct_class = Types::ListTagsOutput

    NewLaunchProfileMember.add_member(:persona, Shapes::ShapeRef.new(shape: LaunchProfilePersona, required: true, location_name: "persona"))
    NewLaunchProfileMember.add_member(:principal_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "principalId"))
    NewLaunchProfileMember.struct_class = Types::NewLaunchProfileMember

    NewLaunchProfileMemberList.member = Shapes::ShapeRef.new(shape: NewLaunchProfileMember)

    NewStudioMember.add_member(:persona, Shapes::ShapeRef.new(shape: StudioPersona, required: true, location_name: "persona"))
    NewStudioMember.add_member(:principal_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "principalId"))
    NewStudioMember.struct_class = Types::NewStudioMember

    NewStudioMemberList.member = Shapes::ShapeRef.new(shape: NewStudioMember)

    PutLaunchProfileMembersInput.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "identityStoreId"))
    PutLaunchProfileMembersInput.add_member(:members, Shapes::ShapeRef.new(shape: NewLaunchProfileMemberList, required: true, location_name: "members"))
    PutLaunchProfileMembersInput.struct_class = Types::PutLaunchProfileMembersInput

    PutLaunchProfileMembersRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    PutLaunchProfileMembersRequest.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "identityStoreId"))
    PutLaunchProfileMembersRequest.add_member(:launch_profile_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "launchProfileId"))
    PutLaunchProfileMembersRequest.add_member(:members, Shapes::ShapeRef.new(shape: NewLaunchProfileMemberList, required: true, location_name: "members"))
    PutLaunchProfileMembersRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "studioId"))
    PutLaunchProfileMembersRequest.struct_class = Types::PutLaunchProfileMembersRequest

    PutLaunchProfileMembersResponse.struct_class = Types::PutLaunchProfileMembersResponse

    PutStudioMembersInput.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "identityStoreId"))
    PutStudioMembersInput.add_member(:members, Shapes::ShapeRef.new(shape: NewStudioMemberList, required: true, location_name: "members"))
    PutStudioMembersInput.struct_class = Types::PutStudioMembersInput

    PutStudioMembersOutput.struct_class = Types::PutStudioMembersOutput

    PutStudioMembersRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    PutStudioMembersRequest.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "identityStoreId"))
    PutStudioMembersRequest.add_member(:members, Shapes::ShapeRef.new(shape: NewStudioMemberList, required: true, location_name: "members"))
    PutStudioMembersRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "studioId"))
    PutStudioMembersRequest.struct_class = Types::PutStudioMembersRequest

    PutStudioMembersResponse.struct_class = Types::PutStudioMembersResponse

    ResourceNotFoundException.add_member(:code, Shapes::ShapeRef.new(shape: __string, location_name: "code"))
    ResourceNotFoundException.add_member(:context, Shapes::ShapeRef.new(shape: ExceptionContext, location_name: "context"))
    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ScriptParameterKeyValue.add_member(:key, Shapes::ShapeRef.new(shape: ScriptParameterKey, location_name: "key"))
    ScriptParameterKeyValue.add_member(:value, Shapes::ShapeRef.new(shape: ScriptParameterValue, location_name: "value"))
    ScriptParameterKeyValue.struct_class = Types::ScriptParameterKeyValue

    ServiceQuotaExceededException.add_member(:code, Shapes::ShapeRef.new(shape: __string, location_name: "code"))
    ServiceQuotaExceededException.add_member(:context, Shapes::ShapeRef.new(shape: ExceptionContext, location_name: "context"))
    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SharedFileSystemConfiguration.add_member(:endpoint, Shapes::ShapeRef.new(shape: __string, location_name: "endpoint"))
    SharedFileSystemConfiguration.add_member(:file_system_id, Shapes::ShapeRef.new(shape: __string, location_name: "fileSystemId"))
    SharedFileSystemConfiguration.add_member(:linux_mount_point, Shapes::ShapeRef.new(shape: LinuxMountPoint, location_name: "linuxMountPoint"))
    SharedFileSystemConfiguration.add_member(:share_name, Shapes::ShapeRef.new(shape: __string, location_name: "shareName"))
    SharedFileSystemConfiguration.add_member(:windows_mount_drive, Shapes::ShapeRef.new(shape: WindowsMountDrive, location_name: "windowsMountDrive"))
    SharedFileSystemConfiguration.struct_class = Types::SharedFileSystemConfiguration

    StartStudioSSOConfigurationRepairOutput.add_member(:studio, Shapes::ShapeRef.new(shape: Studio, location_name: "studio"))
    StartStudioSSOConfigurationRepairOutput.struct_class = Types::StartStudioSSOConfigurationRepairOutput

    StartStudioSSOConfigurationRepairRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    StartStudioSSOConfigurationRepairRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "studioId"))
    StartStudioSSOConfigurationRepairRequest.struct_class = Types::StartStudioSSOConfigurationRepairRequest

    StartStudioSSOConfigurationRepairResponse.add_member(:studio, Shapes::ShapeRef.new(shape: Studio, location_name: "studio"))
    StartStudioSSOConfigurationRepairResponse.struct_class = Types::StartStudioSSOConfigurationRepairResponse

    StreamConfiguration.add_member(:clipboard_mode, Shapes::ShapeRef.new(shape: StreamingClipboardMode, location_name: "clipboardMode"))
    StreamConfiguration.add_member(:ec2_instance_types, Shapes::ShapeRef.new(shape: StreamingInstanceTypeList, location_name: "ec2InstanceTypes"))
    StreamConfiguration.add_member(:max_session_length_in_minutes, Shapes::ShapeRef.new(shape: StreamConfigurationMaxSessionLengthInMinutes, location_name: "maxSessionLengthInMinutes"))
    StreamConfiguration.add_member(:streaming_image_ids, Shapes::ShapeRef.new(shape: StreamingImageIdList, location_name: "streamingImageIds"))
    StreamConfiguration.struct_class = Types::StreamConfiguration

    StreamConfigurationCreate.add_member(:clipboard_mode, Shapes::ShapeRef.new(shape: StreamingClipboardMode, required: true, location_name: "clipboardMode"))
    StreamConfigurationCreate.add_member(:ec2_instance_types, Shapes::ShapeRef.new(shape: StreamingInstanceTypeList, required: true, location_name: "ec2InstanceTypes"))
    StreamConfigurationCreate.add_member(:max_session_length_in_minutes, Shapes::ShapeRef.new(shape: StreamConfigurationMaxSessionLengthInMinutes, location_name: "maxSessionLengthInMinutes"))
    StreamConfigurationCreate.add_member(:streaming_image_ids, Shapes::ShapeRef.new(shape: StreamingImageIdList, required: true, location_name: "streamingImageIds"))
    StreamConfigurationCreate.struct_class = Types::StreamConfigurationCreate

    StreamingImage.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    StreamingImage.add_member(:description, Shapes::ShapeRef.new(shape: StreamingImageDescription, location_name: "description"))
    StreamingImage.add_member(:ec2_image_id, Shapes::ShapeRef.new(shape: EC2ImageId, location_name: "ec2ImageId"))
    StreamingImage.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: StreamingImageEncryptionConfiguration, location_name: "encryptionConfiguration"))
    StreamingImage.add_member(:eula_ids, Shapes::ShapeRef.new(shape: EulaIdList, location_name: "eulaIds"))
    StreamingImage.add_member(:name, Shapes::ShapeRef.new(shape: StreamingImageName, location_name: "name"))
    StreamingImage.add_member(:owner, Shapes::ShapeRef.new(shape: StreamingImageOwner, location_name: "owner"))
    StreamingImage.add_member(:platform, Shapes::ShapeRef.new(shape: StreamingImagePlatform, location_name: "platform"))
    StreamingImage.add_member(:state, Shapes::ShapeRef.new(shape: StreamingImageState, location_name: "state"))
    StreamingImage.add_member(:status_code, Shapes::ShapeRef.new(shape: StreamingImageStatusCode, location_name: "statusCode"))
    StreamingImage.add_member(:status_message, Shapes::ShapeRef.new(shape: __string, location_name: "statusMessage"))
    StreamingImage.add_member(:streaming_image_id, Shapes::ShapeRef.new(shape: StreamingImageId, location_name: "streamingImageId"))
    StreamingImage.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    StreamingImage.struct_class = Types::StreamingImage

    StreamingImageEncryptionConfiguration.add_member(:key_arn, Shapes::ShapeRef.new(shape: StreamingImageEncryptionConfigurationKeyArn, location_name: "keyArn"))
    StreamingImageEncryptionConfiguration.add_member(:key_type, Shapes::ShapeRef.new(shape: StreamingImageEncryptionConfigurationKeyType, required: true, location_name: "keyType"))
    StreamingImageEncryptionConfiguration.struct_class = Types::StreamingImageEncryptionConfiguration

    StreamingImageIdList.member = Shapes::ShapeRef.new(shape: StreamingImageId)

    StreamingImageList.member = Shapes::ShapeRef.new(shape: StreamingImage)

    StreamingInstanceTypeList.member = Shapes::ShapeRef.new(shape: StreamingInstanceType)

    StreamingSession.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    StreamingSession.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    StreamingSession.add_member(:created_by, Shapes::ShapeRef.new(shape: __string, location_name: "createdBy"))
    StreamingSession.add_member(:ec2_instance_type, Shapes::ShapeRef.new(shape: __string, location_name: "ec2InstanceType"))
    StreamingSession.add_member(:launch_profile_id, Shapes::ShapeRef.new(shape: __string, location_name: "launchProfileId"))
    StreamingSession.add_member(:session_id, Shapes::ShapeRef.new(shape: StreamingImageSessionId, location_name: "sessionId"))
    StreamingSession.add_member(:state, Shapes::ShapeRef.new(shape: StreamingSessionState, location_name: "state"))
    StreamingSession.add_member(:status_code, Shapes::ShapeRef.new(shape: StreamingSessionStatusCode, location_name: "statusCode"))
    StreamingSession.add_member(:status_message, Shapes::ShapeRef.new(shape: __string, location_name: "statusMessage"))
    StreamingSession.add_member(:streaming_image_id, Shapes::ShapeRef.new(shape: StreamingImageId, location_name: "streamingImageId"))
    StreamingSession.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    StreamingSession.add_member(:terminate_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "terminateAt"))
    StreamingSession.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    StreamingSession.add_member(:updated_by, Shapes::ShapeRef.new(shape: __string, location_name: "updatedBy"))
    StreamingSession.struct_class = Types::StreamingSession

    StreamingSessionList.member = Shapes::ShapeRef.new(shape: StreamingSession)

    StreamingSessionStream.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    StreamingSessionStream.add_member(:created_by, Shapes::ShapeRef.new(shape: __string, location_name: "createdBy"))
    StreamingSessionStream.add_member(:expires_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "expiresAt"))
    StreamingSessionStream.add_member(:state, Shapes::ShapeRef.new(shape: StreamingSessionStreamState, location_name: "state"))
    StreamingSessionStream.add_member(:status_code, Shapes::ShapeRef.new(shape: StreamingSessionStreamStatusCode, location_name: "statusCode"))
    StreamingSessionStream.add_member(:stream_id, Shapes::ShapeRef.new(shape: __string, location_name: "streamId"))
    StreamingSessionStream.add_member(:url, Shapes::ShapeRef.new(shape: __string, location_name: "url"))
    StreamingSessionStream.struct_class = Types::StreamingSessionStream

    Studio.add_member(:admin_role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "adminRoleArn"))
    Studio.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    Studio.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Studio.add_member(:display_name, Shapes::ShapeRef.new(shape: StudioDisplayName, location_name: "displayName"))
    Studio.add_member(:home_region, Shapes::ShapeRef.new(shape: Region, location_name: "homeRegion"))
    Studio.add_member(:sso_client_id, Shapes::ShapeRef.new(shape: __string, location_name: "ssoClientId"))
    Studio.add_member(:state, Shapes::ShapeRef.new(shape: StudioState, location_name: "state"))
    Studio.add_member(:status_code, Shapes::ShapeRef.new(shape: StudioStatusCode, location_name: "statusCode"))
    Studio.add_member(:status_message, Shapes::ShapeRef.new(shape: __string, location_name: "statusMessage"))
    Studio.add_member(:studio_encryption_configuration, Shapes::ShapeRef.new(shape: StudioEncryptionConfiguration, location_name: "studioEncryptionConfiguration"))
    Studio.add_member(:studio_id, Shapes::ShapeRef.new(shape: __string, location_name: "studioId"))
    Studio.add_member(:studio_name, Shapes::ShapeRef.new(shape: StudioName, location_name: "studioName"))
    Studio.add_member(:studio_url, Shapes::ShapeRef.new(shape: __string, location_name: "studioUrl"))
    Studio.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    Studio.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    Studio.add_member(:user_role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "userRoleArn"))
    Studio.struct_class = Types::Studio

    StudioComponent.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    StudioComponent.add_member(:configuration, Shapes::ShapeRef.new(shape: StudioComponentConfiguration, location_name: "configuration"))
    StudioComponent.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    StudioComponent.add_member(:created_by, Shapes::ShapeRef.new(shape: __string, location_name: "createdBy"))
    StudioComponent.add_member(:description, Shapes::ShapeRef.new(shape: StudioComponentDescription, location_name: "description"))
    StudioComponent.add_member(:ec2_security_group_ids, Shapes::ShapeRef.new(shape: StudioComponentSecurityGroupIdList, location_name: "ec2SecurityGroupIds"))
    StudioComponent.add_member(:initialization_scripts, Shapes::ShapeRef.new(shape: StudioComponentInitializationScriptList, location_name: "initializationScripts"))
    StudioComponent.add_member(:name, Shapes::ShapeRef.new(shape: StudioComponentName, location_name: "name"))
    StudioComponent.add_member(:script_parameters, Shapes::ShapeRef.new(shape: StudioComponentScriptParameterKeyValueList, location_name: "scriptParameters"))
    StudioComponent.add_member(:state, Shapes::ShapeRef.new(shape: StudioComponentState, location_name: "state"))
    StudioComponent.add_member(:status_code, Shapes::ShapeRef.new(shape: StudioComponentStatusCode, location_name: "statusCode"))
    StudioComponent.add_member(:status_message, Shapes::ShapeRef.new(shape: __string, location_name: "statusMessage"))
    StudioComponent.add_member(:studio_component_id, Shapes::ShapeRef.new(shape: StudioComponentId, location_name: "studioComponentId"))
    StudioComponent.add_member(:subtype, Shapes::ShapeRef.new(shape: StudioComponentSubtype, location_name: "subtype"))
    StudioComponent.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    StudioComponent.add_member(:type, Shapes::ShapeRef.new(shape: StudioComponentType, location_name: "type"))
    StudioComponent.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    StudioComponent.add_member(:updated_by, Shapes::ShapeRef.new(shape: __string, location_name: "updatedBy"))
    StudioComponent.struct_class = Types::StudioComponent

    StudioComponentConfiguration.add_member(:active_directory_configuration, Shapes::ShapeRef.new(shape: ActiveDirectoryConfiguration, location_name: "activeDirectoryConfiguration"))
    StudioComponentConfiguration.add_member(:compute_farm_configuration, Shapes::ShapeRef.new(shape: ComputeFarmConfiguration, location_name: "computeFarmConfiguration"))
    StudioComponentConfiguration.add_member(:license_service_configuration, Shapes::ShapeRef.new(shape: LicenseServiceConfiguration, location_name: "licenseServiceConfiguration"))
    StudioComponentConfiguration.add_member(:shared_file_system_configuration, Shapes::ShapeRef.new(shape: SharedFileSystemConfiguration, location_name: "sharedFileSystemConfiguration"))
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

    StudioComponentSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    StudioComponentSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: __string, location_name: "createdBy"))
    StudioComponentSummary.add_member(:description, Shapes::ShapeRef.new(shape: StudioComponentDescription, location_name: "description"))
    StudioComponentSummary.add_member(:name, Shapes::ShapeRef.new(shape: StudioComponentName, location_name: "name"))
    StudioComponentSummary.add_member(:studio_component_id, Shapes::ShapeRef.new(shape: StudioComponentId, location_name: "studioComponentId"))
    StudioComponentSummary.add_member(:subtype, Shapes::ShapeRef.new(shape: StudioComponentSubtype, location_name: "subtype"))
    StudioComponentSummary.add_member(:type, Shapes::ShapeRef.new(shape: StudioComponentType, location_name: "type"))
    StudioComponentSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    StudioComponentSummary.add_member(:updated_by, Shapes::ShapeRef.new(shape: __string, location_name: "updatedBy"))
    StudioComponentSummary.struct_class = Types::StudioComponentSummary

    StudioComponentSummaryList.member = Shapes::ShapeRef.new(shape: StudioComponentSummary)

    StudioEncryptionConfiguration.add_member(:key_arn, Shapes::ShapeRef.new(shape: StudioEncryptionConfigurationKeyArn, location_name: "keyArn"))
    StudioEncryptionConfiguration.add_member(:key_type, Shapes::ShapeRef.new(shape: StudioEncryptionConfigurationKeyType, required: true, location_name: "keyType"))
    StudioEncryptionConfiguration.struct_class = Types::StudioEncryptionConfiguration

    StudioList.member = Shapes::ShapeRef.new(shape: Studio)

    StudioMembership.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: __string, location_name: "identityStoreId"))
    StudioMembership.add_member(:persona, Shapes::ShapeRef.new(shape: StudioPersona, location_name: "persona"))
    StudioMembership.add_member(:principal_id, Shapes::ShapeRef.new(shape: __string, location_name: "principalId"))
    StudioMembership.struct_class = Types::StudioMembership

    StudioMembershipList.member = Shapes::ShapeRef.new(shape: StudioMembership)

    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.key = Shapes::ShapeRef.new(shape: __string)
    Tags.value = Shapes::ShapeRef.new(shape: __string)

    ThrottlingException.add_member(:code, Shapes::ShapeRef.new(shape: __string, location_name: "code"))
    ThrottlingException.add_member(:context, Shapes::ShapeRef.new(shape: ExceptionContext, location_name: "context"))
    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: multiValueQueryStringList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateLaunchProfileInput.add_member(:description, Shapes::ShapeRef.new(shape: LaunchProfileDescription, location_name: "description"))
    UpdateLaunchProfileInput.add_member(:launch_profile_protocol_versions, Shapes::ShapeRef.new(shape: LaunchProfileProtocolVersionList, location_name: "launchProfileProtocolVersions"))
    UpdateLaunchProfileInput.add_member(:name, Shapes::ShapeRef.new(shape: LaunchProfileName, location_name: "name"))
    UpdateLaunchProfileInput.add_member(:stream_configuration, Shapes::ShapeRef.new(shape: StreamConfigurationCreate, location_name: "streamConfiguration"))
    UpdateLaunchProfileInput.add_member(:studio_component_ids, Shapes::ShapeRef.new(shape: LaunchProfileStudioComponentIdList, location_name: "studioComponentIds"))
    UpdateLaunchProfileInput.struct_class = Types::UpdateLaunchProfileInput

    UpdateLaunchProfileMemberInput.add_member(:persona, Shapes::ShapeRef.new(shape: LaunchProfilePersona, required: true, location_name: "persona"))
    UpdateLaunchProfileMemberInput.struct_class = Types::UpdateLaunchProfileMemberInput

    UpdateLaunchProfileMemberRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    UpdateLaunchProfileMemberRequest.add_member(:launch_profile_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "launchProfileId"))
    UpdateLaunchProfileMemberRequest.add_member(:persona, Shapes::ShapeRef.new(shape: LaunchProfilePersona, required: true, location_name: "persona"))
    UpdateLaunchProfileMemberRequest.add_member(:principal_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "principalId"))
    UpdateLaunchProfileMemberRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "studioId"))
    UpdateLaunchProfileMemberRequest.struct_class = Types::UpdateLaunchProfileMemberRequest

    UpdateLaunchProfileMemberResponse.add_member(:member, Shapes::ShapeRef.new(shape: LaunchProfileMembership, location_name: "member"))
    UpdateLaunchProfileMemberResponse.struct_class = Types::UpdateLaunchProfileMemberResponse

    UpdateLaunchProfileOutput.add_member(:launch_profile, Shapes::ShapeRef.new(shape: LaunchProfile, location_name: "launchProfile"))
    UpdateLaunchProfileOutput.struct_class = Types::UpdateLaunchProfileOutput

    UpdateLaunchProfileRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    UpdateLaunchProfileRequest.add_member(:description, Shapes::ShapeRef.new(shape: LaunchProfileDescription, location_name: "description"))
    UpdateLaunchProfileRequest.add_member(:launch_profile_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "launchProfileId"))
    UpdateLaunchProfileRequest.add_member(:launch_profile_protocol_versions, Shapes::ShapeRef.new(shape: LaunchProfileProtocolVersionList, location_name: "launchProfileProtocolVersions"))
    UpdateLaunchProfileRequest.add_member(:name, Shapes::ShapeRef.new(shape: LaunchProfileName, location_name: "name"))
    UpdateLaunchProfileRequest.add_member(:stream_configuration, Shapes::ShapeRef.new(shape: StreamConfigurationCreate, location_name: "streamConfiguration"))
    UpdateLaunchProfileRequest.add_member(:studio_component_ids, Shapes::ShapeRef.new(shape: LaunchProfileStudioComponentIdList, location_name: "studioComponentIds"))
    UpdateLaunchProfileRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "studioId"))
    UpdateLaunchProfileRequest.struct_class = Types::UpdateLaunchProfileRequest

    UpdateLaunchProfileResponse.add_member(:launch_profile, Shapes::ShapeRef.new(shape: LaunchProfile, location_name: "launchProfile"))
    UpdateLaunchProfileResponse.struct_class = Types::UpdateLaunchProfileResponse

    UpdateStreamingImageInput.add_member(:description, Shapes::ShapeRef.new(shape: StreamingImageDescription, location_name: "description"))
    UpdateStreamingImageInput.add_member(:name, Shapes::ShapeRef.new(shape: StreamingImageName, location_name: "name"))
    UpdateStreamingImageInput.struct_class = Types::UpdateStreamingImageInput

    UpdateStreamingImageOutput.add_member(:streaming_image, Shapes::ShapeRef.new(shape: StreamingImage, location_name: "streamingImage"))
    UpdateStreamingImageOutput.struct_class = Types::UpdateStreamingImageOutput

    UpdateStreamingImageRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    UpdateStreamingImageRequest.add_member(:description, Shapes::ShapeRef.new(shape: StreamingImageDescription, location_name: "description"))
    UpdateStreamingImageRequest.add_member(:name, Shapes::ShapeRef.new(shape: StreamingImageName, location_name: "name"))
    UpdateStreamingImageRequest.add_member(:streaming_image_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "streamingImageId"))
    UpdateStreamingImageRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "studioId"))
    UpdateStreamingImageRequest.struct_class = Types::UpdateStreamingImageRequest

    UpdateStreamingImageResponse.add_member(:streaming_image, Shapes::ShapeRef.new(shape: StreamingImage, location_name: "streamingImage"))
    UpdateStreamingImageResponse.struct_class = Types::UpdateStreamingImageResponse

    UpdateStudioComponentInput.add_member(:configuration, Shapes::ShapeRef.new(shape: StudioComponentConfiguration, location_name: "configuration"))
    UpdateStudioComponentInput.add_member(:description, Shapes::ShapeRef.new(shape: StudioComponentDescription, location_name: "description"))
    UpdateStudioComponentInput.add_member(:ec2_security_group_ids, Shapes::ShapeRef.new(shape: StudioComponentSecurityGroupIdList, location_name: "ec2SecurityGroupIds"))
    UpdateStudioComponentInput.add_member(:initialization_scripts, Shapes::ShapeRef.new(shape: StudioComponentInitializationScriptList, location_name: "initializationScripts"))
    UpdateStudioComponentInput.add_member(:name, Shapes::ShapeRef.new(shape: StudioComponentName, location_name: "name"))
    UpdateStudioComponentInput.add_member(:script_parameters, Shapes::ShapeRef.new(shape: StudioComponentScriptParameterKeyValueList, location_name: "scriptParameters"))
    UpdateStudioComponentInput.add_member(:subtype, Shapes::ShapeRef.new(shape: StudioComponentSubtype, location_name: "subtype"))
    UpdateStudioComponentInput.add_member(:type, Shapes::ShapeRef.new(shape: StudioComponentType, location_name: "type"))
    UpdateStudioComponentInput.struct_class = Types::UpdateStudioComponentInput

    UpdateStudioComponentOutput.add_member(:studio_component, Shapes::ShapeRef.new(shape: StudioComponent, location_name: "studioComponent"))
    UpdateStudioComponentOutput.struct_class = Types::UpdateStudioComponentOutput

    UpdateStudioComponentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    UpdateStudioComponentRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: StudioComponentConfiguration, location_name: "configuration"))
    UpdateStudioComponentRequest.add_member(:description, Shapes::ShapeRef.new(shape: StudioComponentDescription, location_name: "description"))
    UpdateStudioComponentRequest.add_member(:ec2_security_group_ids, Shapes::ShapeRef.new(shape: StudioComponentSecurityGroupIdList, location_name: "ec2SecurityGroupIds"))
    UpdateStudioComponentRequest.add_member(:initialization_scripts, Shapes::ShapeRef.new(shape: StudioComponentInitializationScriptList, location_name: "initializationScripts"))
    UpdateStudioComponentRequest.add_member(:name, Shapes::ShapeRef.new(shape: StudioComponentName, location_name: "name"))
    UpdateStudioComponentRequest.add_member(:script_parameters, Shapes::ShapeRef.new(shape: StudioComponentScriptParameterKeyValueList, location_name: "scriptParameters"))
    UpdateStudioComponentRequest.add_member(:studio_component_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "studioComponentId"))
    UpdateStudioComponentRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "studioId"))
    UpdateStudioComponentRequest.add_member(:subtype, Shapes::ShapeRef.new(shape: StudioComponentSubtype, location_name: "subtype"))
    UpdateStudioComponentRequest.add_member(:type, Shapes::ShapeRef.new(shape: StudioComponentType, location_name: "type"))
    UpdateStudioComponentRequest.struct_class = Types::UpdateStudioComponentRequest

    UpdateStudioComponentResponse.add_member(:studio_component, Shapes::ShapeRef.new(shape: StudioComponent, location_name: "studioComponent"))
    UpdateStudioComponentResponse.struct_class = Types::UpdateStudioComponentResponse

    UpdateStudioInput.add_member(:admin_role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "adminRoleArn"))
    UpdateStudioInput.add_member(:display_name, Shapes::ShapeRef.new(shape: StudioDisplayName, location_name: "displayName"))
    UpdateStudioInput.add_member(:user_role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "userRoleArn"))
    UpdateStudioInput.struct_class = Types::UpdateStudioInput

    UpdateStudioOutput.add_member(:studio, Shapes::ShapeRef.new(shape: Studio, location_name: "studio"))
    UpdateStudioOutput.struct_class = Types::UpdateStudioOutput

    UpdateStudioRequest.add_member(:admin_role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "adminRoleArn"))
    UpdateStudioRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amz-Client-Token", metadata: {"idempotencyToken"=>true}))
    UpdateStudioRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: StudioDisplayName, location_name: "displayName"))
    UpdateStudioRequest.add_member(:studio_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "studioId"))
    UpdateStudioRequest.add_member(:user_role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "userRoleArn"))
    UpdateStudioRequest.struct_class = Types::UpdateStudioRequest

    UpdateStudioResponse.add_member(:studio, Shapes::ShapeRef.new(shape: Studio, location_name: "studio"))
    UpdateStudioResponse.struct_class = Types::UpdateStudioResponse

    ValidationException.add_member(:code, Shapes::ShapeRef.new(shape: __string, location_name: "code"))
    ValidationException.add_member(:context, Shapes::ShapeRef.new(shape: ExceptionContext, location_name: "context"))
    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    __listOf__string.member = Shapes::ShapeRef.new(shape: __string)

    multiValueQueryStringList.member = Shapes::ShapeRef.new(shape: __string)


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
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_launch_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLaunchProfile"
        o.http_method = "POST"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/launch-profiles"
        o.input = Shapes::ShapeRef.new(shape: CreateLaunchProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLaunchProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_streaming_image, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStreamingImage"
        o.http_method = "POST"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/streaming-images"
        o.input = Shapes::ShapeRef.new(shape: CreateStreamingImageRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateStreamingImageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_streaming_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStreamingSession"
        o.http_method = "POST"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/streaming-sessions"
        o.input = Shapes::ShapeRef.new(shape: CreateStreamingSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateStreamingSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_streaming_session_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStreamingSessionStream"
        o.http_method = "POST"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/streaming-sessions/{sessionId}/streams"
        o.input = Shapes::ShapeRef.new(shape: CreateStreamingSessionStreamRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateStreamingSessionStreamResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_studio, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStudio"
        o.http_method = "POST"
        o.http_request_uri = "/2020-08-01/studios"
        o.input = Shapes::ShapeRef.new(shape: CreateStudioRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateStudioResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_studio_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStudioComponent"
        o.http_method = "POST"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/studio-components"
        o.input = Shapes::ShapeRef.new(shape: CreateStudioComponentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateStudioComponentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_launch_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLaunchProfile"
        o.http_method = "DELETE"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/launch-profiles/{launchProfileId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteLaunchProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteLaunchProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_launch_profile_member, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLaunchProfileMember"
        o.http_method = "DELETE"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/launch-profiles/{launchProfileId}/membership/{principalId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteLaunchProfileMemberRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteLaunchProfileMemberResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_streaming_image, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteStreamingImage"
        o.http_method = "DELETE"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/streaming-images/{streamingImageId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteStreamingImageRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteStreamingImageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_streaming_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteStreamingSession"
        o.http_method = "DELETE"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/streaming-sessions/{sessionId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteStreamingSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteStreamingSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_studio, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteStudio"
        o.http_method = "DELETE"
        o.http_request_uri = "/2020-08-01/studios/{studioId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteStudioRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteStudioResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_studio_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteStudioComponent"
        o.http_method = "DELETE"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/studio-components/{studioComponentId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteStudioComponentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteStudioComponentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_studio_member, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteStudioMember"
        o.http_method = "DELETE"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/membership/{principalId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteStudioMemberRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteStudioMemberResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_eula, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEula"
        o.http_method = "GET"
        o.http_request_uri = "/2020-08-01/eulas/{eulaId}"
        o.input = Shapes::ShapeRef.new(shape: GetEulaRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEulaResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_launch_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLaunchProfile"
        o.http_method = "GET"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/launch-profiles/{launchProfileId}"
        o.input = Shapes::ShapeRef.new(shape: GetLaunchProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLaunchProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_launch_profile_details, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLaunchProfileDetails"
        o.http_method = "GET"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/launch-profiles/{launchProfileId}/details"
        o.input = Shapes::ShapeRef.new(shape: GetLaunchProfileDetailsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLaunchProfileDetailsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_launch_profile_initialization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLaunchProfileInitialization"
        o.http_method = "GET"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/launch-profiles/{launchProfileId}/init"
        o.input = Shapes::ShapeRef.new(shape: GetLaunchProfileInitializationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLaunchProfileInitializationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_launch_profile_member, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLaunchProfileMember"
        o.http_method = "GET"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/launch-profiles/{launchProfileId}/membership/{principalId}"
        o.input = Shapes::ShapeRef.new(shape: GetLaunchProfileMemberRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLaunchProfileMemberResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_streaming_image, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStreamingImage"
        o.http_method = "GET"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/streaming-images/{streamingImageId}"
        o.input = Shapes::ShapeRef.new(shape: GetStreamingImageRequest)
        o.output = Shapes::ShapeRef.new(shape: GetStreamingImageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_streaming_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStreamingSession"
        o.http_method = "GET"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/streaming-sessions/{sessionId}"
        o.input = Shapes::ShapeRef.new(shape: GetStreamingSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetStreamingSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_streaming_session_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStreamingSessionStream"
        o.http_method = "GET"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/streaming-sessions/{sessionId}/streams/{streamId}"
        o.input = Shapes::ShapeRef.new(shape: GetStreamingSessionStreamRequest)
        o.output = Shapes::ShapeRef.new(shape: GetStreamingSessionStreamResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_studio, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStudio"
        o.http_method = "GET"
        o.http_request_uri = "/2020-08-01/studios/{studioId}"
        o.input = Shapes::ShapeRef.new(shape: GetStudioRequest)
        o.output = Shapes::ShapeRef.new(shape: GetStudioResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_studio_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStudioComponent"
        o.http_method = "GET"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/studio-components/{studioComponentId}"
        o.input = Shapes::ShapeRef.new(shape: GetStudioComponentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetStudioComponentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_studio_member, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStudioMember"
        o.http_method = "GET"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/membership/{principalId}"
        o.input = Shapes::ShapeRef.new(shape: GetStudioMemberRequest)
        o.output = Shapes::ShapeRef.new(shape: GetStudioMemberResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:list_eula_acceptances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEulaAcceptances"
        o.http_method = "GET"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/eula-acceptances"
        o.input = Shapes::ShapeRef.new(shape: ListEulaAcceptancesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEulaAcceptancesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:put_launch_profile_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutLaunchProfileMembers"
        o.http_method = "POST"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/launch-profiles/{launchProfileId}/membership"
        o.input = Shapes::ShapeRef.new(shape: PutLaunchProfileMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: PutLaunchProfileMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:put_studio_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutStudioMembers"
        o.http_method = "POST"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/membership"
        o.input = Shapes::ShapeRef.new(shape: PutStudioMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: PutStudioMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:start_studio_sso_configuration_repair, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartStudioSSOConfigurationRepair"
        o.http_method = "PUT"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/sso-configuration"
        o.input = Shapes::ShapeRef.new(shape: StartStudioSSOConfigurationRepairRequest)
        o.output = Shapes::ShapeRef.new(shape: StartStudioSSOConfigurationRepairResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/2020-08-01/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/2020-08-01/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_launch_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLaunchProfile"
        o.http_method = "PATCH"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/launch-profiles/{launchProfileId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateLaunchProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateLaunchProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_launch_profile_member, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLaunchProfileMember"
        o.http_method = "PATCH"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/launch-profiles/{launchProfileId}/membership/{principalId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateLaunchProfileMemberRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateLaunchProfileMemberResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_streaming_image, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateStreamingImage"
        o.http_method = "PATCH"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/streaming-images/{streamingImageId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateStreamingImageRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateStreamingImageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_studio, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateStudio"
        o.http_method = "PATCH"
        o.http_request_uri = "/2020-08-01/studios/{studioId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateStudioRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateStudioResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_studio_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateStudioComponent"
        o.http_method = "PATCH"
        o.http_request_uri = "/2020-08-01/studios/{studioId}/studio-components/{studioComponentId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateStudioComponentRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateStudioComponentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)
    end

  end
end
