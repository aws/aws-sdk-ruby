# frozen_string_literal: true

# This is generated code!

module Aws::MediaPackageVod
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AdMarkers = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediapackagevod#AdMarkers", name: "AdMarkers")
    AssetShallow = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#AssetShallow", name: "AssetShallow")
    Authorization = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#Authorization", name: "Authorization")
    CmafEncryption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#CmafEncryption", name: "CmafEncryption")
    CmafPackage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#CmafPackage", name: "CmafPackage")
    ConfigureLogsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#ConfigureLogsRequest", name: "ConfigureLogsRequest")
    ConfigureLogsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#ConfigureLogsResponse", name: "ConfigureLogsResponse")
    CreateAssetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#CreateAssetRequest", name: "CreateAssetRequest")
    CreateAssetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#CreateAssetResponse", name: "CreateAssetResponse")
    CreatePackagingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#CreatePackagingConfigurationRequest", name: "CreatePackagingConfigurationRequest")
    CreatePackagingConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#CreatePackagingConfigurationResponse", name: "CreatePackagingConfigurationResponse")
    CreatePackagingGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#CreatePackagingGroupRequest", name: "CreatePackagingGroupRequest")
    CreatePackagingGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#CreatePackagingGroupResponse", name: "CreatePackagingGroupResponse")
    DashEncryption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#DashEncryption", name: "DashEncryption")
    DashManifest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#DashManifest", name: "DashManifest")
    DashPackage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#DashPackage", name: "DashPackage")
    DeleteAssetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#DeleteAssetRequest", name: "DeleteAssetRequest")
    DeleteAssetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#DeleteAssetResponse", name: "DeleteAssetResponse")
    DeletePackagingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#DeletePackagingConfigurationRequest", name: "DeletePackagingConfigurationRequest")
    DeletePackagingConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#DeletePackagingConfigurationResponse", name: "DeletePackagingConfigurationResponse")
    DeletePackagingGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#DeletePackagingGroupRequest", name: "DeletePackagingGroupRequest")
    DeletePackagingGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#DeletePackagingGroupResponse", name: "DeletePackagingGroupResponse")
    DescribeAssetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#DescribeAssetRequest", name: "DescribeAssetRequest")
    DescribeAssetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#DescribeAssetResponse", name: "DescribeAssetResponse")
    DescribePackagingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#DescribePackagingConfigurationRequest", name: "DescribePackagingConfigurationRequest")
    DescribePackagingConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#DescribePackagingConfigurationResponse", name: "DescribePackagingConfigurationResponse")
    DescribePackagingGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#DescribePackagingGroupRequest", name: "DescribePackagingGroupRequest")
    DescribePackagingGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#DescribePackagingGroupResponse", name: "DescribePackagingGroupResponse")
    EgressAccessLogs = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#EgressAccessLogs", name: "EgressAccessLogs")
    EgressEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#EgressEndpoint", name: "EgressEndpoint")
    EncryptionContractConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#EncryptionContractConfiguration", name: "EncryptionContractConfiguration")
    EncryptionMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediapackagevod#EncryptionMethod", name: "EncryptionMethod")
    ForbiddenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#ForbiddenException", name: "ForbiddenException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    HlsEncryption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#HlsEncryption", name: "HlsEncryption")
    HlsManifest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#HlsManifest", name: "HlsManifest")
    HlsPackage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#HlsPackage", name: "HlsPackage")
    InternalServerErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#InternalServerErrorException", name: "InternalServerErrorException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListAssetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#ListAssetsRequest", name: "ListAssetsRequest")
    ListAssetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#ListAssetsResponse", name: "ListAssetsResponse")
    ListPackagingConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#ListPackagingConfigurationsRequest", name: "ListPackagingConfigurationsRequest")
    ListPackagingConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#ListPackagingConfigurationsResponse", name: "ListPackagingConfigurationsResponse")
    ListPackagingGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#ListPackagingGroupsRequest", name: "ListPackagingGroupsRequest")
    ListPackagingGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#ListPackagingGroupsResponse", name: "ListPackagingGroupsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ManifestLayout = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediapackagevod#ManifestLayout", name: "ManifestLayout")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.mediapackagevod#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MssEncryption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#MssEncryption", name: "MssEncryption")
    MssManifest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#MssManifest", name: "MssManifest")
    MssPackage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#MssPackage", name: "MssPackage")
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#NotFoundException", name: "NotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    PackagingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#PackagingConfiguration", name: "PackagingConfiguration")
    PackagingGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#PackagingGroup", name: "PackagingGroup")
    PresetSpeke20Audio = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediapackagevod#PresetSpeke20Audio", name: "PresetSpeke20Audio")
    PresetSpeke20Video = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediapackagevod#PresetSpeke20Video", name: "PresetSpeke20Video")
    Profile = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediapackagevod#Profile", name: "Profile")
    ScteMarkersSource = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediapackagevod#ScteMarkersSource", name: "ScteMarkersSource")
    SegmentTemplateFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediapackagevod#SegmentTemplateFormat", name: "SegmentTemplateFormat")
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#ServiceUnavailableException", name: "ServiceUnavailableException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SpekeKeyProvider = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#SpekeKeyProvider", name: "SpekeKeyProvider")
    StreamOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediapackagevod#StreamOrder", name: "StreamOrder")
    StreamSelection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#StreamSelection", name: "StreamSelection")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#TagResourceRequest", name: "TagResourceRequest")
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.mediapackagevod#Tags", name: "Tags")
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#TooManyRequestsException", name: "TooManyRequestsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UnprocessableEntityException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#UnprocessableEntityException", name: "UnprocessableEntityException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 422})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#UntagResourceRequest", name: "UntagResourceRequest")
    UpdatePackagingGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#UpdatePackagingGroupRequest", name: "UpdatePackagingGroupRequest")
    UpdatePackagingGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagevod#UpdatePackagingGroupResponse", name: "UpdatePackagingGroupResponse")
    Periodtriggerselement = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediapackagevod#__PeriodTriggersElement", name: "Periodtriggerselement")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.mediapackagevod#__boolean", name: "Boolean")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.mediapackagevod#__integer", name: "Integer")
    Listofassetshallow = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediapackagevod#__listOfAssetShallow", name: "Listofassetshallow")
    Listofdashmanifest = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediapackagevod#__listOfDashManifest", name: "Listofdashmanifest")
    Listofegressendpoint = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediapackagevod#__listOfEgressEndpoint", name: "Listofegressendpoint")
    Listofhlsmanifest = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediapackagevod#__listOfHlsManifest", name: "Listofhlsmanifest")
    Listofmssmanifest = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediapackagevod#__listOfMssManifest", name: "Listofmssmanifest")
    Listofpackagingconfiguration = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediapackagevod#__listOfPackagingConfiguration", name: "Listofpackagingconfiguration")
    Listofpackaginggroup = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediapackagevod#__listOfPackagingGroup", name: "Listofpackaginggroup")
    ListofPeriodtriggerselement = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediapackagevod#__listOf__PeriodTriggersElement", name: "ListofPeriodtriggerselement")
    ListofString = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediapackagevod#__listOf__string", name: "ListofString")
    MapofString = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.mediapackagevod#__mapOf__string", name: "MapofString")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediapackagevod#__string", name: "String")

    AdMarkers.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    AdMarkers.add_member(:scte35_enhanced, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCTE35_ENHANCED", traits: {"smithy.api#enumValue" => "SCTE35_ENHANCED"}))
    AdMarkers.add_member(:passthrough, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PASSTHROUGH", traits: {"smithy.api#enumValue" => "PASSTHROUGH"}))
    AssetShallow.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#jsonName" => "arn"}))
    AssetShallow.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreatedAt", traits: {"smithy.api#jsonName" => "createdAt"}))
    AssetShallow.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#jsonName" => "id"}))
    AssetShallow.add_member(:packaging_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PackagingGroupId", traits: {"smithy.api#jsonName" => "packagingGroupId"}))
    AssetShallow.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceId", traits: {"smithy.api#jsonName" => "resourceId"}))
    AssetShallow.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceArn", traits: {"smithy.api#jsonName" => "sourceArn"}))
    AssetShallow.add_member(:source_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceRoleArn", traits: {"smithy.api#jsonName" => "sourceRoleArn"}))
    AssetShallow.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    AssetShallow.type = Types::AssetShallow
    Authorization.add_member(:cdn_identifier_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CdnIdentifierSecret", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "cdnIdentifierSecret", "smithy.api#required" => {}}))
    Authorization.add_member(:secrets_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecretsRoleArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "secretsRoleArn", "smithy.api#required" => {}}))
    Authorization.type = Types::Authorization
    CmafEncryption.add_member(:constant_initialization_vector, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConstantInitializationVector", traits: {"smithy.api#jsonName" => "constantInitializationVector"}))
    CmafEncryption.add_member(:speke_key_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: SpekeKeyProvider, name: "SpekeKeyProvider", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "spekeKeyProvider", "smithy.api#required" => {}}))
    CmafEncryption.type = Types::CmafEncryption
    CmafPackage.add_member(:encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: CmafEncryption, name: "Encryption", traits: {"smithy.api#jsonName" => "encryption"}))
    CmafPackage.add_member(:hls_manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofhlsmanifest, name: "HlsManifests", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "hlsManifests", "smithy.api#required" => {}}))
    CmafPackage.add_member(:include_encoder_configuration_in_segments, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IncludeEncoderConfigurationInSegments", traits: {"smithy.api#jsonName" => "includeEncoderConfigurationInSegments"}))
    CmafPackage.add_member(:segment_duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "SegmentDurationSeconds", traits: {"smithy.api#jsonName" => "segmentDurationSeconds"}))
    CmafPackage.type = Types::CmafPackage
    ConfigureLogsRequest.add_member(:egress_access_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: EgressAccessLogs, name: "EgressAccessLogs", traits: {"smithy.api#jsonName" => "egressAccessLogs"}))
    ConfigureLogsRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ConfigureLogsRequest.type = Types::ConfigureLogsRequest
    ConfigureLogsResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#jsonName" => "arn"}))
    ConfigureLogsResponse.add_member(:authorization, ::Smithy::Schema::Shapes::MemberShape.new(target: Authorization, name: "Authorization", traits: {"smithy.api#jsonName" => "authorization"}))
    ConfigureLogsResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreatedAt", traits: {"smithy.api#jsonName" => "createdAt"}))
    ConfigureLogsResponse.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DomainName", traits: {"smithy.api#jsonName" => "domainName"}))
    ConfigureLogsResponse.add_member(:egress_access_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: EgressAccessLogs, name: "EgressAccessLogs", traits: {"smithy.api#jsonName" => "egressAccessLogs"}))
    ConfigureLogsResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#jsonName" => "id"}))
    ConfigureLogsResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    ConfigureLogsResponse.type = Types::ConfigureLogsResponse
    CreateAssetRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "id", "smithy.api#required" => {}}))
    CreateAssetRequest.add_member(:packaging_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PackagingGroupId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "packagingGroupId", "smithy.api#required" => {}}))
    CreateAssetRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceId", traits: {"smithy.api#jsonName" => "resourceId"}))
    CreateAssetRequest.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "sourceArn", "smithy.api#required" => {}}))
    CreateAssetRequest.add_member(:source_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceRoleArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "sourceRoleArn", "smithy.api#required" => {}}))
    CreateAssetRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateAssetRequest.type = Types::CreateAssetRequest
    CreateAssetResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#jsonName" => "arn"}))
    CreateAssetResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreatedAt", traits: {"smithy.api#jsonName" => "createdAt"}))
    CreateAssetResponse.add_member(:egress_endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofegressendpoint, name: "EgressEndpoints", traits: {"smithy.api#jsonName" => "egressEndpoints"}))
    CreateAssetResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#jsonName" => "id"}))
    CreateAssetResponse.add_member(:packaging_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PackagingGroupId", traits: {"smithy.api#jsonName" => "packagingGroupId"}))
    CreateAssetResponse.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceId", traits: {"smithy.api#jsonName" => "resourceId"}))
    CreateAssetResponse.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceArn", traits: {"smithy.api#jsonName" => "sourceArn"}))
    CreateAssetResponse.add_member(:source_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceRoleArn", traits: {"smithy.api#jsonName" => "sourceRoleArn"}))
    CreateAssetResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateAssetResponse.type = Types::CreateAssetResponse
    CreatePackagingConfigurationRequest.add_member(:cmaf_package, ::Smithy::Schema::Shapes::MemberShape.new(target: CmafPackage, name: "CmafPackage", traits: {"smithy.api#jsonName" => "cmafPackage"}))
    CreatePackagingConfigurationRequest.add_member(:dash_package, ::Smithy::Schema::Shapes::MemberShape.new(target: DashPackage, name: "DashPackage", traits: {"smithy.api#jsonName" => "dashPackage"}))
    CreatePackagingConfigurationRequest.add_member(:hls_package, ::Smithy::Schema::Shapes::MemberShape.new(target: HlsPackage, name: "HlsPackage", traits: {"smithy.api#jsonName" => "hlsPackage"}))
    CreatePackagingConfigurationRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "id", "smithy.api#required" => {}}))
    CreatePackagingConfigurationRequest.add_member(:mss_package, ::Smithy::Schema::Shapes::MemberShape.new(target: MssPackage, name: "MssPackage", traits: {"smithy.api#jsonName" => "mssPackage"}))
    CreatePackagingConfigurationRequest.add_member(:packaging_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PackagingGroupId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "packagingGroupId", "smithy.api#required" => {}}))
    CreatePackagingConfigurationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreatePackagingConfigurationRequest.type = Types::CreatePackagingConfigurationRequest
    CreatePackagingConfigurationResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#jsonName" => "arn"}))
    CreatePackagingConfigurationResponse.add_member(:cmaf_package, ::Smithy::Schema::Shapes::MemberShape.new(target: CmafPackage, name: "CmafPackage", traits: {"smithy.api#jsonName" => "cmafPackage"}))
    CreatePackagingConfigurationResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreatedAt", traits: {"smithy.api#jsonName" => "createdAt"}))
    CreatePackagingConfigurationResponse.add_member(:dash_package, ::Smithy::Schema::Shapes::MemberShape.new(target: DashPackage, name: "DashPackage", traits: {"smithy.api#jsonName" => "dashPackage"}))
    CreatePackagingConfigurationResponse.add_member(:hls_package, ::Smithy::Schema::Shapes::MemberShape.new(target: HlsPackage, name: "HlsPackage", traits: {"smithy.api#jsonName" => "hlsPackage"}))
    CreatePackagingConfigurationResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#jsonName" => "id"}))
    CreatePackagingConfigurationResponse.add_member(:mss_package, ::Smithy::Schema::Shapes::MemberShape.new(target: MssPackage, name: "MssPackage", traits: {"smithy.api#jsonName" => "mssPackage"}))
    CreatePackagingConfigurationResponse.add_member(:packaging_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PackagingGroupId", traits: {"smithy.api#jsonName" => "packagingGroupId"}))
    CreatePackagingConfigurationResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreatePackagingConfigurationResponse.type = Types::CreatePackagingConfigurationResponse
    CreatePackagingGroupRequest.add_member(:authorization, ::Smithy::Schema::Shapes::MemberShape.new(target: Authorization, name: "Authorization", traits: {"smithy.api#jsonName" => "authorization"}))
    CreatePackagingGroupRequest.add_member(:egress_access_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: EgressAccessLogs, name: "EgressAccessLogs", traits: {"smithy.api#jsonName" => "egressAccessLogs"}))
    CreatePackagingGroupRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "id", "smithy.api#required" => {}}))
    CreatePackagingGroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreatePackagingGroupRequest.type = Types::CreatePackagingGroupRequest
    CreatePackagingGroupResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#jsonName" => "arn"}))
    CreatePackagingGroupResponse.add_member(:authorization, ::Smithy::Schema::Shapes::MemberShape.new(target: Authorization, name: "Authorization", traits: {"smithy.api#jsonName" => "authorization"}))
    CreatePackagingGroupResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreatedAt", traits: {"smithy.api#jsonName" => "createdAt"}))
    CreatePackagingGroupResponse.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DomainName", traits: {"smithy.api#jsonName" => "domainName"}))
    CreatePackagingGroupResponse.add_member(:egress_access_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: EgressAccessLogs, name: "EgressAccessLogs", traits: {"smithy.api#jsonName" => "egressAccessLogs"}))
    CreatePackagingGroupResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#jsonName" => "id"}))
    CreatePackagingGroupResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreatePackagingGroupResponse.type = Types::CreatePackagingGroupResponse
    DashEncryption.add_member(:speke_key_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: SpekeKeyProvider, name: "SpekeKeyProvider", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "spekeKeyProvider", "smithy.api#required" => {}}))
    DashEncryption.type = Types::DashEncryption
    DashManifest.add_member(:manifest_layout, ::Smithy::Schema::Shapes::MemberShape.new(target: ManifestLayout, name: "ManifestLayout", traits: {"smithy.api#jsonName" => "manifestLayout"}))
    DashManifest.add_member(:manifest_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ManifestName", traits: {"smithy.api#jsonName" => "manifestName"}))
    DashManifest.add_member(:min_buffer_time_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MinBufferTimeSeconds", traits: {"smithy.api#jsonName" => "minBufferTimeSeconds"}))
    DashManifest.add_member(:profile, ::Smithy::Schema::Shapes::MemberShape.new(target: Profile, name: "Profile", traits: {"smithy.api#jsonName" => "profile"}))
    DashManifest.add_member(:scte_markers_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ScteMarkersSource, name: "ScteMarkersSource", traits: {"smithy.api#jsonName" => "scteMarkersSource"}))
    DashManifest.add_member(:stream_selection, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamSelection, name: "StreamSelection", traits: {"smithy.api#jsonName" => "streamSelection"}))
    DashManifest.type = Types::DashManifest
    DashPackage.add_member(:dash_manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofdashmanifest, name: "DashManifests", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "dashManifests", "smithy.api#required" => {}}))
    DashPackage.add_member(:encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: DashEncryption, name: "Encryption", traits: {"smithy.api#jsonName" => "encryption"}))
    DashPackage.add_member(:include_encoder_configuration_in_segments, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IncludeEncoderConfigurationInSegments", traits: {"smithy.api#jsonName" => "includeEncoderConfigurationInSegments"}))
    DashPackage.add_member(:include_iframe_only_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IncludeIframeOnlyStream", traits: {"smithy.api#jsonName" => "includeIframeOnlyStream"}))
    DashPackage.add_member(:period_triggers, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofPeriodtriggerselement, name: "PeriodTriggers", traits: {"smithy.api#jsonName" => "periodTriggers"}))
    DashPackage.add_member(:segment_duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "SegmentDurationSeconds", traits: {"smithy.api#jsonName" => "segmentDurationSeconds"}))
    DashPackage.add_member(:segment_template_format, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentTemplateFormat, name: "SegmentTemplateFormat", traits: {"smithy.api#jsonName" => "segmentTemplateFormat"}))
    DashPackage.type = Types::DashPackage
    DeleteAssetRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssetRequest.type = Types::DeleteAssetRequest
    DeleteAssetResponse.type = Types::DeleteAssetResponse
    DeletePackagingConfigurationRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePackagingConfigurationRequest.type = Types::DeletePackagingConfigurationRequest
    DeletePackagingConfigurationResponse.type = Types::DeletePackagingConfigurationResponse
    DeletePackagingGroupRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePackagingGroupRequest.type = Types::DeletePackagingGroupRequest
    DeletePackagingGroupResponse.type = Types::DeletePackagingGroupResponse
    DescribeAssetRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAssetRequest.type = Types::DescribeAssetRequest
    DescribeAssetResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#jsonName" => "arn"}))
    DescribeAssetResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreatedAt", traits: {"smithy.api#jsonName" => "createdAt"}))
    DescribeAssetResponse.add_member(:egress_endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofegressendpoint, name: "EgressEndpoints", traits: {"smithy.api#jsonName" => "egressEndpoints"}))
    DescribeAssetResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#jsonName" => "id"}))
    DescribeAssetResponse.add_member(:packaging_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PackagingGroupId", traits: {"smithy.api#jsonName" => "packagingGroupId"}))
    DescribeAssetResponse.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceId", traits: {"smithy.api#jsonName" => "resourceId"}))
    DescribeAssetResponse.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceArn", traits: {"smithy.api#jsonName" => "sourceArn"}))
    DescribeAssetResponse.add_member(:source_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceRoleArn", traits: {"smithy.api#jsonName" => "sourceRoleArn"}))
    DescribeAssetResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    DescribeAssetResponse.type = Types::DescribeAssetResponse
    DescribePackagingConfigurationRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribePackagingConfigurationRequest.type = Types::DescribePackagingConfigurationRequest
    DescribePackagingConfigurationResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#jsonName" => "arn"}))
    DescribePackagingConfigurationResponse.add_member(:cmaf_package, ::Smithy::Schema::Shapes::MemberShape.new(target: CmafPackage, name: "CmafPackage", traits: {"smithy.api#jsonName" => "cmafPackage"}))
    DescribePackagingConfigurationResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreatedAt", traits: {"smithy.api#jsonName" => "createdAt"}))
    DescribePackagingConfigurationResponse.add_member(:dash_package, ::Smithy::Schema::Shapes::MemberShape.new(target: DashPackage, name: "DashPackage", traits: {"smithy.api#jsonName" => "dashPackage"}))
    DescribePackagingConfigurationResponse.add_member(:hls_package, ::Smithy::Schema::Shapes::MemberShape.new(target: HlsPackage, name: "HlsPackage", traits: {"smithy.api#jsonName" => "hlsPackage"}))
    DescribePackagingConfigurationResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#jsonName" => "id"}))
    DescribePackagingConfigurationResponse.add_member(:mss_package, ::Smithy::Schema::Shapes::MemberShape.new(target: MssPackage, name: "MssPackage", traits: {"smithy.api#jsonName" => "mssPackage"}))
    DescribePackagingConfigurationResponse.add_member(:packaging_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PackagingGroupId", traits: {"smithy.api#jsonName" => "packagingGroupId"}))
    DescribePackagingConfigurationResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    DescribePackagingConfigurationResponse.type = Types::DescribePackagingConfigurationResponse
    DescribePackagingGroupRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribePackagingGroupRequest.type = Types::DescribePackagingGroupRequest
    DescribePackagingGroupResponse.add_member(:approximate_asset_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ApproximateAssetCount", traits: {"smithy.api#jsonName" => "approximateAssetCount"}))
    DescribePackagingGroupResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#jsonName" => "arn"}))
    DescribePackagingGroupResponse.add_member(:authorization, ::Smithy::Schema::Shapes::MemberShape.new(target: Authorization, name: "Authorization", traits: {"smithy.api#jsonName" => "authorization"}))
    DescribePackagingGroupResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreatedAt", traits: {"smithy.api#jsonName" => "createdAt"}))
    DescribePackagingGroupResponse.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DomainName", traits: {"smithy.api#jsonName" => "domainName"}))
    DescribePackagingGroupResponse.add_member(:egress_access_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: EgressAccessLogs, name: "EgressAccessLogs", traits: {"smithy.api#jsonName" => "egressAccessLogs"}))
    DescribePackagingGroupResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#jsonName" => "id"}))
    DescribePackagingGroupResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    DescribePackagingGroupResponse.type = Types::DescribePackagingGroupResponse
    EgressAccessLogs.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LogGroupName", traits: {"smithy.api#jsonName" => "logGroupName"}))
    EgressAccessLogs.type = Types::EgressAccessLogs
    EgressEndpoint.add_member(:packaging_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PackagingConfigurationId", traits: {"smithy.api#jsonName" => "packagingConfigurationId"}))
    EgressEndpoint.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status", traits: {"smithy.api#jsonName" => "status"}))
    EgressEndpoint.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Url", traits: {"smithy.api#jsonName" => "url"}))
    EgressEndpoint.type = Types::EgressEndpoint
    EncryptionContractConfiguration.add_member(:preset_speke20_audio, ::Smithy::Schema::Shapes::MemberShape.new(target: PresetSpeke20Audio, name: "PresetSpeke20Audio", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "presetSpeke20Audio", "smithy.api#required" => {}}))
    EncryptionContractConfiguration.add_member(:preset_speke20_video, ::Smithy::Schema::Shapes::MemberShape.new(target: PresetSpeke20Video, name: "PresetSpeke20Video", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "presetSpeke20Video", "smithy.api#required" => {}}))
    EncryptionContractConfiguration.type = Types::EncryptionContractConfiguration
    EncryptionMethod.add_member(:aes_128, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AES_128", traits: {"smithy.api#enumValue" => "AES_128"}))
    EncryptionMethod.add_member(:sample_aes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAMPLE_AES", traits: {"smithy.api#enumValue" => "SAMPLE_AES"}))
    ForbiddenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    ForbiddenException.type = Types::ForbiddenException
    HlsEncryption.add_member(:constant_initialization_vector, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConstantInitializationVector", traits: {"smithy.api#jsonName" => "constantInitializationVector"}))
    HlsEncryption.add_member(:encryption_method, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionMethod, name: "EncryptionMethod", traits: {"smithy.api#jsonName" => "encryptionMethod"}))
    HlsEncryption.add_member(:speke_key_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: SpekeKeyProvider, name: "SpekeKeyProvider", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "spekeKeyProvider", "smithy.api#required" => {}}))
    HlsEncryption.type = Types::HlsEncryption
    HlsManifest.add_member(:ad_markers, ::Smithy::Schema::Shapes::MemberShape.new(target: AdMarkers, name: "AdMarkers", traits: {"smithy.api#jsonName" => "adMarkers"}))
    HlsManifest.add_member(:include_iframe_only_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IncludeIframeOnlyStream", traits: {"smithy.api#jsonName" => "includeIframeOnlyStream"}))
    HlsManifest.add_member(:manifest_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ManifestName", traits: {"smithy.api#jsonName" => "manifestName"}))
    HlsManifest.add_member(:program_date_time_interval_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ProgramDateTimeIntervalSeconds", traits: {"smithy.api#jsonName" => "programDateTimeIntervalSeconds"}))
    HlsManifest.add_member(:repeat_ext_x_key, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "RepeatExtXKey", traits: {"smithy.api#jsonName" => "repeatExtXKey"}))
    HlsManifest.add_member(:stream_selection, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamSelection, name: "StreamSelection", traits: {"smithy.api#jsonName" => "streamSelection"}))
    HlsManifest.type = Types::HlsManifest
    HlsPackage.add_member(:encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: HlsEncryption, name: "Encryption", traits: {"smithy.api#jsonName" => "encryption"}))
    HlsPackage.add_member(:hls_manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofhlsmanifest, name: "HlsManifests", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "hlsManifests", "smithy.api#required" => {}}))
    HlsPackage.add_member(:include_dvb_subtitles, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IncludeDvbSubtitles", traits: {"smithy.api#jsonName" => "includeDvbSubtitles"}))
    HlsPackage.add_member(:segment_duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "SegmentDurationSeconds", traits: {"smithy.api#jsonName" => "segmentDurationSeconds"}))
    HlsPackage.add_member(:use_audio_rendition_group, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "UseAudioRenditionGroup", traits: {"smithy.api#jsonName" => "useAudioRenditionGroup"}))
    HlsPackage.type = Types::HlsPackage
    InternalServerErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    InternalServerErrorException.type = Types::InternalServerErrorException
    ListAssetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAssetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAssetsRequest.add_member(:packaging_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PackagingGroupId", traits: {"smithy.api#httpQuery" => "packagingGroupId"}))
    ListAssetsRequest.type = Types::ListAssetsRequest
    ListAssetsResponse.add_member(:assets, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofassetshallow, name: "Assets", traits: {"smithy.api#jsonName" => "assets"}))
    ListAssetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListAssetsResponse.type = Types::ListAssetsResponse
    ListPackagingConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListPackagingConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListPackagingConfigurationsRequest.add_member(:packaging_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PackagingGroupId", traits: {"smithy.api#httpQuery" => "packagingGroupId"}))
    ListPackagingConfigurationsRequest.type = Types::ListPackagingConfigurationsRequest
    ListPackagingConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListPackagingConfigurationsResponse.add_member(:packaging_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofpackagingconfiguration, name: "PackagingConfigurations", traits: {"smithy.api#jsonName" => "packagingConfigurations"}))
    ListPackagingConfigurationsResponse.type = Types::ListPackagingConfigurationsResponse
    ListPackagingGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListPackagingGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListPackagingGroupsRequest.type = Types::ListPackagingGroupsRequest
    ListPackagingGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListPackagingGroupsResponse.add_member(:packaging_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofpackaginggroup, name: "PackagingGroups", traits: {"smithy.api#jsonName" => "packagingGroups"}))
    ListPackagingGroupsResponse.type = Types::ListPackagingGroupsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ManifestLayout.add_member(:full, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FULL", traits: {"smithy.api#enumValue" => "FULL"}))
    ManifestLayout.add_member(:compact, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPACT", traits: {"smithy.api#enumValue" => "COMPACT"}))
    MssEncryption.add_member(:speke_key_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: SpekeKeyProvider, name: "SpekeKeyProvider", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "spekeKeyProvider", "smithy.api#required" => {}}))
    MssEncryption.type = Types::MssEncryption
    MssManifest.add_member(:manifest_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ManifestName", traits: {"smithy.api#jsonName" => "manifestName"}))
    MssManifest.add_member(:stream_selection, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamSelection, name: "StreamSelection", traits: {"smithy.api#jsonName" => "streamSelection"}))
    MssManifest.type = Types::MssManifest
    MssPackage.add_member(:encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: MssEncryption, name: "Encryption", traits: {"smithy.api#jsonName" => "encryption"}))
    MssPackage.add_member(:mss_manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofmssmanifest, name: "MssManifests", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "mssManifests", "smithy.api#required" => {}}))
    MssPackage.add_member(:segment_duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "SegmentDurationSeconds", traits: {"smithy.api#jsonName" => "segmentDurationSeconds"}))
    MssPackage.type = Types::MssPackage
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    NotFoundException.type = Types::NotFoundException
    PackagingConfiguration.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#jsonName" => "arn"}))
    PackagingConfiguration.add_member(:cmaf_package, ::Smithy::Schema::Shapes::MemberShape.new(target: CmafPackage, name: "CmafPackage", traits: {"smithy.api#jsonName" => "cmafPackage"}))
    PackagingConfiguration.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreatedAt", traits: {"smithy.api#jsonName" => "createdAt"}))
    PackagingConfiguration.add_member(:dash_package, ::Smithy::Schema::Shapes::MemberShape.new(target: DashPackage, name: "DashPackage", traits: {"smithy.api#jsonName" => "dashPackage"}))
    PackagingConfiguration.add_member(:hls_package, ::Smithy::Schema::Shapes::MemberShape.new(target: HlsPackage, name: "HlsPackage", traits: {"smithy.api#jsonName" => "hlsPackage"}))
    PackagingConfiguration.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#jsonName" => "id"}))
    PackagingConfiguration.add_member(:mss_package, ::Smithy::Schema::Shapes::MemberShape.new(target: MssPackage, name: "MssPackage", traits: {"smithy.api#jsonName" => "mssPackage"}))
    PackagingConfiguration.add_member(:packaging_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PackagingGroupId", traits: {"smithy.api#jsonName" => "packagingGroupId"}))
    PackagingConfiguration.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    PackagingConfiguration.type = Types::PackagingConfiguration
    PackagingGroup.add_member(:approximate_asset_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ApproximateAssetCount", traits: {"smithy.api#jsonName" => "approximateAssetCount"}))
    PackagingGroup.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#jsonName" => "arn"}))
    PackagingGroup.add_member(:authorization, ::Smithy::Schema::Shapes::MemberShape.new(target: Authorization, name: "Authorization", traits: {"smithy.api#jsonName" => "authorization"}))
    PackagingGroup.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreatedAt", traits: {"smithy.api#jsonName" => "createdAt"}))
    PackagingGroup.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DomainName", traits: {"smithy.api#jsonName" => "domainName"}))
    PackagingGroup.add_member(:egress_access_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: EgressAccessLogs, name: "EgressAccessLogs", traits: {"smithy.api#jsonName" => "egressAccessLogs"}))
    PackagingGroup.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#jsonName" => "id"}))
    PackagingGroup.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    PackagingGroup.type = Types::PackagingGroup
    PresetSpeke20Audio.add_member(:preset_audio_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRESET_AUDIO_1", traits: {"smithy.api#enumValue" => "PRESET-AUDIO-1"}))
    PresetSpeke20Audio.add_member(:preset_audio_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRESET_AUDIO_2", traits: {"smithy.api#enumValue" => "PRESET-AUDIO-2"}))
    PresetSpeke20Audio.add_member(:preset_audio_3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRESET_AUDIO_3", traits: {"smithy.api#enumValue" => "PRESET-AUDIO-3"}))
    PresetSpeke20Audio.add_member(:shared, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHARED", traits: {"smithy.api#enumValue" => "SHARED"}))
    PresetSpeke20Audio.add_member(:unencrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNENCRYPTED", traits: {"smithy.api#enumValue" => "UNENCRYPTED"}))
    PresetSpeke20Video.add_member(:preset_video_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRESET_VIDEO_1", traits: {"smithy.api#enumValue" => "PRESET-VIDEO-1"}))
    PresetSpeke20Video.add_member(:preset_video_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRESET_VIDEO_2", traits: {"smithy.api#enumValue" => "PRESET-VIDEO-2"}))
    PresetSpeke20Video.add_member(:preset_video_3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRESET_VIDEO_3", traits: {"smithy.api#enumValue" => "PRESET-VIDEO-3"}))
    PresetSpeke20Video.add_member(:preset_video_4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRESET_VIDEO_4", traits: {"smithy.api#enumValue" => "PRESET-VIDEO-4"}))
    PresetSpeke20Video.add_member(:preset_video_5, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRESET_VIDEO_5", traits: {"smithy.api#enumValue" => "PRESET-VIDEO-5"}))
    PresetSpeke20Video.add_member(:preset_video_6, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRESET_VIDEO_6", traits: {"smithy.api#enumValue" => "PRESET-VIDEO-6"}))
    PresetSpeke20Video.add_member(:preset_video_7, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRESET_VIDEO_7", traits: {"smithy.api#enumValue" => "PRESET-VIDEO-7"}))
    PresetSpeke20Video.add_member(:preset_video_8, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRESET_VIDEO_8", traits: {"smithy.api#enumValue" => "PRESET-VIDEO-8"}))
    PresetSpeke20Video.add_member(:shared, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHARED", traits: {"smithy.api#enumValue" => "SHARED"}))
    PresetSpeke20Video.add_member(:unencrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNENCRYPTED", traits: {"smithy.api#enumValue" => "UNENCRYPTED"}))
    Profile.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    Profile.add_member(:hbbtv_1_5, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HBBTV_1_5", traits: {"smithy.api#enumValue" => "HBBTV_1_5"}))
    ScteMarkersSource.add_member(:segments, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEGMENTS", traits: {"smithy.api#enumValue" => "SEGMENTS"}))
    ScteMarkersSource.add_member(:manifest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANIFEST", traits: {"smithy.api#enumValue" => "MANIFEST"}))
    SegmentTemplateFormat.add_member(:number_with_timeline, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NUMBER_WITH_TIMELINE", traits: {"smithy.api#enumValue" => "NUMBER_WITH_TIMELINE"}))
    SegmentTemplateFormat.add_member(:time_with_timeline, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIME_WITH_TIMELINE", traits: {"smithy.api#enumValue" => "TIME_WITH_TIMELINE"}))
    SegmentTemplateFormat.add_member(:number_with_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NUMBER_WITH_DURATION", traits: {"smithy.api#enumValue" => "NUMBER_WITH_DURATION"}))
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SpekeKeyProvider.add_member(:encryption_contract_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionContractConfiguration, name: "EncryptionContractConfiguration", traits: {"smithy.api#jsonName" => "encryptionContractConfiguration"}))
    SpekeKeyProvider.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RoleArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "roleArn", "smithy.api#required" => {}}))
    SpekeKeyProvider.add_member(:system_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "SystemIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "systemIds", "smithy.api#required" => {}}))
    SpekeKeyProvider.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Url", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "url", "smithy.api#required" => {}}))
    SpekeKeyProvider.type = Types::SpekeKeyProvider
    StreamOrder.add_member(:original, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORIGINAL", traits: {"smithy.api#enumValue" => "ORIGINAL"}))
    StreamOrder.add_member(:video_bitrate_ascending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VIDEO_BITRATE_ASCENDING", traits: {"smithy.api#enumValue" => "VIDEO_BITRATE_ASCENDING"}))
    StreamOrder.add_member(:video_bitrate_descending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VIDEO_BITRATE_DESCENDING", traits: {"smithy.api#enumValue" => "VIDEO_BITRATE_DESCENDING"}))
    StreamSelection.add_member(:max_video_bits_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxVideoBitsPerSecond", traits: {"smithy.api#jsonName" => "maxVideoBitsPerSecond"}))
    StreamSelection.add_member(:min_video_bits_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MinVideoBitsPerSecond", traits: {"smithy.api#jsonName" => "minVideoBitsPerSecond"}))
    StreamSelection.add_member(:stream_order, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamOrder, name: "StreamOrder", traits: {"smithy.api#jsonName" => "streamOrder"}))
    StreamSelection.type = Types::StreamSelection
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "tags", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    Tags.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    Tags.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UnprocessableEntityException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    UnprocessableEntityException.type = Types::UnprocessableEntityException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "TagKeys", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdatePackagingGroupRequest.add_member(:authorization, ::Smithy::Schema::Shapes::MemberShape.new(target: Authorization, name: "Authorization", traits: {"smithy.api#jsonName" => "authorization"}))
    UpdatePackagingGroupRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePackagingGroupRequest.type = Types::UpdatePackagingGroupRequest
    UpdatePackagingGroupResponse.add_member(:approximate_asset_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ApproximateAssetCount", traits: {"smithy.api#jsonName" => "approximateAssetCount"}))
    UpdatePackagingGroupResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#jsonName" => "arn"}))
    UpdatePackagingGroupResponse.add_member(:authorization, ::Smithy::Schema::Shapes::MemberShape.new(target: Authorization, name: "Authorization", traits: {"smithy.api#jsonName" => "authorization"}))
    UpdatePackagingGroupResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreatedAt", traits: {"smithy.api#jsonName" => "createdAt"}))
    UpdatePackagingGroupResponse.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DomainName", traits: {"smithy.api#jsonName" => "domainName"}))
    UpdatePackagingGroupResponse.add_member(:egress_access_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: EgressAccessLogs, name: "EgressAccessLogs", traits: {"smithy.api#jsonName" => "egressAccessLogs"}))
    UpdatePackagingGroupResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#jsonName" => "id"}))
    UpdatePackagingGroupResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    UpdatePackagingGroupResponse.type = Types::UpdatePackagingGroupResponse
    Periodtriggerselement.add_member(:ads, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADS", traits: {"smithy.api#enumValue" => "ADS"}))
    Listofassetshallow.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetShallow, name: "member"))
    Listofdashmanifest.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DashManifest, name: "member"))
    Listofegressendpoint.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EgressEndpoint, name: "member"))
    Listofhlsmanifest.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: HlsManifest, name: "member"))
    Listofmssmanifest.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MssManifest, name: "member"))
    Listofpackagingconfiguration.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PackagingConfiguration, name: "member"))
    Listofpackaginggroup.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PackagingGroup, name: "member"))
    ListofPeriodtriggerselement.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Periodtriggerselement, name: "member"))
    ListofString.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    MapofString.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    MapofString.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))

    MediaPackageVod = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.mediapackagevod#MediaPackageVod"
      service.name = "MediaPackageVod"
      service.version = "2018-11-07"
      service.traits = {"aws.api#service" => {"sdkId" => "MediaPackage Vod", "arnNamespace" => "mediapackage-vod", "cloudFormationName" => "MediaPackageVod", "cloudTrailEventSource" => "mediapackagevod.amazonaws.com", "endpointPrefix" => "mediapackage-vod"}, "aws.auth#sigv4" => {"name" => "mediapackage-vod"}, "aws.protocols#restJson1" => {}, "smithy.api#auth" => ["aws.auth#sigv4"], "smithy.api#title" => "AWS Elemental MediaPackage VOD"}
      service.add_operation(:configure_logs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagevod#ConfigureLogs"
        operation.name = "ConfigureLogs"
        operation.input = ConfigureLogsRequest
        operation.output = ConfigureLogsResponse
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnprocessableEntityException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/packaging_groups/{Id}/configure_logs", "code" => 200}}
      end)
      service.add_operation(:create_asset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagevod#CreateAsset"
        operation.name = "CreateAsset"
        operation.input = CreateAssetRequest
        operation.output = CreateAssetResponse
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnprocessableEntityException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/assets", "code" => 200}}
      end)
      service.add_operation(:create_packaging_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagevod#CreatePackagingConfiguration"
        operation.name = "CreatePackagingConfiguration"
        operation.input = CreatePackagingConfigurationRequest
        operation.output = CreatePackagingConfigurationResponse
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnprocessableEntityException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/packaging_configurations", "code" => 200}}
      end)
      service.add_operation(:create_packaging_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagevod#CreatePackagingGroup"
        operation.name = "CreatePackagingGroup"
        operation.input = CreatePackagingGroupRequest
        operation.output = CreatePackagingGroupResponse
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnprocessableEntityException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/packaging_groups", "code" => 200}}
      end)
      service.add_operation(:delete_asset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagevod#DeleteAsset"
        operation.name = "DeleteAsset"
        operation.input = DeleteAssetRequest
        operation.output = DeleteAssetResponse
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnprocessableEntityException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/assets/{Id}", "code" => 202}}
      end)
      service.add_operation(:delete_packaging_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagevod#DeletePackagingConfiguration"
        operation.name = "DeletePackagingConfiguration"
        operation.input = DeletePackagingConfigurationRequest
        operation.output = DeletePackagingConfigurationResponse
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnprocessableEntityException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/packaging_configurations/{Id}", "code" => 202}}
      end)
      service.add_operation(:delete_packaging_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagevod#DeletePackagingGroup"
        operation.name = "DeletePackagingGroup"
        operation.input = DeletePackagingGroupRequest
        operation.output = DeletePackagingGroupResponse
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnprocessableEntityException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/packaging_groups/{Id}", "code" => 202}}
      end)
      service.add_operation(:describe_asset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagevod#DescribeAsset"
        operation.name = "DescribeAsset"
        operation.input = DescribeAssetRequest
        operation.output = DescribeAssetResponse
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnprocessableEntityException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/assets/{Id}", "code" => 200}}
      end)
      service.add_operation(:describe_packaging_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagevod#DescribePackagingConfiguration"
        operation.name = "DescribePackagingConfiguration"
        operation.input = DescribePackagingConfigurationRequest
        operation.output = DescribePackagingConfigurationResponse
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnprocessableEntityException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/packaging_configurations/{Id}", "code" => 200}}
      end)
      service.add_operation(:describe_packaging_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagevod#DescribePackagingGroup"
        operation.name = "DescribePackagingGroup"
        operation.input = DescribePackagingGroupRequest
        operation.output = DescribePackagingGroupResponse
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnprocessableEntityException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/packaging_groups/{Id}", "code" => 200}}
      end)
      service.add_operation(:list_assets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagevod#ListAssets"
        operation.name = "ListAssets"
        operation.input = ListAssetsRequest
        operation.output = ListAssetsResponse
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnprocessableEntityException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/assets", "code" => 200}}
        operation[:paginator] = Paginators::ListAssets.new
      end)
      service.add_operation(:list_packaging_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagevod#ListPackagingConfigurations"
        operation.name = "ListPackagingConfigurations"
        operation.input = ListPackagingConfigurationsRequest
        operation.output = ListPackagingConfigurationsResponse
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnprocessableEntityException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/packaging_configurations", "code" => 200}}
        operation[:paginator] = Paginators::ListPackagingConfigurations.new
      end)
      service.add_operation(:list_packaging_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagevod#ListPackagingGroups"
        operation.name = "ListPackagingGroups"
        operation.input = ListPackagingGroupsRequest
        operation.output = ListPackagingGroupsResponse
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnprocessableEntityException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/packaging_groups", "code" => 200}}
        operation[:paginator] = Paginators::ListPackagingGroups.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagevod#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagevod#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagevod#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:update_packaging_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagevod#UpdatePackagingGroup"
        operation.name = "UpdatePackagingGroup"
        operation.input = UpdatePackagingGroupRequest
        operation.output = UpdatePackagingGroupResponse
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnprocessableEntityException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/packaging_groups/{Id}", "code" => 200}}
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
