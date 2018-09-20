# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DirectoryService
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessUrl = Shapes::StringShape.new(name: 'AccessUrl')
    AddIpRoutesRequest = Shapes::StructureShape.new(name: 'AddIpRoutesRequest')
    AddIpRoutesResult = Shapes::StructureShape.new(name: 'AddIpRoutesResult')
    AddTagsToResourceRequest = Shapes::StructureShape.new(name: 'AddTagsToResourceRequest')
    AddTagsToResourceResult = Shapes::StructureShape.new(name: 'AddTagsToResourceResult')
    AddedDateTime = Shapes::TimestampShape.new(name: 'AddedDateTime')
    AliasName = Shapes::StringShape.new(name: 'AliasName')
    Attribute = Shapes::StructureShape.new(name: 'Attribute')
    AttributeName = Shapes::StringShape.new(name: 'AttributeName')
    AttributeValue = Shapes::StringShape.new(name: 'AttributeValue')
    Attributes = Shapes::ListShape.new(name: 'Attributes')
    AuthenticationFailedException = Shapes::StructureShape.new(name: 'AuthenticationFailedException')
    AvailabilityZone = Shapes::StringShape.new(name: 'AvailabilityZone')
    AvailabilityZones = Shapes::ListShape.new(name: 'AvailabilityZones')
    CancelSchemaExtensionRequest = Shapes::StructureShape.new(name: 'CancelSchemaExtensionRequest')
    CancelSchemaExtensionResult = Shapes::StructureShape.new(name: 'CancelSchemaExtensionResult')
    CidrIp = Shapes::StringShape.new(name: 'CidrIp')
    CidrIps = Shapes::ListShape.new(name: 'CidrIps')
    ClientException = Shapes::StructureShape.new(name: 'ClientException')
    CloudOnlyDirectoriesLimitReached = Shapes::BooleanShape.new(name: 'CloudOnlyDirectoriesLimitReached')
    Computer = Shapes::StructureShape.new(name: 'Computer')
    ComputerName = Shapes::StringShape.new(name: 'ComputerName')
    ComputerPassword = Shapes::StringShape.new(name: 'ComputerPassword')
    ConditionalForwarder = Shapes::StructureShape.new(name: 'ConditionalForwarder')
    ConditionalForwarders = Shapes::ListShape.new(name: 'ConditionalForwarders')
    ConnectDirectoryRequest = Shapes::StructureShape.new(name: 'ConnectDirectoryRequest')
    ConnectDirectoryResult = Shapes::StructureShape.new(name: 'ConnectDirectoryResult')
    ConnectPassword = Shapes::StringShape.new(name: 'ConnectPassword')
    ConnectedDirectoriesLimitReached = Shapes::BooleanShape.new(name: 'ConnectedDirectoriesLimitReached')
    CreateAliasRequest = Shapes::StructureShape.new(name: 'CreateAliasRequest')
    CreateAliasResult = Shapes::StructureShape.new(name: 'CreateAliasResult')
    CreateComputerRequest = Shapes::StructureShape.new(name: 'CreateComputerRequest')
    CreateComputerResult = Shapes::StructureShape.new(name: 'CreateComputerResult')
    CreateConditionalForwarderRequest = Shapes::StructureShape.new(name: 'CreateConditionalForwarderRequest')
    CreateConditionalForwarderResult = Shapes::StructureShape.new(name: 'CreateConditionalForwarderResult')
    CreateDirectoryRequest = Shapes::StructureShape.new(name: 'CreateDirectoryRequest')
    CreateDirectoryResult = Shapes::StructureShape.new(name: 'CreateDirectoryResult')
    CreateLogSubscriptionRequest = Shapes::StructureShape.new(name: 'CreateLogSubscriptionRequest')
    CreateLogSubscriptionResult = Shapes::StructureShape.new(name: 'CreateLogSubscriptionResult')
    CreateMicrosoftADRequest = Shapes::StructureShape.new(name: 'CreateMicrosoftADRequest')
    CreateMicrosoftADResult = Shapes::StructureShape.new(name: 'CreateMicrosoftADResult')
    CreateSnapshotBeforeSchemaExtension = Shapes::BooleanShape.new(name: 'CreateSnapshotBeforeSchemaExtension')
    CreateSnapshotRequest = Shapes::StructureShape.new(name: 'CreateSnapshotRequest')
    CreateSnapshotResult = Shapes::StructureShape.new(name: 'CreateSnapshotResult')
    CreateTrustRequest = Shapes::StructureShape.new(name: 'CreateTrustRequest')
    CreateTrustResult = Shapes::StructureShape.new(name: 'CreateTrustResult')
    CreatedDateTime = Shapes::TimestampShape.new(name: 'CreatedDateTime')
    CustomerUserName = Shapes::StringShape.new(name: 'CustomerUserName')
    DeleteAssociatedConditionalForwarder = Shapes::BooleanShape.new(name: 'DeleteAssociatedConditionalForwarder')
    DeleteConditionalForwarderRequest = Shapes::StructureShape.new(name: 'DeleteConditionalForwarderRequest')
    DeleteConditionalForwarderResult = Shapes::StructureShape.new(name: 'DeleteConditionalForwarderResult')
    DeleteDirectoryRequest = Shapes::StructureShape.new(name: 'DeleteDirectoryRequest')
    DeleteDirectoryResult = Shapes::StructureShape.new(name: 'DeleteDirectoryResult')
    DeleteLogSubscriptionRequest = Shapes::StructureShape.new(name: 'DeleteLogSubscriptionRequest')
    DeleteLogSubscriptionResult = Shapes::StructureShape.new(name: 'DeleteLogSubscriptionResult')
    DeleteSnapshotRequest = Shapes::StructureShape.new(name: 'DeleteSnapshotRequest')
    DeleteSnapshotResult = Shapes::StructureShape.new(name: 'DeleteSnapshotResult')
    DeleteTrustRequest = Shapes::StructureShape.new(name: 'DeleteTrustRequest')
    DeleteTrustResult = Shapes::StructureShape.new(name: 'DeleteTrustResult')
    DeregisterEventTopicRequest = Shapes::StructureShape.new(name: 'DeregisterEventTopicRequest')
    DeregisterEventTopicResult = Shapes::StructureShape.new(name: 'DeregisterEventTopicResult')
    DescribeConditionalForwardersRequest = Shapes::StructureShape.new(name: 'DescribeConditionalForwardersRequest')
    DescribeConditionalForwardersResult = Shapes::StructureShape.new(name: 'DescribeConditionalForwardersResult')
    DescribeDirectoriesRequest = Shapes::StructureShape.new(name: 'DescribeDirectoriesRequest')
    DescribeDirectoriesResult = Shapes::StructureShape.new(name: 'DescribeDirectoriesResult')
    DescribeDomainControllersRequest = Shapes::StructureShape.new(name: 'DescribeDomainControllersRequest')
    DescribeDomainControllersResult = Shapes::StructureShape.new(name: 'DescribeDomainControllersResult')
    DescribeEventTopicsRequest = Shapes::StructureShape.new(name: 'DescribeEventTopicsRequest')
    DescribeEventTopicsResult = Shapes::StructureShape.new(name: 'DescribeEventTopicsResult')
    DescribeSnapshotsRequest = Shapes::StructureShape.new(name: 'DescribeSnapshotsRequest')
    DescribeSnapshotsResult = Shapes::StructureShape.new(name: 'DescribeSnapshotsResult')
    DescribeTrustsRequest = Shapes::StructureShape.new(name: 'DescribeTrustsRequest')
    DescribeTrustsResult = Shapes::StructureShape.new(name: 'DescribeTrustsResult')
    Description = Shapes::StringShape.new(name: 'Description')
    DesiredNumberOfDomainControllers = Shapes::IntegerShape.new(name: 'DesiredNumberOfDomainControllers')
    DirectoryConnectSettings = Shapes::StructureShape.new(name: 'DirectoryConnectSettings')
    DirectoryConnectSettingsDescription = Shapes::StructureShape.new(name: 'DirectoryConnectSettingsDescription')
    DirectoryDescription = Shapes::StructureShape.new(name: 'DirectoryDescription')
    DirectoryDescriptions = Shapes::ListShape.new(name: 'DirectoryDescriptions')
    DirectoryEdition = Shapes::StringShape.new(name: 'DirectoryEdition')
    DirectoryId = Shapes::StringShape.new(name: 'DirectoryId')
    DirectoryIds = Shapes::ListShape.new(name: 'DirectoryIds')
    DirectoryLimitExceededException = Shapes::StructureShape.new(name: 'DirectoryLimitExceededException')
    DirectoryLimits = Shapes::StructureShape.new(name: 'DirectoryLimits')
    DirectoryName = Shapes::StringShape.new(name: 'DirectoryName')
    DirectoryShortName = Shapes::StringShape.new(name: 'DirectoryShortName')
    DirectorySize = Shapes::StringShape.new(name: 'DirectorySize')
    DirectoryStage = Shapes::StringShape.new(name: 'DirectoryStage')
    DirectoryType = Shapes::StringShape.new(name: 'DirectoryType')
    DirectoryUnavailableException = Shapes::StructureShape.new(name: 'DirectoryUnavailableException')
    DirectoryVpcSettings = Shapes::StructureShape.new(name: 'DirectoryVpcSettings')
    DirectoryVpcSettingsDescription = Shapes::StructureShape.new(name: 'DirectoryVpcSettingsDescription')
    DisableRadiusRequest = Shapes::StructureShape.new(name: 'DisableRadiusRequest')
    DisableRadiusResult = Shapes::StructureShape.new(name: 'DisableRadiusResult')
    DisableSsoRequest = Shapes::StructureShape.new(name: 'DisableSsoRequest')
    DisableSsoResult = Shapes::StructureShape.new(name: 'DisableSsoResult')
    DnsIpAddrs = Shapes::ListShape.new(name: 'DnsIpAddrs')
    DomainController = Shapes::StructureShape.new(name: 'DomainController')
    DomainControllerId = Shapes::StringShape.new(name: 'DomainControllerId')
    DomainControllerIds = Shapes::ListShape.new(name: 'DomainControllerIds')
    DomainControllerLimitExceededException = Shapes::StructureShape.new(name: 'DomainControllerLimitExceededException')
    DomainControllerStatus = Shapes::StringShape.new(name: 'DomainControllerStatus')
    DomainControllerStatusReason = Shapes::StringShape.new(name: 'DomainControllerStatusReason')
    DomainControllers = Shapes::ListShape.new(name: 'DomainControllers')
    EnableRadiusRequest = Shapes::StructureShape.new(name: 'EnableRadiusRequest')
    EnableRadiusResult = Shapes::StructureShape.new(name: 'EnableRadiusResult')
    EnableSsoRequest = Shapes::StructureShape.new(name: 'EnableSsoRequest')
    EnableSsoResult = Shapes::StructureShape.new(name: 'EnableSsoResult')
    EndDateTime = Shapes::TimestampShape.new(name: 'EndDateTime')
    EntityAlreadyExistsException = Shapes::StructureShape.new(name: 'EntityAlreadyExistsException')
    EntityDoesNotExistException = Shapes::StructureShape.new(name: 'EntityDoesNotExistException')
    EventTopic = Shapes::StructureShape.new(name: 'EventTopic')
    EventTopics = Shapes::ListShape.new(name: 'EventTopics')
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    GetDirectoryLimitsRequest = Shapes::StructureShape.new(name: 'GetDirectoryLimitsRequest')
    GetDirectoryLimitsResult = Shapes::StructureShape.new(name: 'GetDirectoryLimitsResult')
    GetSnapshotLimitsRequest = Shapes::StructureShape.new(name: 'GetSnapshotLimitsRequest')
    GetSnapshotLimitsResult = Shapes::StructureShape.new(name: 'GetSnapshotLimitsResult')
    InsufficientPermissionsException = Shapes::StructureShape.new(name: 'InsufficientPermissionsException')
    InvalidNextTokenException = Shapes::StructureShape.new(name: 'InvalidNextTokenException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    InvalidPasswordException = Shapes::StructureShape.new(name: 'InvalidPasswordException')
    IpAddr = Shapes::StringShape.new(name: 'IpAddr')
    IpAddrs = Shapes::ListShape.new(name: 'IpAddrs')
    IpRoute = Shapes::StructureShape.new(name: 'IpRoute')
    IpRouteInfo = Shapes::StructureShape.new(name: 'IpRouteInfo')
    IpRouteLimitExceededException = Shapes::StructureShape.new(name: 'IpRouteLimitExceededException')
    IpRouteStatusMsg = Shapes::StringShape.new(name: 'IpRouteStatusMsg')
    IpRouteStatusReason = Shapes::StringShape.new(name: 'IpRouteStatusReason')
    IpRoutes = Shapes::ListShape.new(name: 'IpRoutes')
    IpRoutesInfo = Shapes::ListShape.new(name: 'IpRoutesInfo')
    LastUpdatedDateTime = Shapes::TimestampShape.new(name: 'LastUpdatedDateTime')
    LaunchTime = Shapes::TimestampShape.new(name: 'LaunchTime')
    LdifContent = Shapes::StringShape.new(name: 'LdifContent')
    Limit = Shapes::IntegerShape.new(name: 'Limit')
    ListIpRoutesRequest = Shapes::StructureShape.new(name: 'ListIpRoutesRequest')
    ListIpRoutesResult = Shapes::StructureShape.new(name: 'ListIpRoutesResult')
    ListLogSubscriptionsRequest = Shapes::StructureShape.new(name: 'ListLogSubscriptionsRequest')
    ListLogSubscriptionsResult = Shapes::StructureShape.new(name: 'ListLogSubscriptionsResult')
    ListSchemaExtensionsRequest = Shapes::StructureShape.new(name: 'ListSchemaExtensionsRequest')
    ListSchemaExtensionsResult = Shapes::StructureShape.new(name: 'ListSchemaExtensionsResult')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResult = Shapes::StructureShape.new(name: 'ListTagsForResourceResult')
    LogGroupName = Shapes::StringShape.new(name: 'LogGroupName')
    LogSubscription = Shapes::StructureShape.new(name: 'LogSubscription')
    LogSubscriptions = Shapes::ListShape.new(name: 'LogSubscriptions')
    ManualSnapshotsLimitReached = Shapes::BooleanShape.new(name: 'ManualSnapshotsLimitReached')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OrganizationalUnitDN = Shapes::StringShape.new(name: 'OrganizationalUnitDN')
    Password = Shapes::StringShape.new(name: 'Password')
    PortNumber = Shapes::IntegerShape.new(name: 'PortNumber')
    RadiusAuthenticationProtocol = Shapes::StringShape.new(name: 'RadiusAuthenticationProtocol')
    RadiusDisplayLabel = Shapes::StringShape.new(name: 'RadiusDisplayLabel')
    RadiusRetries = Shapes::IntegerShape.new(name: 'RadiusRetries')
    RadiusSettings = Shapes::StructureShape.new(name: 'RadiusSettings')
    RadiusSharedSecret = Shapes::StringShape.new(name: 'RadiusSharedSecret')
    RadiusStatus = Shapes::StringShape.new(name: 'RadiusStatus')
    RadiusTimeout = Shapes::IntegerShape.new(name: 'RadiusTimeout')
    RegisterEventTopicRequest = Shapes::StructureShape.new(name: 'RegisterEventTopicRequest')
    RegisterEventTopicResult = Shapes::StructureShape.new(name: 'RegisterEventTopicResult')
    RemoteDomainName = Shapes::StringShape.new(name: 'RemoteDomainName')
    RemoteDomainNames = Shapes::ListShape.new(name: 'RemoteDomainNames')
    RemoveIpRoutesRequest = Shapes::StructureShape.new(name: 'RemoveIpRoutesRequest')
    RemoveIpRoutesResult = Shapes::StructureShape.new(name: 'RemoveIpRoutesResult')
    RemoveTagsFromResourceRequest = Shapes::StructureShape.new(name: 'RemoveTagsFromResourceRequest')
    RemoveTagsFromResourceResult = Shapes::StructureShape.new(name: 'RemoveTagsFromResourceResult')
    ReplicationScope = Shapes::StringShape.new(name: 'ReplicationScope')
    RequestId = Shapes::StringShape.new(name: 'RequestId')
    ResetUserPasswordRequest = Shapes::StructureShape.new(name: 'ResetUserPasswordRequest')
    ResetUserPasswordResult = Shapes::StructureShape.new(name: 'ResetUserPasswordResult')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    RestoreFromSnapshotRequest = Shapes::StructureShape.new(name: 'RestoreFromSnapshotRequest')
    RestoreFromSnapshotResult = Shapes::StructureShape.new(name: 'RestoreFromSnapshotResult')
    SID = Shapes::StringShape.new(name: 'SID')
    SchemaExtensionId = Shapes::StringShape.new(name: 'SchemaExtensionId')
    SchemaExtensionInfo = Shapes::StructureShape.new(name: 'SchemaExtensionInfo')
    SchemaExtensionStatus = Shapes::StringShape.new(name: 'SchemaExtensionStatus')
    SchemaExtensionStatusReason = Shapes::StringShape.new(name: 'SchemaExtensionStatusReason')
    SchemaExtensionsInfo = Shapes::ListShape.new(name: 'SchemaExtensionsInfo')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    Server = Shapes::StringShape.new(name: 'Server')
    Servers = Shapes::ListShape.new(name: 'Servers')
    ServiceException = Shapes::StructureShape.new(name: 'ServiceException')
    Snapshot = Shapes::StructureShape.new(name: 'Snapshot')
    SnapshotId = Shapes::StringShape.new(name: 'SnapshotId')
    SnapshotIds = Shapes::ListShape.new(name: 'SnapshotIds')
    SnapshotLimitExceededException = Shapes::StructureShape.new(name: 'SnapshotLimitExceededException')
    SnapshotLimits = Shapes::StructureShape.new(name: 'SnapshotLimits')
    SnapshotName = Shapes::StringShape.new(name: 'SnapshotName')
    SnapshotStatus = Shapes::StringShape.new(name: 'SnapshotStatus')
    SnapshotType = Shapes::StringShape.new(name: 'SnapshotType')
    Snapshots = Shapes::ListShape.new(name: 'Snapshots')
    SsoEnabled = Shapes::BooleanShape.new(name: 'SsoEnabled')
    StageReason = Shapes::StringShape.new(name: 'StageReason')
    StartDateTime = Shapes::TimestampShape.new(name: 'StartDateTime')
    StartSchemaExtensionRequest = Shapes::StructureShape.new(name: 'StartSchemaExtensionRequest')
    StartSchemaExtensionResult = Shapes::StructureShape.new(name: 'StartSchemaExtensionResult')
    StartTime = Shapes::TimestampShape.new(name: 'StartTime')
    StateLastUpdatedDateTime = Shapes::TimestampShape.new(name: 'StateLastUpdatedDateTime')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubnetIds = Shapes::ListShape.new(name: 'SubnetIds')
    SubscriptionCreatedDateTime = Shapes::TimestampShape.new(name: 'SubscriptionCreatedDateTime')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagLimitExceededException = Shapes::StructureShape.new(name: 'TagLimitExceededException')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::ListShape.new(name: 'Tags')
    TopicArn = Shapes::StringShape.new(name: 'TopicArn')
    TopicName = Shapes::StringShape.new(name: 'TopicName')
    TopicNames = Shapes::ListShape.new(name: 'TopicNames')
    TopicStatus = Shapes::StringShape.new(name: 'TopicStatus')
    Trust = Shapes::StructureShape.new(name: 'Trust')
    TrustDirection = Shapes::StringShape.new(name: 'TrustDirection')
    TrustId = Shapes::StringShape.new(name: 'TrustId')
    TrustIds = Shapes::ListShape.new(name: 'TrustIds')
    TrustPassword = Shapes::StringShape.new(name: 'TrustPassword')
    TrustState = Shapes::StringShape.new(name: 'TrustState')
    TrustStateReason = Shapes::StringShape.new(name: 'TrustStateReason')
    TrustType = Shapes::StringShape.new(name: 'TrustType')
    Trusts = Shapes::ListShape.new(name: 'Trusts')
    UnsupportedOperationException = Shapes::StructureShape.new(name: 'UnsupportedOperationException')
    UpdateConditionalForwarderRequest = Shapes::StructureShape.new(name: 'UpdateConditionalForwarderRequest')
    UpdateConditionalForwarderResult = Shapes::StructureShape.new(name: 'UpdateConditionalForwarderResult')
    UpdateNumberOfDomainControllersRequest = Shapes::StructureShape.new(name: 'UpdateNumberOfDomainControllersRequest')
    UpdateNumberOfDomainControllersResult = Shapes::StructureShape.new(name: 'UpdateNumberOfDomainControllersResult')
    UpdateRadiusRequest = Shapes::StructureShape.new(name: 'UpdateRadiusRequest')
    UpdateRadiusResult = Shapes::StructureShape.new(name: 'UpdateRadiusResult')
    UpdateSecurityGroupForDirectoryControllers = Shapes::BooleanShape.new(name: 'UpdateSecurityGroupForDirectoryControllers')
    UseSameUsername = Shapes::BooleanShape.new(name: 'UseSameUsername')
    UserDoesNotExistException = Shapes::StructureShape.new(name: 'UserDoesNotExistException')
    UserName = Shapes::StringShape.new(name: 'UserName')
    UserPassword = Shapes::StringShape.new(name: 'UserPassword')
    VerifyTrustRequest = Shapes::StructureShape.new(name: 'VerifyTrustRequest')
    VerifyTrustResult = Shapes::StructureShape.new(name: 'VerifyTrustResult')
    VpcId = Shapes::StringShape.new(name: 'VpcId')

    AddIpRoutesRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "DirectoryId"))
    AddIpRoutesRequest.add_member(:ip_routes, Shapes::ShapeRef.new(shape: IpRoutes, required: true, location_name: "IpRoutes"))
    AddIpRoutesRequest.add_member(:update_security_group_for_directory_controllers, Shapes::ShapeRef.new(shape: UpdateSecurityGroupForDirectoryControllers, location_name: "UpdateSecurityGroupForDirectoryControllers"))
    AddIpRoutesRequest.struct_class = Types::AddIpRoutesRequest

    AddIpRoutesResult.struct_class = Types::AddIpRoutesResult

    AddTagsToResourceRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
    AddTagsToResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    AddTagsToResourceRequest.struct_class = Types::AddTagsToResourceRequest

    AddTagsToResourceResult.struct_class = Types::AddTagsToResourceResult

    Attribute.add_member(:name, Shapes::ShapeRef.new(shape: AttributeName, location_name: "Name"))
    Attribute.add_member(:value, Shapes::ShapeRef.new(shape: AttributeValue, location_name: "Value"))
    Attribute.struct_class = Types::Attribute

    Attributes.member = Shapes::ShapeRef.new(shape: Attribute)

    AvailabilityZones.member = Shapes::ShapeRef.new(shape: AvailabilityZone)

    CancelSchemaExtensionRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "DirectoryId"))
    CancelSchemaExtensionRequest.add_member(:schema_extension_id, Shapes::ShapeRef.new(shape: SchemaExtensionId, required: true, location_name: "SchemaExtensionId"))
    CancelSchemaExtensionRequest.struct_class = Types::CancelSchemaExtensionRequest

    CancelSchemaExtensionResult.struct_class = Types::CancelSchemaExtensionResult

    CidrIps.member = Shapes::ShapeRef.new(shape: CidrIp)

    Computer.add_member(:computer_id, Shapes::ShapeRef.new(shape: SID, location_name: "ComputerId"))
    Computer.add_member(:computer_name, Shapes::ShapeRef.new(shape: ComputerName, location_name: "ComputerName"))
    Computer.add_member(:computer_attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "ComputerAttributes"))
    Computer.struct_class = Types::Computer

    ConditionalForwarder.add_member(:remote_domain_name, Shapes::ShapeRef.new(shape: RemoteDomainName, location_name: "RemoteDomainName"))
    ConditionalForwarder.add_member(:dns_ip_addrs, Shapes::ShapeRef.new(shape: DnsIpAddrs, location_name: "DnsIpAddrs"))
    ConditionalForwarder.add_member(:replication_scope, Shapes::ShapeRef.new(shape: ReplicationScope, location_name: "ReplicationScope"))
    ConditionalForwarder.struct_class = Types::ConditionalForwarder

    ConditionalForwarders.member = Shapes::ShapeRef.new(shape: ConditionalForwarder)

    ConnectDirectoryRequest.add_member(:name, Shapes::ShapeRef.new(shape: DirectoryName, required: true, location_name: "Name"))
    ConnectDirectoryRequest.add_member(:short_name, Shapes::ShapeRef.new(shape: DirectoryShortName, location_name: "ShortName"))
    ConnectDirectoryRequest.add_member(:password, Shapes::ShapeRef.new(shape: ConnectPassword, required: true, location_name: "Password"))
    ConnectDirectoryRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    ConnectDirectoryRequest.add_member(:size, Shapes::ShapeRef.new(shape: DirectorySize, required: true, location_name: "Size"))
    ConnectDirectoryRequest.add_member(:connect_settings, Shapes::ShapeRef.new(shape: DirectoryConnectSettings, required: true, location_name: "ConnectSettings"))
    ConnectDirectoryRequest.struct_class = Types::ConnectDirectoryRequest

    ConnectDirectoryResult.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    ConnectDirectoryResult.struct_class = Types::ConnectDirectoryResult

    CreateAliasRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "DirectoryId"))
    CreateAliasRequest.add_member(:alias, Shapes::ShapeRef.new(shape: AliasName, required: true, location_name: "Alias"))
    CreateAliasRequest.struct_class = Types::CreateAliasRequest

    CreateAliasResult.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    CreateAliasResult.add_member(:alias, Shapes::ShapeRef.new(shape: AliasName, location_name: "Alias"))
    CreateAliasResult.struct_class = Types::CreateAliasResult

    CreateComputerRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "DirectoryId"))
    CreateComputerRequest.add_member(:computer_name, Shapes::ShapeRef.new(shape: ComputerName, required: true, location_name: "ComputerName"))
    CreateComputerRequest.add_member(:password, Shapes::ShapeRef.new(shape: ComputerPassword, required: true, location_name: "Password"))
    CreateComputerRequest.add_member(:organizational_unit_distinguished_name, Shapes::ShapeRef.new(shape: OrganizationalUnitDN, location_name: "OrganizationalUnitDistinguishedName"))
    CreateComputerRequest.add_member(:computer_attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "ComputerAttributes"))
    CreateComputerRequest.struct_class = Types::CreateComputerRequest

    CreateComputerResult.add_member(:computer, Shapes::ShapeRef.new(shape: Computer, location_name: "Computer"))
    CreateComputerResult.struct_class = Types::CreateComputerResult

    CreateConditionalForwarderRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "DirectoryId"))
    CreateConditionalForwarderRequest.add_member(:remote_domain_name, Shapes::ShapeRef.new(shape: RemoteDomainName, required: true, location_name: "RemoteDomainName"))
    CreateConditionalForwarderRequest.add_member(:dns_ip_addrs, Shapes::ShapeRef.new(shape: DnsIpAddrs, required: true, location_name: "DnsIpAddrs"))
    CreateConditionalForwarderRequest.struct_class = Types::CreateConditionalForwarderRequest

    CreateConditionalForwarderResult.struct_class = Types::CreateConditionalForwarderResult

    CreateDirectoryRequest.add_member(:name, Shapes::ShapeRef.new(shape: DirectoryName, required: true, location_name: "Name"))
    CreateDirectoryRequest.add_member(:short_name, Shapes::ShapeRef.new(shape: DirectoryShortName, location_name: "ShortName"))
    CreateDirectoryRequest.add_member(:password, Shapes::ShapeRef.new(shape: Password, required: true, location_name: "Password"))
    CreateDirectoryRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateDirectoryRequest.add_member(:size, Shapes::ShapeRef.new(shape: DirectorySize, required: true, location_name: "Size"))
    CreateDirectoryRequest.add_member(:vpc_settings, Shapes::ShapeRef.new(shape: DirectoryVpcSettings, location_name: "VpcSettings"))
    CreateDirectoryRequest.struct_class = Types::CreateDirectoryRequest

    CreateDirectoryResult.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    CreateDirectoryResult.struct_class = Types::CreateDirectoryResult

    CreateLogSubscriptionRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "DirectoryId"))
    CreateLogSubscriptionRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "LogGroupName"))
    CreateLogSubscriptionRequest.struct_class = Types::CreateLogSubscriptionRequest

    CreateLogSubscriptionResult.struct_class = Types::CreateLogSubscriptionResult

    CreateMicrosoftADRequest.add_member(:name, Shapes::ShapeRef.new(shape: DirectoryName, required: true, location_name: "Name"))
    CreateMicrosoftADRequest.add_member(:short_name, Shapes::ShapeRef.new(shape: DirectoryShortName, location_name: "ShortName"))
    CreateMicrosoftADRequest.add_member(:password, Shapes::ShapeRef.new(shape: Password, required: true, location_name: "Password"))
    CreateMicrosoftADRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateMicrosoftADRequest.add_member(:vpc_settings, Shapes::ShapeRef.new(shape: DirectoryVpcSettings, required: true, location_name: "VpcSettings"))
    CreateMicrosoftADRequest.add_member(:edition, Shapes::ShapeRef.new(shape: DirectoryEdition, location_name: "Edition"))
    CreateMicrosoftADRequest.struct_class = Types::CreateMicrosoftADRequest

    CreateMicrosoftADResult.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    CreateMicrosoftADResult.struct_class = Types::CreateMicrosoftADResult

    CreateSnapshotRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "DirectoryId"))
    CreateSnapshotRequest.add_member(:name, Shapes::ShapeRef.new(shape: SnapshotName, location_name: "Name"))
    CreateSnapshotRequest.struct_class = Types::CreateSnapshotRequest

    CreateSnapshotResult.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, location_name: "SnapshotId"))
    CreateSnapshotResult.struct_class = Types::CreateSnapshotResult

    CreateTrustRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "DirectoryId"))
    CreateTrustRequest.add_member(:remote_domain_name, Shapes::ShapeRef.new(shape: RemoteDomainName, required: true, location_name: "RemoteDomainName"))
    CreateTrustRequest.add_member(:trust_password, Shapes::ShapeRef.new(shape: TrustPassword, required: true, location_name: "TrustPassword"))
    CreateTrustRequest.add_member(:trust_direction, Shapes::ShapeRef.new(shape: TrustDirection, required: true, location_name: "TrustDirection"))
    CreateTrustRequest.add_member(:trust_type, Shapes::ShapeRef.new(shape: TrustType, location_name: "TrustType"))
    CreateTrustRequest.add_member(:conditional_forwarder_ip_addrs, Shapes::ShapeRef.new(shape: DnsIpAddrs, location_name: "ConditionalForwarderIpAddrs"))
    CreateTrustRequest.struct_class = Types::CreateTrustRequest

    CreateTrustResult.add_member(:trust_id, Shapes::ShapeRef.new(shape: TrustId, location_name: "TrustId"))
    CreateTrustResult.struct_class = Types::CreateTrustResult

    DeleteConditionalForwarderRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "DirectoryId"))
    DeleteConditionalForwarderRequest.add_member(:remote_domain_name, Shapes::ShapeRef.new(shape: RemoteDomainName, required: true, location_name: "RemoteDomainName"))
    DeleteConditionalForwarderRequest.struct_class = Types::DeleteConditionalForwarderRequest

    DeleteConditionalForwarderResult.struct_class = Types::DeleteConditionalForwarderResult

    DeleteDirectoryRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "DirectoryId"))
    DeleteDirectoryRequest.struct_class = Types::DeleteDirectoryRequest

    DeleteDirectoryResult.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    DeleteDirectoryResult.struct_class = Types::DeleteDirectoryResult

    DeleteLogSubscriptionRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "DirectoryId"))
    DeleteLogSubscriptionRequest.struct_class = Types::DeleteLogSubscriptionRequest

    DeleteLogSubscriptionResult.struct_class = Types::DeleteLogSubscriptionResult

    DeleteSnapshotRequest.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, required: true, location_name: "SnapshotId"))
    DeleteSnapshotRequest.struct_class = Types::DeleteSnapshotRequest

    DeleteSnapshotResult.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, location_name: "SnapshotId"))
    DeleteSnapshotResult.struct_class = Types::DeleteSnapshotResult

    DeleteTrustRequest.add_member(:trust_id, Shapes::ShapeRef.new(shape: TrustId, required: true, location_name: "TrustId"))
    DeleteTrustRequest.add_member(:delete_associated_conditional_forwarder, Shapes::ShapeRef.new(shape: DeleteAssociatedConditionalForwarder, location_name: "DeleteAssociatedConditionalForwarder"))
    DeleteTrustRequest.struct_class = Types::DeleteTrustRequest

    DeleteTrustResult.add_member(:trust_id, Shapes::ShapeRef.new(shape: TrustId, location_name: "TrustId"))
    DeleteTrustResult.struct_class = Types::DeleteTrustResult

    DeregisterEventTopicRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "DirectoryId"))
    DeregisterEventTopicRequest.add_member(:topic_name, Shapes::ShapeRef.new(shape: TopicName, required: true, location_name: "TopicName"))
    DeregisterEventTopicRequest.struct_class = Types::DeregisterEventTopicRequest

    DeregisterEventTopicResult.struct_class = Types::DeregisterEventTopicResult

    DescribeConditionalForwardersRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "DirectoryId"))
    DescribeConditionalForwardersRequest.add_member(:remote_domain_names, Shapes::ShapeRef.new(shape: RemoteDomainNames, location_name: "RemoteDomainNames"))
    DescribeConditionalForwardersRequest.struct_class = Types::DescribeConditionalForwardersRequest

    DescribeConditionalForwardersResult.add_member(:conditional_forwarders, Shapes::ShapeRef.new(shape: ConditionalForwarders, location_name: "ConditionalForwarders"))
    DescribeConditionalForwardersResult.struct_class = Types::DescribeConditionalForwardersResult

    DescribeDirectoriesRequest.add_member(:directory_ids, Shapes::ShapeRef.new(shape: DirectoryIds, location_name: "DirectoryIds"))
    DescribeDirectoriesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeDirectoriesRequest.add_member(:limit, Shapes::ShapeRef.new(shape: Limit, location_name: "Limit"))
    DescribeDirectoriesRequest.struct_class = Types::DescribeDirectoriesRequest

    DescribeDirectoriesResult.add_member(:directory_descriptions, Shapes::ShapeRef.new(shape: DirectoryDescriptions, location_name: "DirectoryDescriptions"))
    DescribeDirectoriesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeDirectoriesResult.struct_class = Types::DescribeDirectoriesResult

    DescribeDomainControllersRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "DirectoryId"))
    DescribeDomainControllersRequest.add_member(:domain_controller_ids, Shapes::ShapeRef.new(shape: DomainControllerIds, location_name: "DomainControllerIds"))
    DescribeDomainControllersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeDomainControllersRequest.add_member(:limit, Shapes::ShapeRef.new(shape: Limit, location_name: "Limit"))
    DescribeDomainControllersRequest.struct_class = Types::DescribeDomainControllersRequest

    DescribeDomainControllersResult.add_member(:domain_controllers, Shapes::ShapeRef.new(shape: DomainControllers, location_name: "DomainControllers"))
    DescribeDomainControllersResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeDomainControllersResult.struct_class = Types::DescribeDomainControllersResult

    DescribeEventTopicsRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    DescribeEventTopicsRequest.add_member(:topic_names, Shapes::ShapeRef.new(shape: TopicNames, location_name: "TopicNames"))
    DescribeEventTopicsRequest.struct_class = Types::DescribeEventTopicsRequest

    DescribeEventTopicsResult.add_member(:event_topics, Shapes::ShapeRef.new(shape: EventTopics, location_name: "EventTopics"))
    DescribeEventTopicsResult.struct_class = Types::DescribeEventTopicsResult

    DescribeSnapshotsRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    DescribeSnapshotsRequest.add_member(:snapshot_ids, Shapes::ShapeRef.new(shape: SnapshotIds, location_name: "SnapshotIds"))
    DescribeSnapshotsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeSnapshotsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: Limit, location_name: "Limit"))
    DescribeSnapshotsRequest.struct_class = Types::DescribeSnapshotsRequest

    DescribeSnapshotsResult.add_member(:snapshots, Shapes::ShapeRef.new(shape: Snapshots, location_name: "Snapshots"))
    DescribeSnapshotsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeSnapshotsResult.struct_class = Types::DescribeSnapshotsResult

    DescribeTrustsRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    DescribeTrustsRequest.add_member(:trust_ids, Shapes::ShapeRef.new(shape: TrustIds, location_name: "TrustIds"))
    DescribeTrustsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeTrustsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: Limit, location_name: "Limit"))
    DescribeTrustsRequest.struct_class = Types::DescribeTrustsRequest

    DescribeTrustsResult.add_member(:trusts, Shapes::ShapeRef.new(shape: Trusts, location_name: "Trusts"))
    DescribeTrustsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeTrustsResult.struct_class = Types::DescribeTrustsResult

    DirectoryConnectSettings.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, required: true, location_name: "VpcId"))
    DirectoryConnectSettings.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, required: true, location_name: "SubnetIds"))
    DirectoryConnectSettings.add_member(:customer_dns_ips, Shapes::ShapeRef.new(shape: DnsIpAddrs, required: true, location_name: "CustomerDnsIps"))
    DirectoryConnectSettings.add_member(:customer_user_name, Shapes::ShapeRef.new(shape: UserName, required: true, location_name: "CustomerUserName"))
    DirectoryConnectSettings.struct_class = Types::DirectoryConnectSettings

    DirectoryConnectSettingsDescription.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "VpcId"))
    DirectoryConnectSettingsDescription.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, location_name: "SubnetIds"))
    DirectoryConnectSettingsDescription.add_member(:customer_user_name, Shapes::ShapeRef.new(shape: UserName, location_name: "CustomerUserName"))
    DirectoryConnectSettingsDescription.add_member(:security_group_id, Shapes::ShapeRef.new(shape: SecurityGroupId, location_name: "SecurityGroupId"))
    DirectoryConnectSettingsDescription.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: "AvailabilityZones"))
    DirectoryConnectSettingsDescription.add_member(:connect_ips, Shapes::ShapeRef.new(shape: IpAddrs, location_name: "ConnectIps"))
    DirectoryConnectSettingsDescription.struct_class = Types::DirectoryConnectSettingsDescription

    DirectoryDescription.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    DirectoryDescription.add_member(:name, Shapes::ShapeRef.new(shape: DirectoryName, location_name: "Name"))
    DirectoryDescription.add_member(:short_name, Shapes::ShapeRef.new(shape: DirectoryShortName, location_name: "ShortName"))
    DirectoryDescription.add_member(:size, Shapes::ShapeRef.new(shape: DirectorySize, location_name: "Size"))
    DirectoryDescription.add_member(:edition, Shapes::ShapeRef.new(shape: DirectoryEdition, location_name: "Edition"))
    DirectoryDescription.add_member(:alias, Shapes::ShapeRef.new(shape: AliasName, location_name: "Alias"))
    DirectoryDescription.add_member(:access_url, Shapes::ShapeRef.new(shape: AccessUrl, location_name: "AccessUrl"))
    DirectoryDescription.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    DirectoryDescription.add_member(:dns_ip_addrs, Shapes::ShapeRef.new(shape: DnsIpAddrs, location_name: "DnsIpAddrs"))
    DirectoryDescription.add_member(:stage, Shapes::ShapeRef.new(shape: DirectoryStage, location_name: "Stage"))
    DirectoryDescription.add_member(:launch_time, Shapes::ShapeRef.new(shape: LaunchTime, location_name: "LaunchTime"))
    DirectoryDescription.add_member(:stage_last_updated_date_time, Shapes::ShapeRef.new(shape: LastUpdatedDateTime, location_name: "StageLastUpdatedDateTime"))
    DirectoryDescription.add_member(:type, Shapes::ShapeRef.new(shape: DirectoryType, location_name: "Type"))
    DirectoryDescription.add_member(:vpc_settings, Shapes::ShapeRef.new(shape: DirectoryVpcSettingsDescription, location_name: "VpcSettings"))
    DirectoryDescription.add_member(:connect_settings, Shapes::ShapeRef.new(shape: DirectoryConnectSettingsDescription, location_name: "ConnectSettings"))
    DirectoryDescription.add_member(:radius_settings, Shapes::ShapeRef.new(shape: RadiusSettings, location_name: "RadiusSettings"))
    DirectoryDescription.add_member(:radius_status, Shapes::ShapeRef.new(shape: RadiusStatus, location_name: "RadiusStatus"))
    DirectoryDescription.add_member(:stage_reason, Shapes::ShapeRef.new(shape: StageReason, location_name: "StageReason"))
    DirectoryDescription.add_member(:sso_enabled, Shapes::ShapeRef.new(shape: SsoEnabled, location_name: "SsoEnabled"))
    DirectoryDescription.add_member(:desired_number_of_domain_controllers, Shapes::ShapeRef.new(shape: DesiredNumberOfDomainControllers, location_name: "DesiredNumberOfDomainControllers"))
    DirectoryDescription.struct_class = Types::DirectoryDescription

    DirectoryDescriptions.member = Shapes::ShapeRef.new(shape: DirectoryDescription)

    DirectoryIds.member = Shapes::ShapeRef.new(shape: DirectoryId)

    DirectoryLimits.add_member(:cloud_only_directories_limit, Shapes::ShapeRef.new(shape: Limit, location_name: "CloudOnlyDirectoriesLimit"))
    DirectoryLimits.add_member(:cloud_only_directories_current_count, Shapes::ShapeRef.new(shape: Limit, location_name: "CloudOnlyDirectoriesCurrentCount"))
    DirectoryLimits.add_member(:cloud_only_directories_limit_reached, Shapes::ShapeRef.new(shape: CloudOnlyDirectoriesLimitReached, location_name: "CloudOnlyDirectoriesLimitReached"))
    DirectoryLimits.add_member(:cloud_only_microsoft_ad_limit, Shapes::ShapeRef.new(shape: Limit, location_name: "CloudOnlyMicrosoftADLimit"))
    DirectoryLimits.add_member(:cloud_only_microsoft_ad_current_count, Shapes::ShapeRef.new(shape: Limit, location_name: "CloudOnlyMicrosoftADCurrentCount"))
    DirectoryLimits.add_member(:cloud_only_microsoft_ad_limit_reached, Shapes::ShapeRef.new(shape: CloudOnlyDirectoriesLimitReached, location_name: "CloudOnlyMicrosoftADLimitReached"))
    DirectoryLimits.add_member(:connected_directories_limit, Shapes::ShapeRef.new(shape: Limit, location_name: "ConnectedDirectoriesLimit"))
    DirectoryLimits.add_member(:connected_directories_current_count, Shapes::ShapeRef.new(shape: Limit, location_name: "ConnectedDirectoriesCurrentCount"))
    DirectoryLimits.add_member(:connected_directories_limit_reached, Shapes::ShapeRef.new(shape: ConnectedDirectoriesLimitReached, location_name: "ConnectedDirectoriesLimitReached"))
    DirectoryLimits.struct_class = Types::DirectoryLimits

    DirectoryVpcSettings.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, required: true, location_name: "VpcId"))
    DirectoryVpcSettings.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, required: true, location_name: "SubnetIds"))
    DirectoryVpcSettings.struct_class = Types::DirectoryVpcSettings

    DirectoryVpcSettingsDescription.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "VpcId"))
    DirectoryVpcSettingsDescription.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, location_name: "SubnetIds"))
    DirectoryVpcSettingsDescription.add_member(:security_group_id, Shapes::ShapeRef.new(shape: SecurityGroupId, location_name: "SecurityGroupId"))
    DirectoryVpcSettingsDescription.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: "AvailabilityZones"))
    DirectoryVpcSettingsDescription.struct_class = Types::DirectoryVpcSettingsDescription

    DisableRadiusRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "DirectoryId"))
    DisableRadiusRequest.struct_class = Types::DisableRadiusRequest

    DisableRadiusResult.struct_class = Types::DisableRadiusResult

    DisableSsoRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "DirectoryId"))
    DisableSsoRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, location_name: "UserName"))
    DisableSsoRequest.add_member(:password, Shapes::ShapeRef.new(shape: ConnectPassword, location_name: "Password"))
    DisableSsoRequest.struct_class = Types::DisableSsoRequest

    DisableSsoResult.struct_class = Types::DisableSsoResult

    DnsIpAddrs.member = Shapes::ShapeRef.new(shape: IpAddr)

    DomainController.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    DomainController.add_member(:domain_controller_id, Shapes::ShapeRef.new(shape: DomainControllerId, location_name: "DomainControllerId"))
    DomainController.add_member(:dns_ip_addr, Shapes::ShapeRef.new(shape: IpAddr, location_name: "DnsIpAddr"))
    DomainController.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "VpcId"))
    DomainController.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, location_name: "SubnetId"))
    DomainController.add_member(:availability_zone, Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "AvailabilityZone"))
    DomainController.add_member(:status, Shapes::ShapeRef.new(shape: DomainControllerStatus, location_name: "Status"))
    DomainController.add_member(:status_reason, Shapes::ShapeRef.new(shape: DomainControllerStatusReason, location_name: "StatusReason"))
    DomainController.add_member(:launch_time, Shapes::ShapeRef.new(shape: LaunchTime, location_name: "LaunchTime"))
    DomainController.add_member(:status_last_updated_date_time, Shapes::ShapeRef.new(shape: LastUpdatedDateTime, location_name: "StatusLastUpdatedDateTime"))
    DomainController.struct_class = Types::DomainController

    DomainControllerIds.member = Shapes::ShapeRef.new(shape: DomainControllerId)

    DomainControllers.member = Shapes::ShapeRef.new(shape: DomainController)

    EnableRadiusRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "DirectoryId"))
    EnableRadiusRequest.add_member(:radius_settings, Shapes::ShapeRef.new(shape: RadiusSettings, required: true, location_name: "RadiusSettings"))
    EnableRadiusRequest.struct_class = Types::EnableRadiusRequest

    EnableRadiusResult.struct_class = Types::EnableRadiusResult

    EnableSsoRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "DirectoryId"))
    EnableSsoRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, location_name: "UserName"))
    EnableSsoRequest.add_member(:password, Shapes::ShapeRef.new(shape: ConnectPassword, location_name: "Password"))
    EnableSsoRequest.struct_class = Types::EnableSsoRequest

    EnableSsoResult.struct_class = Types::EnableSsoResult

    EventTopic.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    EventTopic.add_member(:topic_name, Shapes::ShapeRef.new(shape: TopicName, location_name: "TopicName"))
    EventTopic.add_member(:topic_arn, Shapes::ShapeRef.new(shape: TopicArn, location_name: "TopicArn"))
    EventTopic.add_member(:created_date_time, Shapes::ShapeRef.new(shape: CreatedDateTime, location_name: "CreatedDateTime"))
    EventTopic.add_member(:status, Shapes::ShapeRef.new(shape: TopicStatus, location_name: "Status"))
    EventTopic.struct_class = Types::EventTopic

    EventTopics.member = Shapes::ShapeRef.new(shape: EventTopic)

    GetDirectoryLimitsRequest.struct_class = Types::GetDirectoryLimitsRequest

    GetDirectoryLimitsResult.add_member(:directory_limits, Shapes::ShapeRef.new(shape: DirectoryLimits, location_name: "DirectoryLimits"))
    GetDirectoryLimitsResult.struct_class = Types::GetDirectoryLimitsResult

    GetSnapshotLimitsRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "DirectoryId"))
    GetSnapshotLimitsRequest.struct_class = Types::GetSnapshotLimitsRequest

    GetSnapshotLimitsResult.add_member(:snapshot_limits, Shapes::ShapeRef.new(shape: SnapshotLimits, location_name: "SnapshotLimits"))
    GetSnapshotLimitsResult.struct_class = Types::GetSnapshotLimitsResult

    IpAddrs.member = Shapes::ShapeRef.new(shape: IpAddr)

    IpRoute.add_member(:cidr_ip, Shapes::ShapeRef.new(shape: CidrIp, location_name: "CidrIp"))
    IpRoute.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    IpRoute.struct_class = Types::IpRoute

    IpRouteInfo.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    IpRouteInfo.add_member(:cidr_ip, Shapes::ShapeRef.new(shape: CidrIp, location_name: "CidrIp"))
    IpRouteInfo.add_member(:ip_route_status_msg, Shapes::ShapeRef.new(shape: IpRouteStatusMsg, location_name: "IpRouteStatusMsg"))
    IpRouteInfo.add_member(:added_date_time, Shapes::ShapeRef.new(shape: AddedDateTime, location_name: "AddedDateTime"))
    IpRouteInfo.add_member(:ip_route_status_reason, Shapes::ShapeRef.new(shape: IpRouteStatusReason, location_name: "IpRouteStatusReason"))
    IpRouteInfo.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    IpRouteInfo.struct_class = Types::IpRouteInfo

    IpRoutes.member = Shapes::ShapeRef.new(shape: IpRoute)

    IpRoutesInfo.member = Shapes::ShapeRef.new(shape: IpRouteInfo)

    ListIpRoutesRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "DirectoryId"))
    ListIpRoutesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListIpRoutesRequest.add_member(:limit, Shapes::ShapeRef.new(shape: Limit, location_name: "Limit"))
    ListIpRoutesRequest.struct_class = Types::ListIpRoutesRequest

    ListIpRoutesResult.add_member(:ip_routes_info, Shapes::ShapeRef.new(shape: IpRoutesInfo, location_name: "IpRoutesInfo"))
    ListIpRoutesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListIpRoutesResult.struct_class = Types::ListIpRoutesResult

    ListLogSubscriptionsRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    ListLogSubscriptionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListLogSubscriptionsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: Limit, location_name: "Limit"))
    ListLogSubscriptionsRequest.struct_class = Types::ListLogSubscriptionsRequest

    ListLogSubscriptionsResult.add_member(:log_subscriptions, Shapes::ShapeRef.new(shape: LogSubscriptions, location_name: "LogSubscriptions"))
    ListLogSubscriptionsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListLogSubscriptionsResult.struct_class = Types::ListLogSubscriptionsResult

    ListSchemaExtensionsRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "DirectoryId"))
    ListSchemaExtensionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSchemaExtensionsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: Limit, location_name: "Limit"))
    ListSchemaExtensionsRequest.struct_class = Types::ListSchemaExtensionsRequest

    ListSchemaExtensionsResult.add_member(:schema_extensions_info, Shapes::ShapeRef.new(shape: SchemaExtensionsInfo, location_name: "SchemaExtensionsInfo"))
    ListSchemaExtensionsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSchemaExtensionsResult.struct_class = Types::ListSchemaExtensionsResult

    ListTagsForResourceRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
    ListTagsForResourceRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsForResourceRequest.add_member(:limit, Shapes::ShapeRef.new(shape: Limit, location_name: "Limit"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResult.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    ListTagsForResourceResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsForResourceResult.struct_class = Types::ListTagsForResourceResult

    LogSubscription.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    LogSubscription.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, location_name: "LogGroupName"))
    LogSubscription.add_member(:subscription_created_date_time, Shapes::ShapeRef.new(shape: SubscriptionCreatedDateTime, location_name: "SubscriptionCreatedDateTime"))
    LogSubscription.struct_class = Types::LogSubscription

    LogSubscriptions.member = Shapes::ShapeRef.new(shape: LogSubscription)

    RadiusSettings.add_member(:radius_servers, Shapes::ShapeRef.new(shape: Servers, location_name: "RadiusServers"))
    RadiusSettings.add_member(:radius_port, Shapes::ShapeRef.new(shape: PortNumber, location_name: "RadiusPort"))
    RadiusSettings.add_member(:radius_timeout, Shapes::ShapeRef.new(shape: RadiusTimeout, location_name: "RadiusTimeout"))
    RadiusSettings.add_member(:radius_retries, Shapes::ShapeRef.new(shape: RadiusRetries, location_name: "RadiusRetries"))
    RadiusSettings.add_member(:shared_secret, Shapes::ShapeRef.new(shape: RadiusSharedSecret, location_name: "SharedSecret"))
    RadiusSettings.add_member(:authentication_protocol, Shapes::ShapeRef.new(shape: RadiusAuthenticationProtocol, location_name: "AuthenticationProtocol"))
    RadiusSettings.add_member(:display_label, Shapes::ShapeRef.new(shape: RadiusDisplayLabel, location_name: "DisplayLabel"))
    RadiusSettings.add_member(:use_same_username, Shapes::ShapeRef.new(shape: UseSameUsername, location_name: "UseSameUsername"))
    RadiusSettings.struct_class = Types::RadiusSettings

    RegisterEventTopicRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "DirectoryId"))
    RegisterEventTopicRequest.add_member(:topic_name, Shapes::ShapeRef.new(shape: TopicName, required: true, location_name: "TopicName"))
    RegisterEventTopicRequest.struct_class = Types::RegisterEventTopicRequest

    RegisterEventTopicResult.struct_class = Types::RegisterEventTopicResult

    RemoteDomainNames.member = Shapes::ShapeRef.new(shape: RemoteDomainName)

    RemoveIpRoutesRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "DirectoryId"))
    RemoveIpRoutesRequest.add_member(:cidr_ips, Shapes::ShapeRef.new(shape: CidrIps, required: true, location_name: "CidrIps"))
    RemoveIpRoutesRequest.struct_class = Types::RemoveIpRoutesRequest

    RemoveIpRoutesResult.struct_class = Types::RemoveIpRoutesResult

    RemoveTagsFromResourceRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
    RemoveTagsFromResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location_name: "TagKeys"))
    RemoveTagsFromResourceRequest.struct_class = Types::RemoveTagsFromResourceRequest

    RemoveTagsFromResourceResult.struct_class = Types::RemoveTagsFromResourceResult

    ResetUserPasswordRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "DirectoryId"))
    ResetUserPasswordRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: CustomerUserName, required: true, location_name: "UserName"))
    ResetUserPasswordRequest.add_member(:new_password, Shapes::ShapeRef.new(shape: UserPassword, required: true, location_name: "NewPassword"))
    ResetUserPasswordRequest.struct_class = Types::ResetUserPasswordRequest

    ResetUserPasswordResult.struct_class = Types::ResetUserPasswordResult

    RestoreFromSnapshotRequest.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, required: true, location_name: "SnapshotId"))
    RestoreFromSnapshotRequest.struct_class = Types::RestoreFromSnapshotRequest

    RestoreFromSnapshotResult.struct_class = Types::RestoreFromSnapshotResult

    SchemaExtensionInfo.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    SchemaExtensionInfo.add_member(:schema_extension_id, Shapes::ShapeRef.new(shape: SchemaExtensionId, location_name: "SchemaExtensionId"))
    SchemaExtensionInfo.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    SchemaExtensionInfo.add_member(:schema_extension_status, Shapes::ShapeRef.new(shape: SchemaExtensionStatus, location_name: "SchemaExtensionStatus"))
    SchemaExtensionInfo.add_member(:schema_extension_status_reason, Shapes::ShapeRef.new(shape: SchemaExtensionStatusReason, location_name: "SchemaExtensionStatusReason"))
    SchemaExtensionInfo.add_member(:start_date_time, Shapes::ShapeRef.new(shape: StartDateTime, location_name: "StartDateTime"))
    SchemaExtensionInfo.add_member(:end_date_time, Shapes::ShapeRef.new(shape: EndDateTime, location_name: "EndDateTime"))
    SchemaExtensionInfo.struct_class = Types::SchemaExtensionInfo

    SchemaExtensionsInfo.member = Shapes::ShapeRef.new(shape: SchemaExtensionInfo)

    Servers.member = Shapes::ShapeRef.new(shape: Server)

    Snapshot.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    Snapshot.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, location_name: "SnapshotId"))
    Snapshot.add_member(:type, Shapes::ShapeRef.new(shape: SnapshotType, location_name: "Type"))
    Snapshot.add_member(:name, Shapes::ShapeRef.new(shape: SnapshotName, location_name: "Name"))
    Snapshot.add_member(:status, Shapes::ShapeRef.new(shape: SnapshotStatus, location_name: "Status"))
    Snapshot.add_member(:start_time, Shapes::ShapeRef.new(shape: StartTime, location_name: "StartTime"))
    Snapshot.struct_class = Types::Snapshot

    SnapshotIds.member = Shapes::ShapeRef.new(shape: SnapshotId)

    SnapshotLimits.add_member(:manual_snapshots_limit, Shapes::ShapeRef.new(shape: Limit, location_name: "ManualSnapshotsLimit"))
    SnapshotLimits.add_member(:manual_snapshots_current_count, Shapes::ShapeRef.new(shape: Limit, location_name: "ManualSnapshotsCurrentCount"))
    SnapshotLimits.add_member(:manual_snapshots_limit_reached, Shapes::ShapeRef.new(shape: ManualSnapshotsLimitReached, location_name: "ManualSnapshotsLimitReached"))
    SnapshotLimits.struct_class = Types::SnapshotLimits

    Snapshots.member = Shapes::ShapeRef.new(shape: Snapshot)

    StartSchemaExtensionRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "DirectoryId"))
    StartSchemaExtensionRequest.add_member(:create_snapshot_before_schema_extension, Shapes::ShapeRef.new(shape: CreateSnapshotBeforeSchemaExtension, required: true, location_name: "CreateSnapshotBeforeSchemaExtension"))
    StartSchemaExtensionRequest.add_member(:ldif_content, Shapes::ShapeRef.new(shape: LdifContent, required: true, location_name: "LdifContent"))
    StartSchemaExtensionRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, required: true, location_name: "Description"))
    StartSchemaExtensionRequest.struct_class = Types::StartSchemaExtensionRequest

    StartSchemaExtensionResult.add_member(:schema_extension_id, Shapes::ShapeRef.new(shape: SchemaExtensionId, location_name: "SchemaExtensionId"))
    StartSchemaExtensionResult.struct_class = Types::StartSchemaExtensionResult

    SubnetIds.member = Shapes::ShapeRef.new(shape: SubnetId)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    Tags.member = Shapes::ShapeRef.new(shape: Tag)

    TopicNames.member = Shapes::ShapeRef.new(shape: TopicName)

    Trust.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    Trust.add_member(:trust_id, Shapes::ShapeRef.new(shape: TrustId, location_name: "TrustId"))
    Trust.add_member(:remote_domain_name, Shapes::ShapeRef.new(shape: RemoteDomainName, location_name: "RemoteDomainName"))
    Trust.add_member(:trust_type, Shapes::ShapeRef.new(shape: TrustType, location_name: "TrustType"))
    Trust.add_member(:trust_direction, Shapes::ShapeRef.new(shape: TrustDirection, location_name: "TrustDirection"))
    Trust.add_member(:trust_state, Shapes::ShapeRef.new(shape: TrustState, location_name: "TrustState"))
    Trust.add_member(:created_date_time, Shapes::ShapeRef.new(shape: CreatedDateTime, location_name: "CreatedDateTime"))
    Trust.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: LastUpdatedDateTime, location_name: "LastUpdatedDateTime"))
    Trust.add_member(:state_last_updated_date_time, Shapes::ShapeRef.new(shape: StateLastUpdatedDateTime, location_name: "StateLastUpdatedDateTime"))
    Trust.add_member(:trust_state_reason, Shapes::ShapeRef.new(shape: TrustStateReason, location_name: "TrustStateReason"))
    Trust.struct_class = Types::Trust

    TrustIds.member = Shapes::ShapeRef.new(shape: TrustId)

    Trusts.member = Shapes::ShapeRef.new(shape: Trust)

    UpdateConditionalForwarderRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "DirectoryId"))
    UpdateConditionalForwarderRequest.add_member(:remote_domain_name, Shapes::ShapeRef.new(shape: RemoteDomainName, required: true, location_name: "RemoteDomainName"))
    UpdateConditionalForwarderRequest.add_member(:dns_ip_addrs, Shapes::ShapeRef.new(shape: DnsIpAddrs, required: true, location_name: "DnsIpAddrs"))
    UpdateConditionalForwarderRequest.struct_class = Types::UpdateConditionalForwarderRequest

    UpdateConditionalForwarderResult.struct_class = Types::UpdateConditionalForwarderResult

    UpdateNumberOfDomainControllersRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "DirectoryId"))
    UpdateNumberOfDomainControllersRequest.add_member(:desired_number, Shapes::ShapeRef.new(shape: DesiredNumberOfDomainControllers, required: true, location_name: "DesiredNumber"))
    UpdateNumberOfDomainControllersRequest.struct_class = Types::UpdateNumberOfDomainControllersRequest

    UpdateNumberOfDomainControllersResult.struct_class = Types::UpdateNumberOfDomainControllersResult

    UpdateRadiusRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "DirectoryId"))
    UpdateRadiusRequest.add_member(:radius_settings, Shapes::ShapeRef.new(shape: RadiusSettings, required: true, location_name: "RadiusSettings"))
    UpdateRadiusRequest.struct_class = Types::UpdateRadiusRequest

    UpdateRadiusResult.struct_class = Types::UpdateRadiusResult

    VerifyTrustRequest.add_member(:trust_id, Shapes::ShapeRef.new(shape: TrustId, required: true, location_name: "TrustId"))
    VerifyTrustRequest.struct_class = Types::VerifyTrustRequest

    VerifyTrustResult.add_member(:trust_id, Shapes::ShapeRef.new(shape: TrustId, location_name: "TrustId"))
    VerifyTrustResult.struct_class = Types::VerifyTrustResult


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2015-04-16"

      api.metadata = {
        "apiVersion" => "2015-04-16",
        "endpointPrefix" => "ds",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "Directory Service",
        "serviceFullName" => "AWS Directory Service",
        "serviceId" => "Directory Service",
        "signatureVersion" => "v4",
        "targetPrefix" => "DirectoryService_20150416",
        "uid" => "ds-2015-04-16",
      }

      api.add_operation(:add_ip_routes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddIpRoutes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddIpRoutesRequest)
        o.output = Shapes::ShapeRef.new(shape: AddIpRoutesResult)
        o.errors << Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: EntityAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: IpRouteLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:add_tags_to_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddTagsToResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddTagsToResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: AddTagsToResourceResult)
        o.errors << Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TagLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:cancel_schema_extension, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelSchemaExtension"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelSchemaExtensionRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelSchemaExtensionResult)
        o.errors << Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:connect_directory, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ConnectDirectory"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ConnectDirectoryRequest)
        o.output = Shapes::ShapeRef.new(shape: ConnectDirectoryResult)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:create_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAlias"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAliasResult)
        o.errors << Shapes::ShapeRef.new(shape: EntityAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:create_computer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateComputer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateComputerRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateComputerResult)
        o.errors << Shapes::ShapeRef.new(shape: AuthenticationFailedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: EntityAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:create_conditional_forwarder, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConditionalForwarder"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateConditionalForwarderRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateConditionalForwarderResult)
        o.errors << Shapes::ShapeRef.new(shape: EntityAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:create_directory, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDirectory"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDirectoryRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDirectoryResult)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:create_log_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLogSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLogSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLogSubscriptionResult)
        o.errors << Shapes::ShapeRef.new(shape: EntityAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientPermissionsException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:create_microsoft_ad, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMicrosoftAD"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateMicrosoftADRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMicrosoftADResult)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
      end)

      api.add_operation(:create_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:create_trust, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTrust"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateTrustRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTrustResult)
        o.errors << Shapes::ShapeRef.new(shape: EntityAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
      end)

      api.add_operation(:delete_conditional_forwarder, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConditionalForwarder"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteConditionalForwarderRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteConditionalForwarderResult)
        o.errors << Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:delete_directory, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDirectory"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDirectoryRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDirectoryResult)
        o.errors << Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:delete_log_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLogSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteLogSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteLogSubscriptionResult)
        o.errors << Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:delete_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:delete_trust, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTrust"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTrustRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTrustResult)
        o.errors << Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
      end)

      api.add_operation(:deregister_event_topic, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterEventTopic"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeregisterEventTopicRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterEventTopicResult)
        o.errors << Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:describe_conditional_forwarders, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeConditionalForwarders"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeConditionalForwardersRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeConditionalForwardersResult)
        o.errors << Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:describe_directories, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDirectories"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDirectoriesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDirectoriesResult)
        o.errors << Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:describe_domain_controllers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDomainControllers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDomainControllersRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDomainControllersResult)
        o.errors << Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_event_topics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEventTopics"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEventTopicsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEventTopicsResult)
        o.errors << Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:describe_snapshots, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSnapshots"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSnapshotsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSnapshotsResult)
        o.errors << Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:describe_trusts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTrusts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTrustsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTrustsResult)
        o.errors << Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
      end)

      api.add_operation(:disable_radius, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableRadius"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisableRadiusRequest)
        o.output = Shapes::ShapeRef.new(shape: DisableRadiusResult)
        o.errors << Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:disable_sso, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableSso"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisableSsoRequest)
        o.output = Shapes::ShapeRef.new(shape: DisableSsoResult)
        o.errors << Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientPermissionsException)
        o.errors << Shapes::ShapeRef.new(shape: AuthenticationFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:enable_radius, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableRadius"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: EnableRadiusRequest)
        o.output = Shapes::ShapeRef.new(shape: EnableRadiusResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: EntityAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:enable_sso, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableSso"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: EnableSsoRequest)
        o.output = Shapes::ShapeRef.new(shape: EnableSsoResult)
        o.errors << Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientPermissionsException)
        o.errors << Shapes::ShapeRef.new(shape: AuthenticationFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:get_directory_limits, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDirectoryLimits"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDirectoryLimitsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDirectoryLimitsResult)
        o.errors << Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:get_snapshot_limits, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSnapshotLimits"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSnapshotLimitsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSnapshotLimitsResult)
        o.errors << Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:list_ip_routes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIpRoutes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListIpRoutesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListIpRoutesResult)
        o.errors << Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:list_log_subscriptions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLogSubscriptions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListLogSubscriptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLogSubscriptionsResult)
        o.errors << Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:list_schema_extensions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSchemaExtensions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSchemaExtensionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSchemaExtensionsResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResult)
        o.errors << Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:register_event_topic, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterEventTopic"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterEventTopicRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterEventTopicResult)
        o.errors << Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:remove_ip_routes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveIpRoutes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveIpRoutesRequest)
        o.output = Shapes::ShapeRef.new(shape: RemoveIpRoutesResult)
        o.errors << Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:remove_tags_from_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveTagsFromResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveTagsFromResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: RemoveTagsFromResourceResult)
        o.errors << Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:reset_user_password, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResetUserPassword"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ResetUserPasswordRequest)
        o.output = Shapes::ShapeRef.new(shape: ResetUserPasswordResult)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: UserDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPasswordException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:restore_from_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestoreFromSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RestoreFromSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: RestoreFromSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:start_schema_extension, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartSchemaExtension"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartSchemaExtensionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartSchemaExtensionResult)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:update_conditional_forwarder, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateConditionalForwarder"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateConditionalForwarderRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateConditionalForwarderResult)
        o.errors << Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:update_number_of_domain_controllers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateNumberOfDomainControllers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateNumberOfDomainControllersRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateNumberOfDomainControllersResult)
        o.errors << Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: DomainControllerLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:update_radius, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRadius"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateRadiusRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRadiusResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:verify_trust, Seahorse::Model::Operation.new.tap do |o|
        o.name = "VerifyTrust"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: VerifyTrustRequest)
        o.output = Shapes::ShapeRef.new(shape: VerifyTrustResult)
        o.errors << Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
      end)
    end

  end
end
