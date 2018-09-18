# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AppStream
  # @api private
  module ClientApi

    include Seahorse::Model

    AccountName = Shapes::StringShape.new(name: 'AccountName')
    AccountPassword = Shapes::StringShape.new(name: 'AccountPassword')
    Action = Shapes::StringShape.new(name: 'Action')
    Application = Shapes::StructureShape.new(name: 'Application')
    ApplicationSettings = Shapes::StructureShape.new(name: 'ApplicationSettings')
    ApplicationSettingsResponse = Shapes::StructureShape.new(name: 'ApplicationSettingsResponse')
    Applications = Shapes::ListShape.new(name: 'Applications')
    AppstreamAgentVersion = Shapes::StringShape.new(name: 'AppstreamAgentVersion')
    Arn = Shapes::StringShape.new(name: 'Arn')
    ArnList = Shapes::ListShape.new(name: 'ArnList')
    AssociateFleetRequest = Shapes::StructureShape.new(name: 'AssociateFleetRequest')
    AssociateFleetResult = Shapes::StructureShape.new(name: 'AssociateFleetResult')
    AuthenticationType = Shapes::StringShape.new(name: 'AuthenticationType')
    AwsAccountId = Shapes::StringShape.new(name: 'AwsAccountId')
    AwsAccountIdList = Shapes::ListShape.new(name: 'AwsAccountIdList')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BooleanObject = Shapes::BooleanShape.new(name: 'BooleanObject')
    ComputeCapacity = Shapes::StructureShape.new(name: 'ComputeCapacity')
    ComputeCapacityStatus = Shapes::StructureShape.new(name: 'ComputeCapacityStatus')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
    CopyImageRequest = Shapes::StructureShape.new(name: 'CopyImageRequest')
    CopyImageResponse = Shapes::StructureShape.new(name: 'CopyImageResponse')
    CreateDirectoryConfigRequest = Shapes::StructureShape.new(name: 'CreateDirectoryConfigRequest')
    CreateDirectoryConfigResult = Shapes::StructureShape.new(name: 'CreateDirectoryConfigResult')
    CreateFleetRequest = Shapes::StructureShape.new(name: 'CreateFleetRequest')
    CreateFleetResult = Shapes::StructureShape.new(name: 'CreateFleetResult')
    CreateImageBuilderRequest = Shapes::StructureShape.new(name: 'CreateImageBuilderRequest')
    CreateImageBuilderResult = Shapes::StructureShape.new(name: 'CreateImageBuilderResult')
    CreateImageBuilderStreamingURLRequest = Shapes::StructureShape.new(name: 'CreateImageBuilderStreamingURLRequest')
    CreateImageBuilderStreamingURLResult = Shapes::StructureShape.new(name: 'CreateImageBuilderStreamingURLResult')
    CreateStackRequest = Shapes::StructureShape.new(name: 'CreateStackRequest')
    CreateStackResult = Shapes::StructureShape.new(name: 'CreateStackResult')
    CreateStreamingURLRequest = Shapes::StructureShape.new(name: 'CreateStreamingURLRequest')
    CreateStreamingURLResult = Shapes::StructureShape.new(name: 'CreateStreamingURLResult')
    DeleteDirectoryConfigRequest = Shapes::StructureShape.new(name: 'DeleteDirectoryConfigRequest')
    DeleteDirectoryConfigResult = Shapes::StructureShape.new(name: 'DeleteDirectoryConfigResult')
    DeleteFleetRequest = Shapes::StructureShape.new(name: 'DeleteFleetRequest')
    DeleteFleetResult = Shapes::StructureShape.new(name: 'DeleteFleetResult')
    DeleteImageBuilderRequest = Shapes::StructureShape.new(name: 'DeleteImageBuilderRequest')
    DeleteImageBuilderResult = Shapes::StructureShape.new(name: 'DeleteImageBuilderResult')
    DeleteImagePermissionsRequest = Shapes::StructureShape.new(name: 'DeleteImagePermissionsRequest')
    DeleteImagePermissionsResult = Shapes::StructureShape.new(name: 'DeleteImagePermissionsResult')
    DeleteImageRequest = Shapes::StructureShape.new(name: 'DeleteImageRequest')
    DeleteImageResult = Shapes::StructureShape.new(name: 'DeleteImageResult')
    DeleteStackRequest = Shapes::StructureShape.new(name: 'DeleteStackRequest')
    DeleteStackResult = Shapes::StructureShape.new(name: 'DeleteStackResult')
    DescribeDirectoryConfigsRequest = Shapes::StructureShape.new(name: 'DescribeDirectoryConfigsRequest')
    DescribeDirectoryConfigsResult = Shapes::StructureShape.new(name: 'DescribeDirectoryConfigsResult')
    DescribeFleetsRequest = Shapes::StructureShape.new(name: 'DescribeFleetsRequest')
    DescribeFleetsResult = Shapes::StructureShape.new(name: 'DescribeFleetsResult')
    DescribeImageBuildersRequest = Shapes::StructureShape.new(name: 'DescribeImageBuildersRequest')
    DescribeImageBuildersResult = Shapes::StructureShape.new(name: 'DescribeImageBuildersResult')
    DescribeImagePermissionsRequest = Shapes::StructureShape.new(name: 'DescribeImagePermissionsRequest')
    DescribeImagePermissionsResult = Shapes::StructureShape.new(name: 'DescribeImagePermissionsResult')
    DescribeImagesMaxResults = Shapes::IntegerShape.new(name: 'DescribeImagesMaxResults')
    DescribeImagesRequest = Shapes::StructureShape.new(name: 'DescribeImagesRequest')
    DescribeImagesResult = Shapes::StructureShape.new(name: 'DescribeImagesResult')
    DescribeSessionsRequest = Shapes::StructureShape.new(name: 'DescribeSessionsRequest')
    DescribeSessionsResult = Shapes::StructureShape.new(name: 'DescribeSessionsResult')
    DescribeStacksRequest = Shapes::StructureShape.new(name: 'DescribeStacksRequest')
    DescribeStacksResult = Shapes::StructureShape.new(name: 'DescribeStacksResult')
    Description = Shapes::StringShape.new(name: 'Description')
    DirectoryConfig = Shapes::StructureShape.new(name: 'DirectoryConfig')
    DirectoryConfigList = Shapes::ListShape.new(name: 'DirectoryConfigList')
    DirectoryName = Shapes::StringShape.new(name: 'DirectoryName')
    DirectoryNameList = Shapes::ListShape.new(name: 'DirectoryNameList')
    DisassociateFleetRequest = Shapes::StructureShape.new(name: 'DisassociateFleetRequest')
    DisassociateFleetResult = Shapes::StructureShape.new(name: 'DisassociateFleetResult')
    DisplayName = Shapes::StringShape.new(name: 'DisplayName')
    Domain = Shapes::StringShape.new(name: 'Domain')
    DomainJoinInfo = Shapes::StructureShape.new(name: 'DomainJoinInfo')
    DomainList = Shapes::ListShape.new(name: 'DomainList')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExpireSessionRequest = Shapes::StructureShape.new(name: 'ExpireSessionRequest')
    ExpireSessionResult = Shapes::StructureShape.new(name: 'ExpireSessionResult')
    FeedbackURL = Shapes::StringShape.new(name: 'FeedbackURL')
    Fleet = Shapes::StructureShape.new(name: 'Fleet')
    FleetAttribute = Shapes::StringShape.new(name: 'FleetAttribute')
    FleetAttributes = Shapes::ListShape.new(name: 'FleetAttributes')
    FleetError = Shapes::StructureShape.new(name: 'FleetError')
    FleetErrorCode = Shapes::StringShape.new(name: 'FleetErrorCode')
    FleetErrors = Shapes::ListShape.new(name: 'FleetErrors')
    FleetList = Shapes::ListShape.new(name: 'FleetList')
    FleetState = Shapes::StringShape.new(name: 'FleetState')
    FleetType = Shapes::StringShape.new(name: 'FleetType')
    Image = Shapes::StructureShape.new(name: 'Image')
    ImageBuilder = Shapes::StructureShape.new(name: 'ImageBuilder')
    ImageBuilderList = Shapes::ListShape.new(name: 'ImageBuilderList')
    ImageBuilderState = Shapes::StringShape.new(name: 'ImageBuilderState')
    ImageBuilderStateChangeReason = Shapes::StructureShape.new(name: 'ImageBuilderStateChangeReason')
    ImageBuilderStateChangeReasonCode = Shapes::StringShape.new(name: 'ImageBuilderStateChangeReasonCode')
    ImageList = Shapes::ListShape.new(name: 'ImageList')
    ImagePermissions = Shapes::StructureShape.new(name: 'ImagePermissions')
    ImageState = Shapes::StringShape.new(name: 'ImageState')
    ImageStateChangeReason = Shapes::StructureShape.new(name: 'ImageStateChangeReason')
    ImageStateChangeReasonCode = Shapes::StringShape.new(name: 'ImageStateChangeReasonCode')
    IncompatibleImageException = Shapes::StructureShape.new(name: 'IncompatibleImageException')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InvalidAccountStatusException = Shapes::StructureShape.new(name: 'InvalidAccountStatusException')
    InvalidParameterCombinationException = Shapes::StructureShape.new(name: 'InvalidParameterCombinationException')
    InvalidRoleException = Shapes::StructureShape.new(name: 'InvalidRoleException')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListAssociatedFleetsRequest = Shapes::StructureShape.new(name: 'ListAssociatedFleetsRequest')
    ListAssociatedFleetsResult = Shapes::StructureShape.new(name: 'ListAssociatedFleetsResult')
    ListAssociatedStacksRequest = Shapes::StructureShape.new(name: 'ListAssociatedStacksRequest')
    ListAssociatedStacksResult = Shapes::StructureShape.new(name: 'ListAssociatedStacksResult')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Metadata = Shapes::MapShape.new(name: 'Metadata')
    Name = Shapes::StringShape.new(name: 'Name')
    NetworkAccessConfiguration = Shapes::StructureShape.new(name: 'NetworkAccessConfiguration')
    OperationNotPermittedException = Shapes::StructureShape.new(name: 'OperationNotPermittedException')
    OrganizationalUnitDistinguishedName = Shapes::StringShape.new(name: 'OrganizationalUnitDistinguishedName')
    OrganizationalUnitDistinguishedNamesList = Shapes::ListShape.new(name: 'OrganizationalUnitDistinguishedNamesList')
    Permission = Shapes::StringShape.new(name: 'Permission')
    PlatformType = Shapes::StringShape.new(name: 'PlatformType')
    RedirectURL = Shapes::StringShape.new(name: 'RedirectURL')
    RegionName = Shapes::StringShape.new(name: 'RegionName')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceError = Shapes::StructureShape.new(name: 'ResourceError')
    ResourceErrors = Shapes::ListShape.new(name: 'ResourceErrors')
    ResourceIdentifier = Shapes::StringShape.new(name: 'ResourceIdentifier')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceNotAvailableException = Shapes::StructureShape.new(name: 'ResourceNotAvailableException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    SecurityGroupIdList = Shapes::ListShape.new(name: 'SecurityGroupIdList')
    ServiceAccountCredentials = Shapes::StructureShape.new(name: 'ServiceAccountCredentials')
    Session = Shapes::StructureShape.new(name: 'Session')
    SessionList = Shapes::ListShape.new(name: 'SessionList')
    SessionState = Shapes::StringShape.new(name: 'SessionState')
    SettingsGroup = Shapes::StringShape.new(name: 'SettingsGroup')
    SharedImagePermissions = Shapes::StructureShape.new(name: 'SharedImagePermissions')
    SharedImagePermissionsList = Shapes::ListShape.new(name: 'SharedImagePermissionsList')
    Stack = Shapes::StructureShape.new(name: 'Stack')
    StackAttribute = Shapes::StringShape.new(name: 'StackAttribute')
    StackAttributes = Shapes::ListShape.new(name: 'StackAttributes')
    StackError = Shapes::StructureShape.new(name: 'StackError')
    StackErrorCode = Shapes::StringShape.new(name: 'StackErrorCode')
    StackErrors = Shapes::ListShape.new(name: 'StackErrors')
    StackList = Shapes::ListShape.new(name: 'StackList')
    StartFleetRequest = Shapes::StructureShape.new(name: 'StartFleetRequest')
    StartFleetResult = Shapes::StructureShape.new(name: 'StartFleetResult')
    StartImageBuilderRequest = Shapes::StructureShape.new(name: 'StartImageBuilderRequest')
    StartImageBuilderResult = Shapes::StructureShape.new(name: 'StartImageBuilderResult')
    StopFleetRequest = Shapes::StructureShape.new(name: 'StopFleetRequest')
    StopFleetResult = Shapes::StructureShape.new(name: 'StopFleetResult')
    StopImageBuilderRequest = Shapes::StructureShape.new(name: 'StopImageBuilderRequest')
    StopImageBuilderResult = Shapes::StructureShape.new(name: 'StopImageBuilderResult')
    StorageConnector = Shapes::StructureShape.new(name: 'StorageConnector')
    StorageConnectorList = Shapes::ListShape.new(name: 'StorageConnectorList')
    StorageConnectorType = Shapes::StringShape.new(name: 'StorageConnectorType')
    StreamingUrlUserId = Shapes::StringShape.new(name: 'StreamingUrlUserId')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    SubnetIdList = Shapes::ListShape.new(name: 'SubnetIdList')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::MapShape.new(name: 'Tags')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateDirectoryConfigRequest = Shapes::StructureShape.new(name: 'UpdateDirectoryConfigRequest')
    UpdateDirectoryConfigResult = Shapes::StructureShape.new(name: 'UpdateDirectoryConfigResult')
    UpdateFleetRequest = Shapes::StructureShape.new(name: 'UpdateFleetRequest')
    UpdateFleetResult = Shapes::StructureShape.new(name: 'UpdateFleetResult')
    UpdateImagePermissionsRequest = Shapes::StructureShape.new(name: 'UpdateImagePermissionsRequest')
    UpdateImagePermissionsResult = Shapes::StructureShape.new(name: 'UpdateImagePermissionsResult')
    UpdateStackRequest = Shapes::StructureShape.new(name: 'UpdateStackRequest')
    UpdateStackResult = Shapes::StructureShape.new(name: 'UpdateStackResult')
    UserId = Shapes::StringShape.new(name: 'UserId')
    UserSetting = Shapes::StructureShape.new(name: 'UserSetting')
    UserSettingList = Shapes::ListShape.new(name: 'UserSettingList')
    VisibilityType = Shapes::StringShape.new(name: 'VisibilityType')
    VpcConfig = Shapes::StructureShape.new(name: 'VpcConfig')

    Application.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    Application.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "DisplayName"))
    Application.add_member(:icon_url, Shapes::ShapeRef.new(shape: String, location_name: "IconURL"))
    Application.add_member(:launch_path, Shapes::ShapeRef.new(shape: String, location_name: "LaunchPath"))
    Application.add_member(:launch_parameters, Shapes::ShapeRef.new(shape: String, location_name: "LaunchParameters"))
    Application.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    Application.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    Application.struct_class = Types::Application

    ApplicationSettings.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "Enabled"))
    ApplicationSettings.add_member(:settings_group, Shapes::ShapeRef.new(shape: SettingsGroup, location_name: "SettingsGroup"))
    ApplicationSettings.struct_class = Types::ApplicationSettings

    ApplicationSettingsResponse.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    ApplicationSettingsResponse.add_member(:settings_group, Shapes::ShapeRef.new(shape: SettingsGroup, location_name: "SettingsGroup"))
    ApplicationSettingsResponse.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: String, location_name: "S3BucketName"))
    ApplicationSettingsResponse.struct_class = Types::ApplicationSettingsResponse

    Applications.member = Shapes::ShapeRef.new(shape: Application)

    ArnList.member = Shapes::ShapeRef.new(shape: Arn)

    AssociateFleetRequest.add_member(:fleet_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "FleetName"))
    AssociateFleetRequest.add_member(:stack_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "StackName"))
    AssociateFleetRequest.struct_class = Types::AssociateFleetRequest

    AssociateFleetResult.struct_class = Types::AssociateFleetResult

    AwsAccountIdList.member = Shapes::ShapeRef.new(shape: AwsAccountId)

    ComputeCapacity.add_member(:desired_instances, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "DesiredInstances"))
    ComputeCapacity.struct_class = Types::ComputeCapacity

    ComputeCapacityStatus.add_member(:desired, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "Desired"))
    ComputeCapacityStatus.add_member(:running, Shapes::ShapeRef.new(shape: Integer, location_name: "Running"))
    ComputeCapacityStatus.add_member(:in_use, Shapes::ShapeRef.new(shape: Integer, location_name: "InUse"))
    ComputeCapacityStatus.add_member(:available, Shapes::ShapeRef.new(shape: Integer, location_name: "Available"))
    ComputeCapacityStatus.struct_class = Types::ComputeCapacityStatus

    CopyImageRequest.add_member(:source_image_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "SourceImageName"))
    CopyImageRequest.add_member(:destination_image_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "DestinationImageName"))
    CopyImageRequest.add_member(:destination_region, Shapes::ShapeRef.new(shape: RegionName, required: true, location_name: "DestinationRegion"))
    CopyImageRequest.add_member(:destination_image_description, Shapes::ShapeRef.new(shape: Description, location_name: "DestinationImageDescription"))
    CopyImageRequest.struct_class = Types::CopyImageRequest

    CopyImageResponse.add_member(:destination_image_name, Shapes::ShapeRef.new(shape: Name, location_name: "DestinationImageName"))
    CopyImageResponse.struct_class = Types::CopyImageResponse

    CreateDirectoryConfigRequest.add_member(:directory_name, Shapes::ShapeRef.new(shape: DirectoryName, required: true, location_name: "DirectoryName"))
    CreateDirectoryConfigRequest.add_member(:organizational_unit_distinguished_names, Shapes::ShapeRef.new(shape: OrganizationalUnitDistinguishedNamesList, required: true, location_name: "OrganizationalUnitDistinguishedNames"))
    CreateDirectoryConfigRequest.add_member(:service_account_credentials, Shapes::ShapeRef.new(shape: ServiceAccountCredentials, required: true, location_name: "ServiceAccountCredentials"))
    CreateDirectoryConfigRequest.struct_class = Types::CreateDirectoryConfigRequest

    CreateDirectoryConfigResult.add_member(:directory_config, Shapes::ShapeRef.new(shape: DirectoryConfig, location_name: "DirectoryConfig"))
    CreateDirectoryConfigResult.struct_class = Types::CreateDirectoryConfigResult

    CreateFleetRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    CreateFleetRequest.add_member(:image_name, Shapes::ShapeRef.new(shape: String, location_name: "ImageName"))
    CreateFleetRequest.add_member(:image_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ImageArn"))
    CreateFleetRequest.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "InstanceType"))
    CreateFleetRequest.add_member(:fleet_type, Shapes::ShapeRef.new(shape: FleetType, location_name: "FleetType"))
    CreateFleetRequest.add_member(:compute_capacity, Shapes::ShapeRef.new(shape: ComputeCapacity, required: true, location_name: "ComputeCapacity"))
    CreateFleetRequest.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    CreateFleetRequest.add_member(:max_user_duration_in_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxUserDurationInSeconds"))
    CreateFleetRequest.add_member(:disconnect_timeout_in_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "DisconnectTimeoutInSeconds"))
    CreateFleetRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateFleetRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    CreateFleetRequest.add_member(:enable_default_internet_access, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "EnableDefaultInternetAccess"))
    CreateFleetRequest.add_member(:domain_join_info, Shapes::ShapeRef.new(shape: DomainJoinInfo, location_name: "DomainJoinInfo"))
    CreateFleetRequest.struct_class = Types::CreateFleetRequest

    CreateFleetResult.add_member(:fleet, Shapes::ShapeRef.new(shape: Fleet, location_name: "Fleet"))
    CreateFleetResult.struct_class = Types::CreateFleetResult

    CreateImageBuilderRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    CreateImageBuilderRequest.add_member(:image_name, Shapes::ShapeRef.new(shape: String, location_name: "ImageName"))
    CreateImageBuilderRequest.add_member(:image_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ImageArn"))
    CreateImageBuilderRequest.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "InstanceType"))
    CreateImageBuilderRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateImageBuilderRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    CreateImageBuilderRequest.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    CreateImageBuilderRequest.add_member(:enable_default_internet_access, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "EnableDefaultInternetAccess"))
    CreateImageBuilderRequest.add_member(:domain_join_info, Shapes::ShapeRef.new(shape: DomainJoinInfo, location_name: "DomainJoinInfo"))
    CreateImageBuilderRequest.add_member(:appstream_agent_version, Shapes::ShapeRef.new(shape: AppstreamAgentVersion, location_name: "AppstreamAgentVersion"))
    CreateImageBuilderRequest.struct_class = Types::CreateImageBuilderRequest

    CreateImageBuilderResult.add_member(:image_builder, Shapes::ShapeRef.new(shape: ImageBuilder, location_name: "ImageBuilder"))
    CreateImageBuilderResult.struct_class = Types::CreateImageBuilderResult

    CreateImageBuilderStreamingURLRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    CreateImageBuilderStreamingURLRequest.add_member(:validity, Shapes::ShapeRef.new(shape: Long, location_name: "Validity"))
    CreateImageBuilderStreamingURLRequest.struct_class = Types::CreateImageBuilderStreamingURLRequest

    CreateImageBuilderStreamingURLResult.add_member(:streaming_url, Shapes::ShapeRef.new(shape: String, location_name: "StreamingURL"))
    CreateImageBuilderStreamingURLResult.add_member(:expires, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Expires"))
    CreateImageBuilderStreamingURLResult.struct_class = Types::CreateImageBuilderStreamingURLResult

    CreateStackRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    CreateStackRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateStackRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    CreateStackRequest.add_member(:storage_connectors, Shapes::ShapeRef.new(shape: StorageConnectorList, location_name: "StorageConnectors"))
    CreateStackRequest.add_member(:redirect_url, Shapes::ShapeRef.new(shape: RedirectURL, location_name: "RedirectURL"))
    CreateStackRequest.add_member(:feedback_url, Shapes::ShapeRef.new(shape: FeedbackURL, location_name: "FeedbackURL"))
    CreateStackRequest.add_member(:user_settings, Shapes::ShapeRef.new(shape: UserSettingList, location_name: "UserSettings"))
    CreateStackRequest.add_member(:application_settings, Shapes::ShapeRef.new(shape: ApplicationSettings, location_name: "ApplicationSettings"))
    CreateStackRequest.struct_class = Types::CreateStackRequest

    CreateStackResult.add_member(:stack, Shapes::ShapeRef.new(shape: Stack, location_name: "Stack"))
    CreateStackResult.struct_class = Types::CreateStackResult

    CreateStreamingURLRequest.add_member(:stack_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "StackName"))
    CreateStreamingURLRequest.add_member(:fleet_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "FleetName"))
    CreateStreamingURLRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: StreamingUrlUserId, required: true, location_name: "UserId"))
    CreateStreamingURLRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: String, location_name: "ApplicationId"))
    CreateStreamingURLRequest.add_member(:validity, Shapes::ShapeRef.new(shape: Long, location_name: "Validity"))
    CreateStreamingURLRequest.add_member(:session_context, Shapes::ShapeRef.new(shape: String, location_name: "SessionContext"))
    CreateStreamingURLRequest.struct_class = Types::CreateStreamingURLRequest

    CreateStreamingURLResult.add_member(:streaming_url, Shapes::ShapeRef.new(shape: String, location_name: "StreamingURL"))
    CreateStreamingURLResult.add_member(:expires, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Expires"))
    CreateStreamingURLResult.struct_class = Types::CreateStreamingURLResult

    DeleteDirectoryConfigRequest.add_member(:directory_name, Shapes::ShapeRef.new(shape: DirectoryName, required: true, location_name: "DirectoryName"))
    DeleteDirectoryConfigRequest.struct_class = Types::DeleteDirectoryConfigRequest

    DeleteDirectoryConfigResult.struct_class = Types::DeleteDirectoryConfigResult

    DeleteFleetRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    DeleteFleetRequest.struct_class = Types::DeleteFleetRequest

    DeleteFleetResult.struct_class = Types::DeleteFleetResult

    DeleteImageBuilderRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    DeleteImageBuilderRequest.struct_class = Types::DeleteImageBuilderRequest

    DeleteImageBuilderResult.add_member(:image_builder, Shapes::ShapeRef.new(shape: ImageBuilder, location_name: "ImageBuilder"))
    DeleteImageBuilderResult.struct_class = Types::DeleteImageBuilderResult

    DeleteImagePermissionsRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    DeleteImagePermissionsRequest.add_member(:shared_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location_name: "SharedAccountId"))
    DeleteImagePermissionsRequest.struct_class = Types::DeleteImagePermissionsRequest

    DeleteImagePermissionsResult.struct_class = Types::DeleteImagePermissionsResult

    DeleteImageRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    DeleteImageRequest.struct_class = Types::DeleteImageRequest

    DeleteImageResult.add_member(:image, Shapes::ShapeRef.new(shape: Image, location_name: "Image"))
    DeleteImageResult.struct_class = Types::DeleteImageResult

    DeleteStackRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    DeleteStackRequest.struct_class = Types::DeleteStackRequest

    DeleteStackResult.struct_class = Types::DeleteStackResult

    DescribeDirectoryConfigsRequest.add_member(:directory_names, Shapes::ShapeRef.new(shape: DirectoryNameList, location_name: "DirectoryNames"))
    DescribeDirectoryConfigsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxResults"))
    DescribeDirectoryConfigsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeDirectoryConfigsRequest.struct_class = Types::DescribeDirectoryConfigsRequest

    DescribeDirectoryConfigsResult.add_member(:directory_configs, Shapes::ShapeRef.new(shape: DirectoryConfigList, location_name: "DirectoryConfigs"))
    DescribeDirectoryConfigsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeDirectoryConfigsResult.struct_class = Types::DescribeDirectoryConfigsResult

    DescribeFleetsRequest.add_member(:names, Shapes::ShapeRef.new(shape: StringList, location_name: "Names"))
    DescribeFleetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeFleetsRequest.struct_class = Types::DescribeFleetsRequest

    DescribeFleetsResult.add_member(:fleets, Shapes::ShapeRef.new(shape: FleetList, location_name: "Fleets"))
    DescribeFleetsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeFleetsResult.struct_class = Types::DescribeFleetsResult

    DescribeImageBuildersRequest.add_member(:names, Shapes::ShapeRef.new(shape: StringList, location_name: "Names"))
    DescribeImageBuildersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxResults"))
    DescribeImageBuildersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeImageBuildersRequest.struct_class = Types::DescribeImageBuildersRequest

    DescribeImageBuildersResult.add_member(:image_builders, Shapes::ShapeRef.new(shape: ImageBuilderList, location_name: "ImageBuilders"))
    DescribeImageBuildersResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeImageBuildersResult.struct_class = Types::DescribeImageBuildersResult

    DescribeImagePermissionsRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    DescribeImagePermissionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeImagePermissionsRequest.add_member(:shared_aws_account_ids, Shapes::ShapeRef.new(shape: AwsAccountIdList, location_name: "SharedAwsAccountIds"))
    DescribeImagePermissionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeImagePermissionsRequest.struct_class = Types::DescribeImagePermissionsRequest

    DescribeImagePermissionsResult.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    DescribeImagePermissionsResult.add_member(:shared_image_permissions_list, Shapes::ShapeRef.new(shape: SharedImagePermissionsList, location_name: "SharedImagePermissionsList"))
    DescribeImagePermissionsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeImagePermissionsResult.struct_class = Types::DescribeImagePermissionsResult

    DescribeImagesRequest.add_member(:names, Shapes::ShapeRef.new(shape: StringList, location_name: "Names"))
    DescribeImagesRequest.add_member(:arns, Shapes::ShapeRef.new(shape: ArnList, location_name: "Arns"))
    DescribeImagesRequest.add_member(:type, Shapes::ShapeRef.new(shape: VisibilityType, location_name: "Type"))
    DescribeImagesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeImagesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: DescribeImagesMaxResults, location_name: "MaxResults"))
    DescribeImagesRequest.struct_class = Types::DescribeImagesRequest

    DescribeImagesResult.add_member(:images, Shapes::ShapeRef.new(shape: ImageList, location_name: "Images"))
    DescribeImagesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeImagesResult.struct_class = Types::DescribeImagesResult

    DescribeSessionsRequest.add_member(:stack_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "StackName"))
    DescribeSessionsRequest.add_member(:fleet_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "FleetName"))
    DescribeSessionsRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "UserId"))
    DescribeSessionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeSessionsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: Integer, location_name: "Limit"))
    DescribeSessionsRequest.add_member(:authentication_type, Shapes::ShapeRef.new(shape: AuthenticationType, location_name: "AuthenticationType"))
    DescribeSessionsRequest.struct_class = Types::DescribeSessionsRequest

    DescribeSessionsResult.add_member(:sessions, Shapes::ShapeRef.new(shape: SessionList, location_name: "Sessions"))
    DescribeSessionsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeSessionsResult.struct_class = Types::DescribeSessionsResult

    DescribeStacksRequest.add_member(:names, Shapes::ShapeRef.new(shape: StringList, location_name: "Names"))
    DescribeStacksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeStacksRequest.struct_class = Types::DescribeStacksRequest

    DescribeStacksResult.add_member(:stacks, Shapes::ShapeRef.new(shape: StackList, location_name: "Stacks"))
    DescribeStacksResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeStacksResult.struct_class = Types::DescribeStacksResult

    DirectoryConfig.add_member(:directory_name, Shapes::ShapeRef.new(shape: DirectoryName, required: true, location_name: "DirectoryName"))
    DirectoryConfig.add_member(:organizational_unit_distinguished_names, Shapes::ShapeRef.new(shape: OrganizationalUnitDistinguishedNamesList, location_name: "OrganizationalUnitDistinguishedNames"))
    DirectoryConfig.add_member(:service_account_credentials, Shapes::ShapeRef.new(shape: ServiceAccountCredentials, location_name: "ServiceAccountCredentials"))
    DirectoryConfig.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    DirectoryConfig.struct_class = Types::DirectoryConfig

    DirectoryConfigList.member = Shapes::ShapeRef.new(shape: DirectoryConfig)

    DirectoryNameList.member = Shapes::ShapeRef.new(shape: DirectoryName)

    DisassociateFleetRequest.add_member(:fleet_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "FleetName"))
    DisassociateFleetRequest.add_member(:stack_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "StackName"))
    DisassociateFleetRequest.struct_class = Types::DisassociateFleetRequest

    DisassociateFleetResult.struct_class = Types::DisassociateFleetResult

    DomainJoinInfo.add_member(:directory_name, Shapes::ShapeRef.new(shape: DirectoryName, location_name: "DirectoryName"))
    DomainJoinInfo.add_member(:organizational_unit_distinguished_name, Shapes::ShapeRef.new(shape: OrganizationalUnitDistinguishedName, location_name: "OrganizationalUnitDistinguishedName"))
    DomainJoinInfo.struct_class = Types::DomainJoinInfo

    DomainList.member = Shapes::ShapeRef.new(shape: Domain)

    ExpireSessionRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SessionId"))
    ExpireSessionRequest.struct_class = Types::ExpireSessionRequest

    ExpireSessionResult.struct_class = Types::ExpireSessionResult

    Fleet.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    Fleet.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    Fleet.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "DisplayName"))
    Fleet.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    Fleet.add_member(:image_name, Shapes::ShapeRef.new(shape: String, location_name: "ImageName"))
    Fleet.add_member(:image_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ImageArn"))
    Fleet.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "InstanceType"))
    Fleet.add_member(:fleet_type, Shapes::ShapeRef.new(shape: FleetType, location_name: "FleetType"))
    Fleet.add_member(:compute_capacity_status, Shapes::ShapeRef.new(shape: ComputeCapacityStatus, required: true, location_name: "ComputeCapacityStatus"))
    Fleet.add_member(:max_user_duration_in_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxUserDurationInSeconds"))
    Fleet.add_member(:disconnect_timeout_in_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "DisconnectTimeoutInSeconds"))
    Fleet.add_member(:state, Shapes::ShapeRef.new(shape: FleetState, required: true, location_name: "State"))
    Fleet.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    Fleet.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    Fleet.add_member(:fleet_errors, Shapes::ShapeRef.new(shape: FleetErrors, location_name: "FleetErrors"))
    Fleet.add_member(:enable_default_internet_access, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "EnableDefaultInternetAccess"))
    Fleet.add_member(:domain_join_info, Shapes::ShapeRef.new(shape: DomainJoinInfo, location_name: "DomainJoinInfo"))
    Fleet.struct_class = Types::Fleet

    FleetAttributes.member = Shapes::ShapeRef.new(shape: FleetAttribute)

    FleetError.add_member(:error_code, Shapes::ShapeRef.new(shape: FleetErrorCode, location_name: "ErrorCode"))
    FleetError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    FleetError.struct_class = Types::FleetError

    FleetErrors.member = Shapes::ShapeRef.new(shape: FleetError)

    FleetList.member = Shapes::ShapeRef.new(shape: Fleet)

    Image.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    Image.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    Image.add_member(:base_image_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "BaseImageArn"))
    Image.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "DisplayName"))
    Image.add_member(:state, Shapes::ShapeRef.new(shape: ImageState, location_name: "State"))
    Image.add_member(:visibility, Shapes::ShapeRef.new(shape: VisibilityType, location_name: "Visibility"))
    Image.add_member(:image_builder_supported, Shapes::ShapeRef.new(shape: Boolean, location_name: "ImageBuilderSupported"))
    Image.add_member(:platform, Shapes::ShapeRef.new(shape: PlatformType, location_name: "Platform"))
    Image.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    Image.add_member(:state_change_reason, Shapes::ShapeRef.new(shape: ImageStateChangeReason, location_name: "StateChangeReason"))
    Image.add_member(:applications, Shapes::ShapeRef.new(shape: Applications, location_name: "Applications"))
    Image.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    Image.add_member(:public_base_image_released_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "PublicBaseImageReleasedDate"))
    Image.add_member(:appstream_agent_version, Shapes::ShapeRef.new(shape: AppstreamAgentVersion, location_name: "AppstreamAgentVersion"))
    Image.add_member(:image_permissions, Shapes::ShapeRef.new(shape: ImagePermissions, location_name: "ImagePermissions"))
    Image.struct_class = Types::Image

    ImageBuilder.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    ImageBuilder.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    ImageBuilder.add_member(:image_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ImageArn"))
    ImageBuilder.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    ImageBuilder.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "DisplayName"))
    ImageBuilder.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    ImageBuilder.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, location_name: "InstanceType"))
    ImageBuilder.add_member(:platform, Shapes::ShapeRef.new(shape: PlatformType, location_name: "Platform"))
    ImageBuilder.add_member(:state, Shapes::ShapeRef.new(shape: ImageBuilderState, location_name: "State"))
    ImageBuilder.add_member(:state_change_reason, Shapes::ShapeRef.new(shape: ImageBuilderStateChangeReason, location_name: "StateChangeReason"))
    ImageBuilder.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    ImageBuilder.add_member(:enable_default_internet_access, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "EnableDefaultInternetAccess"))
    ImageBuilder.add_member(:domain_join_info, Shapes::ShapeRef.new(shape: DomainJoinInfo, location_name: "DomainJoinInfo"))
    ImageBuilder.add_member(:image_builder_errors, Shapes::ShapeRef.new(shape: ResourceErrors, location_name: "ImageBuilderErrors"))
    ImageBuilder.add_member(:appstream_agent_version, Shapes::ShapeRef.new(shape: AppstreamAgentVersion, location_name: "AppstreamAgentVersion"))
    ImageBuilder.struct_class = Types::ImageBuilder

    ImageBuilderList.member = Shapes::ShapeRef.new(shape: ImageBuilder)

    ImageBuilderStateChangeReason.add_member(:code, Shapes::ShapeRef.new(shape: ImageBuilderStateChangeReasonCode, location_name: "Code"))
    ImageBuilderStateChangeReason.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ImageBuilderStateChangeReason.struct_class = Types::ImageBuilderStateChangeReason

    ImageList.member = Shapes::ShapeRef.new(shape: Image)

    ImagePermissions.add_member(:allow_fleet, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "allowFleet"))
    ImagePermissions.add_member(:allow_image_builder, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "allowImageBuilder"))
    ImagePermissions.struct_class = Types::ImagePermissions

    ImageStateChangeReason.add_member(:code, Shapes::ShapeRef.new(shape: ImageStateChangeReasonCode, location_name: "Code"))
    ImageStateChangeReason.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ImageStateChangeReason.struct_class = Types::ImageStateChangeReason

    ListAssociatedFleetsRequest.add_member(:stack_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "StackName"))
    ListAssociatedFleetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListAssociatedFleetsRequest.struct_class = Types::ListAssociatedFleetsRequest

    ListAssociatedFleetsResult.add_member(:names, Shapes::ShapeRef.new(shape: StringList, location_name: "Names"))
    ListAssociatedFleetsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListAssociatedFleetsResult.struct_class = Types::ListAssociatedFleetsResult

    ListAssociatedStacksRequest.add_member(:fleet_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "FleetName"))
    ListAssociatedStacksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListAssociatedStacksRequest.struct_class = Types::ListAssociatedStacksRequest

    ListAssociatedStacksResult.add_member(:names, Shapes::ShapeRef.new(shape: StringList, location_name: "Names"))
    ListAssociatedStacksResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListAssociatedStacksResult.struct_class = Types::ListAssociatedStacksResult

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    Metadata.key = Shapes::ShapeRef.new(shape: String)
    Metadata.value = Shapes::ShapeRef.new(shape: String)

    NetworkAccessConfiguration.add_member(:eni_private_ip_address, Shapes::ShapeRef.new(shape: String, location_name: "EniPrivateIpAddress"))
    NetworkAccessConfiguration.add_member(:eni_id, Shapes::ShapeRef.new(shape: String, location_name: "EniId"))
    NetworkAccessConfiguration.struct_class = Types::NetworkAccessConfiguration

    OrganizationalUnitDistinguishedNamesList.member = Shapes::ShapeRef.new(shape: OrganizationalUnitDistinguishedName)

    ResourceError.add_member(:error_code, Shapes::ShapeRef.new(shape: FleetErrorCode, location_name: "ErrorCode"))
    ResourceError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    ResourceError.add_member(:error_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ErrorTimestamp"))
    ResourceError.struct_class = Types::ResourceError

    ResourceErrors.member = Shapes::ShapeRef.new(shape: ResourceError)

    SecurityGroupIdList.member = Shapes::ShapeRef.new(shape: String)

    ServiceAccountCredentials.add_member(:account_name, Shapes::ShapeRef.new(shape: AccountName, required: true, location_name: "AccountName"))
    ServiceAccountCredentials.add_member(:account_password, Shapes::ShapeRef.new(shape: AccountPassword, required: true, location_name: "AccountPassword"))
    ServiceAccountCredentials.struct_class = Types::ServiceAccountCredentials

    Session.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Id"))
    Session.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location_name: "UserId"))
    Session.add_member(:stack_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "StackName"))
    Session.add_member(:fleet_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "FleetName"))
    Session.add_member(:state, Shapes::ShapeRef.new(shape: SessionState, required: true, location_name: "State"))
    Session.add_member(:authentication_type, Shapes::ShapeRef.new(shape: AuthenticationType, location_name: "AuthenticationType"))
    Session.add_member(:network_access_configuration, Shapes::ShapeRef.new(shape: NetworkAccessConfiguration, location_name: "NetworkAccessConfiguration"))
    Session.struct_class = Types::Session

    SessionList.member = Shapes::ShapeRef.new(shape: Session)

    SharedImagePermissions.add_member(:shared_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location_name: "sharedAccountId"))
    SharedImagePermissions.add_member(:image_permissions, Shapes::ShapeRef.new(shape: ImagePermissions, required: true, location_name: "imagePermissions"))
    SharedImagePermissions.struct_class = Types::SharedImagePermissions

    SharedImagePermissionsList.member = Shapes::ShapeRef.new(shape: SharedImagePermissions)

    Stack.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    Stack.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    Stack.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    Stack.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "DisplayName"))
    Stack.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    Stack.add_member(:storage_connectors, Shapes::ShapeRef.new(shape: StorageConnectorList, location_name: "StorageConnectors"))
    Stack.add_member(:redirect_url, Shapes::ShapeRef.new(shape: RedirectURL, location_name: "RedirectURL"))
    Stack.add_member(:feedback_url, Shapes::ShapeRef.new(shape: FeedbackURL, location_name: "FeedbackURL"))
    Stack.add_member(:stack_errors, Shapes::ShapeRef.new(shape: StackErrors, location_name: "StackErrors"))
    Stack.add_member(:user_settings, Shapes::ShapeRef.new(shape: UserSettingList, location_name: "UserSettings"))
    Stack.add_member(:application_settings, Shapes::ShapeRef.new(shape: ApplicationSettingsResponse, location_name: "ApplicationSettings"))
    Stack.struct_class = Types::Stack

    StackAttributes.member = Shapes::ShapeRef.new(shape: StackAttribute)

    StackError.add_member(:error_code, Shapes::ShapeRef.new(shape: StackErrorCode, location_name: "ErrorCode"))
    StackError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    StackError.struct_class = Types::StackError

    StackErrors.member = Shapes::ShapeRef.new(shape: StackError)

    StackList.member = Shapes::ShapeRef.new(shape: Stack)

    StartFleetRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    StartFleetRequest.struct_class = Types::StartFleetRequest

    StartFleetResult.struct_class = Types::StartFleetResult

    StartImageBuilderRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    StartImageBuilderRequest.add_member(:appstream_agent_version, Shapes::ShapeRef.new(shape: AppstreamAgentVersion, location_name: "AppstreamAgentVersion"))
    StartImageBuilderRequest.struct_class = Types::StartImageBuilderRequest

    StartImageBuilderResult.add_member(:image_builder, Shapes::ShapeRef.new(shape: ImageBuilder, location_name: "ImageBuilder"))
    StartImageBuilderResult.struct_class = Types::StartImageBuilderResult

    StopFleetRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    StopFleetRequest.struct_class = Types::StopFleetRequest

    StopFleetResult.struct_class = Types::StopFleetResult

    StopImageBuilderRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    StopImageBuilderRequest.struct_class = Types::StopImageBuilderRequest

    StopImageBuilderResult.add_member(:image_builder, Shapes::ShapeRef.new(shape: ImageBuilder, location_name: "ImageBuilder"))
    StopImageBuilderResult.struct_class = Types::StopImageBuilderResult

    StorageConnector.add_member(:connector_type, Shapes::ShapeRef.new(shape: StorageConnectorType, required: true, location_name: "ConnectorType"))
    StorageConnector.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: "ResourceIdentifier"))
    StorageConnector.add_member(:domains, Shapes::ShapeRef.new(shape: DomainList, location_name: "Domains"))
    StorageConnector.struct_class = Types::StorageConnector

    StorageConnectorList.member = Shapes::ShapeRef.new(shape: StorageConnector)

    StringList.member = Shapes::ShapeRef.new(shape: String)

    SubnetIdList.member = Shapes::ShapeRef.new(shape: String)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.key = Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Shapes::ShapeRef.new(shape: TagValue)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateDirectoryConfigRequest.add_member(:directory_name, Shapes::ShapeRef.new(shape: DirectoryName, required: true, location_name: "DirectoryName"))
    UpdateDirectoryConfigRequest.add_member(:organizational_unit_distinguished_names, Shapes::ShapeRef.new(shape: OrganizationalUnitDistinguishedNamesList, location_name: "OrganizationalUnitDistinguishedNames"))
    UpdateDirectoryConfigRequest.add_member(:service_account_credentials, Shapes::ShapeRef.new(shape: ServiceAccountCredentials, location_name: "ServiceAccountCredentials"))
    UpdateDirectoryConfigRequest.struct_class = Types::UpdateDirectoryConfigRequest

    UpdateDirectoryConfigResult.add_member(:directory_config, Shapes::ShapeRef.new(shape: DirectoryConfig, location_name: "DirectoryConfig"))
    UpdateDirectoryConfigResult.struct_class = Types::UpdateDirectoryConfigResult

    UpdateFleetRequest.add_member(:image_name, Shapes::ShapeRef.new(shape: String, location_name: "ImageName"))
    UpdateFleetRequest.add_member(:image_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ImageArn"))
    UpdateFleetRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    UpdateFleetRequest.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, location_name: "InstanceType"))
    UpdateFleetRequest.add_member(:compute_capacity, Shapes::ShapeRef.new(shape: ComputeCapacity, location_name: "ComputeCapacity"))
    UpdateFleetRequest.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    UpdateFleetRequest.add_member(:max_user_duration_in_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxUserDurationInSeconds"))
    UpdateFleetRequest.add_member(:disconnect_timeout_in_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "DisconnectTimeoutInSeconds"))
    UpdateFleetRequest.add_member(:delete_vpc_config, Shapes::ShapeRef.new(shape: Boolean, deprecated: true, location_name: "DeleteVpcConfig"))
    UpdateFleetRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateFleetRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    UpdateFleetRequest.add_member(:enable_default_internet_access, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "EnableDefaultInternetAccess"))
    UpdateFleetRequest.add_member(:domain_join_info, Shapes::ShapeRef.new(shape: DomainJoinInfo, location_name: "DomainJoinInfo"))
    UpdateFleetRequest.add_member(:attributes_to_delete, Shapes::ShapeRef.new(shape: FleetAttributes, location_name: "AttributesToDelete"))
    UpdateFleetRequest.struct_class = Types::UpdateFleetRequest

    UpdateFleetResult.add_member(:fleet, Shapes::ShapeRef.new(shape: Fleet, location_name: "Fleet"))
    UpdateFleetResult.struct_class = Types::UpdateFleetResult

    UpdateImagePermissionsRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    UpdateImagePermissionsRequest.add_member(:shared_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location_name: "SharedAccountId"))
    UpdateImagePermissionsRequest.add_member(:image_permissions, Shapes::ShapeRef.new(shape: ImagePermissions, required: true, location_name: "ImagePermissions"))
    UpdateImagePermissionsRequest.struct_class = Types::UpdateImagePermissionsRequest

    UpdateImagePermissionsResult.struct_class = Types::UpdateImagePermissionsResult

    UpdateStackRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    UpdateStackRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateStackRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    UpdateStackRequest.add_member(:storage_connectors, Shapes::ShapeRef.new(shape: StorageConnectorList, location_name: "StorageConnectors"))
    UpdateStackRequest.add_member(:delete_storage_connectors, Shapes::ShapeRef.new(shape: Boolean, deprecated: true, location_name: "DeleteStorageConnectors"))
    UpdateStackRequest.add_member(:redirect_url, Shapes::ShapeRef.new(shape: RedirectURL, location_name: "RedirectURL"))
    UpdateStackRequest.add_member(:feedback_url, Shapes::ShapeRef.new(shape: FeedbackURL, location_name: "FeedbackURL"))
    UpdateStackRequest.add_member(:attributes_to_delete, Shapes::ShapeRef.new(shape: StackAttributes, location_name: "AttributesToDelete"))
    UpdateStackRequest.add_member(:user_settings, Shapes::ShapeRef.new(shape: UserSettingList, location_name: "UserSettings"))
    UpdateStackRequest.add_member(:application_settings, Shapes::ShapeRef.new(shape: ApplicationSettings, location_name: "ApplicationSettings"))
    UpdateStackRequest.struct_class = Types::UpdateStackRequest

    UpdateStackResult.add_member(:stack, Shapes::ShapeRef.new(shape: Stack, location_name: "Stack"))
    UpdateStackResult.struct_class = Types::UpdateStackResult

    UserSetting.add_member(:action, Shapes::ShapeRef.new(shape: Action, required: true, location_name: "Action"))
    UserSetting.add_member(:permission, Shapes::ShapeRef.new(shape: Permission, required: true, location_name: "Permission"))
    UserSetting.struct_class = Types::UserSetting

    UserSettingList.member = Shapes::ShapeRef.new(shape: UserSetting)

    VpcConfig.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdList, location_name: "SubnetIds"))
    VpcConfig.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: "SecurityGroupIds"))
    VpcConfig.struct_class = Types::VpcConfig


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2016-12-01"

      api.metadata = {
        "apiVersion" => "2016-12-01",
        "endpointPrefix" => "appstream2",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "Amazon AppStream",
        "serviceId" => "AppStream",
        "signatureVersion" => "v4",
        "signingName" => "appstream",
        "targetPrefix" => "PhotonAdminProxyService",
        "uid" => "appstream-2016-12-01",
      }

      api.add_operation(:associate_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateFleetResult)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleImageException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:copy_image, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CopyImage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CopyImageRequest)
        o.output = Shapes::ShapeRef.new(shape: CopyImageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotAvailableException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleImageException)
      end)

      api.add_operation(:create_directory_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDirectoryConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDirectoryConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDirectoryConfigResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
      end)

      api.add_operation(:create_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFleetResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotAvailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRoleException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleImageException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:create_image_builder, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateImageBuilder"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateImageBuilderRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateImageBuilderResult)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotAvailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRoleException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleImageException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:create_image_builder_streaming_url, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateImageBuilderStreamingURL"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateImageBuilderStreamingURLRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateImageBuilderStreamingURLResult)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_stack, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStack"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateStackRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateStackResult)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRoleException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:create_streaming_url, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStreamingURL"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateStreamingURLRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateStreamingURLResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotAvailableException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:delete_directory_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDirectoryConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDirectoryConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDirectoryConfigResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFleetResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:delete_image, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteImage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteImageRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteImageResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:delete_image_builder, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteImageBuilder"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteImageBuilderRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteImageBuilderResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:delete_image_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteImagePermissions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteImagePermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteImagePermissionsResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotAvailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_stack, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteStack"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteStackRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteStackResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:describe_directory_configs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDirectoryConfigs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDirectoryConfigsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDirectoryConfigsResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_fleets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFleets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFleetsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFleetsResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_image_builders, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeImageBuilders"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeImageBuildersRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeImageBuildersResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_image_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeImagePermissions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeImagePermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeImagePermissionsResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_images, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeImages"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeImagesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeImagesResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_sessions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSessions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSessionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSessionsResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:describe_stacks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStacks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeStacksRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeStacksResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:disassociate_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateFleetResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:expire_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExpireSession"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ExpireSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: ExpireSessionResult)
      end)

      api.add_operation(:list_associated_fleets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssociatedFleets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAssociatedFleetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssociatedFleetsResult)
      end)

      api.add_operation(:list_associated_stacks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssociatedStacks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAssociatedStacksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssociatedStacksResult)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:start_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: StartFleetResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:start_image_builder, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartImageBuilder"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartImageBuilderRequest)
        o.output = Shapes::ShapeRef.new(shape: StartImageBuilderResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotAvailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleImageException)
      end)

      api.add_operation(:stop_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: StopFleetResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:stop_image_builder, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopImageBuilder"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopImageBuilderRequest)
        o.output = Shapes::ShapeRef.new(shape: StopImageBuilderResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_directory_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDirectoryConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDirectoryConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDirectoryConfigResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:update_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFleetResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRoleException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotAvailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleImageException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:update_image_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateImagePermissions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateImagePermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateImagePermissionsResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotAvailableException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:update_stack, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateStack"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateStackRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateStackResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRoleException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleImageException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)
    end

  end
end
