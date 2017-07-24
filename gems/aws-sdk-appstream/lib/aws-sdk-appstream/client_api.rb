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
    Application = Shapes::StructureShape.new(name: 'Application')
    Applications = Shapes::ListShape.new(name: 'Applications')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AssociateFleetRequest = Shapes::StructureShape.new(name: 'AssociateFleetRequest')
    AssociateFleetResult = Shapes::StructureShape.new(name: 'AssociateFleetResult')
    AuthenticationType = Shapes::StringShape.new(name: 'AuthenticationType')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BooleanObject = Shapes::BooleanShape.new(name: 'BooleanObject')
    ComputeCapacity = Shapes::StructureShape.new(name: 'ComputeCapacity')
    ComputeCapacityStatus = Shapes::StructureShape.new(name: 'ComputeCapacityStatus')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
    CreateDirectoryConfigRequest = Shapes::StructureShape.new(name: 'CreateDirectoryConfigRequest')
    CreateDirectoryConfigResult = Shapes::StructureShape.new(name: 'CreateDirectoryConfigResult')
    CreateFleetRequest = Shapes::StructureShape.new(name: 'CreateFleetRequest')
    CreateFleetResult = Shapes::StructureShape.new(name: 'CreateFleetResult')
    CreateStackRequest = Shapes::StructureShape.new(name: 'CreateStackRequest')
    CreateStackResult = Shapes::StructureShape.new(name: 'CreateStackResult')
    CreateStreamingURLRequest = Shapes::StructureShape.new(name: 'CreateStreamingURLRequest')
    CreateStreamingURLResult = Shapes::StructureShape.new(name: 'CreateStreamingURLResult')
    DeleteDirectoryConfigRequest = Shapes::StructureShape.new(name: 'DeleteDirectoryConfigRequest')
    DeleteDirectoryConfigResult = Shapes::StructureShape.new(name: 'DeleteDirectoryConfigResult')
    DeleteFleetRequest = Shapes::StructureShape.new(name: 'DeleteFleetRequest')
    DeleteFleetResult = Shapes::StructureShape.new(name: 'DeleteFleetResult')
    DeleteStackRequest = Shapes::StructureShape.new(name: 'DeleteStackRequest')
    DeleteStackResult = Shapes::StructureShape.new(name: 'DeleteStackResult')
    DescribeDirectoryConfigsRequest = Shapes::StructureShape.new(name: 'DescribeDirectoryConfigsRequest')
    DescribeDirectoryConfigsResult = Shapes::StructureShape.new(name: 'DescribeDirectoryConfigsResult')
    DescribeFleetsRequest = Shapes::StructureShape.new(name: 'DescribeFleetsRequest')
    DescribeFleetsResult = Shapes::StructureShape.new(name: 'DescribeFleetsResult')
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
    DomainJoinInfo = Shapes::StructureShape.new(name: 'DomainJoinInfo')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExpireSessionRequest = Shapes::StructureShape.new(name: 'ExpireSessionRequest')
    ExpireSessionResult = Shapes::StructureShape.new(name: 'ExpireSessionResult')
    Fleet = Shapes::StructureShape.new(name: 'Fleet')
    FleetAttribute = Shapes::StringShape.new(name: 'FleetAttribute')
    FleetAttributes = Shapes::ListShape.new(name: 'FleetAttributes')
    FleetError = Shapes::StructureShape.new(name: 'FleetError')
    FleetErrorCode = Shapes::StringShape.new(name: 'FleetErrorCode')
    FleetErrors = Shapes::ListShape.new(name: 'FleetErrors')
    FleetList = Shapes::ListShape.new(name: 'FleetList')
    FleetState = Shapes::StringShape.new(name: 'FleetState')
    Image = Shapes::StructureShape.new(name: 'Image')
    ImageList = Shapes::ListShape.new(name: 'ImageList')
    ImageState = Shapes::StringShape.new(name: 'ImageState')
    ImageStateChangeReason = Shapes::StructureShape.new(name: 'ImageStateChangeReason')
    ImageStateChangeReasonCode = Shapes::StringShape.new(name: 'ImageStateChangeReasonCode')
    IncompatibleImageException = Shapes::StructureShape.new(name: 'IncompatibleImageException')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InvalidParameterCombinationException = Shapes::StructureShape.new(name: 'InvalidParameterCombinationException')
    InvalidRoleException = Shapes::StructureShape.new(name: 'InvalidRoleException')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListAssociatedFleetsRequest = Shapes::StructureShape.new(name: 'ListAssociatedFleetsRequest')
    ListAssociatedFleetsResult = Shapes::StructureShape.new(name: 'ListAssociatedFleetsResult')
    ListAssociatedStacksRequest = Shapes::StructureShape.new(name: 'ListAssociatedStacksRequest')
    ListAssociatedStacksResult = Shapes::StructureShape.new(name: 'ListAssociatedStacksResult')
    Long = Shapes::IntegerShape.new(name: 'Long')
    Metadata = Shapes::MapShape.new(name: 'Metadata')
    Name = Shapes::StringShape.new(name: 'Name')
    OperationNotPermittedException = Shapes::StructureShape.new(name: 'OperationNotPermittedException')
    OrganizationalUnitDistinguishedName = Shapes::StringShape.new(name: 'OrganizationalUnitDistinguishedName')
    OrganizationalUnitDistinguishedNamesList = Shapes::ListShape.new(name: 'OrganizationalUnitDistinguishedNamesList')
    PlatformType = Shapes::StringShape.new(name: 'PlatformType')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceIdentifier = Shapes::StringShape.new(name: 'ResourceIdentifier')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceNotAvailableException = Shapes::StructureShape.new(name: 'ResourceNotAvailableException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    SecurityGroupIdList = Shapes::ListShape.new(name: 'SecurityGroupIdList')
    ServiceAccountCredentials = Shapes::StructureShape.new(name: 'ServiceAccountCredentials')
    Session = Shapes::StructureShape.new(name: 'Session')
    SessionList = Shapes::ListShape.new(name: 'SessionList')
    SessionState = Shapes::StringShape.new(name: 'SessionState')
    Stack = Shapes::StructureShape.new(name: 'Stack')
    StackError = Shapes::StructureShape.new(name: 'StackError')
    StackErrorCode = Shapes::StringShape.new(name: 'StackErrorCode')
    StackErrors = Shapes::ListShape.new(name: 'StackErrors')
    StackList = Shapes::ListShape.new(name: 'StackList')
    StartFleetRequest = Shapes::StructureShape.new(name: 'StartFleetRequest')
    StartFleetResult = Shapes::StructureShape.new(name: 'StartFleetResult')
    StopFleetRequest = Shapes::StructureShape.new(name: 'StopFleetRequest')
    StopFleetResult = Shapes::StructureShape.new(name: 'StopFleetResult')
    StorageConnector = Shapes::StructureShape.new(name: 'StorageConnector')
    StorageConnectorList = Shapes::ListShape.new(name: 'StorageConnectorList')
    StorageConnectorType = Shapes::StringShape.new(name: 'StorageConnectorType')
    StreamingUrlUserId = Shapes::StringShape.new(name: 'StreamingUrlUserId')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    SubnetIdList = Shapes::ListShape.new(name: 'SubnetIdList')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UpdateDirectoryConfigRequest = Shapes::StructureShape.new(name: 'UpdateDirectoryConfigRequest')
    UpdateDirectoryConfigResult = Shapes::StructureShape.new(name: 'UpdateDirectoryConfigResult')
    UpdateFleetRequest = Shapes::StructureShape.new(name: 'UpdateFleetRequest')
    UpdateFleetResult = Shapes::StructureShape.new(name: 'UpdateFleetResult')
    UpdateStackRequest = Shapes::StructureShape.new(name: 'UpdateStackRequest')
    UpdateStackResult = Shapes::StructureShape.new(name: 'UpdateStackResult')
    UserId = Shapes::StringShape.new(name: 'UserId')
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

    Applications.member = Shapes::ShapeRef.new(shape: Application)

    AssociateFleetRequest.add_member(:fleet_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "FleetName"))
    AssociateFleetRequest.add_member(:stack_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "StackName"))
    AssociateFleetRequest.struct_class = Types::AssociateFleetRequest

    AssociateFleetResult.struct_class = Types::AssociateFleetResult

    ComputeCapacity.add_member(:desired_instances, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "DesiredInstances"))
    ComputeCapacity.struct_class = Types::ComputeCapacity

    ComputeCapacityStatus.add_member(:desired, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "Desired"))
    ComputeCapacityStatus.add_member(:running, Shapes::ShapeRef.new(shape: Integer, location_name: "Running"))
    ComputeCapacityStatus.add_member(:in_use, Shapes::ShapeRef.new(shape: Integer, location_name: "InUse"))
    ComputeCapacityStatus.add_member(:available, Shapes::ShapeRef.new(shape: Integer, location_name: "Available"))
    ComputeCapacityStatus.struct_class = Types::ComputeCapacityStatus

    CreateDirectoryConfigRequest.add_member(:directory_name, Shapes::ShapeRef.new(shape: DirectoryName, required: true, location_name: "DirectoryName"))
    CreateDirectoryConfigRequest.add_member(:organizational_unit_distinguished_names, Shapes::ShapeRef.new(shape: OrganizationalUnitDistinguishedNamesList, required: true, location_name: "OrganizationalUnitDistinguishedNames"))
    CreateDirectoryConfigRequest.add_member(:service_account_credentials, Shapes::ShapeRef.new(shape: ServiceAccountCredentials, required: true, location_name: "ServiceAccountCredentials"))
    CreateDirectoryConfigRequest.struct_class = Types::CreateDirectoryConfigRequest

    CreateDirectoryConfigResult.add_member(:directory_config, Shapes::ShapeRef.new(shape: DirectoryConfig, location_name: "DirectoryConfig"))
    CreateDirectoryConfigResult.struct_class = Types::CreateDirectoryConfigResult

    CreateFleetRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    CreateFleetRequest.add_member(:image_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ImageName"))
    CreateFleetRequest.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "InstanceType"))
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

    CreateStackRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    CreateStackRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateStackRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    CreateStackRequest.add_member(:storage_connectors, Shapes::ShapeRef.new(shape: StorageConnectorList, location_name: "StorageConnectors"))
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

    DescribeImagesRequest.add_member(:names, Shapes::ShapeRef.new(shape: StringList, location_name: "Names"))
    DescribeImagesRequest.struct_class = Types::DescribeImagesRequest

    DescribeImagesResult.add_member(:images, Shapes::ShapeRef.new(shape: ImageList, location_name: "Images"))
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

    ExpireSessionRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SessionId"))
    ExpireSessionRequest.struct_class = Types::ExpireSessionRequest

    ExpireSessionResult.struct_class = Types::ExpireSessionResult

    Fleet.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    Fleet.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    Fleet.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "DisplayName"))
    Fleet.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    Fleet.add_member(:image_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ImageName"))
    Fleet.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "InstanceType"))
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
    Image.struct_class = Types::Image

    ImageList.member = Shapes::ShapeRef.new(shape: Image)

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

    Metadata.key = Shapes::ShapeRef.new(shape: String)
    Metadata.value = Shapes::ShapeRef.new(shape: String)

    OrganizationalUnitDistinguishedNamesList.member = Shapes::ShapeRef.new(shape: OrganizationalUnitDistinguishedName)

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
    Session.struct_class = Types::Session

    SessionList.member = Shapes::ShapeRef.new(shape: Session)

    Stack.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    Stack.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    Stack.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    Stack.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "DisplayName"))
    Stack.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    Stack.add_member(:storage_connectors, Shapes::ShapeRef.new(shape: StorageConnectorList, location_name: "StorageConnectors"))
    Stack.add_member(:stack_errors, Shapes::ShapeRef.new(shape: StackErrors, location_name: "StackErrors"))
    Stack.struct_class = Types::Stack

    StackError.add_member(:error_code, Shapes::ShapeRef.new(shape: StackErrorCode, location_name: "ErrorCode"))
    StackError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    StackError.struct_class = Types::StackError

    StackErrors.member = Shapes::ShapeRef.new(shape: StackError)

    StackList.member = Shapes::ShapeRef.new(shape: Stack)

    StartFleetRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    StartFleetRequest.struct_class = Types::StartFleetRequest

    StartFleetResult.struct_class = Types::StartFleetResult

    StopFleetRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    StopFleetRequest.struct_class = Types::StopFleetRequest

    StopFleetResult.struct_class = Types::StopFleetResult

    StorageConnector.add_member(:connector_type, Shapes::ShapeRef.new(shape: StorageConnectorType, required: true, location_name: "ConnectorType"))
    StorageConnector.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: "ResourceIdentifier"))
    StorageConnector.struct_class = Types::StorageConnector

    StorageConnectorList.member = Shapes::ShapeRef.new(shape: StorageConnector)

    StringList.member = Shapes::ShapeRef.new(shape: String)

    SubnetIdList.member = Shapes::ShapeRef.new(shape: String)

    UpdateDirectoryConfigRequest.add_member(:directory_name, Shapes::ShapeRef.new(shape: DirectoryName, required: true, location_name: "DirectoryName"))
    UpdateDirectoryConfigRequest.add_member(:organizational_unit_distinguished_names, Shapes::ShapeRef.new(shape: OrganizationalUnitDistinguishedNamesList, location_name: "OrganizationalUnitDistinguishedNames"))
    UpdateDirectoryConfigRequest.add_member(:service_account_credentials, Shapes::ShapeRef.new(shape: ServiceAccountCredentials, location_name: "ServiceAccountCredentials"))
    UpdateDirectoryConfigRequest.struct_class = Types::UpdateDirectoryConfigRequest

    UpdateDirectoryConfigResult.add_member(:directory_config, Shapes::ShapeRef.new(shape: DirectoryConfig, location_name: "DirectoryConfig"))
    UpdateDirectoryConfigResult.struct_class = Types::UpdateDirectoryConfigResult

    UpdateFleetRequest.add_member(:image_name, Shapes::ShapeRef.new(shape: String, location_name: "ImageName"))
    UpdateFleetRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
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

    UpdateStackRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    UpdateStackRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateStackRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    UpdateStackRequest.add_member(:storage_connectors, Shapes::ShapeRef.new(shape: StorageConnectorList, location_name: "StorageConnectors"))
    UpdateStackRequest.add_member(:delete_storage_connectors, Shapes::ShapeRef.new(shape: Boolean, location_name: "DeleteStorageConnectors"))
    UpdateStackRequest.struct_class = Types::UpdateStackRequest

    UpdateStackResult.add_member(:stack, Shapes::ShapeRef.new(shape: Stack, location_name: "Stack"))
    UpdateStackResult.struct_class = Types::UpdateStackResult

    VpcConfig.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdList, location_name: "SubnetIds"))
    VpcConfig.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: "SecurityGroupIds"))
    VpcConfig.struct_class = Types::VpcConfig


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2016-12-01"

      api.metadata = {
        "endpointPrefix" => "appstream2",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "Amazon AppStream",
        "signatureVersion" => "v4",
        "signingName" => "appstream",
        "targetPrefix" => "PhotonAdminProxyService",
      }

      api.add_operation(:associate_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateFleetResult)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleImageException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:create_directory_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDirectoryConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDirectoryConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDirectoryConfigResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
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
        o.errors << Shapes::ShapeRef.new(shape: InvalidRoleException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleImageException)
      end)

      api.add_operation(:create_stack, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStack"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateStackRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateStackResult)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
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

      api.add_operation(:describe_images, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeImages"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeImagesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeImagesResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:start_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: StartFleetResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
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
        o.errors << Shapes::ShapeRef.new(shape: InvalidRoleException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotAvailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleImageException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
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
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleImageException)
      end)
    end

  end
end
