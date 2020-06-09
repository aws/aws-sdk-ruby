# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MediaPackageVod
  # @api private
  module ClientApi

    include Seahorse::Model

    AdMarkers = Shapes::StringShape.new(name: 'AdMarkers')
    Asset = Shapes::StructureShape.new(name: 'Asset')
    AssetCreateParameters = Shapes::StructureShape.new(name: 'AssetCreateParameters')
    AssetList = Shapes::StructureShape.new(name: 'AssetList')
    AssetShallow = Shapes::StructureShape.new(name: 'AssetShallow')
    Authorization = Shapes::StructureShape.new(name: 'Authorization')
    CmafEncryption = Shapes::StructureShape.new(name: 'CmafEncryption')
    CmafPackage = Shapes::StructureShape.new(name: 'CmafPackage')
    CreateAssetRequest = Shapes::StructureShape.new(name: 'CreateAssetRequest')
    CreateAssetResponse = Shapes::StructureShape.new(name: 'CreateAssetResponse')
    CreatePackagingConfigurationRequest = Shapes::StructureShape.new(name: 'CreatePackagingConfigurationRequest')
    CreatePackagingConfigurationResponse = Shapes::StructureShape.new(name: 'CreatePackagingConfigurationResponse')
    CreatePackagingGroupRequest = Shapes::StructureShape.new(name: 'CreatePackagingGroupRequest')
    CreatePackagingGroupResponse = Shapes::StructureShape.new(name: 'CreatePackagingGroupResponse')
    DashEncryption = Shapes::StructureShape.new(name: 'DashEncryption')
    DashManifest = Shapes::StructureShape.new(name: 'DashManifest')
    DashPackage = Shapes::StructureShape.new(name: 'DashPackage')
    DeleteAssetRequest = Shapes::StructureShape.new(name: 'DeleteAssetRequest')
    DeleteAssetResponse = Shapes::StructureShape.new(name: 'DeleteAssetResponse')
    DeletePackagingConfigurationRequest = Shapes::StructureShape.new(name: 'DeletePackagingConfigurationRequest')
    DeletePackagingConfigurationResponse = Shapes::StructureShape.new(name: 'DeletePackagingConfigurationResponse')
    DeletePackagingGroupRequest = Shapes::StructureShape.new(name: 'DeletePackagingGroupRequest')
    DeletePackagingGroupResponse = Shapes::StructureShape.new(name: 'DeletePackagingGroupResponse')
    DescribeAssetRequest = Shapes::StructureShape.new(name: 'DescribeAssetRequest')
    DescribeAssetResponse = Shapes::StructureShape.new(name: 'DescribeAssetResponse')
    DescribePackagingConfigurationRequest = Shapes::StructureShape.new(name: 'DescribePackagingConfigurationRequest')
    DescribePackagingConfigurationResponse = Shapes::StructureShape.new(name: 'DescribePackagingConfigurationResponse')
    DescribePackagingGroupRequest = Shapes::StructureShape.new(name: 'DescribePackagingGroupRequest')
    DescribePackagingGroupResponse = Shapes::StructureShape.new(name: 'DescribePackagingGroupResponse')
    EgressEndpoint = Shapes::StructureShape.new(name: 'EgressEndpoint')
    EncryptionMethod = Shapes::StringShape.new(name: 'EncryptionMethod')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    HlsEncryption = Shapes::StructureShape.new(name: 'HlsEncryption')
    HlsManifest = Shapes::StructureShape.new(name: 'HlsManifest')
    HlsPackage = Shapes::StructureShape.new(name: 'HlsPackage')
    InternalServerErrorException = Shapes::StructureShape.new(name: 'InternalServerErrorException')
    ListAssetsRequest = Shapes::StructureShape.new(name: 'ListAssetsRequest')
    ListAssetsResponse = Shapes::StructureShape.new(name: 'ListAssetsResponse')
    ListPackagingConfigurationsRequest = Shapes::StructureShape.new(name: 'ListPackagingConfigurationsRequest')
    ListPackagingConfigurationsResponse = Shapes::StructureShape.new(name: 'ListPackagingConfigurationsResponse')
    ListPackagingGroupsRequest = Shapes::StructureShape.new(name: 'ListPackagingGroupsRequest')
    ListPackagingGroupsResponse = Shapes::StructureShape.new(name: 'ListPackagingGroupsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ManifestLayout = Shapes::StringShape.new(name: 'ManifestLayout')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MssEncryption = Shapes::StructureShape.new(name: 'MssEncryption')
    MssManifest = Shapes::StructureShape.new(name: 'MssManifest')
    MssPackage = Shapes::StructureShape.new(name: 'MssPackage')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    PackagingConfiguration = Shapes::StructureShape.new(name: 'PackagingConfiguration')
    PackagingConfigurationCreateParameters = Shapes::StructureShape.new(name: 'PackagingConfigurationCreateParameters')
    PackagingConfigurationList = Shapes::StructureShape.new(name: 'PackagingConfigurationList')
    PackagingGroup = Shapes::StructureShape.new(name: 'PackagingGroup')
    PackagingGroupCreateParameters = Shapes::StructureShape.new(name: 'PackagingGroupCreateParameters')
    PackagingGroupList = Shapes::StructureShape.new(name: 'PackagingGroupList')
    PackagingGroupUpdateParameters = Shapes::StructureShape.new(name: 'PackagingGroupUpdateParameters')
    Profile = Shapes::StringShape.new(name: 'Profile')
    SegmentTemplateFormat = Shapes::StringShape.new(name: 'SegmentTemplateFormat')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SpekeKeyProvider = Shapes::StructureShape.new(name: 'SpekeKeyProvider')
    StreamOrder = Shapes::StringShape.new(name: 'StreamOrder')
    StreamSelection = Shapes::StructureShape.new(name: 'StreamSelection')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    Tags = Shapes::MapShape.new(name: 'Tags')
    TagsModel = Shapes::StructureShape.new(name: 'TagsModel')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    UnprocessableEntityException = Shapes::StructureShape.new(name: 'UnprocessableEntityException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdatePackagingGroupRequest = Shapes::StructureShape.new(name: 'UpdatePackagingGroupRequest')
    UpdatePackagingGroupResponse = Shapes::StructureShape.new(name: 'UpdatePackagingGroupResponse')
    __PeriodTriggersElement = Shapes::StringShape.new(name: '__PeriodTriggersElement')
    __boolean = Shapes::BooleanShape.new(name: '__boolean')
    __double = Shapes::FloatShape.new(name: '__double')
    __integer = Shapes::IntegerShape.new(name: '__integer')
    __listOfAssetShallow = Shapes::ListShape.new(name: '__listOfAssetShallow')
    __listOfDashManifest = Shapes::ListShape.new(name: '__listOfDashManifest')
    __listOfEgressEndpoint = Shapes::ListShape.new(name: '__listOfEgressEndpoint')
    __listOfHlsManifest = Shapes::ListShape.new(name: '__listOfHlsManifest')
    __listOfMssManifest = Shapes::ListShape.new(name: '__listOfMssManifest')
    __listOfPackagingConfiguration = Shapes::ListShape.new(name: '__listOfPackagingConfiguration')
    __listOfPackagingGroup = Shapes::ListShape.new(name: '__listOfPackagingGroup')
    __listOf__PeriodTriggersElement = Shapes::ListShape.new(name: '__listOf__PeriodTriggersElement')
    __listOf__string = Shapes::ListShape.new(name: '__listOf__string')
    __long = Shapes::IntegerShape.new(name: '__long')
    __mapOf__string = Shapes::MapShape.new(name: '__mapOf__string')
    __string = Shapes::StringShape.new(name: '__string')

    Asset.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    Asset.add_member(:created_at, Shapes::ShapeRef.new(shape: __string, location_name: "createdAt"))
    Asset.add_member(:egress_endpoints, Shapes::ShapeRef.new(shape: __listOfEgressEndpoint, location_name: "egressEndpoints"))
    Asset.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    Asset.add_member(:packaging_group_id, Shapes::ShapeRef.new(shape: __string, location_name: "packagingGroupId"))
    Asset.add_member(:resource_id, Shapes::ShapeRef.new(shape: __string, location_name: "resourceId"))
    Asset.add_member(:source_arn, Shapes::ShapeRef.new(shape: __string, location_name: "sourceArn"))
    Asset.add_member(:source_role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "sourceRoleArn"))
    Asset.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    Asset.struct_class = Types::Asset

    AssetCreateParameters.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "id"))
    AssetCreateParameters.add_member(:packaging_group_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "packagingGroupId"))
    AssetCreateParameters.add_member(:resource_id, Shapes::ShapeRef.new(shape: __string, location_name: "resourceId"))
    AssetCreateParameters.add_member(:source_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "sourceArn"))
    AssetCreateParameters.add_member(:source_role_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "sourceRoleArn"))
    AssetCreateParameters.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    AssetCreateParameters.struct_class = Types::AssetCreateParameters

    AssetList.add_member(:assets, Shapes::ShapeRef.new(shape: __listOfAssetShallow, location_name: "assets"))
    AssetList.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    AssetList.struct_class = Types::AssetList

    AssetShallow.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    AssetShallow.add_member(:created_at, Shapes::ShapeRef.new(shape: __string, location_name: "createdAt"))
    AssetShallow.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    AssetShallow.add_member(:packaging_group_id, Shapes::ShapeRef.new(shape: __string, location_name: "packagingGroupId"))
    AssetShallow.add_member(:resource_id, Shapes::ShapeRef.new(shape: __string, location_name: "resourceId"))
    AssetShallow.add_member(:source_arn, Shapes::ShapeRef.new(shape: __string, location_name: "sourceArn"))
    AssetShallow.add_member(:source_role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "sourceRoleArn"))
    AssetShallow.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    AssetShallow.struct_class = Types::AssetShallow

    Authorization.add_member(:cdn_identifier_secret, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "cdnIdentifierSecret"))
    Authorization.add_member(:secrets_role_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "secretsRoleArn"))
    Authorization.struct_class = Types::Authorization

    CmafEncryption.add_member(:speke_key_provider, Shapes::ShapeRef.new(shape: SpekeKeyProvider, required: true, location_name: "spekeKeyProvider"))
    CmafEncryption.struct_class = Types::CmafEncryption

    CmafPackage.add_member(:encryption, Shapes::ShapeRef.new(shape: CmafEncryption, location_name: "encryption"))
    CmafPackage.add_member(:hls_manifests, Shapes::ShapeRef.new(shape: __listOfHlsManifest, required: true, location_name: "hlsManifests"))
    CmafPackage.add_member(:segment_duration_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "segmentDurationSeconds"))
    CmafPackage.struct_class = Types::CmafPackage

    CreateAssetRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "id"))
    CreateAssetRequest.add_member(:packaging_group_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "packagingGroupId"))
    CreateAssetRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: __string, location_name: "resourceId"))
    CreateAssetRequest.add_member(:source_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "sourceArn"))
    CreateAssetRequest.add_member(:source_role_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "sourceRoleArn"))
    CreateAssetRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateAssetRequest.struct_class = Types::CreateAssetRequest

    CreateAssetResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    CreateAssetResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: __string, location_name: "createdAt"))
    CreateAssetResponse.add_member(:egress_endpoints, Shapes::ShapeRef.new(shape: __listOfEgressEndpoint, location_name: "egressEndpoints"))
    CreateAssetResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    CreateAssetResponse.add_member(:packaging_group_id, Shapes::ShapeRef.new(shape: __string, location_name: "packagingGroupId"))
    CreateAssetResponse.add_member(:resource_id, Shapes::ShapeRef.new(shape: __string, location_name: "resourceId"))
    CreateAssetResponse.add_member(:source_arn, Shapes::ShapeRef.new(shape: __string, location_name: "sourceArn"))
    CreateAssetResponse.add_member(:source_role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "sourceRoleArn"))
    CreateAssetResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateAssetResponse.struct_class = Types::CreateAssetResponse

    CreatePackagingConfigurationRequest.add_member(:cmaf_package, Shapes::ShapeRef.new(shape: CmafPackage, location_name: "cmafPackage"))
    CreatePackagingConfigurationRequest.add_member(:dash_package, Shapes::ShapeRef.new(shape: DashPackage, location_name: "dashPackage"))
    CreatePackagingConfigurationRequest.add_member(:hls_package, Shapes::ShapeRef.new(shape: HlsPackage, location_name: "hlsPackage"))
    CreatePackagingConfigurationRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "id"))
    CreatePackagingConfigurationRequest.add_member(:mss_package, Shapes::ShapeRef.new(shape: MssPackage, location_name: "mssPackage"))
    CreatePackagingConfigurationRequest.add_member(:packaging_group_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "packagingGroupId"))
    CreatePackagingConfigurationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreatePackagingConfigurationRequest.struct_class = Types::CreatePackagingConfigurationRequest

    CreatePackagingConfigurationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    CreatePackagingConfigurationResponse.add_member(:cmaf_package, Shapes::ShapeRef.new(shape: CmafPackage, location_name: "cmafPackage"))
    CreatePackagingConfigurationResponse.add_member(:dash_package, Shapes::ShapeRef.new(shape: DashPackage, location_name: "dashPackage"))
    CreatePackagingConfigurationResponse.add_member(:hls_package, Shapes::ShapeRef.new(shape: HlsPackage, location_name: "hlsPackage"))
    CreatePackagingConfigurationResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    CreatePackagingConfigurationResponse.add_member(:mss_package, Shapes::ShapeRef.new(shape: MssPackage, location_name: "mssPackage"))
    CreatePackagingConfigurationResponse.add_member(:packaging_group_id, Shapes::ShapeRef.new(shape: __string, location_name: "packagingGroupId"))
    CreatePackagingConfigurationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreatePackagingConfigurationResponse.struct_class = Types::CreatePackagingConfigurationResponse

    CreatePackagingGroupRequest.add_member(:authorization, Shapes::ShapeRef.new(shape: Authorization, location_name: "authorization"))
    CreatePackagingGroupRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "id"))
    CreatePackagingGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreatePackagingGroupRequest.struct_class = Types::CreatePackagingGroupRequest

    CreatePackagingGroupResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    CreatePackagingGroupResponse.add_member(:authorization, Shapes::ShapeRef.new(shape: Authorization, location_name: "authorization"))
    CreatePackagingGroupResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: __string, location_name: "domainName"))
    CreatePackagingGroupResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    CreatePackagingGroupResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreatePackagingGroupResponse.struct_class = Types::CreatePackagingGroupResponse

    DashEncryption.add_member(:speke_key_provider, Shapes::ShapeRef.new(shape: SpekeKeyProvider, required: true, location_name: "spekeKeyProvider"))
    DashEncryption.struct_class = Types::DashEncryption

    DashManifest.add_member(:manifest_layout, Shapes::ShapeRef.new(shape: ManifestLayout, location_name: "manifestLayout"))
    DashManifest.add_member(:manifest_name, Shapes::ShapeRef.new(shape: __string, location_name: "manifestName"))
    DashManifest.add_member(:min_buffer_time_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "minBufferTimeSeconds"))
    DashManifest.add_member(:profile, Shapes::ShapeRef.new(shape: Profile, location_name: "profile"))
    DashManifest.add_member(:stream_selection, Shapes::ShapeRef.new(shape: StreamSelection, location_name: "streamSelection"))
    DashManifest.struct_class = Types::DashManifest

    DashPackage.add_member(:dash_manifests, Shapes::ShapeRef.new(shape: __listOfDashManifest, required: true, location_name: "dashManifests"))
    DashPackage.add_member(:encryption, Shapes::ShapeRef.new(shape: DashEncryption, location_name: "encryption"))
    DashPackage.add_member(:period_triggers, Shapes::ShapeRef.new(shape: __listOf__PeriodTriggersElement, location_name: "periodTriggers"))
    DashPackage.add_member(:segment_duration_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "segmentDurationSeconds"))
    DashPackage.add_member(:segment_template_format, Shapes::ShapeRef.new(shape: SegmentTemplateFormat, location_name: "segmentTemplateFormat"))
    DashPackage.struct_class = Types::DashPackage

    DeleteAssetRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "id"))
    DeleteAssetRequest.struct_class = Types::DeleteAssetRequest

    DeleteAssetResponse.struct_class = Types::DeleteAssetResponse

    DeletePackagingConfigurationRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "id"))
    DeletePackagingConfigurationRequest.struct_class = Types::DeletePackagingConfigurationRequest

    DeletePackagingConfigurationResponse.struct_class = Types::DeletePackagingConfigurationResponse

    DeletePackagingGroupRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "id"))
    DeletePackagingGroupRequest.struct_class = Types::DeletePackagingGroupRequest

    DeletePackagingGroupResponse.struct_class = Types::DeletePackagingGroupResponse

    DescribeAssetRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "id"))
    DescribeAssetRequest.struct_class = Types::DescribeAssetRequest

    DescribeAssetResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DescribeAssetResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: __string, location_name: "createdAt"))
    DescribeAssetResponse.add_member(:egress_endpoints, Shapes::ShapeRef.new(shape: __listOfEgressEndpoint, location_name: "egressEndpoints"))
    DescribeAssetResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    DescribeAssetResponse.add_member(:packaging_group_id, Shapes::ShapeRef.new(shape: __string, location_name: "packagingGroupId"))
    DescribeAssetResponse.add_member(:resource_id, Shapes::ShapeRef.new(shape: __string, location_name: "resourceId"))
    DescribeAssetResponse.add_member(:source_arn, Shapes::ShapeRef.new(shape: __string, location_name: "sourceArn"))
    DescribeAssetResponse.add_member(:source_role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "sourceRoleArn"))
    DescribeAssetResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    DescribeAssetResponse.struct_class = Types::DescribeAssetResponse

    DescribePackagingConfigurationRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "id"))
    DescribePackagingConfigurationRequest.struct_class = Types::DescribePackagingConfigurationRequest

    DescribePackagingConfigurationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DescribePackagingConfigurationResponse.add_member(:cmaf_package, Shapes::ShapeRef.new(shape: CmafPackage, location_name: "cmafPackage"))
    DescribePackagingConfigurationResponse.add_member(:dash_package, Shapes::ShapeRef.new(shape: DashPackage, location_name: "dashPackage"))
    DescribePackagingConfigurationResponse.add_member(:hls_package, Shapes::ShapeRef.new(shape: HlsPackage, location_name: "hlsPackage"))
    DescribePackagingConfigurationResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    DescribePackagingConfigurationResponse.add_member(:mss_package, Shapes::ShapeRef.new(shape: MssPackage, location_name: "mssPackage"))
    DescribePackagingConfigurationResponse.add_member(:packaging_group_id, Shapes::ShapeRef.new(shape: __string, location_name: "packagingGroupId"))
    DescribePackagingConfigurationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    DescribePackagingConfigurationResponse.struct_class = Types::DescribePackagingConfigurationResponse

    DescribePackagingGroupRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "id"))
    DescribePackagingGroupRequest.struct_class = Types::DescribePackagingGroupRequest

    DescribePackagingGroupResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DescribePackagingGroupResponse.add_member(:authorization, Shapes::ShapeRef.new(shape: Authorization, location_name: "authorization"))
    DescribePackagingGroupResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: __string, location_name: "domainName"))
    DescribePackagingGroupResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    DescribePackagingGroupResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    DescribePackagingGroupResponse.struct_class = Types::DescribePackagingGroupResponse

    EgressEndpoint.add_member(:packaging_configuration_id, Shapes::ShapeRef.new(shape: __string, location_name: "packagingConfigurationId"))
    EgressEndpoint.add_member(:url, Shapes::ShapeRef.new(shape: __string, location_name: "url"))
    EgressEndpoint.struct_class = Types::EgressEndpoint

    ForbiddenException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ForbiddenException.struct_class = Types::ForbiddenException

    HlsEncryption.add_member(:constant_initialization_vector, Shapes::ShapeRef.new(shape: __string, location_name: "constantInitializationVector"))
    HlsEncryption.add_member(:encryption_method, Shapes::ShapeRef.new(shape: EncryptionMethod, location_name: "encryptionMethod"))
    HlsEncryption.add_member(:speke_key_provider, Shapes::ShapeRef.new(shape: SpekeKeyProvider, required: true, location_name: "spekeKeyProvider"))
    HlsEncryption.struct_class = Types::HlsEncryption

    HlsManifest.add_member(:ad_markers, Shapes::ShapeRef.new(shape: AdMarkers, location_name: "adMarkers"))
    HlsManifest.add_member(:include_iframe_only_stream, Shapes::ShapeRef.new(shape: __boolean, location_name: "includeIframeOnlyStream"))
    HlsManifest.add_member(:manifest_name, Shapes::ShapeRef.new(shape: __string, location_name: "manifestName"))
    HlsManifest.add_member(:program_date_time_interval_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "programDateTimeIntervalSeconds"))
    HlsManifest.add_member(:repeat_ext_x_key, Shapes::ShapeRef.new(shape: __boolean, location_name: "repeatExtXKey"))
    HlsManifest.add_member(:stream_selection, Shapes::ShapeRef.new(shape: StreamSelection, location_name: "streamSelection"))
    HlsManifest.struct_class = Types::HlsManifest

    HlsPackage.add_member(:encryption, Shapes::ShapeRef.new(shape: HlsEncryption, location_name: "encryption"))
    HlsPackage.add_member(:hls_manifests, Shapes::ShapeRef.new(shape: __listOfHlsManifest, required: true, location_name: "hlsManifests"))
    HlsPackage.add_member(:segment_duration_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "segmentDurationSeconds"))
    HlsPackage.add_member(:use_audio_rendition_group, Shapes::ShapeRef.new(shape: __boolean, location_name: "useAudioRenditionGroup"))
    HlsPackage.struct_class = Types::HlsPackage

    InternalServerErrorException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    InternalServerErrorException.struct_class = Types::InternalServerErrorException

    ListAssetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAssetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListAssetsRequest.add_member(:packaging_group_id, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "packagingGroupId"))
    ListAssetsRequest.struct_class = Types::ListAssetsRequest

    ListAssetsResponse.add_member(:assets, Shapes::ShapeRef.new(shape: __listOfAssetShallow, location_name: "assets"))
    ListAssetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListAssetsResponse.struct_class = Types::ListAssetsResponse

    ListPackagingConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListPackagingConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListPackagingConfigurationsRequest.add_member(:packaging_group_id, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "packagingGroupId"))
    ListPackagingConfigurationsRequest.struct_class = Types::ListPackagingConfigurationsRequest

    ListPackagingConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListPackagingConfigurationsResponse.add_member(:packaging_configurations, Shapes::ShapeRef.new(shape: __listOfPackagingConfiguration, location_name: "packagingConfigurations"))
    ListPackagingConfigurationsResponse.struct_class = Types::ListPackagingConfigurationsResponse

    ListPackagingGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListPackagingGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListPackagingGroupsRequest.struct_class = Types::ListPackagingGroupsRequest

    ListPackagingGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListPackagingGroupsResponse.add_member(:packaging_groups, Shapes::ShapeRef.new(shape: __listOfPackagingGroup, location_name: "packagingGroups"))
    ListPackagingGroupsResponse.struct_class = Types::ListPackagingGroupsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resource-arn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    MssEncryption.add_member(:speke_key_provider, Shapes::ShapeRef.new(shape: SpekeKeyProvider, required: true, location_name: "spekeKeyProvider"))
    MssEncryption.struct_class = Types::MssEncryption

    MssManifest.add_member(:manifest_name, Shapes::ShapeRef.new(shape: __string, location_name: "manifestName"))
    MssManifest.add_member(:stream_selection, Shapes::ShapeRef.new(shape: StreamSelection, location_name: "streamSelection"))
    MssManifest.struct_class = Types::MssManifest

    MssPackage.add_member(:encryption, Shapes::ShapeRef.new(shape: MssEncryption, location_name: "encryption"))
    MssPackage.add_member(:mss_manifests, Shapes::ShapeRef.new(shape: __listOfMssManifest, required: true, location_name: "mssManifests"))
    MssPackage.add_member(:segment_duration_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "segmentDurationSeconds"))
    MssPackage.struct_class = Types::MssPackage

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    NotFoundException.struct_class = Types::NotFoundException

    PackagingConfiguration.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    PackagingConfiguration.add_member(:cmaf_package, Shapes::ShapeRef.new(shape: CmafPackage, location_name: "cmafPackage"))
    PackagingConfiguration.add_member(:dash_package, Shapes::ShapeRef.new(shape: DashPackage, location_name: "dashPackage"))
    PackagingConfiguration.add_member(:hls_package, Shapes::ShapeRef.new(shape: HlsPackage, location_name: "hlsPackage"))
    PackagingConfiguration.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    PackagingConfiguration.add_member(:mss_package, Shapes::ShapeRef.new(shape: MssPackage, location_name: "mssPackage"))
    PackagingConfiguration.add_member(:packaging_group_id, Shapes::ShapeRef.new(shape: __string, location_name: "packagingGroupId"))
    PackagingConfiguration.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    PackagingConfiguration.struct_class = Types::PackagingConfiguration

    PackagingConfigurationCreateParameters.add_member(:cmaf_package, Shapes::ShapeRef.new(shape: CmafPackage, location_name: "cmafPackage"))
    PackagingConfigurationCreateParameters.add_member(:dash_package, Shapes::ShapeRef.new(shape: DashPackage, location_name: "dashPackage"))
    PackagingConfigurationCreateParameters.add_member(:hls_package, Shapes::ShapeRef.new(shape: HlsPackage, location_name: "hlsPackage"))
    PackagingConfigurationCreateParameters.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "id"))
    PackagingConfigurationCreateParameters.add_member(:mss_package, Shapes::ShapeRef.new(shape: MssPackage, location_name: "mssPackage"))
    PackagingConfigurationCreateParameters.add_member(:packaging_group_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "packagingGroupId"))
    PackagingConfigurationCreateParameters.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    PackagingConfigurationCreateParameters.struct_class = Types::PackagingConfigurationCreateParameters

    PackagingConfigurationList.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    PackagingConfigurationList.add_member(:packaging_configurations, Shapes::ShapeRef.new(shape: __listOfPackagingConfiguration, location_name: "packagingConfigurations"))
    PackagingConfigurationList.struct_class = Types::PackagingConfigurationList

    PackagingGroup.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    PackagingGroup.add_member(:authorization, Shapes::ShapeRef.new(shape: Authorization, location_name: "authorization"))
    PackagingGroup.add_member(:domain_name, Shapes::ShapeRef.new(shape: __string, location_name: "domainName"))
    PackagingGroup.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    PackagingGroup.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    PackagingGroup.struct_class = Types::PackagingGroup

    PackagingGroupCreateParameters.add_member(:authorization, Shapes::ShapeRef.new(shape: Authorization, location_name: "authorization"))
    PackagingGroupCreateParameters.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "id"))
    PackagingGroupCreateParameters.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    PackagingGroupCreateParameters.struct_class = Types::PackagingGroupCreateParameters

    PackagingGroupList.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    PackagingGroupList.add_member(:packaging_groups, Shapes::ShapeRef.new(shape: __listOfPackagingGroup, location_name: "packagingGroups"))
    PackagingGroupList.struct_class = Types::PackagingGroupList

    PackagingGroupUpdateParameters.add_member(:authorization, Shapes::ShapeRef.new(shape: Authorization, location_name: "authorization"))
    PackagingGroupUpdateParameters.struct_class = Types::PackagingGroupUpdateParameters

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    SpekeKeyProvider.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "roleArn"))
    SpekeKeyProvider.add_member(:system_ids, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "systemIds"))
    SpekeKeyProvider.add_member(:url, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "url"))
    SpekeKeyProvider.struct_class = Types::SpekeKeyProvider

    StreamSelection.add_member(:max_video_bits_per_second, Shapes::ShapeRef.new(shape: __integer, location_name: "maxVideoBitsPerSecond"))
    StreamSelection.add_member(:min_video_bits_per_second, Shapes::ShapeRef.new(shape: __integer, location_name: "minVideoBitsPerSecond"))
    StreamSelection.add_member(:stream_order, Shapes::ShapeRef.new(shape: StreamOrder, location_name: "streamOrder"))
    StreamSelection.struct_class = Types::StreamSelection

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resource-arn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    Tags.key = Shapes::ShapeRef.new(shape: __string)
    Tags.value = Shapes::ShapeRef.new(shape: __string)

    TagsModel.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, required: true, location_name: "tags"))
    TagsModel.struct_class = Types::TagsModel

    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    UnprocessableEntityException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    UnprocessableEntityException.struct_class = Types::UnprocessableEntityException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resource-arn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdatePackagingGroupRequest.add_member(:authorization, Shapes::ShapeRef.new(shape: Authorization, location_name: "authorization"))
    UpdatePackagingGroupRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "id"))
    UpdatePackagingGroupRequest.struct_class = Types::UpdatePackagingGroupRequest

    UpdatePackagingGroupResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    UpdatePackagingGroupResponse.add_member(:authorization, Shapes::ShapeRef.new(shape: Authorization, location_name: "authorization"))
    UpdatePackagingGroupResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: __string, location_name: "domainName"))
    UpdatePackagingGroupResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    UpdatePackagingGroupResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    UpdatePackagingGroupResponse.struct_class = Types::UpdatePackagingGroupResponse

    __listOfAssetShallow.member = Shapes::ShapeRef.new(shape: AssetShallow)

    __listOfDashManifest.member = Shapes::ShapeRef.new(shape: DashManifest)

    __listOfEgressEndpoint.member = Shapes::ShapeRef.new(shape: EgressEndpoint)

    __listOfHlsManifest.member = Shapes::ShapeRef.new(shape: HlsManifest)

    __listOfMssManifest.member = Shapes::ShapeRef.new(shape: MssManifest)

    __listOfPackagingConfiguration.member = Shapes::ShapeRef.new(shape: PackagingConfiguration)

    __listOfPackagingGroup.member = Shapes::ShapeRef.new(shape: PackagingGroup)

    __listOf__PeriodTriggersElement.member = Shapes::ShapeRef.new(shape: __PeriodTriggersElement)

    __listOf__string.member = Shapes::ShapeRef.new(shape: __string)

    __mapOf__string.key = Shapes::ShapeRef.new(shape: __string)
    __mapOf__string.value = Shapes::ShapeRef.new(shape: __string)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-11-07"

      api.metadata = {
        "apiVersion" => "2018-11-07",
        "endpointPrefix" => "mediapackage-vod",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "MediaPackage Vod",
        "serviceFullName" => "AWS Elemental MediaPackage VOD",
        "serviceId" => "MediaPackage Vod",
        "signatureVersion" => "v4",
        "signingName" => "mediapackage-vod",
        "uid" => "mediapackage-vod-2018-11-07",
      }

      api.add_operation(:create_asset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAsset"
        o.http_method = "POST"
        o.http_request_uri = "/assets"
        o.input = Shapes::ShapeRef.new(shape: CreateAssetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAssetResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:create_packaging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePackagingConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/packaging_configurations"
        o.input = Shapes::ShapeRef.new(shape: CreatePackagingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePackagingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:create_packaging_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePackagingGroup"
        o.http_method = "POST"
        o.http_request_uri = "/packaging_groups"
        o.input = Shapes::ShapeRef.new(shape: CreatePackagingGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePackagingGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_asset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAsset"
        o.http_method = "DELETE"
        o.http_request_uri = "/assets/{id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAssetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAssetResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_packaging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePackagingConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/packaging_configurations/{id}"
        o.input = Shapes::ShapeRef.new(shape: DeletePackagingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePackagingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_packaging_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePackagingGroup"
        o.http_method = "DELETE"
        o.http_request_uri = "/packaging_groups/{id}"
        o.input = Shapes::ShapeRef.new(shape: DeletePackagingGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePackagingGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_asset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAsset"
        o.http_method = "GET"
        o.http_request_uri = "/assets/{id}"
        o.input = Shapes::ShapeRef.new(shape: DescribeAssetRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAssetResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_packaging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePackagingConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/packaging_configurations/{id}"
        o.input = Shapes::ShapeRef.new(shape: DescribePackagingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePackagingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_packaging_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePackagingGroup"
        o.http_method = "GET"
        o.http_request_uri = "/packaging_groups/{id}"
        o.input = Shapes::ShapeRef.new(shape: DescribePackagingGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePackagingGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:list_assets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssets"
        o.http_method = "GET"
        o.http_request_uri = "/assets"
        o.input = Shapes::ShapeRef.new(shape: ListAssetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_packaging_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPackagingConfigurations"
        o.http_method = "GET"
        o.http_request_uri = "/packaging_configurations"
        o.input = Shapes::ShapeRef.new(shape: ListPackagingConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPackagingConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_packaging_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPackagingGroups"
        o.http_method = "GET"
        o.http_request_uri = "/packaging_groups"
        o.input = Shapes::ShapeRef.new(shape: ListPackagingGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPackagingGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resource-arn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resource-arn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resource-arn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:update_packaging_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePackagingGroup"
        o.http_method = "PUT"
        o.http_request_uri = "/packaging_groups/{id}"
        o.input = Shapes::ShapeRef.new(shape: UpdatePackagingGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePackagingGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)
    end

  end
end
