# frozen_string_literal: true

# This is generated code!

module Aws::MediaPackage
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AdMarkers = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediapackage#AdMarkers', name: 'AdMarkers')
    AdTriggers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediapackage#AdTriggers', name: 'AdTriggers')
    AdsOnDeliveryRestrictions = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediapackage#AdsOnDeliveryRestrictions', name: 'AdsOnDeliveryRestrictions')
    Authorization = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#Authorization', name: 'Authorization')
    Channel = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#Channel', name: 'Channel')
    CmafEncryption = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#CmafEncryption', name: 'CmafEncryption')
    CmafEncryptionMethod = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediapackage#CmafEncryptionMethod', name: 'CmafEncryptionMethod')
    CmafPackage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#CmafPackage', name: 'CmafPackage')
    CmafPackageCreateOrUpdateParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#CmafPackageCreateOrUpdateParameters', name: 'CmafPackageCreateOrUpdateParameters')
    ConfigureLogsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#ConfigureLogsRequest', name: 'ConfigureLogsRequest')
    ConfigureLogsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#ConfigureLogsResponse', name: 'ConfigureLogsResponse')
    CreateChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#CreateChannelRequest', name: 'CreateChannelRequest')
    CreateChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#CreateChannelResponse', name: 'CreateChannelResponse')
    CreateHarvestJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#CreateHarvestJobRequest', name: 'CreateHarvestJobRequest')
    CreateHarvestJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#CreateHarvestJobResponse', name: 'CreateHarvestJobResponse')
    CreateOriginEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#CreateOriginEndpointRequest', name: 'CreateOriginEndpointRequest')
    CreateOriginEndpointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#CreateOriginEndpointResponse', name: 'CreateOriginEndpointResponse')
    DashEncryption = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#DashEncryption', name: 'DashEncryption')
    DashPackage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#DashPackage', name: 'DashPackage')
    DeleteChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#DeleteChannelRequest', name: 'DeleteChannelRequest')
    DeleteChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#DeleteChannelResponse', name: 'DeleteChannelResponse')
    DeleteOriginEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#DeleteOriginEndpointRequest', name: 'DeleteOriginEndpointRequest')
    DeleteOriginEndpointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#DeleteOriginEndpointResponse', name: 'DeleteOriginEndpointResponse')
    DescribeChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#DescribeChannelRequest', name: 'DescribeChannelRequest')
    DescribeChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#DescribeChannelResponse', name: 'DescribeChannelResponse')
    DescribeHarvestJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#DescribeHarvestJobRequest', name: 'DescribeHarvestJobRequest')
    DescribeHarvestJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#DescribeHarvestJobResponse', name: 'DescribeHarvestJobResponse')
    DescribeOriginEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#DescribeOriginEndpointRequest', name: 'DescribeOriginEndpointRequest')
    DescribeOriginEndpointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#DescribeOriginEndpointResponse', name: 'DescribeOriginEndpointResponse')
    EgressAccessLogs = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#EgressAccessLogs', name: 'EgressAccessLogs')
    EncryptionContractConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#EncryptionContractConfiguration', name: 'EncryptionContractConfiguration')
    EncryptionMethod = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediapackage#EncryptionMethod', name: 'EncryptionMethod')
    ForbiddenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#ForbiddenException', name: 'ForbiddenException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    HarvestJob = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#HarvestJob', name: 'HarvestJob')
    HlsEncryption = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#HlsEncryption', name: 'HlsEncryption')
    HlsIngest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#HlsIngest', name: 'HlsIngest')
    HlsManifest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#HlsManifest', name: 'HlsManifest')
    HlsManifestCreateOrUpdateParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#HlsManifestCreateOrUpdateParameters', name: 'HlsManifestCreateOrUpdateParameters')
    HlsPackage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#HlsPackage', name: 'HlsPackage')
    IngestEndpoint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#IngestEndpoint', name: 'IngestEndpoint')
    IngressAccessLogs = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#IngressAccessLogs', name: 'IngressAccessLogs')
    InternalServerErrorException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#InternalServerErrorException', name: 'InternalServerErrorException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListChannelsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#ListChannelsRequest', name: 'ListChannelsRequest')
    ListChannelsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#ListChannelsResponse', name: 'ListChannelsResponse')
    ListHarvestJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#ListHarvestJobsRequest', name: 'ListHarvestJobsRequest')
    ListHarvestJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#ListHarvestJobsResponse', name: 'ListHarvestJobsResponse')
    ListOriginEndpointsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#ListOriginEndpointsRequest', name: 'ListOriginEndpointsRequest')
    ListOriginEndpointsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#ListOriginEndpointsResponse', name: 'ListOriginEndpointsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ManifestLayout = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediapackage#ManifestLayout', name: 'ManifestLayout')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.mediapackage#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MssEncryption = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#MssEncryption', name: 'MssEncryption')
    MssPackage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#MssPackage', name: 'MssPackage')
    NotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#NotFoundException', name: 'NotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    OriginEndpoint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#OriginEndpoint', name: 'OriginEndpoint')
    Origination = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediapackage#Origination', name: 'Origination')
    PlaylistType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediapackage#PlaylistType', name: 'PlaylistType')
    PresetSpeke20Audio = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediapackage#PresetSpeke20Audio', name: 'PresetSpeke20Audio')
    PresetSpeke20Video = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediapackage#PresetSpeke20Video', name: 'PresetSpeke20Video')
    Profile = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediapackage#Profile', name: 'Profile')
    RotateChannelCredentialsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#RotateChannelCredentialsRequest', name: 'RotateChannelCredentialsRequest', traits: {"smithy.api#deprecated" => {}})
    RotateChannelCredentialsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#RotateChannelCredentialsResponse', name: 'RotateChannelCredentialsResponse', traits: {"smithy.api#deprecated" => {}})
    RotateIngestEndpointCredentialsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#RotateIngestEndpointCredentialsRequest', name: 'RotateIngestEndpointCredentialsRequest')
    RotateIngestEndpointCredentialsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#RotateIngestEndpointCredentialsResponse', name: 'RotateIngestEndpointCredentialsResponse')
    S3Destination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#S3Destination', name: 'S3Destination')
    SegmentTemplateFormat = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediapackage#SegmentTemplateFormat', name: 'SegmentTemplateFormat')
    SensitiveString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mediapackage#SensitiveString', name: 'SensitiveString', traits: {"smithy.api#sensitive" => {}})
    ServiceUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#ServiceUnavailableException', name: 'ServiceUnavailableException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SpekeKeyProvider = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#SpekeKeyProvider', name: 'SpekeKeyProvider')
    Status = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediapackage#Status', name: 'Status')
    StreamOrder = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediapackage#StreamOrder', name: 'StreamOrder')
    StreamSelection = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#StreamSelection', name: 'StreamSelection')
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#TagResourceRequest', name: 'TagResourceRequest')
    Tags = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.mediapackage#Tags', name: 'Tags')
    TooManyRequestsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#TooManyRequestsException', name: 'TooManyRequestsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UnprocessableEntityException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#UnprocessableEntityException', name: 'UnprocessableEntityException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 422})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#UntagResourceRequest', name: 'UntagResourceRequest')
    UpdateChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#UpdateChannelRequest', name: 'UpdateChannelRequest')
    UpdateChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#UpdateChannelResponse', name: 'UpdateChannelResponse')
    UpdateOriginEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#UpdateOriginEndpointRequest', name: 'UpdateOriginEndpointRequest')
    UpdateOriginEndpointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediapackage#UpdateOriginEndpointResponse', name: 'UpdateOriginEndpointResponse')
    UtcTiming = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediapackage#UtcTiming', name: 'UtcTiming')
    Adtriggerselement = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediapackage#__AdTriggersElement', name: 'Adtriggerselement')
    Periodtriggerselement = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediapackage#__PeriodTriggersElement', name: 'Periodtriggerselement')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.mediapackage#__boolean', name: 'Boolean')
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.mediapackage#__integer', name: 'Integer')
    Listofchannel = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediapackage#__listOfChannel', name: 'Listofchannel')
    Listofharvestjob = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediapackage#__listOfHarvestJob', name: 'Listofharvestjob')
    Listofhlsmanifest = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediapackage#__listOfHlsManifest', name: 'Listofhlsmanifest')
    Listofhlsmanifestcreateorupdateparameters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediapackage#__listOfHlsManifestCreateOrUpdateParameters', name: 'Listofhlsmanifestcreateorupdateparameters')
    Listofingestendpoint = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediapackage#__listOfIngestEndpoint', name: 'Listofingestendpoint')
    Listoforiginendpoint = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediapackage#__listOfOriginEndpoint', name: 'Listoforiginendpoint')
    ListofPeriodtriggerselement = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediapackage#__listOf__PeriodTriggersElement', name: 'ListofPeriodtriggerselement')
    ListofString = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediapackage#__listOf__string', name: 'ListofString')
    MapofString = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.mediapackage#__mapOf__string', name: 'MapofString')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mediapackage#__string', name: 'String')

    AdMarkers.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    AdMarkers.add_member(:scte35_enhanced, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCTE35_ENHANCED', traits: {"smithy.api#enumValue" => "SCTE35_ENHANCED"}))
    AdMarkers.add_member(:passthrough, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PASSTHROUGH', traits: {"smithy.api#enumValue" => "PASSTHROUGH"}))
    AdMarkers.add_member(:daterange, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATERANGE', traits: {"smithy.api#enumValue" => "DATERANGE"}))
    AdTriggers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Adtriggerselement)
    AdsOnDeliveryRestrictions.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    AdsOnDeliveryRestrictions.add_member(:restricted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESTRICTED', traits: {"smithy.api#enumValue" => "RESTRICTED"}))
    AdsOnDeliveryRestrictions.add_member(:unrestricted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNRESTRICTED', traits: {"smithy.api#enumValue" => "UNRESTRICTED"}))
    AdsOnDeliveryRestrictions.add_member(:both, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOTH', traits: {"smithy.api#enumValue" => "BOTH"}))
    Authorization.add_member(:cdn_identifier_secret, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CdnIdentifierSecret', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "The Amazon Resource Name (ARN) for the secret in Secrets Manager that your Content Distribution Network (CDN) uses for authorization to access your endpoint.", "smithy.api#jsonName" => "cdnIdentifierSecret", "smithy.api#required" => {}}))
    Authorization.add_member(:secrets_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SecretsRoleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "The Amazon Resource Name (ARN) for the IAM role that allows MediaPackage to communicate with AWS Secrets Manager.", "smithy.api#jsonName" => "secretsRoleArn", "smithy.api#required" => {}}))
    Authorization.type = Types::Authorization
    Channel.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The Amazon Resource Name (ARN) assigned to the Channel.", "smithy.api#jsonName" => "arn"}))
    Channel.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "The date and time the Channel was created.", "smithy.api#jsonName" => "createdAt"}))
    Channel.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "A short text description of the Channel.", "smithy.api#jsonName" => "description"}))
    Channel.add_member(:egress_access_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: EgressAccessLogs, location_name: 'EgressAccessLogs', traits: {"smithy.api#jsonName" => "egressAccessLogs"}))
    Channel.add_member(:hls_ingest, Smithy::Schema::Shapes::ShapeRef.new(shape: HlsIngest, location_name: 'HlsIngest', traits: {"smithy.api#jsonName" => "hlsIngest"}))
    Channel.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the Channel.", "smithy.api#jsonName" => "id"}))
    Channel.add_member(:ingress_access_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressAccessLogs, location_name: 'IngressAccessLogs', traits: {"smithy.api#jsonName" => "ingressAccessLogs"}))
    Channel.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#jsonName" => "tags"}))
    Channel.type = Types::Channel
    CmafEncryption.add_member(:constant_initialization_vector, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConstantInitializationVector', traits: {"smithy.api#documentation" => "An optional 128-bit, 16-byte hex value represented by a 32-character string, used in conjunction with the key for encrypting blocks. If you don't specify a value, then MediaPackage creates the constant initialization vector (IV).", "smithy.api#jsonName" => "constantInitializationVector"}))
    CmafEncryption.add_member(:encryption_method, Smithy::Schema::Shapes::ShapeRef.new(shape: CmafEncryptionMethod, location_name: 'EncryptionMethod', traits: {"smithy.api#jsonName" => "encryptionMethod"}))
    CmafEncryption.add_member(:key_rotation_interval_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'KeyRotationIntervalSeconds', traits: {"smithy.api#documentation" => "Time (in seconds) between each encryption key rotation.", "smithy.api#jsonName" => "keyRotationIntervalSeconds"}))
    CmafEncryption.add_member(:speke_key_provider, Smithy::Schema::Shapes::ShapeRef.new(shape: SpekeKeyProvider, location_name: 'SpekeKeyProvider', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "spekeKeyProvider", "smithy.api#required" => {}}))
    CmafEncryption.type = Types::CmafEncryption
    CmafEncryptionMethod.add_member(:sample_aes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAMPLE_AES', traits: {"smithy.api#enumValue" => "SAMPLE_AES"}))
    CmafEncryptionMethod.add_member(:aes_ctr, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AES_CTR', traits: {"smithy.api#enumValue" => "AES_CTR"}))
    CmafPackage.add_member(:encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: CmafEncryption, location_name: 'Encryption', traits: {"smithy.api#jsonName" => "encryption"}))
    CmafPackage.add_member(:hls_manifests, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofhlsmanifest, location_name: 'HlsManifests', traits: {"smithy.api#documentation" => "A list of HLS manifest configurations", "smithy.api#jsonName" => "hlsManifests"}))
    CmafPackage.add_member(:segment_duration_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'SegmentDurationSeconds', traits: {"smithy.api#documentation" => "Duration (in seconds) of each segment. Actual segments will be\nrounded to the nearest multiple of the source segment duration.", "smithy.api#jsonName" => "segmentDurationSeconds"}))
    CmafPackage.add_member(:segment_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SegmentPrefix', traits: {"smithy.api#documentation" => "An optional custom string that is prepended to the name of each segment. If not specified, it defaults to the ChannelId.", "smithy.api#jsonName" => "segmentPrefix"}))
    CmafPackage.add_member(:stream_selection, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamSelection, location_name: 'StreamSelection', traits: {"smithy.api#jsonName" => "streamSelection"}))
    CmafPackage.type = Types::CmafPackage
    CmafPackageCreateOrUpdateParameters.add_member(:encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: CmafEncryption, location_name: 'Encryption', traits: {"smithy.api#jsonName" => "encryption"}))
    CmafPackageCreateOrUpdateParameters.add_member(:hls_manifests, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofhlsmanifestcreateorupdateparameters, location_name: 'HlsManifests', traits: {"smithy.api#documentation" => "A list of HLS manifest configurations", "smithy.api#jsonName" => "hlsManifests"}))
    CmafPackageCreateOrUpdateParameters.add_member(:segment_duration_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'SegmentDurationSeconds', traits: {"smithy.api#documentation" => "Duration (in seconds) of each segment. Actual segments will be\nrounded to the nearest multiple of the source segment duration.", "smithy.api#jsonName" => "segmentDurationSeconds"}))
    CmafPackageCreateOrUpdateParameters.add_member(:segment_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SegmentPrefix', traits: {"smithy.api#documentation" => "An optional custom string that is prepended to the name of each segment. If not specified, it defaults to the ChannelId.", "smithy.api#jsonName" => "segmentPrefix"}))
    CmafPackageCreateOrUpdateParameters.add_member(:stream_selection, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamSelection, location_name: 'StreamSelection', traits: {"smithy.api#jsonName" => "streamSelection"}))
    CmafPackageCreateOrUpdateParameters.type = Types::CmafPackageCreateOrUpdateParameters
    ConfigureLogsRequest.add_member(:egress_access_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: EgressAccessLogs, location_name: 'EgressAccessLogs', traits: {"smithy.api#jsonName" => "egressAccessLogs"}))
    ConfigureLogsRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the channel to log subscription.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ConfigureLogsRequest.add_member(:ingress_access_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressAccessLogs, location_name: 'IngressAccessLogs', traits: {"smithy.api#jsonName" => "ingressAccessLogs"}))
    ConfigureLogsRequest.type = Types::ConfigureLogsRequest
    ConfigureLogsResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The Amazon Resource Name (ARN) assigned to the Channel.", "smithy.api#jsonName" => "arn"}))
    ConfigureLogsResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "The date and time the Channel was created.", "smithy.api#jsonName" => "createdAt"}))
    ConfigureLogsResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "A short text description of the Channel.", "smithy.api#jsonName" => "description"}))
    ConfigureLogsResponse.add_member(:egress_access_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: EgressAccessLogs, location_name: 'EgressAccessLogs', traits: {"smithy.api#jsonName" => "egressAccessLogs"}))
    ConfigureLogsResponse.add_member(:hls_ingest, Smithy::Schema::Shapes::ShapeRef.new(shape: HlsIngest, location_name: 'HlsIngest', traits: {"smithy.api#jsonName" => "hlsIngest"}))
    ConfigureLogsResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the Channel.", "smithy.api#jsonName" => "id"}))
    ConfigureLogsResponse.add_member(:ingress_access_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressAccessLogs, location_name: 'IngressAccessLogs', traits: {"smithy.api#jsonName" => "ingressAccessLogs"}))
    ConfigureLogsResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#jsonName" => "tags"}))
    ConfigureLogsResponse.type = Types::ConfigureLogsResponse
    CreateChannelRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "A short text description of the Channel.", "smithy.api#jsonName" => "description"}))
    CreateChannelRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "The ID of the Channel. The ID must be unique within the region and it\ncannot be changed after a Channel is created.", "smithy.api#jsonName" => "id", "smithy.api#required" => {}}))
    CreateChannelRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#jsonName" => "tags"}))
    CreateChannelRequest.type = Types::CreateChannelRequest
    CreateChannelResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The Amazon Resource Name (ARN) assigned to the Channel.", "smithy.api#jsonName" => "arn"}))
    CreateChannelResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "The date and time the Channel was created.", "smithy.api#jsonName" => "createdAt"}))
    CreateChannelResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "A short text description of the Channel.", "smithy.api#jsonName" => "description"}))
    CreateChannelResponse.add_member(:egress_access_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: EgressAccessLogs, location_name: 'EgressAccessLogs', traits: {"smithy.api#jsonName" => "egressAccessLogs"}))
    CreateChannelResponse.add_member(:hls_ingest, Smithy::Schema::Shapes::ShapeRef.new(shape: HlsIngest, location_name: 'HlsIngest', traits: {"smithy.api#jsonName" => "hlsIngest"}))
    CreateChannelResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the Channel.", "smithy.api#jsonName" => "id"}))
    CreateChannelResponse.add_member(:ingress_access_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressAccessLogs, location_name: 'IngressAccessLogs', traits: {"smithy.api#jsonName" => "ingressAccessLogs"}))
    CreateChannelResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#jsonName" => "tags"}))
    CreateChannelResponse.type = Types::CreateChannelResponse
    CreateHarvestJobRequest.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndTime', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "The end of the time-window which will be harvested", "smithy.api#jsonName" => "endTime", "smithy.api#required" => {}}))
    CreateHarvestJobRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "The ID of the HarvestJob. The ID must be unique within the region\nand it cannot be changed after the HarvestJob is submitted", "smithy.api#jsonName" => "id", "smithy.api#required" => {}}))
    CreateHarvestJobRequest.add_member(:origin_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OriginEndpointId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "The ID of the OriginEndpoint that the HarvestJob will harvest from.\nThis cannot be changed after the HarvestJob is submitted.", "smithy.api#jsonName" => "originEndpointId", "smithy.api#required" => {}}))
    CreateHarvestJobRequest.add_member(:s3_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Destination, location_name: 'S3Destination', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "s3Destination", "smithy.api#required" => {}}))
    CreateHarvestJobRequest.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StartTime', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "The start of the time-window which will be harvested", "smithy.api#jsonName" => "startTime", "smithy.api#required" => {}}))
    CreateHarvestJobRequest.type = Types::CreateHarvestJobRequest
    CreateHarvestJobResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The Amazon Resource Name (ARN) assigned to the HarvestJob.", "smithy.api#jsonName" => "arn"}))
    CreateHarvestJobResponse.add_member(:channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ChannelId', traits: {"smithy.api#documentation" => "The ID of the Channel that the HarvestJob will harvest from.", "smithy.api#jsonName" => "channelId"}))
    CreateHarvestJobResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "The date and time the HarvestJob was submitted.", "smithy.api#jsonName" => "createdAt"}))
    CreateHarvestJobResponse.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndTime', traits: {"smithy.api#documentation" => "The end of the time-window which will be harvested.", "smithy.api#jsonName" => "endTime"}))
    CreateHarvestJobResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the HarvestJob. The ID must be unique within the region\nand it cannot be changed after the HarvestJob is submitted.", "smithy.api#jsonName" => "id"}))
    CreateHarvestJobResponse.add_member(:origin_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OriginEndpointId', traits: {"smithy.api#documentation" => "The ID of the OriginEndpoint that the HarvestJob will harvest from.\nThis cannot be changed after the HarvestJob is submitted.", "smithy.api#jsonName" => "originEndpointId"}))
    CreateHarvestJobResponse.add_member(:s3_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Destination, location_name: 'S3Destination', traits: {"smithy.api#jsonName" => "s3Destination"}))
    CreateHarvestJobResponse.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StartTime', traits: {"smithy.api#documentation" => "The start of the time-window which will be harvested.", "smithy.api#jsonName" => "startTime"}))
    CreateHarvestJobResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status', traits: {"smithy.api#documentation" => "The current status of the HarvestJob. Consider setting up a CloudWatch Event to listen for\nHarvestJobs as they succeed or fail. In the event of failure, the CloudWatch Event will\ninclude an explanation of why the HarvestJob failed.", "smithy.api#jsonName" => "status"}))
    CreateHarvestJobResponse.type = Types::CreateHarvestJobResponse
    CreateOriginEndpointRequest.add_member(:authorization, Smithy::Schema::Shapes::ShapeRef.new(shape: Authorization, location_name: 'Authorization', traits: {"smithy.api#jsonName" => "authorization"}))
    CreateOriginEndpointRequest.add_member(:channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ChannelId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "The ID of the Channel that the OriginEndpoint will be associated with.\nThis cannot be changed after the OriginEndpoint is created.", "smithy.api#jsonName" => "channelId", "smithy.api#required" => {}}))
    CreateOriginEndpointRequest.add_member(:cmaf_package, Smithy::Schema::Shapes::ShapeRef.new(shape: CmafPackageCreateOrUpdateParameters, location_name: 'CmafPackage', traits: {"smithy.api#jsonName" => "cmafPackage"}))
    CreateOriginEndpointRequest.add_member(:dash_package, Smithy::Schema::Shapes::ShapeRef.new(shape: DashPackage, location_name: 'DashPackage', traits: {"smithy.api#jsonName" => "dashPackage"}))
    CreateOriginEndpointRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "A short text description of the OriginEndpoint.", "smithy.api#jsonName" => "description"}))
    CreateOriginEndpointRequest.add_member(:hls_package, Smithy::Schema::Shapes::ShapeRef.new(shape: HlsPackage, location_name: 'HlsPackage', traits: {"smithy.api#jsonName" => "hlsPackage"}))
    CreateOriginEndpointRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "The ID of the OriginEndpoint.  The ID must be unique within the region\nand it cannot be changed after the OriginEndpoint is created.", "smithy.api#jsonName" => "id", "smithy.api#required" => {}}))
    CreateOriginEndpointRequest.add_member(:manifest_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ManifestName', traits: {"smithy.api#documentation" => "A short string that will be used as the filename of the OriginEndpoint URL (defaults to \"index\").", "smithy.api#jsonName" => "manifestName"}))
    CreateOriginEndpointRequest.add_member(:mss_package, Smithy::Schema::Shapes::ShapeRef.new(shape: MssPackage, location_name: 'MssPackage', traits: {"smithy.api#jsonName" => "mssPackage"}))
    CreateOriginEndpointRequest.add_member(:origination, Smithy::Schema::Shapes::ShapeRef.new(shape: Origination, location_name: 'Origination', traits: {"smithy.api#documentation" => "Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint\nmay by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be\nrequested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination", "smithy.api#jsonName" => "origination"}))
    CreateOriginEndpointRequest.add_member(:startover_window_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'StartoverWindowSeconds', traits: {"smithy.api#documentation" => "Maximum duration (seconds) of content to retain for startover playback.\nIf not specified, startover playback will be disabled for the OriginEndpoint.", "smithy.api#jsonName" => "startoverWindowSeconds"}))
    CreateOriginEndpointRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#jsonName" => "tags"}))
    CreateOriginEndpointRequest.add_member(:time_delay_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TimeDelaySeconds', traits: {"smithy.api#documentation" => "Amount of delay (seconds) to enforce on the playback of live content.\nIf not specified, there will be no time delay in effect for the OriginEndpoint.", "smithy.api#jsonName" => "timeDelaySeconds"}))
    CreateOriginEndpointRequest.add_member(:whitelist, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'Whitelist', traits: {"smithy.api#documentation" => "A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.", "smithy.api#jsonName" => "whitelist"}))
    CreateOriginEndpointRequest.type = Types::CreateOriginEndpointRequest
    CreateOriginEndpointResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The Amazon Resource Name (ARN) assigned to the OriginEndpoint.", "smithy.api#jsonName" => "arn"}))
    CreateOriginEndpointResponse.add_member(:authorization, Smithy::Schema::Shapes::ShapeRef.new(shape: Authorization, location_name: 'Authorization', traits: {"smithy.api#jsonName" => "authorization"}))
    CreateOriginEndpointResponse.add_member(:channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ChannelId', traits: {"smithy.api#documentation" => "The ID of the Channel the OriginEndpoint is associated with.", "smithy.api#jsonName" => "channelId"}))
    CreateOriginEndpointResponse.add_member(:cmaf_package, Smithy::Schema::Shapes::ShapeRef.new(shape: CmafPackage, location_name: 'CmafPackage', traits: {"smithy.api#jsonName" => "cmafPackage"}))
    CreateOriginEndpointResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "The date and time the OriginEndpoint was created.", "smithy.api#jsonName" => "createdAt"}))
    CreateOriginEndpointResponse.add_member(:dash_package, Smithy::Schema::Shapes::ShapeRef.new(shape: DashPackage, location_name: 'DashPackage', traits: {"smithy.api#jsonName" => "dashPackage"}))
    CreateOriginEndpointResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "A short text description of the OriginEndpoint.", "smithy.api#jsonName" => "description"}))
    CreateOriginEndpointResponse.add_member(:hls_package, Smithy::Schema::Shapes::ShapeRef.new(shape: HlsPackage, location_name: 'HlsPackage', traits: {"smithy.api#jsonName" => "hlsPackage"}))
    CreateOriginEndpointResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the OriginEndpoint.", "smithy.api#jsonName" => "id"}))
    CreateOriginEndpointResponse.add_member(:manifest_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ManifestName', traits: {"smithy.api#documentation" => "A short string appended to the end of the OriginEndpoint URL.", "smithy.api#jsonName" => "manifestName"}))
    CreateOriginEndpointResponse.add_member(:mss_package, Smithy::Schema::Shapes::ShapeRef.new(shape: MssPackage, location_name: 'MssPackage', traits: {"smithy.api#jsonName" => "mssPackage"}))
    CreateOriginEndpointResponse.add_member(:origination, Smithy::Schema::Shapes::ShapeRef.new(shape: Origination, location_name: 'Origination', traits: {"smithy.api#documentation" => "Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint\nmay by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be\nrequested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination", "smithy.api#jsonName" => "origination"}))
    CreateOriginEndpointResponse.add_member(:startover_window_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'StartoverWindowSeconds', traits: {"smithy.api#documentation" => "Maximum duration (seconds) of content to retain for startover playback.\nIf not specified, startover playback will be disabled for the OriginEndpoint.", "smithy.api#jsonName" => "startoverWindowSeconds"}))
    CreateOriginEndpointResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#jsonName" => "tags"}))
    CreateOriginEndpointResponse.add_member(:time_delay_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TimeDelaySeconds', traits: {"smithy.api#documentation" => "Amount of delay (seconds) to enforce on the playback of live content.\nIf not specified, there will be no time delay in effect for the OriginEndpoint.", "smithy.api#jsonName" => "timeDelaySeconds"}))
    CreateOriginEndpointResponse.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Url', traits: {"smithy.api#documentation" => "The URL of the packaged OriginEndpoint for consumption.", "smithy.api#jsonName" => "url"}))
    CreateOriginEndpointResponse.add_member(:whitelist, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'Whitelist', traits: {"smithy.api#documentation" => "A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.", "smithy.api#jsonName" => "whitelist"}))
    CreateOriginEndpointResponse.type = Types::CreateOriginEndpointResponse
    DashEncryption.add_member(:key_rotation_interval_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'KeyRotationIntervalSeconds', traits: {"smithy.api#documentation" => "Time (in seconds) between each encryption key rotation.", "smithy.api#jsonName" => "keyRotationIntervalSeconds"}))
    DashEncryption.add_member(:speke_key_provider, Smithy::Schema::Shapes::ShapeRef.new(shape: SpekeKeyProvider, location_name: 'SpekeKeyProvider', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "spekeKeyProvider", "smithy.api#required" => {}}))
    DashEncryption.type = Types::DashEncryption
    DashPackage.add_member(:ad_triggers, Smithy::Schema::Shapes::ShapeRef.new(shape: AdTriggers, location_name: 'AdTriggers', traits: {"smithy.api#jsonName" => "adTriggers"}))
    DashPackage.add_member(:ads_on_delivery_restrictions, Smithy::Schema::Shapes::ShapeRef.new(shape: AdsOnDeliveryRestrictions, location_name: 'AdsOnDeliveryRestrictions', traits: {"smithy.api#jsonName" => "adsOnDeliveryRestrictions"}))
    DashPackage.add_member(:encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: DashEncryption, location_name: 'Encryption', traits: {"smithy.api#jsonName" => "encryption"}))
    DashPackage.add_member(:include_iframe_only_stream, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IncludeIframeOnlyStream', traits: {"smithy.api#documentation" => "When enabled, an I-Frame only stream will be included in the output.", "smithy.api#jsonName" => "includeIframeOnlyStream"}))
    DashPackage.add_member(:manifest_layout, Smithy::Schema::Shapes::ShapeRef.new(shape: ManifestLayout, location_name: 'ManifestLayout', traits: {"smithy.api#documentation" => "Determines the position of some tags in the Media Presentation Description (MPD).  When set to FULL, elements like SegmentTemplate and ContentProtection are included in each Representation.  When set to COMPACT, duplicate elements are combined and presented at the AdaptationSet level. When set to DRM_TOP_LEVEL_COMPACT, content protection elements are placed the MPD level and referenced at the AdaptationSet level.", "smithy.api#jsonName" => "manifestLayout"}))
    DashPackage.add_member(:manifest_window_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ManifestWindowSeconds', traits: {"smithy.api#documentation" => "Time window (in seconds) contained in each manifest.", "smithy.api#jsonName" => "manifestWindowSeconds"}))
    DashPackage.add_member(:min_buffer_time_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MinBufferTimeSeconds', traits: {"smithy.api#documentation" => "Minimum duration (in seconds) that a player will buffer media before starting the presentation.", "smithy.api#jsonName" => "minBufferTimeSeconds"}))
    DashPackage.add_member(:min_update_period_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MinUpdatePeriodSeconds', traits: {"smithy.api#documentation" => "Minimum duration (in seconds) between potential changes to the Dynamic Adaptive Streaming over HTTP (DASH) Media Presentation Description (MPD).", "smithy.api#jsonName" => "minUpdatePeriodSeconds"}))
    DashPackage.add_member(:period_triggers, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofPeriodtriggerselement, location_name: 'PeriodTriggers', traits: {"smithy.api#documentation" => "A list of triggers that controls when the outgoing Dynamic Adaptive Streaming over HTTP (DASH)\nMedia Presentation Description (MPD) will be partitioned into multiple periods. If empty, the content will not\nbe partitioned into more than one period. If the list contains \"ADS\", new periods will be created where\nthe Channel source contains SCTE-35 ad markers.", "smithy.api#jsonName" => "periodTriggers"}))
    DashPackage.add_member(:profile, Smithy::Schema::Shapes::ShapeRef.new(shape: Profile, location_name: 'Profile', traits: {"smithy.api#documentation" => "The Dynamic Adaptive Streaming over HTTP (DASH) profile type.  When set to \"HBBTV_1_5\", HbbTV 1.5 compliant output is enabled. When set to \"DVB-DASH_2014\", DVB-DASH 2014 compliant output is enabled.", "smithy.api#jsonName" => "profile"}))
    DashPackage.add_member(:segment_duration_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'SegmentDurationSeconds', traits: {"smithy.api#documentation" => "Duration (in seconds) of each segment. Actual segments will be\nrounded to the nearest multiple of the source segment duration.", "smithy.api#jsonName" => "segmentDurationSeconds"}))
    DashPackage.add_member(:segment_template_format, Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentTemplateFormat, location_name: 'SegmentTemplateFormat', traits: {"smithy.api#documentation" => "Determines the type of SegmentTemplate included in the Media Presentation Description (MPD).  When set to NUMBER_WITH_TIMELINE, a full timeline is presented in each SegmentTemplate, with $Number$ media URLs.  When set to TIME_WITH_TIMELINE, a full timeline is presented in each SegmentTemplate, with $Time$ media URLs. When set to NUMBER_WITH_DURATION, only a duration is included in each SegmentTemplate, with $Number$ media URLs.", "smithy.api#jsonName" => "segmentTemplateFormat"}))
    DashPackage.add_member(:stream_selection, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamSelection, location_name: 'StreamSelection', traits: {"smithy.api#jsonName" => "streamSelection"}))
    DashPackage.add_member(:suggested_presentation_delay_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'SuggestedPresentationDelaySeconds', traits: {"smithy.api#documentation" => "Duration (in seconds) to delay live content before presentation.", "smithy.api#jsonName" => "suggestedPresentationDelaySeconds"}))
    DashPackage.add_member(:utc_timing, Smithy::Schema::Shapes::ShapeRef.new(shape: UtcTiming, location_name: 'UtcTiming', traits: {"smithy.api#documentation" => "Determines the type of UTCTiming included in the Media Presentation Description (MPD)", "smithy.api#jsonName" => "utcTiming"}))
    DashPackage.add_member(:utc_timing_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UtcTimingUri', traits: {"smithy.api#documentation" => "Specifies the value attribute of the UTCTiming field when utcTiming is set to HTTP-ISO, HTTP-HEAD or HTTP-XSDATE", "smithy.api#jsonName" => "utcTimingUri"}))
    DashPackage.type = Types::DashPackage
    DeleteChannelRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the Channel to delete.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChannelRequest.type = Types::DeleteChannelRequest
    DeleteChannelResponse.type = Types::DeleteChannelResponse
    DeleteOriginEndpointRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the OriginEndpoint to delete.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteOriginEndpointRequest.type = Types::DeleteOriginEndpointRequest
    DeleteOriginEndpointResponse.type = Types::DeleteOriginEndpointResponse
    DescribeChannelRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of a Channel.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeChannelRequest.type = Types::DescribeChannelRequest
    DescribeChannelResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The Amazon Resource Name (ARN) assigned to the Channel.", "smithy.api#jsonName" => "arn"}))
    DescribeChannelResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "The date and time the Channel was created.", "smithy.api#jsonName" => "createdAt"}))
    DescribeChannelResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "A short text description of the Channel.", "smithy.api#jsonName" => "description"}))
    DescribeChannelResponse.add_member(:egress_access_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: EgressAccessLogs, location_name: 'EgressAccessLogs', traits: {"smithy.api#jsonName" => "egressAccessLogs"}))
    DescribeChannelResponse.add_member(:hls_ingest, Smithy::Schema::Shapes::ShapeRef.new(shape: HlsIngest, location_name: 'HlsIngest', traits: {"smithy.api#jsonName" => "hlsIngest"}))
    DescribeChannelResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the Channel.", "smithy.api#jsonName" => "id"}))
    DescribeChannelResponse.add_member(:ingress_access_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressAccessLogs, location_name: 'IngressAccessLogs', traits: {"smithy.api#jsonName" => "ingressAccessLogs"}))
    DescribeChannelResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#jsonName" => "tags"}))
    DescribeChannelResponse.type = Types::DescribeChannelResponse
    DescribeHarvestJobRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the HarvestJob.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeHarvestJobRequest.type = Types::DescribeHarvestJobRequest
    DescribeHarvestJobResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The Amazon Resource Name (ARN) assigned to the HarvestJob.", "smithy.api#jsonName" => "arn"}))
    DescribeHarvestJobResponse.add_member(:channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ChannelId', traits: {"smithy.api#documentation" => "The ID of the Channel that the HarvestJob will harvest from.", "smithy.api#jsonName" => "channelId"}))
    DescribeHarvestJobResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "The date and time the HarvestJob was submitted.", "smithy.api#jsonName" => "createdAt"}))
    DescribeHarvestJobResponse.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndTime', traits: {"smithy.api#documentation" => "The end of the time-window which will be harvested.", "smithy.api#jsonName" => "endTime"}))
    DescribeHarvestJobResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the HarvestJob. The ID must be unique within the region\nand it cannot be changed after the HarvestJob is submitted.", "smithy.api#jsonName" => "id"}))
    DescribeHarvestJobResponse.add_member(:origin_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OriginEndpointId', traits: {"smithy.api#documentation" => "The ID of the OriginEndpoint that the HarvestJob will harvest from.\nThis cannot be changed after the HarvestJob is submitted.", "smithy.api#jsonName" => "originEndpointId"}))
    DescribeHarvestJobResponse.add_member(:s3_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Destination, location_name: 'S3Destination', traits: {"smithy.api#jsonName" => "s3Destination"}))
    DescribeHarvestJobResponse.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StartTime', traits: {"smithy.api#documentation" => "The start of the time-window which will be harvested.", "smithy.api#jsonName" => "startTime"}))
    DescribeHarvestJobResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status', traits: {"smithy.api#documentation" => "The current status of the HarvestJob. Consider setting up a CloudWatch Event to listen for\nHarvestJobs as they succeed or fail. In the event of failure, the CloudWatch Event will\ninclude an explanation of why the HarvestJob failed.", "smithy.api#jsonName" => "status"}))
    DescribeHarvestJobResponse.type = Types::DescribeHarvestJobResponse
    DescribeOriginEndpointRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the OriginEndpoint.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeOriginEndpointRequest.type = Types::DescribeOriginEndpointRequest
    DescribeOriginEndpointResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The Amazon Resource Name (ARN) assigned to the OriginEndpoint.", "smithy.api#jsonName" => "arn"}))
    DescribeOriginEndpointResponse.add_member(:authorization, Smithy::Schema::Shapes::ShapeRef.new(shape: Authorization, location_name: 'Authorization', traits: {"smithy.api#jsonName" => "authorization"}))
    DescribeOriginEndpointResponse.add_member(:channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ChannelId', traits: {"smithy.api#documentation" => "The ID of the Channel the OriginEndpoint is associated with.", "smithy.api#jsonName" => "channelId"}))
    DescribeOriginEndpointResponse.add_member(:cmaf_package, Smithy::Schema::Shapes::ShapeRef.new(shape: CmafPackage, location_name: 'CmafPackage', traits: {"smithy.api#jsonName" => "cmafPackage"}))
    DescribeOriginEndpointResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "The date and time the OriginEndpoint was created.", "smithy.api#jsonName" => "createdAt"}))
    DescribeOriginEndpointResponse.add_member(:dash_package, Smithy::Schema::Shapes::ShapeRef.new(shape: DashPackage, location_name: 'DashPackage', traits: {"smithy.api#jsonName" => "dashPackage"}))
    DescribeOriginEndpointResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "A short text description of the OriginEndpoint.", "smithy.api#jsonName" => "description"}))
    DescribeOriginEndpointResponse.add_member(:hls_package, Smithy::Schema::Shapes::ShapeRef.new(shape: HlsPackage, location_name: 'HlsPackage', traits: {"smithy.api#jsonName" => "hlsPackage"}))
    DescribeOriginEndpointResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the OriginEndpoint.", "smithy.api#jsonName" => "id"}))
    DescribeOriginEndpointResponse.add_member(:manifest_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ManifestName', traits: {"smithy.api#documentation" => "A short string appended to the end of the OriginEndpoint URL.", "smithy.api#jsonName" => "manifestName"}))
    DescribeOriginEndpointResponse.add_member(:mss_package, Smithy::Schema::Shapes::ShapeRef.new(shape: MssPackage, location_name: 'MssPackage', traits: {"smithy.api#jsonName" => "mssPackage"}))
    DescribeOriginEndpointResponse.add_member(:origination, Smithy::Schema::Shapes::ShapeRef.new(shape: Origination, location_name: 'Origination', traits: {"smithy.api#documentation" => "Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint\nmay by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be\nrequested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination", "smithy.api#jsonName" => "origination"}))
    DescribeOriginEndpointResponse.add_member(:startover_window_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'StartoverWindowSeconds', traits: {"smithy.api#documentation" => "Maximum duration (seconds) of content to retain for startover playback.\nIf not specified, startover playback will be disabled for the OriginEndpoint.", "smithy.api#jsonName" => "startoverWindowSeconds"}))
    DescribeOriginEndpointResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#jsonName" => "tags"}))
    DescribeOriginEndpointResponse.add_member(:time_delay_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TimeDelaySeconds', traits: {"smithy.api#documentation" => "Amount of delay (seconds) to enforce on the playback of live content.\nIf not specified, there will be no time delay in effect for the OriginEndpoint.", "smithy.api#jsonName" => "timeDelaySeconds"}))
    DescribeOriginEndpointResponse.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Url', traits: {"smithy.api#documentation" => "The URL of the packaged OriginEndpoint for consumption.", "smithy.api#jsonName" => "url"}))
    DescribeOriginEndpointResponse.add_member(:whitelist, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'Whitelist', traits: {"smithy.api#documentation" => "A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.", "smithy.api#jsonName" => "whitelist"}))
    DescribeOriginEndpointResponse.type = Types::DescribeOriginEndpointResponse
    EgressAccessLogs.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LogGroupName', traits: {"smithy.api#documentation" => "Customize the log group name.", "smithy.api#jsonName" => "logGroupName"}))
    EgressAccessLogs.type = Types::EgressAccessLogs
    EncryptionContractConfiguration.add_member(:preset_speke20_audio, Smithy::Schema::Shapes::ShapeRef.new(shape: PresetSpeke20Audio, location_name: 'PresetSpeke20Audio', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "A collection of audio encryption presets.", "smithy.api#jsonName" => "presetSpeke20Audio", "smithy.api#required" => {}}))
    EncryptionContractConfiguration.add_member(:preset_speke20_video, Smithy::Schema::Shapes::ShapeRef.new(shape: PresetSpeke20Video, location_name: 'PresetSpeke20Video', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "A collection of video encryption presets.", "smithy.api#jsonName" => "presetSpeke20Video", "smithy.api#required" => {}}))
    EncryptionContractConfiguration.type = Types::EncryptionContractConfiguration
    EncryptionMethod.add_member(:aes_128, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AES_128', traits: {"smithy.api#enumValue" => "AES_128"}))
    EncryptionMethod.add_member(:sample_aes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAMPLE_AES', traits: {"smithy.api#enumValue" => "SAMPLE_AES"}))
    ForbiddenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#jsonName" => "message"}))
    ForbiddenException.type = Types::ForbiddenException
    HarvestJob.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The Amazon Resource Name (ARN) assigned to the HarvestJob.", "smithy.api#jsonName" => "arn"}))
    HarvestJob.add_member(:channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ChannelId', traits: {"smithy.api#documentation" => "The ID of the Channel that the HarvestJob will harvest from.", "smithy.api#jsonName" => "channelId"}))
    HarvestJob.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "The date and time the HarvestJob was submitted.", "smithy.api#jsonName" => "createdAt"}))
    HarvestJob.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndTime', traits: {"smithy.api#documentation" => "The end of the time-window which will be harvested.", "smithy.api#jsonName" => "endTime"}))
    HarvestJob.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the HarvestJob. The ID must be unique within the region\nand it cannot be changed after the HarvestJob is submitted.", "smithy.api#jsonName" => "id"}))
    HarvestJob.add_member(:origin_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OriginEndpointId', traits: {"smithy.api#documentation" => "The ID of the OriginEndpoint that the HarvestJob will harvest from.\nThis cannot be changed after the HarvestJob is submitted.", "smithy.api#jsonName" => "originEndpointId"}))
    HarvestJob.add_member(:s3_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Destination, location_name: 'S3Destination', traits: {"smithy.api#jsonName" => "s3Destination"}))
    HarvestJob.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StartTime', traits: {"smithy.api#documentation" => "The start of the time-window which will be harvested.", "smithy.api#jsonName" => "startTime"}))
    HarvestJob.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status', traits: {"smithy.api#documentation" => "The current status of the HarvestJob. Consider setting up a CloudWatch Event to listen for\nHarvestJobs as they succeed or fail. In the event of failure, the CloudWatch Event will\ninclude an explanation of why the HarvestJob failed.", "smithy.api#jsonName" => "status"}))
    HarvestJob.type = Types::HarvestJob
    HlsEncryption.add_member(:constant_initialization_vector, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConstantInitializationVector', traits: {"smithy.api#documentation" => "A constant initialization vector for encryption (optional).\nWhen not specified the initialization vector will be periodically rotated.", "smithy.api#jsonName" => "constantInitializationVector"}))
    HlsEncryption.add_member(:encryption_method, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionMethod, location_name: 'EncryptionMethod', traits: {"smithy.api#documentation" => "The encryption method to use.", "smithy.api#jsonName" => "encryptionMethod"}))
    HlsEncryption.add_member(:key_rotation_interval_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'KeyRotationIntervalSeconds', traits: {"smithy.api#documentation" => "Interval (in seconds) between each encryption key rotation.", "smithy.api#jsonName" => "keyRotationIntervalSeconds"}))
    HlsEncryption.add_member(:repeat_ext_x_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'RepeatExtXKey', traits: {"smithy.api#documentation" => "When enabled, the EXT-X-KEY tag will be repeated in output manifests.", "smithy.api#jsonName" => "repeatExtXKey"}))
    HlsEncryption.add_member(:speke_key_provider, Smithy::Schema::Shapes::ShapeRef.new(shape: SpekeKeyProvider, location_name: 'SpekeKeyProvider', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "spekeKeyProvider", "smithy.api#required" => {}}))
    HlsEncryption.type = Types::HlsEncryption
    HlsIngest.add_member(:ingest_endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofingestendpoint, location_name: 'IngestEndpoints', traits: {"smithy.api#documentation" => "A list of endpoints to which the source stream should be sent.", "smithy.api#jsonName" => "ingestEndpoints"}))
    HlsIngest.type = Types::HlsIngest
    HlsManifest.add_member(:ad_markers, Smithy::Schema::Shapes::ShapeRef.new(shape: AdMarkers, location_name: 'AdMarkers', traits: {"smithy.api#documentation" => "This setting controls how ad markers are included in the packaged OriginEndpoint.\n\"NONE\" will omit all SCTE-35 ad markers from the output.\n\"PASSTHROUGH\" causes the manifest to contain a copy of the SCTE-35 ad\nmarkers (comments) taken directly from the input HTTP Live Streaming (HLS) manifest.\n\"SCTE35_ENHANCED\" generates ad markers and blackout tags based on SCTE-35\nmessages in the input source.\n\"DATERANGE\" inserts EXT-X-DATERANGE tags to signal ad and program transition events \nin HLS and CMAF manifests. For this option, you must set a programDateTimeIntervalSeconds value \nthat is greater than 0.", "smithy.api#jsonName" => "adMarkers"}))
    HlsManifest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "The ID of the manifest. The ID must be unique within the OriginEndpoint and it cannot be changed after it is created.", "smithy.api#jsonName" => "id", "smithy.api#required" => {}}))
    HlsManifest.add_member(:include_iframe_only_stream, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IncludeIframeOnlyStream', traits: {"smithy.api#documentation" => "When enabled, an I-Frame only stream will be included in the output.", "smithy.api#jsonName" => "includeIframeOnlyStream"}))
    HlsManifest.add_member(:manifest_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ManifestName', traits: {"smithy.api#documentation" => "An optional short string appended to the end of the OriginEndpoint URL. If not specified, defaults to the manifestName for the OriginEndpoint.", "smithy.api#jsonName" => "manifestName"}))
    HlsManifest.add_member(:playlist_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaylistType, location_name: 'PlaylistType', traits: {"smithy.api#documentation" => "The HTTP Live Streaming (HLS) playlist type.\nWhen either \"EVENT\" or \"VOD\" is specified, a corresponding EXT-X-PLAYLIST-TYPE\nentry will be included in the media playlist.", "smithy.api#jsonName" => "playlistType"}))
    HlsManifest.add_member(:playlist_window_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'PlaylistWindowSeconds', traits: {"smithy.api#documentation" => "Time window (in seconds) contained in each parent manifest.", "smithy.api#jsonName" => "playlistWindowSeconds"}))
    HlsManifest.add_member(:program_date_time_interval_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ProgramDateTimeIntervalSeconds', traits: {"smithy.api#documentation" => "The interval (in seconds) between each EXT-X-PROGRAM-DATE-TIME tag\ninserted into manifests. Additionally, when an interval is specified\nID3Timed Metadata messages will be generated every 5 seconds using the\ningest time of the content.\nIf the interval is not specified, or set to 0, then\nno EXT-X-PROGRAM-DATE-TIME tags will be inserted into manifests and no\nID3Timed Metadata messages will be generated. Note that irrespective\nof this parameter, if any ID3 Timed Metadata is found in HTTP Live Streaming (HLS) input,\nit will be passed through to HLS output.", "smithy.api#jsonName" => "programDateTimeIntervalSeconds"}))
    HlsManifest.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Url', traits: {"smithy.api#documentation" => "The URL of the packaged OriginEndpoint for consumption.", "smithy.api#jsonName" => "url"}))
    HlsManifest.add_member(:ad_triggers, Smithy::Schema::Shapes::ShapeRef.new(shape: AdTriggers, location_name: 'AdTriggers', traits: {"smithy.api#jsonName" => "adTriggers"}))
    HlsManifest.add_member(:ads_on_delivery_restrictions, Smithy::Schema::Shapes::ShapeRef.new(shape: AdsOnDeliveryRestrictions, location_name: 'AdsOnDeliveryRestrictions', traits: {"smithy.api#jsonName" => "adsOnDeliveryRestrictions"}))
    HlsManifest.type = Types::HlsManifest
    HlsManifestCreateOrUpdateParameters.add_member(:ad_markers, Smithy::Schema::Shapes::ShapeRef.new(shape: AdMarkers, location_name: 'AdMarkers', traits: {"smithy.api#documentation" => "This setting controls how ad markers are included in the packaged OriginEndpoint.\n\"NONE\" will omit all SCTE-35 ad markers from the output.\n\"PASSTHROUGH\" causes the manifest to contain a copy of the SCTE-35 ad\nmarkers (comments) taken directly from the input HTTP Live Streaming (HLS) manifest.\n\"SCTE35_ENHANCED\" generates ad markers and blackout tags based on SCTE-35\nmessages in the input source.\n\"DATERANGE\" inserts EXT-X-DATERANGE tags to signal ad and program transition events \nin HLS and CMAF manifests. For this option, you must set a programDateTimeIntervalSeconds value \nthat is greater than 0.", "smithy.api#jsonName" => "adMarkers"}))
    HlsManifestCreateOrUpdateParameters.add_member(:ad_triggers, Smithy::Schema::Shapes::ShapeRef.new(shape: AdTriggers, location_name: 'AdTriggers', traits: {"smithy.api#jsonName" => "adTriggers"}))
    HlsManifestCreateOrUpdateParameters.add_member(:ads_on_delivery_restrictions, Smithy::Schema::Shapes::ShapeRef.new(shape: AdsOnDeliveryRestrictions, location_name: 'AdsOnDeliveryRestrictions', traits: {"smithy.api#jsonName" => "adsOnDeliveryRestrictions"}))
    HlsManifestCreateOrUpdateParameters.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "The ID of the manifest. The ID must be unique within the OriginEndpoint and it cannot be changed after it is created.", "smithy.api#jsonName" => "id", "smithy.api#required" => {}}))
    HlsManifestCreateOrUpdateParameters.add_member(:include_iframe_only_stream, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IncludeIframeOnlyStream', traits: {"smithy.api#documentation" => "When enabled, an I-Frame only stream will be included in the output.", "smithy.api#jsonName" => "includeIframeOnlyStream"}))
    HlsManifestCreateOrUpdateParameters.add_member(:manifest_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ManifestName', traits: {"smithy.api#documentation" => "An optional short string appended to the end of the OriginEndpoint URL. If not specified, defaults to the manifestName for the OriginEndpoint.", "smithy.api#jsonName" => "manifestName"}))
    HlsManifestCreateOrUpdateParameters.add_member(:playlist_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaylistType, location_name: 'PlaylistType', traits: {"smithy.api#documentation" => "The HTTP Live Streaming (HLS) playlist type.\nWhen either \"EVENT\" or \"VOD\" is specified, a corresponding EXT-X-PLAYLIST-TYPE\nentry will be included in the media playlist.", "smithy.api#jsonName" => "playlistType"}))
    HlsManifestCreateOrUpdateParameters.add_member(:playlist_window_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'PlaylistWindowSeconds', traits: {"smithy.api#documentation" => "Time window (in seconds) contained in each parent manifest.", "smithy.api#jsonName" => "playlistWindowSeconds"}))
    HlsManifestCreateOrUpdateParameters.add_member(:program_date_time_interval_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ProgramDateTimeIntervalSeconds', traits: {"smithy.api#documentation" => "The interval (in seconds) between each EXT-X-PROGRAM-DATE-TIME tag\ninserted into manifests. Additionally, when an interval is specified\nID3Timed Metadata messages will be generated every 5 seconds using the\ningest time of the content.\nIf the interval is not specified, or set to 0, then\nno EXT-X-PROGRAM-DATE-TIME tags will be inserted into manifests and no\nID3Timed Metadata messages will be generated. Note that irrespective\nof this parameter, if any ID3 Timed Metadata is found in HTTP Live Streaming (HLS) input,\nit will be passed through to HLS output.", "smithy.api#jsonName" => "programDateTimeIntervalSeconds"}))
    HlsManifestCreateOrUpdateParameters.type = Types::HlsManifestCreateOrUpdateParameters
    HlsPackage.add_member(:ad_markers, Smithy::Schema::Shapes::ShapeRef.new(shape: AdMarkers, location_name: 'AdMarkers', traits: {"smithy.api#documentation" => "This setting controls how ad markers are included in the packaged OriginEndpoint.\n\"NONE\" will omit all SCTE-35 ad markers from the output.\n\"PASSTHROUGH\" causes the manifest to contain a copy of the SCTE-35 ad\nmarkers (comments) taken directly from the input HTTP Live Streaming (HLS) manifest.\n\"SCTE35_ENHANCED\" generates ad markers and blackout tags based on SCTE-35\nmessages in the input source.\n\"DATERANGE\" inserts EXT-X-DATERANGE tags to signal ad and program transition events \nin HLS and CMAF manifests. For this option, you must set a programDateTimeIntervalSeconds value \nthat is greater than 0.", "smithy.api#jsonName" => "adMarkers"}))
    HlsPackage.add_member(:ad_triggers, Smithy::Schema::Shapes::ShapeRef.new(shape: AdTriggers, location_name: 'AdTriggers', traits: {"smithy.api#jsonName" => "adTriggers"}))
    HlsPackage.add_member(:ads_on_delivery_restrictions, Smithy::Schema::Shapes::ShapeRef.new(shape: AdsOnDeliveryRestrictions, location_name: 'AdsOnDeliveryRestrictions', traits: {"smithy.api#jsonName" => "adsOnDeliveryRestrictions"}))
    HlsPackage.add_member(:encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: HlsEncryption, location_name: 'Encryption', traits: {"smithy.api#jsonName" => "encryption"}))
    HlsPackage.add_member(:include_dvb_subtitles, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IncludeDvbSubtitles', traits: {"smithy.api#documentation" => "When enabled, MediaPackage passes through digital video broadcasting (DVB) subtitles into the output.", "smithy.api#jsonName" => "includeDvbSubtitles"}))
    HlsPackage.add_member(:include_iframe_only_stream, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IncludeIframeOnlyStream', traits: {"smithy.api#documentation" => "When enabled, an I-Frame only stream will be included in the output.", "smithy.api#jsonName" => "includeIframeOnlyStream"}))
    HlsPackage.add_member(:playlist_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaylistType, location_name: 'PlaylistType', traits: {"smithy.api#documentation" => "The HTTP Live Streaming (HLS) playlist type.\nWhen either \"EVENT\" or \"VOD\" is specified, a corresponding EXT-X-PLAYLIST-TYPE\nentry will be included in the media playlist.", "smithy.api#jsonName" => "playlistType"}))
    HlsPackage.add_member(:playlist_window_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'PlaylistWindowSeconds', traits: {"smithy.api#documentation" => "Time window (in seconds) contained in each parent manifest.", "smithy.api#jsonName" => "playlistWindowSeconds"}))
    HlsPackage.add_member(:program_date_time_interval_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ProgramDateTimeIntervalSeconds', traits: {"smithy.api#documentation" => "The interval (in seconds) between each EXT-X-PROGRAM-DATE-TIME tag\ninserted into manifests. Additionally, when an interval is specified\nID3Timed Metadata messages will be generated every 5 seconds using the\ningest time of the content.\nIf the interval is not specified, or set to 0, then\nno EXT-X-PROGRAM-DATE-TIME tags will be inserted into manifests and no\nID3Timed Metadata messages will be generated. Note that irrespective\nof this parameter, if any ID3 Timed Metadata is found in HTTP Live Streaming (HLS) input,\nit will be passed through to HLS output.", "smithy.api#jsonName" => "programDateTimeIntervalSeconds"}))
    HlsPackage.add_member(:segment_duration_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'SegmentDurationSeconds', traits: {"smithy.api#documentation" => "Duration (in seconds) of each fragment. Actual fragments will be\nrounded to the nearest multiple of the source fragment duration.", "smithy.api#jsonName" => "segmentDurationSeconds"}))
    HlsPackage.add_member(:stream_selection, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamSelection, location_name: 'StreamSelection', traits: {"smithy.api#jsonName" => "streamSelection"}))
    HlsPackage.add_member(:use_audio_rendition_group, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UseAudioRenditionGroup', traits: {"smithy.api#documentation" => "When enabled, audio streams will be placed in rendition groups in the output.", "smithy.api#jsonName" => "useAudioRenditionGroup"}))
    HlsPackage.type = Types::HlsPackage
    IngestEndpoint.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The system generated unique identifier for the IngestEndpoint", "smithy.api#jsonName" => "id"}))
    IngestEndpoint.add_member(:password, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'Password', traits: {"smithy.api#documentation" => "The system generated password for ingest authentication.", "smithy.api#jsonName" => "password"}))
    IngestEndpoint.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Url', traits: {"smithy.api#documentation" => "The ingest URL to which the source stream should be sent.", "smithy.api#jsonName" => "url"}))
    IngestEndpoint.add_member(:username, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'Username', traits: {"smithy.api#documentation" => "The system generated username for ingest authentication.", "smithy.api#jsonName" => "username"}))
    IngestEndpoint.type = Types::IngestEndpoint
    IngressAccessLogs.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LogGroupName', traits: {"smithy.api#documentation" => "Customize the log group name.", "smithy.api#jsonName" => "logGroupName"}))
    IngressAccessLogs.type = Types::IngressAccessLogs
    InternalServerErrorException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#jsonName" => "message"}))
    InternalServerErrorException.type = Types::InternalServerErrorException
    ListChannelsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "Upper bound on number of records to return.", "smithy.api#httpQuery" => "maxResults"}))
    ListChannelsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "A token used to resume pagination from the end of a previous request.", "smithy.api#httpQuery" => "nextToken"}))
    ListChannelsRequest.type = Types::ListChannelsRequest
    ListChannelsResponse.add_member(:channels, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofchannel, location_name: 'Channels', traits: {"smithy.api#documentation" => "A list of Channel records.", "smithy.api#jsonName" => "channels"}))
    ListChannelsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "A token that can be used to resume pagination from the end of the collection.", "smithy.api#jsonName" => "nextToken"}))
    ListChannelsResponse.type = Types::ListChannelsResponse
    ListHarvestJobsRequest.add_member(:include_channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IncludeChannelId', traits: {"smithy.api#documentation" => "When specified, the request will return only HarvestJobs associated with the given Channel ID.", "smithy.api#httpQuery" => "includeChannelId"}))
    ListHarvestJobsRequest.add_member(:include_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IncludeStatus', traits: {"smithy.api#documentation" => "When specified, the request will return only HarvestJobs in the given status.", "smithy.api#httpQuery" => "includeStatus"}))
    ListHarvestJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "The upper bound on the number of records to return.", "smithy.api#httpQuery" => "maxResults"}))
    ListHarvestJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "A token used to resume pagination from the end of a previous request.", "smithy.api#httpQuery" => "nextToken"}))
    ListHarvestJobsRequest.type = Types::ListHarvestJobsRequest
    ListHarvestJobsResponse.add_member(:harvest_jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofharvestjob, location_name: 'HarvestJobs', traits: {"smithy.api#documentation" => "A list of HarvestJob records.", "smithy.api#jsonName" => "harvestJobs"}))
    ListHarvestJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "A token that can be used to resume pagination from the end of the collection.", "smithy.api#jsonName" => "nextToken"}))
    ListHarvestJobsResponse.type = Types::ListHarvestJobsResponse
    ListOriginEndpointsRequest.add_member(:channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ChannelId', traits: {"smithy.api#documentation" => "When specified, the request will return only OriginEndpoints associated with the given Channel ID.", "smithy.api#httpQuery" => "channelId"}))
    ListOriginEndpointsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "The upper bound on the number of records to return.", "smithy.api#httpQuery" => "maxResults"}))
    ListOriginEndpointsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "A token used to resume pagination from the end of a previous request.", "smithy.api#httpQuery" => "nextToken"}))
    ListOriginEndpointsRequest.type = Types::ListOriginEndpointsRequest
    ListOriginEndpointsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "A token that can be used to resume pagination from the end of the collection.", "smithy.api#jsonName" => "nextToken"}))
    ListOriginEndpointsResponse.add_member(:origin_endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: Listoforiginendpoint, location_name: 'OriginEndpoints', traits: {"smithy.api#documentation" => "A list of OriginEndpoint records.", "smithy.api#jsonName" => "originEndpoints"}))
    ListOriginEndpointsResponse.type = Types::ListOriginEndpointsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#jsonName" => "tags"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ManifestLayout.add_member(:full, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FULL', traits: {"smithy.api#enumValue" => "FULL"}))
    ManifestLayout.add_member(:compact, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPACT', traits: {"smithy.api#enumValue" => "COMPACT"}))
    ManifestLayout.add_member(:drm_top_level_compact, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DRM_TOP_LEVEL_COMPACT', traits: {"smithy.api#enumValue" => "DRM_TOP_LEVEL_COMPACT"}))
    MssEncryption.add_member(:speke_key_provider, Smithy::Schema::Shapes::ShapeRef.new(shape: SpekeKeyProvider, location_name: 'SpekeKeyProvider', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "spekeKeyProvider", "smithy.api#required" => {}}))
    MssEncryption.type = Types::MssEncryption
    MssPackage.add_member(:encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: MssEncryption, location_name: 'Encryption', traits: {"smithy.api#jsonName" => "encryption"}))
    MssPackage.add_member(:manifest_window_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ManifestWindowSeconds', traits: {"smithy.api#documentation" => "The time window (in seconds) contained in each manifest.", "smithy.api#jsonName" => "manifestWindowSeconds"}))
    MssPackage.add_member(:segment_duration_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'SegmentDurationSeconds', traits: {"smithy.api#documentation" => "The duration (in seconds) of each segment.", "smithy.api#jsonName" => "segmentDurationSeconds"}))
    MssPackage.add_member(:stream_selection, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamSelection, location_name: 'StreamSelection', traits: {"smithy.api#jsonName" => "streamSelection"}))
    MssPackage.type = Types::MssPackage
    NotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#jsonName" => "message"}))
    NotFoundException.type = Types::NotFoundException
    OriginEndpoint.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The Amazon Resource Name (ARN) assigned to the OriginEndpoint.", "smithy.api#jsonName" => "arn"}))
    OriginEndpoint.add_member(:authorization, Smithy::Schema::Shapes::ShapeRef.new(shape: Authorization, location_name: 'Authorization', traits: {"smithy.api#jsonName" => "authorization"}))
    OriginEndpoint.add_member(:channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ChannelId', traits: {"smithy.api#documentation" => "The ID of the Channel the OriginEndpoint is associated with.", "smithy.api#jsonName" => "channelId"}))
    OriginEndpoint.add_member(:cmaf_package, Smithy::Schema::Shapes::ShapeRef.new(shape: CmafPackage, location_name: 'CmafPackage', traits: {"smithy.api#jsonName" => "cmafPackage"}))
    OriginEndpoint.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "The date and time the OriginEndpoint was created.", "smithy.api#jsonName" => "createdAt"}))
    OriginEndpoint.add_member(:dash_package, Smithy::Schema::Shapes::ShapeRef.new(shape: DashPackage, location_name: 'DashPackage', traits: {"smithy.api#jsonName" => "dashPackage"}))
    OriginEndpoint.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "A short text description of the OriginEndpoint.", "smithy.api#jsonName" => "description"}))
    OriginEndpoint.add_member(:hls_package, Smithy::Schema::Shapes::ShapeRef.new(shape: HlsPackage, location_name: 'HlsPackage', traits: {"smithy.api#jsonName" => "hlsPackage"}))
    OriginEndpoint.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the OriginEndpoint.", "smithy.api#jsonName" => "id"}))
    OriginEndpoint.add_member(:manifest_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ManifestName', traits: {"smithy.api#documentation" => "A short string appended to the end of the OriginEndpoint URL.", "smithy.api#jsonName" => "manifestName"}))
    OriginEndpoint.add_member(:mss_package, Smithy::Schema::Shapes::ShapeRef.new(shape: MssPackage, location_name: 'MssPackage', traits: {"smithy.api#jsonName" => "mssPackage"}))
    OriginEndpoint.add_member(:origination, Smithy::Schema::Shapes::ShapeRef.new(shape: Origination, location_name: 'Origination', traits: {"smithy.api#documentation" => "Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint\nmay by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be\nrequested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination", "smithy.api#jsonName" => "origination"}))
    OriginEndpoint.add_member(:startover_window_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'StartoverWindowSeconds', traits: {"smithy.api#documentation" => "Maximum duration (seconds) of content to retain for startover playback.\nIf not specified, startover playback will be disabled for the OriginEndpoint.", "smithy.api#jsonName" => "startoverWindowSeconds"}))
    OriginEndpoint.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#jsonName" => "tags"}))
    OriginEndpoint.add_member(:time_delay_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TimeDelaySeconds', traits: {"smithy.api#documentation" => "Amount of delay (seconds) to enforce on the playback of live content.\nIf not specified, there will be no time delay in effect for the OriginEndpoint.", "smithy.api#jsonName" => "timeDelaySeconds"}))
    OriginEndpoint.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Url', traits: {"smithy.api#documentation" => "The URL of the packaged OriginEndpoint for consumption.", "smithy.api#jsonName" => "url"}))
    OriginEndpoint.add_member(:whitelist, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'Whitelist', traits: {"smithy.api#documentation" => "A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.", "smithy.api#jsonName" => "whitelist"}))
    OriginEndpoint.type = Types::OriginEndpoint
    Origination.add_member(:allow, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALLOW', traits: {"smithy.api#enumValue" => "ALLOW"}))
    Origination.add_member(:deny, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DENY', traits: {"smithy.api#enumValue" => "DENY"}))
    PlaylistType.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    PlaylistType.add_member(:event, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EVENT', traits: {"smithy.api#enumValue" => "EVENT"}))
    PlaylistType.add_member(:vod, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VOD', traits: {"smithy.api#enumValue" => "VOD"}))
    PresetSpeke20Audio.add_member(:preset_audio_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRESET_AUDIO_1', traits: {"smithy.api#enumValue" => "PRESET-AUDIO-1"}))
    PresetSpeke20Audio.add_member(:preset_audio_2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRESET_AUDIO_2', traits: {"smithy.api#enumValue" => "PRESET-AUDIO-2"}))
    PresetSpeke20Audio.add_member(:preset_audio_3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRESET_AUDIO_3', traits: {"smithy.api#enumValue" => "PRESET-AUDIO-3"}))
    PresetSpeke20Audio.add_member(:shared, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHARED', traits: {"smithy.api#enumValue" => "SHARED"}))
    PresetSpeke20Audio.add_member(:unencrypted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNENCRYPTED', traits: {"smithy.api#enumValue" => "UNENCRYPTED"}))
    PresetSpeke20Video.add_member(:preset_video_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRESET_VIDEO_1', traits: {"smithy.api#enumValue" => "PRESET-VIDEO-1"}))
    PresetSpeke20Video.add_member(:preset_video_2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRESET_VIDEO_2', traits: {"smithy.api#enumValue" => "PRESET-VIDEO-2"}))
    PresetSpeke20Video.add_member(:preset_video_3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRESET_VIDEO_3', traits: {"smithy.api#enumValue" => "PRESET-VIDEO-3"}))
    PresetSpeke20Video.add_member(:preset_video_4, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRESET_VIDEO_4', traits: {"smithy.api#enumValue" => "PRESET-VIDEO-4"}))
    PresetSpeke20Video.add_member(:preset_video_5, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRESET_VIDEO_5', traits: {"smithy.api#enumValue" => "PRESET-VIDEO-5"}))
    PresetSpeke20Video.add_member(:preset_video_6, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRESET_VIDEO_6', traits: {"smithy.api#enumValue" => "PRESET-VIDEO-6"}))
    PresetSpeke20Video.add_member(:preset_video_7, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRESET_VIDEO_7', traits: {"smithy.api#enumValue" => "PRESET-VIDEO-7"}))
    PresetSpeke20Video.add_member(:preset_video_8, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRESET_VIDEO_8', traits: {"smithy.api#enumValue" => "PRESET-VIDEO-8"}))
    PresetSpeke20Video.add_member(:shared, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHARED', traits: {"smithy.api#enumValue" => "SHARED"}))
    PresetSpeke20Video.add_member(:unencrypted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNENCRYPTED', traits: {"smithy.api#enumValue" => "UNENCRYPTED"}))
    Profile.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    Profile.add_member(:hbbtv_1_5, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HBBTV_1_5', traits: {"smithy.api#enumValue" => "HBBTV_1_5"}))
    Profile.add_member(:hybridcast, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HYBRIDCAST', traits: {"smithy.api#enumValue" => "HYBRIDCAST"}))
    Profile.add_member(:dvb_dash_2014, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DVB_DASH_2014', traits: {"smithy.api#enumValue" => "DVB_DASH_2014"}))
    RotateChannelCredentialsRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the channel to update.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RotateChannelCredentialsRequest.type = Types::RotateChannelCredentialsRequest
    RotateChannelCredentialsResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The Amazon Resource Name (ARN) assigned to the Channel.", "smithy.api#jsonName" => "arn"}))
    RotateChannelCredentialsResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "The date and time the Channel was created.", "smithy.api#jsonName" => "createdAt"}))
    RotateChannelCredentialsResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "A short text description of the Channel.", "smithy.api#jsonName" => "description"}))
    RotateChannelCredentialsResponse.add_member(:egress_access_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: EgressAccessLogs, location_name: 'EgressAccessLogs', traits: {"smithy.api#jsonName" => "egressAccessLogs"}))
    RotateChannelCredentialsResponse.add_member(:hls_ingest, Smithy::Schema::Shapes::ShapeRef.new(shape: HlsIngest, location_name: 'HlsIngest', traits: {"smithy.api#jsonName" => "hlsIngest"}))
    RotateChannelCredentialsResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the Channel.", "smithy.api#jsonName" => "id"}))
    RotateChannelCredentialsResponse.add_member(:ingress_access_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressAccessLogs, location_name: 'IngressAccessLogs', traits: {"smithy.api#jsonName" => "ingressAccessLogs"}))
    RotateChannelCredentialsResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#jsonName" => "tags"}))
    RotateChannelCredentialsResponse.type = Types::RotateChannelCredentialsResponse
    RotateIngestEndpointCredentialsRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the channel the IngestEndpoint is on.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RotateIngestEndpointCredentialsRequest.add_member(:ingest_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IngestEndpointId', traits: {"smithy.api#documentation" => "The id of the IngestEndpoint whose credentials should be rotated", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RotateIngestEndpointCredentialsRequest.type = Types::RotateIngestEndpointCredentialsRequest
    RotateIngestEndpointCredentialsResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The Amazon Resource Name (ARN) assigned to the Channel.", "smithy.api#jsonName" => "arn"}))
    RotateIngestEndpointCredentialsResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "The date and time the Channel was created.", "smithy.api#jsonName" => "createdAt"}))
    RotateIngestEndpointCredentialsResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "A short text description of the Channel.", "smithy.api#jsonName" => "description"}))
    RotateIngestEndpointCredentialsResponse.add_member(:egress_access_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: EgressAccessLogs, location_name: 'EgressAccessLogs', traits: {"smithy.api#jsonName" => "egressAccessLogs"}))
    RotateIngestEndpointCredentialsResponse.add_member(:hls_ingest, Smithy::Schema::Shapes::ShapeRef.new(shape: HlsIngest, location_name: 'HlsIngest', traits: {"smithy.api#jsonName" => "hlsIngest"}))
    RotateIngestEndpointCredentialsResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the Channel.", "smithy.api#jsonName" => "id"}))
    RotateIngestEndpointCredentialsResponse.add_member(:ingress_access_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressAccessLogs, location_name: 'IngressAccessLogs', traits: {"smithy.api#jsonName" => "ingressAccessLogs"}))
    RotateIngestEndpointCredentialsResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#jsonName" => "tags"}))
    RotateIngestEndpointCredentialsResponse.type = Types::RotateIngestEndpointCredentialsResponse
    S3Destination.add_member(:bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BucketName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "The name of an S3 bucket within which harvested content will be exported", "smithy.api#jsonName" => "bucketName", "smithy.api#required" => {}}))
    S3Destination.add_member(:manifest_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ManifestKey', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "The key in the specified S3 bucket where the harvested top-level manifest will be placed.", "smithy.api#jsonName" => "manifestKey", "smithy.api#required" => {}}))
    S3Destination.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "The IAM role used to write to the specified S3 bucket", "smithy.api#jsonName" => "roleArn", "smithy.api#required" => {}}))
    S3Destination.type = Types::S3Destination
    SegmentTemplateFormat.add_member(:number_with_timeline, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NUMBER_WITH_TIMELINE', traits: {"smithy.api#enumValue" => "NUMBER_WITH_TIMELINE"}))
    SegmentTemplateFormat.add_member(:time_with_timeline, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIME_WITH_TIMELINE', traits: {"smithy.api#enumValue" => "TIME_WITH_TIMELINE"}))
    SegmentTemplateFormat.add_member(:number_with_duration, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NUMBER_WITH_DURATION', traits: {"smithy.api#enumValue" => "NUMBER_WITH_DURATION"}))
    ServiceUnavailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#jsonName" => "message"}))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SpekeKeyProvider.add_member(:certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CertificateArn', traits: {"smithy.api#documentation" => "An Amazon Resource Name (ARN) of a Certificate Manager certificate\nthat MediaPackage will use for enforcing secure end-to-end data\ntransfer with the key provider service.", "smithy.api#jsonName" => "certificateArn"}))
    SpekeKeyProvider.add_member(:encryption_contract_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionContractConfiguration, location_name: 'EncryptionContractConfiguration', traits: {"smithy.api#jsonName" => "encryptionContractConfiguration"}))
    SpekeKeyProvider.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "The resource ID to include in key requests.", "smithy.api#jsonName" => "resourceId", "smithy.api#required" => {}}))
    SpekeKeyProvider.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "An Amazon Resource Name (ARN) of an IAM role that AWS Elemental\nMediaPackage will assume when accessing the key provider service.", "smithy.api#jsonName" => "roleArn", "smithy.api#required" => {}}))
    SpekeKeyProvider.add_member(:system_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'SystemIds', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "The system IDs to include in key requests.", "smithy.api#jsonName" => "systemIds", "smithy.api#required" => {}}))
    SpekeKeyProvider.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Url', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "The URL of the external key provider service.", "smithy.api#jsonName" => "url", "smithy.api#required" => {}}))
    SpekeKeyProvider.type = Types::SpekeKeyProvider
    Status.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    Status.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    Status.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    StreamOrder.add_member(:original, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORIGINAL', traits: {"smithy.api#enumValue" => "ORIGINAL"}))
    StreamOrder.add_member(:video_bitrate_ascending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VIDEO_BITRATE_ASCENDING', traits: {"smithy.api#enumValue" => "VIDEO_BITRATE_ASCENDING"}))
    StreamOrder.add_member(:video_bitrate_descending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VIDEO_BITRATE_DESCENDING', traits: {"smithy.api#enumValue" => "VIDEO_BITRATE_DESCENDING"}))
    StreamSelection.add_member(:max_video_bits_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxVideoBitsPerSecond', traits: {"smithy.api#documentation" => "The maximum video bitrate (bps) to include in output.", "smithy.api#jsonName" => "maxVideoBitsPerSecond"}))
    StreamSelection.add_member(:min_video_bits_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MinVideoBitsPerSecond', traits: {"smithy.api#documentation" => "The minimum video bitrate (bps) to include in output.", "smithy.api#jsonName" => "minVideoBitsPerSecond"}))
    StreamSelection.add_member(:stream_order, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamOrder, location_name: 'StreamOrder', traits: {"smithy.api#documentation" => "A directive that determines the order of streams in the output.", "smithy.api#jsonName" => "streamOrder"}))
    StreamSelection.type = Types::StreamSelection
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "tags", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    Tags.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Tags.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    TooManyRequestsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#jsonName" => "message"}))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UnprocessableEntityException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#jsonName" => "message"}))
    UnprocessableEntityException.type = Types::UnprocessableEntityException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'TagKeys', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "The key(s) of tag to be deleted", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateChannelRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "A short text description of the Channel.", "smithy.api#jsonName" => "description"}))
    UpdateChannelRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the Channel to update.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateChannelRequest.type = Types::UpdateChannelRequest
    UpdateChannelResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The Amazon Resource Name (ARN) assigned to the Channel.", "smithy.api#jsonName" => "arn"}))
    UpdateChannelResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "The date and time the Channel was created.", "smithy.api#jsonName" => "createdAt"}))
    UpdateChannelResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "A short text description of the Channel.", "smithy.api#jsonName" => "description"}))
    UpdateChannelResponse.add_member(:egress_access_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: EgressAccessLogs, location_name: 'EgressAccessLogs', traits: {"smithy.api#jsonName" => "egressAccessLogs"}))
    UpdateChannelResponse.add_member(:hls_ingest, Smithy::Schema::Shapes::ShapeRef.new(shape: HlsIngest, location_name: 'HlsIngest', traits: {"smithy.api#jsonName" => "hlsIngest"}))
    UpdateChannelResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the Channel.", "smithy.api#jsonName" => "id"}))
    UpdateChannelResponse.add_member(:ingress_access_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressAccessLogs, location_name: 'IngressAccessLogs', traits: {"smithy.api#jsonName" => "ingressAccessLogs"}))
    UpdateChannelResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#jsonName" => "tags"}))
    UpdateChannelResponse.type = Types::UpdateChannelResponse
    UpdateOriginEndpointRequest.add_member(:authorization, Smithy::Schema::Shapes::ShapeRef.new(shape: Authorization, location_name: 'Authorization', traits: {"smithy.api#jsonName" => "authorization"}))
    UpdateOriginEndpointRequest.add_member(:cmaf_package, Smithy::Schema::Shapes::ShapeRef.new(shape: CmafPackageCreateOrUpdateParameters, location_name: 'CmafPackage', traits: {"smithy.api#jsonName" => "cmafPackage"}))
    UpdateOriginEndpointRequest.add_member(:dash_package, Smithy::Schema::Shapes::ShapeRef.new(shape: DashPackage, location_name: 'DashPackage', traits: {"smithy.api#jsonName" => "dashPackage"}))
    UpdateOriginEndpointRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "A short text description of the OriginEndpoint.", "smithy.api#jsonName" => "description"}))
    UpdateOriginEndpointRequest.add_member(:hls_package, Smithy::Schema::Shapes::ShapeRef.new(shape: HlsPackage, location_name: 'HlsPackage', traits: {"smithy.api#jsonName" => "hlsPackage"}))
    UpdateOriginEndpointRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the OriginEndpoint to update.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateOriginEndpointRequest.add_member(:manifest_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ManifestName', traits: {"smithy.api#documentation" => "A short string that will be appended to the end of the Endpoint URL.", "smithy.api#jsonName" => "manifestName"}))
    UpdateOriginEndpointRequest.add_member(:mss_package, Smithy::Schema::Shapes::ShapeRef.new(shape: MssPackage, location_name: 'MssPackage', traits: {"smithy.api#jsonName" => "mssPackage"}))
    UpdateOriginEndpointRequest.add_member(:origination, Smithy::Schema::Shapes::ShapeRef.new(shape: Origination, location_name: 'Origination', traits: {"smithy.api#documentation" => "Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint\nmay by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be\nrequested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination", "smithy.api#jsonName" => "origination"}))
    UpdateOriginEndpointRequest.add_member(:startover_window_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'StartoverWindowSeconds', traits: {"smithy.api#documentation" => "Maximum duration (in seconds) of content to retain for startover playback.\nIf not specified, startover playback will be disabled for the OriginEndpoint.", "smithy.api#jsonName" => "startoverWindowSeconds"}))
    UpdateOriginEndpointRequest.add_member(:time_delay_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TimeDelaySeconds', traits: {"smithy.api#documentation" => "Amount of delay (in seconds) to enforce on the playback of live content.\nIf not specified, there will be no time delay in effect for the OriginEndpoint.", "smithy.api#jsonName" => "timeDelaySeconds"}))
    UpdateOriginEndpointRequest.add_member(:whitelist, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'Whitelist', traits: {"smithy.api#documentation" => "A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.", "smithy.api#jsonName" => "whitelist"}))
    UpdateOriginEndpointRequest.type = Types::UpdateOriginEndpointRequest
    UpdateOriginEndpointResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "The Amazon Resource Name (ARN) assigned to the OriginEndpoint.", "smithy.api#jsonName" => "arn"}))
    UpdateOriginEndpointResponse.add_member(:authorization, Smithy::Schema::Shapes::ShapeRef.new(shape: Authorization, location_name: 'Authorization', traits: {"smithy.api#jsonName" => "authorization"}))
    UpdateOriginEndpointResponse.add_member(:channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ChannelId', traits: {"smithy.api#documentation" => "The ID of the Channel the OriginEndpoint is associated with.", "smithy.api#jsonName" => "channelId"}))
    UpdateOriginEndpointResponse.add_member(:cmaf_package, Smithy::Schema::Shapes::ShapeRef.new(shape: CmafPackage, location_name: 'CmafPackage', traits: {"smithy.api#jsonName" => "cmafPackage"}))
    UpdateOriginEndpointResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "The date and time the OriginEndpoint was created.", "smithy.api#jsonName" => "createdAt"}))
    UpdateOriginEndpointResponse.add_member(:dash_package, Smithy::Schema::Shapes::ShapeRef.new(shape: DashPackage, location_name: 'DashPackage', traits: {"smithy.api#jsonName" => "dashPackage"}))
    UpdateOriginEndpointResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "A short text description of the OriginEndpoint.", "smithy.api#jsonName" => "description"}))
    UpdateOriginEndpointResponse.add_member(:hls_package, Smithy::Schema::Shapes::ShapeRef.new(shape: HlsPackage, location_name: 'HlsPackage', traits: {"smithy.api#jsonName" => "hlsPackage"}))
    UpdateOriginEndpointResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "The ID of the OriginEndpoint.", "smithy.api#jsonName" => "id"}))
    UpdateOriginEndpointResponse.add_member(:manifest_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ManifestName', traits: {"smithy.api#documentation" => "A short string appended to the end of the OriginEndpoint URL.", "smithy.api#jsonName" => "manifestName"}))
    UpdateOriginEndpointResponse.add_member(:mss_package, Smithy::Schema::Shapes::ShapeRef.new(shape: MssPackage, location_name: 'MssPackage', traits: {"smithy.api#jsonName" => "mssPackage"}))
    UpdateOriginEndpointResponse.add_member(:origination, Smithy::Schema::Shapes::ShapeRef.new(shape: Origination, location_name: 'Origination', traits: {"smithy.api#documentation" => "Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint\nmay by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be\nrequested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination", "smithy.api#jsonName" => "origination"}))
    UpdateOriginEndpointResponse.add_member(:startover_window_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'StartoverWindowSeconds', traits: {"smithy.api#documentation" => "Maximum duration (seconds) of content to retain for startover playback.\nIf not specified, startover playback will be disabled for the OriginEndpoint.", "smithy.api#jsonName" => "startoverWindowSeconds"}))
    UpdateOriginEndpointResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#jsonName" => "tags"}))
    UpdateOriginEndpointResponse.add_member(:time_delay_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TimeDelaySeconds', traits: {"smithy.api#documentation" => "Amount of delay (seconds) to enforce on the playback of live content.\nIf not specified, there will be no time delay in effect for the OriginEndpoint.", "smithy.api#jsonName" => "timeDelaySeconds"}))
    UpdateOriginEndpointResponse.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Url', traits: {"smithy.api#documentation" => "The URL of the packaged OriginEndpoint for consumption.", "smithy.api#jsonName" => "url"}))
    UpdateOriginEndpointResponse.add_member(:whitelist, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'Whitelist', traits: {"smithy.api#documentation" => "A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.", "smithy.api#jsonName" => "whitelist"}))
    UpdateOriginEndpointResponse.type = Types::UpdateOriginEndpointResponse
    UtcTiming.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    UtcTiming.add_member(:http_head, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HTTP_HEAD', traits: {"smithy.api#enumValue" => "HTTP-HEAD"}))
    UtcTiming.add_member(:http_iso, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HTTP_ISO', traits: {"smithy.api#enumValue" => "HTTP-ISO"}))
    UtcTiming.add_member(:http_xsdate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HTTP_XSDATE', traits: {"smithy.api#enumValue" => "HTTP-XSDATE"}))
    Adtriggerselement.add_member(:splice_insert, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SPLICE_INSERT', traits: {"smithy.api#enumValue" => "SPLICE_INSERT"}))
    Adtriggerselement.add_member(:break, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BREAK', traits: {"smithy.api#enumValue" => "BREAK"}))
    Adtriggerselement.add_member(:provider_advertisement, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROVIDER_ADVERTISEMENT', traits: {"smithy.api#enumValue" => "PROVIDER_ADVERTISEMENT"}))
    Adtriggerselement.add_member(:distributor_advertisement, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISTRIBUTOR_ADVERTISEMENT', traits: {"smithy.api#enumValue" => "DISTRIBUTOR_ADVERTISEMENT"}))
    Adtriggerselement.add_member(:provider_placement_opportunity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROVIDER_PLACEMENT_OPPORTUNITY', traits: {"smithy.api#enumValue" => "PROVIDER_PLACEMENT_OPPORTUNITY"}))
    Adtriggerselement.add_member(:distributor_placement_opportunity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISTRIBUTOR_PLACEMENT_OPPORTUNITY', traits: {"smithy.api#enumValue" => "DISTRIBUTOR_PLACEMENT_OPPORTUNITY"}))
    Adtriggerselement.add_member(:provider_overlay_placement_opportunity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY', traits: {"smithy.api#enumValue" => "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY"}))
    Adtriggerselement.add_member(:distributor_overlay_placement_opportunity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY', traits: {"smithy.api#enumValue" => "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY"}))
    Periodtriggerselement.add_member(:ads, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADS', traits: {"smithy.api#enumValue" => "ADS"}))
    Listofchannel.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Channel)
    Listofharvestjob.member = Smithy::Schema::Shapes::ShapeRef.new(shape: HarvestJob)
    Listofhlsmanifest.member = Smithy::Schema::Shapes::ShapeRef.new(shape: HlsManifest)
    Listofhlsmanifestcreateorupdateparameters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: HlsManifestCreateOrUpdateParameters)
    Listofingestendpoint.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IngestEndpoint)
    Listoforiginendpoint.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OriginEndpoint)
    ListofPeriodtriggerselement.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Periodtriggerselement)
    ListofString.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapofString.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapofString.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String)

    MediaPackage = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.mediapackage#MediaPackage"
      service.name = "MediaPackage"
      service.version = "2017-10-12"
      service.traits = {"aws.api#service" => {"sdkId" => "MediaPackage", "arnNamespace" => "mediapackage", "cloudFormationName" => "MediaPackage", "cloudTrailEventSource" => "mediapackage.amazonaws.com", "endpointPrefix" => "mediapackage"}, "aws.auth#sigv4" => {"name" => "mediapackage"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Elemental MediaPackage"}
      service.add_operation(:configure_logs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackage#ConfigureLogs"
        operation.name = "ConfigureLogs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigureLogsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigureLogsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/channels/{Id}/configure_logs", "code" => 200}}
      end)
      service.add_operation(:create_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackage#CreateChannel"
        operation.name = "CreateChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/channels", "code" => 200}}
      end)
      service.add_operation(:create_harvest_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackage#CreateHarvestJob"
        operation.name = "CreateHarvestJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHarvestJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHarvestJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/harvest_jobs", "code" => 200}}
      end)
      service.add_operation(:create_origin_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackage#CreateOriginEndpoint"
        operation.name = "CreateOriginEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateOriginEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateOriginEndpointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/origin_endpoints", "code" => 200}}
      end)
      service.add_operation(:delete_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackage#DeleteChannel"
        operation.name = "DeleteChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/channels/{Id}", "code" => 202}}
      end)
      service.add_operation(:delete_origin_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackage#DeleteOriginEndpoint"
        operation.name = "DeleteOriginEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteOriginEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteOriginEndpointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/origin_endpoints/{Id}", "code" => 202}}
      end)
      service.add_operation(:describe_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackage#DescribeChannel"
        operation.name = "DescribeChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels/{Id}", "code" => 200}}
      end)
      service.add_operation(:describe_harvest_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackage#DescribeHarvestJob"
        operation.name = "DescribeHarvestJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeHarvestJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeHarvestJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/harvest_jobs/{Id}", "code" => 200}}
      end)
      service.add_operation(:describe_origin_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackage#DescribeOriginEndpoint"
        operation.name = "DescribeOriginEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOriginEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOriginEndpointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/origin_endpoints/{Id}", "code" => 200}}
      end)
      service.add_operation(:list_channels, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackage#ListChannels"
        operation.name = "ListChannels"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListChannelsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListChannelsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels", "code" => 200}}
        operation[:paginator] = Paginators::ListChannels.new
      end)
      service.add_operation(:list_harvest_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackage#ListHarvestJobs"
        operation.name = "ListHarvestJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListHarvestJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListHarvestJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/harvest_jobs", "code" => 200}}
        operation[:paginator] = Paginators::ListHarvestJobs.new
      end)
      service.add_operation(:list_origin_endpoints, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackage#ListOriginEndpoints"
        operation.name = "ListOriginEndpoints"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOriginEndpointsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOriginEndpointsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/origin_endpoints", "code" => 200}}
        operation[:paginator] = Paginators::ListOriginEndpoints.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackage#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:rotate_channel_credentials, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackage#RotateChannelCredentials"
        operation.name = "RotateChannelCredentials"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RotateChannelCredentialsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RotateChannelCredentialsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This API is deprecated. Please use RotateIngestEndpointCredentials instead"}, "smithy.api#http" => {"method" => "PUT", "uri" => "/channels/{Id}/credentials", "code" => 200}}
      end)
      service.add_operation(:rotate_ingest_endpoint_credentials, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackage#RotateIngestEndpointCredentials"
        operation.name = "RotateIngestEndpointCredentials"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RotateIngestEndpointCredentialsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RotateIngestEndpointCredentialsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/channels/{Id}/ingest_endpoints/{IngestEndpointId}/credentials", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackage#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackage#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:update_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackage#UpdateChannel"
        operation.name = "UpdateChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/channels/{Id}", "code" => 200}}
      end)
      service.add_operation(:update_origin_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackage#UpdateOriginEndpoint"
        operation.name = "UpdateOriginEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateOriginEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateOriginEndpointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/origin_endpoints/{Id}", "code" => 200}}
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
