# frozen_string_literal: true

# This is generated code!

module Aws::Ivs
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AudioConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#AudioConfiguration', name: 'AudioConfiguration')
    AudioConfigurationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivs#AudioConfigurationList', name: 'AudioConfigurationList')
    BatchError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#BatchError', name: 'BatchError')
    BatchErrors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivs#BatchErrors', name: 'BatchErrors')
    BatchGetChannelInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#BatchGetChannelInput', name: 'BatchGetChannelInput')
    BatchGetChannelOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#BatchGetChannelOutput', name: 'BatchGetChannelOutput')
    BatchGetStreamKeyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#BatchGetStreamKeyInput', name: 'BatchGetStreamKeyInput')
    BatchGetStreamKeyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#BatchGetStreamKeyOutput', name: 'BatchGetStreamKeyOutput')
    BatchStartViewerSessionRevocationError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#BatchStartViewerSessionRevocationError', name: 'BatchStartViewerSessionRevocationError')
    BatchStartViewerSessionRevocationErrors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivs#BatchStartViewerSessionRevocationErrors', name: 'BatchStartViewerSessionRevocationErrors')
    BatchStartViewerSessionRevocationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#BatchStartViewerSessionRevocationInput', name: 'BatchStartViewerSessionRevocationInput')
    BatchStartViewerSessionRevocationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#BatchStartViewerSessionRevocationOutput', name: 'BatchStartViewerSessionRevocationOutput')
    BatchStartViewerSessionRevocationViewerSession = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#BatchStartViewerSessionRevocationViewerSession', name: 'BatchStartViewerSessionRevocationViewerSession')
    BatchStartViewerSessionRevocationViewerSessionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivs#BatchStartViewerSessionRevocationViewerSessionList', name: 'BatchStartViewerSessionRevocationViewerSessionList', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.ivs#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    Channel = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#Channel', name: 'Channel')
    ChannelArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivs#ChannelArn', name: 'ChannelArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:aws:ivs:[a-z0-9-]+:[0-9]+:channel/[a-zA-Z0-9-]+$"})
    ChannelArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivs#ChannelArnList', name: 'ChannelArnList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ChannelLatencyMode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivs#ChannelLatencyMode', name: 'ChannelLatencyMode', traits: {"smithy.api#enum" => [{"value" => "NORMAL", "name" => "NormalLatency"}, {"value" => "LOW", "name" => "LowLatency"}]})
    ChannelList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivs#ChannelList', name: 'ChannelList')
    ChannelName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivs#ChannelName', name: 'ChannelName', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]*$"})
    ChannelNotBroadcasting = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#ChannelNotBroadcasting', name: 'ChannelNotBroadcasting', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ChannelPlaybackRestrictionPolicyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivs#ChannelPlaybackRestrictionPolicyArn', name: 'ChannelPlaybackRestrictionPolicyArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^^$|^arn:aws:ivs:[a-z0-9-]+:[0-9]+:playback-restriction-policy/[a-zA-Z0-9-]+$$"})
    ChannelRecordingConfigurationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivs#ChannelRecordingConfigurationArn', name: 'ChannelRecordingConfigurationArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^^$|^arn:aws:ivs:[a-z0-9-]+:[0-9]+:recording-configuration/[a-zA-Z0-9-]+$$"})
    ChannelSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#ChannelSummary', name: 'ChannelSummary')
    ChannelType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ivs#ChannelType', name: 'ChannelType')
    Channels = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivs#Channels', name: 'Channels')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContainerFormat = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivs#ContainerFormat', name: 'ContainerFormat', traits: {"smithy.api#enum" => [{"value" => "TS", "name" => "TS"}, {"value" => "FRAGMENTED_MP4", "name" => "FragmentedMP4"}]})
    CreateChannelInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#CreateChannelInput', name: 'CreateChannelInput')
    CreateChannelOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#CreateChannelOutput', name: 'CreateChannelOutput')
    CreatePlaybackRestrictionPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#CreatePlaybackRestrictionPolicyRequest', name: 'CreatePlaybackRestrictionPolicyRequest')
    CreatePlaybackRestrictionPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#CreatePlaybackRestrictionPolicyResponse', name: 'CreatePlaybackRestrictionPolicyResponse')
    CreateRecordingConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#CreateRecordingConfigurationInput', name: 'CreateRecordingConfigurationInput')
    CreateRecordingConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#CreateRecordingConfigurationOutput', name: 'CreateRecordingConfigurationOutput')
    CreateStreamKeyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#CreateStreamKeyInput', name: 'CreateStreamKeyInput')
    CreateStreamKeyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#CreateStreamKeyOutput', name: 'CreateStreamKeyOutput')
    DeleteChannelInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#DeleteChannelInput', name: 'DeleteChannelInput')
    DeletePlaybackKeyPairInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#DeletePlaybackKeyPairInput', name: 'DeletePlaybackKeyPairInput')
    DeletePlaybackKeyPairOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#DeletePlaybackKeyPairOutput', name: 'DeletePlaybackKeyPairOutput')
    DeletePlaybackRestrictionPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#DeletePlaybackRestrictionPolicyRequest', name: 'DeletePlaybackRestrictionPolicyRequest')
    DeleteRecordingConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#DeleteRecordingConfigurationInput', name: 'DeleteRecordingConfigurationInput')
    DeleteStreamKeyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#DeleteStreamKeyInput', name: 'DeleteStreamKeyInput')
    DestinationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#DestinationConfiguration', name: 'DestinationConfiguration')
    GetChannelInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#GetChannelInput', name: 'GetChannelInput')
    GetChannelOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#GetChannelOutput', name: 'GetChannelOutput')
    GetPlaybackKeyPairInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#GetPlaybackKeyPairInput', name: 'GetPlaybackKeyPairInput')
    GetPlaybackKeyPairOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#GetPlaybackKeyPairOutput', name: 'GetPlaybackKeyPairOutput')
    GetPlaybackRestrictionPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#GetPlaybackRestrictionPolicyRequest', name: 'GetPlaybackRestrictionPolicyRequest')
    GetPlaybackRestrictionPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#GetPlaybackRestrictionPolicyResponse', name: 'GetPlaybackRestrictionPolicyResponse')
    GetRecordingConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#GetRecordingConfigurationInput', name: 'GetRecordingConfigurationInput')
    GetRecordingConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#GetRecordingConfigurationOutput', name: 'GetRecordingConfigurationOutput')
    GetStreamInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#GetStreamInput', name: 'GetStreamInput')
    GetStreamKeyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#GetStreamKeyInput', name: 'GetStreamKeyInput')
    GetStreamKeyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#GetStreamKeyOutput', name: 'GetStreamKeyOutput')
    GetStreamOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#GetStreamOutput', name: 'GetStreamOutput')
    GetStreamSessionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#GetStreamSessionInput', name: 'GetStreamSessionInput')
    GetStreamSessionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#GetStreamSessionOutput', name: 'GetStreamSessionOutput')
    ImportPlaybackKeyPairInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#ImportPlaybackKeyPairInput', name: 'ImportPlaybackKeyPairInput')
    ImportPlaybackKeyPairOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#ImportPlaybackKeyPairOutput', name: 'ImportPlaybackKeyPairOutput')
    IngestConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#IngestConfiguration', name: 'IngestConfiguration')
    IngestConfigurations = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#IngestConfigurations', name: 'IngestConfigurations')
    IngestEndpoint = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivs#IngestEndpoint', name: 'IngestEndpoint')
    InsecureIngest = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.ivs#InsecureIngest', name: 'InsecureIngest', traits: {"smithy.api#default" => false})
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ivs#Integer', name: 'Integer', traits: {"smithy.api#default" => 0})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    IsAuthorized = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.ivs#IsAuthorized', name: 'IsAuthorized', traits: {"smithy.api#default" => false})
    IsMultitrackInputEnabled = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.ivs#IsMultitrackInputEnabled', name: 'IsMultitrackInputEnabled', traits: {"smithy.api#default" => false})
    ListChannelsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#ListChannelsInput', name: 'ListChannelsInput')
    ListChannelsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#ListChannelsOutput', name: 'ListChannelsOutput')
    ListPlaybackKeyPairsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#ListPlaybackKeyPairsInput', name: 'ListPlaybackKeyPairsInput')
    ListPlaybackKeyPairsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#ListPlaybackKeyPairsOutput', name: 'ListPlaybackKeyPairsOutput')
    ListPlaybackRestrictionPoliciesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#ListPlaybackRestrictionPoliciesRequest', name: 'ListPlaybackRestrictionPoliciesRequest')
    ListPlaybackRestrictionPoliciesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#ListPlaybackRestrictionPoliciesResponse', name: 'ListPlaybackRestrictionPoliciesResponse')
    ListRecordingConfigurationsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#ListRecordingConfigurationsInput', name: 'ListRecordingConfigurationsInput')
    ListRecordingConfigurationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#ListRecordingConfigurationsOutput', name: 'ListRecordingConfigurationsOutput')
    ListStreamKeysInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#ListStreamKeysInput', name: 'ListStreamKeysInput')
    ListStreamKeysOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#ListStreamKeysOutput', name: 'ListStreamKeysOutput')
    ListStreamSessionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#ListStreamSessionsInput', name: 'ListStreamSessionsInput')
    ListStreamSessionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#ListStreamSessionsOutput', name: 'ListStreamSessionsOutput')
    ListStreamsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#ListStreamsInput', name: 'ListStreamsInput')
    ListStreamsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#ListStreamsOutput', name: 'ListStreamsOutput')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    MaxChannelResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ivs#MaxChannelResults', name: 'MaxChannelResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxPlaybackKeyPairResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ivs#MaxPlaybackKeyPairResults', name: 'MaxPlaybackKeyPairResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxPlaybackRestrictionPolicyResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ivs#MaxPlaybackRestrictionPolicyResults', name: 'MaxPlaybackRestrictionPolicyResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxRecordingConfigurationResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ivs#MaxRecordingConfigurationResults', name: 'MaxRecordingConfigurationResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxStreamKeyResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ivs#MaxStreamKeyResults', name: 'MaxStreamKeyResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxStreamResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ivs#MaxStreamResults', name: 'MaxStreamResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MultitrackInputConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#MultitrackInputConfiguration', name: 'MultitrackInputConfiguration')
    MultitrackMaximumResolution = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ivs#MultitrackMaximumResolution', name: 'MultitrackMaximumResolution')
    MultitrackPolicy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ivs#MultitrackPolicy', name: 'MultitrackPolicy')
    PaginationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivs#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[a-zA-Z0-9+/=_-]*$"})
    PendingVerification = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#PendingVerification', name: 'PendingVerification', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    PlaybackKeyPair = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#PlaybackKeyPair', name: 'PlaybackKeyPair')
    PlaybackKeyPairArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivs#PlaybackKeyPairArn', name: 'PlaybackKeyPairArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:aws:ivs:[a-z0-9-]+:[0-9]+:playback-key/[a-zA-Z0-9-]+$"})
    PlaybackKeyPairFingerprint = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivs#PlaybackKeyPairFingerprint', name: 'PlaybackKeyPairFingerprint')
    PlaybackKeyPairList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivs#PlaybackKeyPairList', name: 'PlaybackKeyPairList')
    PlaybackKeyPairName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivs#PlaybackKeyPairName', name: 'PlaybackKeyPairName', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]*$"})
    PlaybackKeyPairSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#PlaybackKeyPairSummary', name: 'PlaybackKeyPairSummary')
    PlaybackPublicKeyMaterial = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivs#PlaybackPublicKeyMaterial', name: 'PlaybackPublicKeyMaterial')
    PlaybackRestrictionPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#PlaybackRestrictionPolicy', name: 'PlaybackRestrictionPolicy')
    PlaybackRestrictionPolicyAllowedCountry = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivs#PlaybackRestrictionPolicyAllowedCountry', name: 'PlaybackRestrictionPolicyAllowedCountry', traits: {"smithy.api#length" => {"min" => 2, "max" => 2}})
    PlaybackRestrictionPolicyAllowedCountryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivs#PlaybackRestrictionPolicyAllowedCountryList', name: 'PlaybackRestrictionPolicyAllowedCountryList')
    PlaybackRestrictionPolicyAllowedOrigin = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivs#PlaybackRestrictionPolicyAllowedOrigin', name: 'PlaybackRestrictionPolicyAllowedOrigin', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    PlaybackRestrictionPolicyAllowedOriginList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivs#PlaybackRestrictionPolicyAllowedOriginList', name: 'PlaybackRestrictionPolicyAllowedOriginList')
    PlaybackRestrictionPolicyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivs#PlaybackRestrictionPolicyArn', name: 'PlaybackRestrictionPolicyArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:aws:ivs:[a-z0-9-]+:[0-9]+:playback-restriction-policy/[a-zA-Z0-9-]+$"})
    PlaybackRestrictionPolicyEnableStrictOriginEnforcement = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.ivs#PlaybackRestrictionPolicyEnableStrictOriginEnforcement', name: 'PlaybackRestrictionPolicyEnableStrictOriginEnforcement')
    PlaybackRestrictionPolicyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivs#PlaybackRestrictionPolicyList', name: 'PlaybackRestrictionPolicyList')
    PlaybackRestrictionPolicyName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivs#PlaybackRestrictionPolicyName', name: 'PlaybackRestrictionPolicyName', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]*$"})
    PlaybackRestrictionPolicySummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#PlaybackRestrictionPolicySummary', name: 'PlaybackRestrictionPolicySummary')
    PlaybackURL = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivs#PlaybackURL', name: 'PlaybackURL')
    PutMetadataInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#PutMetadataInput', name: 'PutMetadataInput')
    RecordingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#RecordingConfiguration', name: 'RecordingConfiguration')
    RecordingConfigurationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivs#RecordingConfigurationArn', name: 'RecordingConfigurationArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^arn:aws:ivs:[a-z0-9-]+:[0-9]+:recording-configuration/[a-zA-Z0-9-]+$"})
    RecordingConfigurationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivs#RecordingConfigurationList', name: 'RecordingConfigurationList')
    RecordingConfigurationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivs#RecordingConfigurationName', name: 'RecordingConfigurationName', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]*$"})
    RecordingConfigurationState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivs#RecordingConfigurationState', name: 'RecordingConfigurationState', traits: {"smithy.api#enum" => [{"value" => "CREATING", "name" => "Creating"}, {"value" => "CREATE_FAILED", "name" => "CreateFailed"}, {"value" => "ACTIVE", "name" => "Active"}]})
    RecordingConfigurationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#RecordingConfigurationSummary', name: 'RecordingConfigurationSummary')
    RecordingMode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivs#RecordingMode', name: 'RecordingMode', traits: {"smithy.api#enum" => [{"value" => "DISABLED", "name" => "Disabled"}, {"value" => "INTERVAL", "name" => "Interval"}]})
    RecordingReconnectWindowSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ivs#RecordingReconnectWindowSeconds', name: 'RecordingReconnectWindowSeconds', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 300}})
    RenditionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#RenditionConfiguration', name: 'RenditionConfiguration')
    RenditionConfigurationRendition = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ivs#RenditionConfigurationRendition', name: 'RenditionConfigurationRendition')
    RenditionConfigurationRenditionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivs#RenditionConfigurationRenditionList', name: 'RenditionConfigurationRenditionList')
    RenditionConfigurationRenditionSelection = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivs#RenditionConfigurationRenditionSelection', name: 'RenditionConfigurationRenditionSelection', traits: {"smithy.api#enum" => [{"value" => "ALL", "name" => "ALL"}, {"value" => "NONE", "name" => "NONE"}, {"value" => "CUSTOM", "name" => "CUSTOM"}]})
    ResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivs#ResourceArn', name: 'ResourceArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:aws:ivs:[a-z0-9-]+:[0-9]+:[a-z-]/[a-zA-Z0-9-]+$"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    S3DestinationBucketName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivs#S3DestinationBucketName', name: 'S3DestinationBucketName', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9-.]+$"})
    S3DestinationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#S3DestinationConfiguration', name: 'S3DestinationConfiguration')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Srt = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#Srt', name: 'Srt')
    SrtEndpoint = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivs#SrtEndpoint', name: 'SrtEndpoint')
    SrtPassphrase = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivs#SrtPassphrase', name: 'SrtPassphrase', traits: {"smithy.api#sensitive" => {}})
    StartViewerSessionRevocationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#StartViewerSessionRevocationInput', name: 'StartViewerSessionRevocationInput')
    StartViewerSessionRevocationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#StartViewerSessionRevocationOutput', name: 'StartViewerSessionRevocationOutput')
    StopStreamInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#StopStreamInput', name: 'StopStreamInput')
    StopStreamOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#StopStreamOutput', name: 'StopStreamOutput')
    Stream = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#Stream', name: 'Stream')
    StreamEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#StreamEvent', name: 'StreamEvent')
    StreamEvents = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivs#StreamEvents', name: 'StreamEvents', traits: {"smithy.api#length" => {"max" => 500}})
    StreamFilters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#StreamFilters', name: 'StreamFilters')
    StreamHealth = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivs#StreamHealth', name: 'StreamHealth', traits: {"smithy.api#enum" => [{"value" => "HEALTHY", "name" => "StreamHealthy"}, {"value" => "STARVING", "name" => "Starving"}, {"value" => "UNKNOWN", "name" => "Unknown"}]})
    StreamId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivs#StreamId', name: 'StreamId', traits: {"smithy.api#length" => {"min" => 26, "max" => 26}, "smithy.api#pattern" => "^st-[a-zA-Z0-9]+$"})
    StreamKey = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#StreamKey', name: 'StreamKey')
    StreamKeyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivs#StreamKeyArn', name: 'StreamKeyArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:aws:ivs:[a-z0-9-]+:[0-9]+:stream-key/[a-zA-Z0-9-]+$"})
    StreamKeyArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivs#StreamKeyArnList', name: 'StreamKeyArnList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    StreamKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivs#StreamKeyList', name: 'StreamKeyList')
    StreamKeySummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#StreamKeySummary', name: 'StreamKeySummary')
    StreamKeyValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivs#StreamKeyValue', name: 'StreamKeyValue', traits: {"smithy.api#sensitive" => {}})
    StreamKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivs#StreamKeys', name: 'StreamKeys')
    StreamList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivs#StreamList', name: 'StreamList')
    StreamMetadata = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivs#StreamMetadata', name: 'StreamMetadata', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#sensitive" => {}})
    StreamSession = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#StreamSession', name: 'StreamSession')
    StreamSessionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivs#StreamSessionList', name: 'StreamSessionList')
    StreamSessionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#StreamSessionSummary', name: 'StreamSessionSummary')
    StreamStartTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.ivs#StreamStartTime', name: 'StreamStartTime', traits: {"smithy.api#timestampFormat" => "date-time"})
    StreamState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivs#StreamState', name: 'StreamState', traits: {"smithy.api#enum" => [{"value" => "LIVE", "name" => "StreamLive"}, {"value" => "OFFLINE", "name" => "StreamOffline"}]})
    StreamSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#StreamSummary', name: 'StreamSummary')
    StreamUnavailable = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#StreamUnavailable', name: 'StreamUnavailable', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    StreamViewerCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ivs#StreamViewerCount', name: 'StreamViewerCount', traits: {"smithy.api#default" => 0})
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivs#String', name: 'String')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivs#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivs#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivs#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"max" => 256}})
    Tags = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.ivs#Tags', name: 'Tags', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TargetIntervalSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ivs#TargetIntervalSeconds', name: 'TargetIntervalSeconds', traits: {"smithy.api#range" => {"min" => 1, "max" => 60}})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ThumbnailConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#ThumbnailConfiguration', name: 'ThumbnailConfiguration')
    ThumbnailConfigurationResolution = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ivs#ThumbnailConfigurationResolution', name: 'ThumbnailConfigurationResolution')
    ThumbnailConfigurationStorage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivs#ThumbnailConfigurationStorage', name: 'ThumbnailConfigurationStorage', traits: {"smithy.api#enum" => [{"value" => "SEQUENTIAL", "name" => "SEQUENTIAL"}, {"value" => "LATEST", "name" => "LATEST"}]})
    ThumbnailConfigurationStorageList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivs#ThumbnailConfigurationStorageList', name: 'ThumbnailConfigurationStorageList')
    Time = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.ivs#Time', name: 'Time', traits: {"smithy.api#timestampFormat" => "date-time"})
    TranscodePreset = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ivs#TranscodePreset', name: 'TranscodePreset')
    UntagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateChannelInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#UpdateChannelInput', name: 'UpdateChannelInput')
    UpdateChannelOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#UpdateChannelOutput', name: 'UpdateChannelOutput')
    UpdatePlaybackRestrictionPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#UpdatePlaybackRestrictionPolicyRequest', name: 'UpdatePlaybackRestrictionPolicyRequest')
    UpdatePlaybackRestrictionPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#UpdatePlaybackRestrictionPolicyResponse', name: 'UpdatePlaybackRestrictionPolicyResponse')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VideoConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivs#VideoConfiguration', name: 'VideoConfiguration')
    VideoConfigurationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivs#VideoConfigurationList', name: 'VideoConfigurationList')
    ViewerId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivs#ViewerId', name: 'ViewerId', traits: {"smithy.api#length" => {"min" => 1, "max" => 40}})
    ViewerSessionVersion = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ivs#ViewerSessionVersion', name: 'ViewerSessionVersion', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    ErrorCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivs#errorCode', name: 'ErrorCode')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivs#errorMessage', name: 'ErrorMessage')

    AccessDeniedException.add_member(:exception_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'exceptionMessage', traits: {"smithy.api#documentation" => "<p>User does not have sufficient access to perform this action.</p>"}))
    AccessDeniedException.type = Types::AccessDeniedException
    AudioConfiguration.add_member(:codec, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'codec', traits: {"smithy.api#documentation" => "<p>Codec used for the audio encoding.</p>"}))
    AudioConfiguration.add_member(:target_bitrate, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'targetBitrate', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The expected ingest bitrate (bits per second). This is configured in the encoder.</p>"}))
    AudioConfiguration.add_member(:sample_rate, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'sampleRate', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Number of audio samples recorded per second.</p>"}))
    AudioConfiguration.add_member(:channels, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'channels', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Number of audio channels.</p>"}))
    AudioConfiguration.add_member(:track, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'track', traits: {"smithy.api#documentation" => "<p>Name of the audio track (if the stream has an audio track). If multitrack is not enabled, this is track0 (the sole track).</p>"}))
    AudioConfiguration.type = Types::AudioConfiguration
    AudioConfigurationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AudioConfiguration)
    BatchError.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>ARN of an IVS resource; e.g., channel.</p>"}))
    BatchError.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'code', traits: {"smithy.api#documentation" => "<p>Error code.</p>"}))
    BatchError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Error message, determined by the application.</p>"}))
    BatchError.type = Types::BatchError
    BatchErrors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchError)
    BatchGetChannelInput.add_member(:arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArnList, location_name: 'arns', traits: {"smithy.api#documentation" => "<p>Array of ARNs, one per channel.</p>", "smithy.api#required" => {}}))
    BatchGetChannelInput.type = Types::BatchGetChannelInput
    BatchGetChannelOutput.add_member(:channels, Smithy::Schema::Shapes::ShapeRef.new(shape: Channels, location_name: 'channels', traits: {"smithy.api#documentation" => "<p/>"}))
    BatchGetChannelOutput.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchErrors, location_name: 'errors', traits: {"smithy.api#documentation" => "<p>Each error object is related to a specific ARN in the request.</p>"}))
    BatchGetChannelOutput.type = Types::BatchGetChannelOutput
    BatchGetStreamKeyInput.add_member(:arns, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamKeyArnList, location_name: 'arns', traits: {"smithy.api#documentation" => "<p>Array of ARNs, one per stream key.</p>", "smithy.api#required" => {}}))
    BatchGetStreamKeyInput.type = Types::BatchGetStreamKeyInput
    BatchGetStreamKeyOutput.add_member(:stream_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamKeys, location_name: 'streamKeys', traits: {"smithy.api#documentation" => "<p/>"}))
    BatchGetStreamKeyOutput.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchErrors, location_name: 'errors', traits: {"smithy.api#documentation" => "<p/>"}))
    BatchGetStreamKeyOutput.type = Types::BatchGetStreamKeyOutput
    BatchStartViewerSessionRevocationError.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: 'channelArn', traits: {"smithy.api#documentation" => "<p>Channel ARN.</p>", "smithy.api#required" => {}}))
    BatchStartViewerSessionRevocationError.add_member(:viewer_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ViewerId, location_name: 'viewerId', traits: {"smithy.api#documentation" => "<p>The ID of the viewer session to revoke.</p>", "smithy.api#required" => {}}))
    BatchStartViewerSessionRevocationError.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'code', traits: {"smithy.api#documentation" => "<p>Error code.</p>"}))
    BatchStartViewerSessionRevocationError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Error message, determined by the application.</p>"}))
    BatchStartViewerSessionRevocationError.type = Types::BatchStartViewerSessionRevocationError
    BatchStartViewerSessionRevocationErrors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchStartViewerSessionRevocationError)
    BatchStartViewerSessionRevocationInput.add_member(:viewer_sessions, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchStartViewerSessionRevocationViewerSessionList, location_name: 'viewerSessions', traits: {"smithy.api#documentation" => "<p>Array of viewer sessions, one per channel-ARN and viewer-ID pair.</p>", "smithy.api#required" => {}}))
    BatchStartViewerSessionRevocationInput.type = Types::BatchStartViewerSessionRevocationInput
    BatchStartViewerSessionRevocationOutput.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchStartViewerSessionRevocationErrors, location_name: 'errors', traits: {"smithy.api#documentation" => "<p>Each error object is related to a specific <code>channelArn</code> and\n        <code>viewerId</code> pair in the request.</p>"}))
    BatchStartViewerSessionRevocationOutput.type = Types::BatchStartViewerSessionRevocationOutput
    BatchStartViewerSessionRevocationViewerSession.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: 'channelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel associated with the viewer session to revoke.</p>", "smithy.api#required" => {}}))
    BatchStartViewerSessionRevocationViewerSession.add_member(:viewer_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ViewerId, location_name: 'viewerId', traits: {"smithy.api#documentation" => "<p>The ID of the viewer associated with the viewer session to revoke. Do not use this field\n      for personally identifying, confidential, or sensitive information.</p>", "smithy.api#required" => {}}))
    BatchStartViewerSessionRevocationViewerSession.add_member(:viewer_session_versions_less_than_or_equal_to, Smithy::Schema::Shapes::ShapeRef.new(shape: ViewerSessionVersion, location_name: 'viewerSessionVersionsLessThanOrEqualTo', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>An optional filter on which versions of the viewer session to revoke. All versions less\n      than or equal to the specified version will be revoked. Default: 0.</p>"}))
    BatchStartViewerSessionRevocationViewerSession.type = Types::BatchStartViewerSessionRevocationViewerSession
    BatchStartViewerSessionRevocationViewerSessionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchStartViewerSessionRevocationViewerSession)
    Channel.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Channel ARN.</p>"}))
    Channel.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Channel name.</p>"}))
    Channel.add_member(:latency_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelLatencyMode, location_name: 'latencyMode', traits: {"smithy.api#documentation" => "<p>Channel latency mode. Use <code>NORMAL</code> to broadcast and deliver live video up to\n      Full HD. Use <code>LOW</code> for near-real-time interaction with viewers. Default:\n        <code>LOW</code>.</p>"}))
    Channel.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Channel type, which determines the allowable resolution and bitrate. <i>If you\n        exceed the allowable input resolution or bitrate, the stream probably will disconnect\n        immediately.</i> Default: <code>STANDARD</code>. For details, see <a href=\"https://docs.aws.amazon.com/ivs/latest/LowLatencyAPIReference/channel-types.html\">Channel\n        Types</a>.</p>"}))
    Channel.add_member(:recording_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelRecordingConfigurationArn, location_name: 'recordingConfigurationArn', traits: {"smithy.api#documentation" => "<p>Recording-configuration ARN. A valid ARN value here both specifies the ARN and enables\n      recording. Default: \"\" (empty string, recording is disabled).</p>"}))
    Channel.add_member(:ingest_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestEndpoint, location_name: 'ingestEndpoint', traits: {"smithy.api#documentation" => "<p>Channel ingest endpoint, part of the definition of an ingest server, used when you set up\n      streaming software.</p>"}))
    Channel.add_member(:playback_url, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackURL, location_name: 'playbackUrl', traits: {"smithy.api#documentation" => "<p>Channel playback URL.</p>"}))
    Channel.add_member(:authorized, Smithy::Schema::Shapes::ShapeRef.new(shape: IsAuthorized, location_name: 'authorized', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether the channel is private (enabled for playback authorization). Default:\n        <code>false</code>.</p>"}))
    Channel.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags attached to the resource. Array of 1-50 maps, each of the form <code>string:string\n        (key:value)</code>. See <a href=\"https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html\">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and \"Tag naming limits and requirements\"; Amazon IVS has no\n      service-specific constraints beyond what is documented there.</p>"}))
    Channel.add_member(:insecure_ingest, Smithy::Schema::Shapes::ShapeRef.new(shape: InsecureIngest, location_name: 'insecureIngest', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether the channel allows insecure RTMP ingest. Default: <code>false</code>.</p>"}))
    Channel.add_member(:preset, Smithy::Schema::Shapes::ShapeRef.new(shape: TranscodePreset, location_name: 'preset', traits: {"smithy.api#documentation" => "<p>Optional transcode preset for the channel. This is selectable only for\n        <code>ADVANCED_HD</code> and <code>ADVANCED_SD</code> channel types. For those channel\n      types, the default <code>preset</code> is <code>HIGHER_BANDWIDTH_DELIVERY</code>. For other\n      channel types (<code>BASIC</code> and <code>STANDARD</code>), <code>preset</code> is the empty\n      string (<code>\"\"</code>).</p>"}))
    Channel.add_member(:srt, Smithy::Schema::Shapes::ShapeRef.new(shape: Srt, location_name: 'srt', traits: {"smithy.api#documentation" => "<p>Specifies the endpoint and optional passphrase for streaming with the SRT protocol.</p>"}))
    Channel.add_member(:playback_restriction_policy_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelPlaybackRestrictionPolicyArn, location_name: 'playbackRestrictionPolicyArn', traits: {"smithy.api#documentation" => "<p>Playback-restriction-policy ARN. A valid ARN value here both specifies the ARN and enables\n      playback restriction. Default: \"\" (empty string, no playback restriction policy is\n      applied).</p>"}))
    Channel.add_member(:multitrack_input_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MultitrackInputConfiguration, location_name: 'multitrackInputConfiguration', traits: {"smithy.api#documentation" => "<p>Object specifying multitrack input configuration. Default: no multitrack input configuration is specified.</p>"}))
    Channel.add_member(:container_format, Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerFormat, location_name: 'containerFormat', traits: {"smithy.api#documentation" => "<p>Indicates which content-packaging format is used (MPEG-TS or fMP4). If <code>multitrackInputConfiguration</code> is specified and <code>enabled</code> is <code>true</code>, then <code>containerFormat</code> is required and must be set to <code>FRAGMENTED_MP4</code>. Otherwise, <code>containerFormat</code> may be set to <code>TS</code> or <code>FRAGMENTED_MP4</code>. Default: <code>TS</code>.</p>"}))
    Channel.type = Types::Channel
    ChannelArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn)
    ChannelList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelSummary)
    ChannelNotBroadcasting.add_member(:exception_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'exceptionMessage', traits: {"smithy.api#documentation" => "<p>The stream is offline for the given channel ARN.</p>"}))
    ChannelNotBroadcasting.type = Types::ChannelNotBroadcasting
    ChannelSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Channel ARN.</p>"}))
    ChannelSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Channel name.</p>"}))
    ChannelSummary.add_member(:latency_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelLatencyMode, location_name: 'latencyMode', traits: {"smithy.api#documentation" => "<p>Channel latency mode. Use <code>NORMAL</code> to broadcast and deliver live video up to\n      Full HD. Use <code>LOW</code> for near-real-time interaction with viewers. Default:\n        <code>LOW</code>.</p>"}))
    ChannelSummary.add_member(:authorized, Smithy::Schema::Shapes::ShapeRef.new(shape: IsAuthorized, location_name: 'authorized', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether the channel is private (enabled for playback authorization). Default:\n        <code>false</code>.</p>"}))
    ChannelSummary.add_member(:recording_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelRecordingConfigurationArn, location_name: 'recordingConfigurationArn', traits: {"smithy.api#documentation" => "<p>Recording-configuration ARN. A valid ARN value here both specifies the ARN and enables\n      recording. Default: \"\" (empty string, recording is disabled).</p>"}))
    ChannelSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags attached to the resource. Array of 1-50 maps, each of the form <code>string:string\n        (key:value)</code>. See <a href=\"https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html\">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and \"Tag naming limits and requirements\"; Amazon IVS has no\n      service-specific constraints beyond what is documented there.</p>"}))
    ChannelSummary.add_member(:insecure_ingest, Smithy::Schema::Shapes::ShapeRef.new(shape: InsecureIngest, location_name: 'insecureIngest', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether the channel allows insecure RTMP ingest. Default: <code>false</code>.</p>"}))
    ChannelSummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Channel type, which determines the allowable resolution and bitrate. <i>If you\n        exceed the allowable input resolution or bitrate, the stream probably will disconnect\n        immediately.</i> Default: <code>STANDARD</code>. For details, see <a href=\"https://docs.aws.amazon.com/ivs/latest/LowLatencyAPIReference/channel-types.html\">Channel\n        Types</a>.</p>"}))
    ChannelSummary.add_member(:preset, Smithy::Schema::Shapes::ShapeRef.new(shape: TranscodePreset, location_name: 'preset', traits: {"smithy.api#documentation" => "<p>Optional transcode preset for the channel. This is selectable only for\n        <code>ADVANCED_HD</code> and <code>ADVANCED_SD</code> channel types. For those channel\n      types, the default <code>preset</code> is <code>HIGHER_BANDWIDTH_DELIVERY</code>. For other\n      channel types (<code>BASIC</code> and <code>STANDARD</code>), <code>preset</code> is the empty\n      string (<code>\"\"</code>).</p>"}))
    ChannelSummary.add_member(:playback_restriction_policy_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelPlaybackRestrictionPolicyArn, location_name: 'playbackRestrictionPolicyArn', traits: {"smithy.api#documentation" => "<p>Playback-restriction-policy ARN. A valid ARN value here both specifies the ARN and enables\n      playback restriction. Default: \"\" (empty string, no playback restriction policy is\n      applied).</p>"}))
    ChannelSummary.type = Types::ChannelSummary
    ChannelType.add_member(:basic_channel_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BasicChannelType', traits: {"smithy.api#enumValue" => "BASIC"}))
    ChannelType.add_member(:standard_channel_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'StandardChannelType', traits: {"smithy.api#enumValue" => "STANDARD"}))
    ChannelType.add_member(:advanced_sd_channel_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AdvancedSDChannelType', traits: {"smithy.api#enumValue" => "ADVANCED_SD"}))
    ChannelType.add_member(:advanced_hd_channel_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AdvancedHDChannelType', traits: {"smithy.api#enumValue" => "ADVANCED_HD"}))
    Channels.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Channel)
    ConflictException.add_member(:exception_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'exceptionMessage', traits: {"smithy.api#documentation" => "<p>Updating or deleting a resource can cause an inconsistent state.</p>"}))
    ConflictException.type = Types::ConflictException
    CreateChannelInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Channel name.</p>"}))
    CreateChannelInput.add_member(:latency_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelLatencyMode, location_name: 'latencyMode', traits: {"smithy.api#documentation" => "<p>Channel latency mode. Use <code>NORMAL</code> to broadcast and deliver live video up to\n      Full HD. Use <code>LOW</code> for near-real-time interaction with viewers. Default: <code>LOW</code>.</p>"}))
    CreateChannelInput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Channel type, which determines the allowable resolution and bitrate. <i>If you\n        exceed the allowable input resolution or bitrate, the stream probably will disconnect\n        immediately.</i> Default: <code>STANDARD</code>. For details, see <a href=\"https://docs.aws.amazon.com/ivs/latest/LowLatencyAPIReference/channel-types.html\">Channel\n        Types</a>.</p>"}))
    CreateChannelInput.add_member(:authorized, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'authorized', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether the channel is private (enabled for playback authorization). Default:\n        <code>false</code>.</p>"}))
    CreateChannelInput.add_member(:recording_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelRecordingConfigurationArn, location_name: 'recordingConfigurationArn', traits: {"smithy.api#documentation" => "<p>Recording-configuration ARN. A valid ARN value here both specifies the ARN and enables recording.\n     Default: \"\" (empty string, recording is disabled).</p>"}))
    CreateChannelInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>. See <a href=\"https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html\">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and \"Tag naming limits and requirements\"; Amazon IVS has no service-specific constraints beyond what is\n      documented there.</p>"}))
    CreateChannelInput.add_member(:insecure_ingest, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'insecureIngest', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether the channel allows insecure RTMP and SRT ingest. Default: <code>false</code>.</p>"}))
    CreateChannelInput.add_member(:preset, Smithy::Schema::Shapes::ShapeRef.new(shape: TranscodePreset, location_name: 'preset', traits: {"smithy.api#documentation" => "<p>Optional transcode preset for the channel. This is selectable only for\n        <code>ADVANCED_HD</code> and <code>ADVANCED_SD</code> channel types. For those channel\n      types, the default <code>preset</code> is <code>HIGHER_BANDWIDTH_DELIVERY</code>. For other\n      channel types (<code>BASIC</code> and <code>STANDARD</code>), <code>preset</code> is the empty\n      string (<code>\"\"</code>).</p>"}))
    CreateChannelInput.add_member(:playback_restriction_policy_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelPlaybackRestrictionPolicyArn, location_name: 'playbackRestrictionPolicyArn', traits: {"smithy.api#documentation" => "<p>Playback-restriction-policy ARN. A valid ARN value here both specifies the ARN and enables playback restriction.\n    Default: \"\" (empty string, no playback restriction policy is applied).</p>"}))
    CreateChannelInput.add_member(:multitrack_input_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MultitrackInputConfiguration, location_name: 'multitrackInputConfiguration', traits: {"smithy.api#documentation" => "<p>Object specifying multitrack input configuration. Default: no multitrack input configuration is specified.</p>"}))
    CreateChannelInput.add_member(:container_format, Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerFormat, location_name: 'containerFormat', traits: {"smithy.api#documentation" => "<p>Indicates which content-packaging format is used (MPEG-TS or fMP4). If <code>multitrackInputConfiguration</code> is specified and <code>enabled</code> is <code>true</code>, then <code>containerFormat</code> is required and must be set to <code>FRAGMENTED_MP4</code>. Otherwise, <code>containerFormat</code> may be set to <code>TS</code> or <code>FRAGMENTED_MP4</code>. Default: <code>TS</code>.</p>"}))
    CreateChannelInput.type = Types::CreateChannelInput
    CreateChannelOutput.add_member(:channel, Smithy::Schema::Shapes::ShapeRef.new(shape: Channel, location_name: 'channel', traits: {"smithy.api#documentation" => "<p/>"}))
    CreateChannelOutput.add_member(:stream_key, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamKey, location_name: 'streamKey', traits: {"smithy.api#documentation" => "<p/>"}))
    CreateChannelOutput.type = Types::CreateChannelOutput
    CreatePlaybackRestrictionPolicyRequest.add_member(:allowed_countries, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyAllowedCountryList, location_name: 'allowedCountries', traits: {"smithy.api#documentation" => "<p>A list of country codes that control geoblocking restriction. Allowed values are the\n      officially assigned <a href=\"https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2\">ISO 3166-1\n        alpha-2</a> codes. Default: All countries (an empty array).</p>"}))
    CreatePlaybackRestrictionPolicyRequest.add_member(:allowed_origins, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyAllowedOriginList, location_name: 'allowedOrigins', traits: {"smithy.api#documentation" => "<p>A list of origin sites that control CORS restriction. Allowed values are the same as valid\n      values of the Origin header defined at <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Origin\">https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Origin</a>. Default: All\n      origins (an empty array).</p>"}))
    CreatePlaybackRestrictionPolicyRequest.add_member(:enable_strict_origin_enforcement, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyEnableStrictOriginEnforcement, location_name: 'enableStrictOriginEnforcement', traits: {"smithy.api#documentation" => "<p>Whether channel playback is constrained by origin site. Default:\n      <code>false</code>.</p>"}))
    CreatePlaybackRestrictionPolicyRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Playback-restriction-policy name. The value does not need to be unique.</p>"}))
    CreatePlaybackRestrictionPolicyRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>. See <a href=\"https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html\">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and \"Tag naming limits and requirements\"; Amazon IVS has no service-specific constraints beyond what is\n      documented there.</p>"}))
    CreatePlaybackRestrictionPolicyRequest.type = Types::CreatePlaybackRestrictionPolicyRequest
    CreatePlaybackRestrictionPolicyResponse.add_member(:playback_restriction_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicy, location_name: 'playbackRestrictionPolicy', traits: {"smithy.api#documentation" => "<p/>"}))
    CreatePlaybackRestrictionPolicyResponse.type = Types::CreatePlaybackRestrictionPolicyResponse
    CreateRecordingConfigurationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingConfigurationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Recording-configuration name. The value does not need to be unique.</p>"}))
    CreateRecordingConfigurationInput.add_member(:destination_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationConfiguration, location_name: 'destinationConfiguration', traits: {"smithy.api#documentation" => "<p>A complex type that contains a destination configuration for where recorded video will be\n      stored.</p>", "smithy.api#required" => {}}))
    CreateRecordingConfigurationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>. See <a href=\"https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html\">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and \"Tag naming limits and requirements\"; Amazon IVS has no service-specific constraints beyond what is\n      documented there.</p>"}))
    CreateRecordingConfigurationInput.add_member(:thumbnail_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ThumbnailConfiguration, location_name: 'thumbnailConfiguration', traits: {"smithy.api#documentation" => "<p>A complex type that allows you to enable/disable the recording of thumbnails for a live\n      session and modify the interval at which thumbnails are generated for the live session.</p>"}))
    CreateRecordingConfigurationInput.add_member(:recording_reconnect_window_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingReconnectWindowSeconds, location_name: 'recordingReconnectWindowSeconds', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>If a broadcast disconnects and then reconnects within the specified interval, the multiple\n      streams will be considered a single broadcast and merged together. Default: 0.</p>"}))
    CreateRecordingConfigurationInput.add_member(:rendition_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RenditionConfiguration, location_name: 'renditionConfiguration', traits: {"smithy.api#documentation" => "<p>Object that describes which renditions should be recorded for a stream.</p>"}))
    CreateRecordingConfigurationInput.type = Types::CreateRecordingConfigurationInput
    CreateRecordingConfigurationOutput.add_member(:recording_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingConfiguration, location_name: 'recordingConfiguration', traits: {"smithy.api#documentation" => ""}))
    CreateRecordingConfigurationOutput.type = Types::CreateRecordingConfigurationOutput
    CreateStreamKeyInput.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: 'channelArn', traits: {"smithy.api#documentation" => "<p>ARN of the channel for which to create the stream key.</p>", "smithy.api#required" => {}}))
    CreateStreamKeyInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>. See <a href=\"https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html\">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and \"Tag naming limits and requirements\"; Amazon IVS has no service-specific constraints beyond what is\n      documented there.</p>"}))
    CreateStreamKeyInput.type = Types::CreateStreamKeyInput
    CreateStreamKeyOutput.add_member(:stream_key, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamKey, location_name: 'streamKey', traits: {"smithy.api#documentation" => "<p>Stream key used to authenticate an RTMPS stream for ingestion.</p>"}))
    CreateStreamKeyOutput.type = Types::CreateStreamKeyOutput
    DeleteChannelInput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>ARN of the channel to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteChannelInput.type = Types::DeleteChannelInput
    DeletePlaybackKeyPairInput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackKeyPairArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>ARN of the key pair to be deleted.</p>", "smithy.api#required" => {}}))
    DeletePlaybackKeyPairInput.type = Types::DeletePlaybackKeyPairInput
    DeletePlaybackKeyPairOutput.type = Types::DeletePlaybackKeyPairOutput
    DeletePlaybackRestrictionPolicyRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>ARN of the playback restriction policy to be deleted.</p>", "smithy.api#required" => {}}))
    DeletePlaybackRestrictionPolicyRequest.type = Types::DeletePlaybackRestrictionPolicyRequest
    DeleteRecordingConfigurationInput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingConfigurationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>ARN of the recording configuration to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteRecordingConfigurationInput.type = Types::DeleteRecordingConfigurationInput
    DeleteStreamKeyInput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamKeyArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>ARN of the stream key to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteStreamKeyInput.type = Types::DeleteStreamKeyInput
    DestinationConfiguration.add_member(:s3, Smithy::Schema::Shapes::ShapeRef.new(shape: S3DestinationConfiguration, location_name: 's3', traits: {"smithy.api#documentation" => "<p>An S3 destination configuration where recorded videos will be stored.</p>"}))
    DestinationConfiguration.type = Types::DestinationConfiguration
    GetChannelInput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>ARN of the channel for which the configuration is to be retrieved.</p>", "smithy.api#required" => {}}))
    GetChannelInput.type = Types::GetChannelInput
    GetChannelOutput.add_member(:channel, Smithy::Schema::Shapes::ShapeRef.new(shape: Channel, location_name: 'channel', traits: {"smithy.api#documentation" => "<p/>"}))
    GetChannelOutput.type = Types::GetChannelOutput
    GetPlaybackKeyPairInput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackKeyPairArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>ARN of the key pair to be returned.</p>", "smithy.api#required" => {}}))
    GetPlaybackKeyPairInput.type = Types::GetPlaybackKeyPairInput
    GetPlaybackKeyPairOutput.add_member(:key_pair, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackKeyPair, location_name: 'keyPair', traits: {"smithy.api#documentation" => ""}))
    GetPlaybackKeyPairOutput.type = Types::GetPlaybackKeyPairOutput
    GetPlaybackRestrictionPolicyRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>ARN of the playback restriction policy to be returned.</p>", "smithy.api#required" => {}}))
    GetPlaybackRestrictionPolicyRequest.type = Types::GetPlaybackRestrictionPolicyRequest
    GetPlaybackRestrictionPolicyResponse.add_member(:playback_restriction_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicy, location_name: 'playbackRestrictionPolicy', traits: {"smithy.api#documentation" => "<p/>"}))
    GetPlaybackRestrictionPolicyResponse.type = Types::GetPlaybackRestrictionPolicyResponse
    GetRecordingConfigurationInput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingConfigurationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>ARN of the recording configuration to be retrieved.</p>", "smithy.api#required" => {}}))
    GetRecordingConfigurationInput.type = Types::GetRecordingConfigurationInput
    GetRecordingConfigurationOutput.add_member(:recording_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingConfiguration, location_name: 'recordingConfiguration', traits: {"smithy.api#documentation" => ""}))
    GetRecordingConfigurationOutput.type = Types::GetRecordingConfigurationOutput
    GetStreamInput.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: 'channelArn', traits: {"smithy.api#documentation" => "<p>Channel ARN for stream to be accessed.</p>", "smithy.api#required" => {}}))
    GetStreamInput.type = Types::GetStreamInput
    GetStreamKeyInput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamKeyArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>ARN for the stream key to be retrieved.</p>", "smithy.api#required" => {}}))
    GetStreamKeyInput.type = Types::GetStreamKeyInput
    GetStreamKeyOutput.add_member(:stream_key, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamKey, location_name: 'streamKey', traits: {"smithy.api#documentation" => ""}))
    GetStreamKeyOutput.type = Types::GetStreamKeyOutput
    GetStreamOutput.add_member(:stream, Smithy::Schema::Shapes::ShapeRef.new(shape: Stream, location_name: 'stream', traits: {"smithy.api#documentation" => "<p/>"}))
    GetStreamOutput.type = Types::GetStreamOutput
    GetStreamSessionInput.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: 'channelArn', traits: {"smithy.api#documentation" => "<p>ARN of the channel resource</p>", "smithy.api#required" => {}}))
    GetStreamSessionInput.add_member(:stream_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamId, location_name: 'streamId', traits: {"smithy.api#documentation" => "<p>Unique identifier for a live or previously live stream in the specified channel. If no\n        <code>streamId</code> is provided, this returns the most recent stream session for the\n      channel, if it exists.</p>"}))
    GetStreamSessionInput.type = Types::GetStreamSessionInput
    GetStreamSessionOutput.add_member(:stream_session, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamSession, location_name: 'streamSession', traits: {"smithy.api#documentation" => "<p>List of stream details.</p>"}))
    GetStreamSessionOutput.type = Types::GetStreamSessionOutput
    ImportPlaybackKeyPairInput.add_member(:public_key_material, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackPublicKeyMaterial, location_name: 'publicKeyMaterial', traits: {"smithy.api#documentation" => "<p>The public portion of a customer-generated key pair.</p>", "smithy.api#required" => {}}))
    ImportPlaybackKeyPairInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackKeyPairName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Playback-key-pair name. The value does not need to be unique.</p>"}))
    ImportPlaybackKeyPairInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Any tags provided with the request are added to the playback key pair tags. See <a href=\"https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html\">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and \"Tag naming limits and requirements\"; Amazon IVS has no service-specific constraints beyond what is\n      documented there.</p>"}))
    ImportPlaybackKeyPairInput.type = Types::ImportPlaybackKeyPairInput
    ImportPlaybackKeyPairOutput.add_member(:key_pair, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackKeyPair, location_name: 'keyPair', traits: {"smithy.api#documentation" => "<p/>"}))
    ImportPlaybackKeyPairOutput.type = Types::ImportPlaybackKeyPairOutput
    IngestConfiguration.add_member(:video, Smithy::Schema::Shapes::ShapeRef.new(shape: VideoConfiguration, location_name: 'video', traits: {"smithy.api#documentation" => "<p>Encoder settings for video.</p>"}))
    IngestConfiguration.add_member(:audio, Smithy::Schema::Shapes::ShapeRef.new(shape: AudioConfiguration, location_name: 'audio', traits: {"smithy.api#documentation" => "<p>Encoder settings for audio.</p>"}))
    IngestConfiguration.type = Types::IngestConfiguration
    IngestConfigurations.add_member(:video_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: VideoConfigurationList, location_name: 'videoConfigurations', traits: {"smithy.api#documentation" => "<p>Encoder settings for video</p>", "smithy.api#required" => {}}))
    IngestConfigurations.add_member(:audio_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: AudioConfigurationList, location_name: 'audioConfigurations', traits: {"smithy.api#documentation" => "<p>Encoder settings for audio.</p>", "smithy.api#required" => {}}))
    IngestConfigurations.type = Types::IngestConfigurations
    InternalServerException.add_member(:exception_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'exceptionMessage', traits: {"smithy.api#documentation" => "<p>Unexpected error during processing of request.</p>"}))
    InternalServerException.type = Types::InternalServerException
    ListChannelsInput.add_member(:filter_by_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: 'filterByName', traits: {"smithy.api#documentation" => "<p>Filters the channel list to match the specified name.</p>"}))
    ListChannelsInput.add_member(:filter_by_recording_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelRecordingConfigurationArn, location_name: 'filterByRecordingConfigurationArn', traits: {"smithy.api#documentation" => "<p>Filters the channel list to match the specified recording-configuration ARN.</p>"}))
    ListChannelsInput.add_member(:filter_by_playback_restriction_policy_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelPlaybackRestrictionPolicyArn, location_name: 'filterByPlaybackRestrictionPolicyArn', traits: {"smithy.api#documentation" => "<p>Filters the channel list to match the specified policy.</p>"}))
    ListChannelsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The first channel to retrieve. This is used for pagination; see the <code>nextToken</code>\n      response field.</p>"}))
    ListChannelsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxChannelResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of channels to return. Default: 100.</p>"}))
    ListChannelsInput.type = Types::ListChannelsInput
    ListChannelsOutput.add_member(:channels, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelList, location_name: 'channels', traits: {"smithy.api#documentation" => "<p>List of the matching channels.</p>", "smithy.api#required" => {}}))
    ListChannelsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are more channels than <code>maxResults</code>, use <code>nextToken</code> in the\n      request to get the next set.</p>"}))
    ListChannelsOutput.type = Types::ListChannelsOutput
    ListPlaybackKeyPairsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The first key pair to retrieve. This is used for pagination; see the\n        <code>nextToken</code> response field.</p>"}))
    ListPlaybackKeyPairsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPlaybackKeyPairResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of key pairs to return. Default: your service quota or 100, whichever is\n      smaller.</p>"}))
    ListPlaybackKeyPairsInput.type = Types::ListPlaybackKeyPairsInput
    ListPlaybackKeyPairsOutput.add_member(:key_pairs, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackKeyPairList, location_name: 'keyPairs', traits: {"smithy.api#documentation" => "<p>List of key pairs.</p>", "smithy.api#required" => {}}))
    ListPlaybackKeyPairsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are more key pairs than <code>maxResults</code>, use <code>nextToken</code> in\n      the request to get the next set.</p>"}))
    ListPlaybackKeyPairsOutput.type = Types::ListPlaybackKeyPairsOutput
    ListPlaybackRestrictionPoliciesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The first policy to retrieve. This is used for pagination; see the <code>nextToken</code>\n      response field.</p>"}))
    ListPlaybackRestrictionPoliciesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPlaybackRestrictionPolicyResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of policies to return. Default: 1.</p>"}))
    ListPlaybackRestrictionPoliciesRequest.type = Types::ListPlaybackRestrictionPoliciesRequest
    ListPlaybackRestrictionPoliciesResponse.add_member(:playback_restriction_policies, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyList, location_name: 'playbackRestrictionPolicies', traits: {"smithy.api#documentation" => "<p>List of the matching policies.</p>", "smithy.api#required" => {}}))
    ListPlaybackRestrictionPoliciesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are more channels than <code>maxResults</code>, use <code>nextToken</code> in the\n      request to get the next set.</p>"}))
    ListPlaybackRestrictionPoliciesResponse.type = Types::ListPlaybackRestrictionPoliciesResponse
    ListRecordingConfigurationsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The first recording configuration to retrieve. This is used for pagination; see the\n        <code>nextToken</code> response field.</p>"}))
    ListRecordingConfigurationsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxRecordingConfigurationResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of recording configurations to return. Default: your service quota or 100,\n      whichever is smaller. </p>"}))
    ListRecordingConfigurationsInput.type = Types::ListRecordingConfigurationsInput
    ListRecordingConfigurationsOutput.add_member(:recording_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingConfigurationList, location_name: 'recordingConfigurations', traits: {"smithy.api#documentation" => "<p>List of the matching recording configurations.</p>", "smithy.api#required" => {}}))
    ListRecordingConfigurationsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are more recording configurations than <code>maxResults</code>, use\n        <code>nextToken</code> in the request to get the next set.</p>"}))
    ListRecordingConfigurationsOutput.type = Types::ListRecordingConfigurationsOutput
    ListStreamKeysInput.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: 'channelArn', traits: {"smithy.api#documentation" => "<p>Channel ARN used to filter the list.</p>", "smithy.api#required" => {}}))
    ListStreamKeysInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The first stream key to retrieve. This is used for pagination; see the\n        <code>nextToken</code> response field.</p>"}))
    ListStreamKeysInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxStreamKeyResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of streamKeys to return. Default: 1.</p>"}))
    ListStreamKeysInput.type = Types::ListStreamKeysInput
    ListStreamKeysOutput.add_member(:stream_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamKeyList, location_name: 'streamKeys', traits: {"smithy.api#documentation" => "<p>List of stream keys.</p>", "smithy.api#required" => {}}))
    ListStreamKeysOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are more stream keys than <code>maxResults</code>, use <code>nextToken</code> in\n      the request to get the next set.</p>"}))
    ListStreamKeysOutput.type = Types::ListStreamKeysOutput
    ListStreamSessionsInput.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: 'channelArn', traits: {"smithy.api#documentation" => "<p>Channel ARN used to filter the list.</p>", "smithy.api#required" => {}}))
    ListStreamSessionsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The first stream to retrieve. This is used for pagination; see the <code>nextToken</code>\n      response field.</p>"}))
    ListStreamSessionsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxStreamResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of streams to return. Default: 100.</p>"}))
    ListStreamSessionsInput.type = Types::ListStreamSessionsInput
    ListStreamSessionsOutput.add_member(:stream_sessions, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamSessionList, location_name: 'streamSessions', traits: {"smithy.api#documentation" => "<p>List of stream sessions.</p>", "smithy.api#required" => {}}))
    ListStreamSessionsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are more streams than <code>maxResults</code>, use <code>nextToken</code> in the\n      request to get the next set.</p>"}))
    ListStreamSessionsOutput.type = Types::ListStreamSessionsOutput
    ListStreamsInput.add_member(:filter_by, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamFilters, location_name: 'filterBy', traits: {"smithy.api#documentation" => "<p>Filters the stream list to match the specified criterion.</p>"}))
    ListStreamsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The first stream to retrieve. This is used for pagination; see the <code>nextToken</code>\n      response field.</p>"}))
    ListStreamsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxStreamResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of streams to return. Default: 100.</p>"}))
    ListStreamsInput.type = Types::ListStreamsInput
    ListStreamsOutput.add_member(:streams, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamList, location_name: 'streams', traits: {"smithy.api#documentation" => "<p>List of streams.</p>", "smithy.api#required" => {}}))
    ListStreamsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are more streams than <code>maxResults</code>, use <code>nextToken</code> in the\n      request to get the next set.</p>"}))
    ListStreamsOutput.type = Types::ListStreamsOutput
    ListTagsForResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource to be retrieved. The ARN must be URL-encoded.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags attached to the resource. Array of maps, each of the form <code>string:string\n        (key:value)</code>.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    MultitrackInputConfiguration.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: IsMultitrackInputEnabled, location_name: 'enabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether multitrack input is enabled. Can be set to <code>true</code> only if channel type is <code>STANDARD</code>. Setting <code>enabled</code> to <code>true</code> with any other channel type will cause an exception. If <code>true</code>, then <code>policy</code>, <code>maximumResolution</code>, and <code>containerFormat</code> are required, and <code>containerFormat</code> must be set to <code>FRAGMENTED_MP4</code>. Default: <code>false</code>.</p>"}))
    MultitrackInputConfiguration.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: MultitrackPolicy, location_name: 'policy', traits: {"smithy.api#documentation" => "<p>Indicates whether multitrack input is allowed or required. Required if <code>enabled</code> is <code>true</code>.</p>"}))
    MultitrackInputConfiguration.add_member(:maximum_resolution, Smithy::Schema::Shapes::ShapeRef.new(shape: MultitrackMaximumResolution, location_name: 'maximumResolution', traits: {"smithy.api#documentation" => "<p>Maximum resolution for multitrack input. Required if <code>enabled</code> is <code>true</code>.</p>"}))
    MultitrackInputConfiguration.type = Types::MultitrackInputConfiguration
    MultitrackMaximumResolution.add_member(:sd, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SD', traits: {"smithy.api#enumValue" => "SD"}))
    MultitrackMaximumResolution.add_member(:hd, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HD', traits: {"smithy.api#enumValue" => "HD"}))
    MultitrackMaximumResolution.add_member(:full_hd, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FULL_HD', traits: {"smithy.api#enumValue" => "FULL_HD"}))
    MultitrackPolicy.add_member(:allow, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALLOW', traits: {"smithy.api#enumValue" => "ALLOW"}))
    MultitrackPolicy.add_member(:require, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REQUIRE', traits: {"smithy.api#enumValue" => "REQUIRE"}))
    PendingVerification.add_member(:exception_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'exceptionMessage', traits: {"smithy.api#documentation" => "<p> Your account is pending verification. </p>"}))
    PendingVerification.type = Types::PendingVerification
    PlaybackKeyPair.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackKeyPairArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Key-pair ARN.</p>"}))
    PlaybackKeyPair.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackKeyPairName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Playback-key-pair name. The value does not need to be unique.</p>"}))
    PlaybackKeyPair.add_member(:fingerprint, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackKeyPairFingerprint, location_name: 'fingerprint', traits: {"smithy.api#documentation" => "<p>Key-pair identifier.</p>"}))
    PlaybackKeyPair.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags attached to the resource. Array of 1-50 maps, each of the form <code>string:string\n        (key:value)</code>. See <a href=\"https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html\">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and \"Tag naming limits and requirements\"; Amazon IVS has no\n      service-specific constraints beyond what is documented there.</p>"}))
    PlaybackKeyPair.type = Types::PlaybackKeyPair
    PlaybackKeyPairList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackKeyPairSummary)
    PlaybackKeyPairSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackKeyPairArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Key-pair ARN.</p>"}))
    PlaybackKeyPairSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackKeyPairName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Playback-key-pair name. The value does not need to be unique.</p>"}))
    PlaybackKeyPairSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags attached to the resource. Array of 1-50 maps, each of the form <code>string:string\n        (key:value)</code>. See <a href=\"https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html\">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and \"Tag naming limits and requirements\"; Amazon IVS has no\n      service-specific constraints beyond what is documented there.</p>"}))
    PlaybackKeyPairSummary.type = Types::PlaybackKeyPairSummary
    PlaybackRestrictionPolicy.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Playback-restriction-policy ARN</p>", "smithy.api#required" => {}}))
    PlaybackRestrictionPolicy.add_member(:allowed_countries, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyAllowedCountryList, location_name: 'allowedCountries', traits: {"smithy.api#documentation" => "<p>A list of country codes that control geoblocking restriction. Allowed values are the\n      officially assigned <a href=\"https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2\">ISO 3166-1\n        alpha-2</a> codes. Default: All countries (an empty array).</p>", "smithy.api#required" => {}}))
    PlaybackRestrictionPolicy.add_member(:allowed_origins, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyAllowedOriginList, location_name: 'allowedOrigins', traits: {"smithy.api#documentation" => "<p>A list of origin sites that control CORS restriction. Allowed values are the same as valid\n      values of the Origin header defined at <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Origin\">https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Origin</a>. Default: All\n      origins (an empty array).</p>", "smithy.api#required" => {}}))
    PlaybackRestrictionPolicy.add_member(:enable_strict_origin_enforcement, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyEnableStrictOriginEnforcement, location_name: 'enableStrictOriginEnforcement', traits: {"smithy.api#documentation" => "<p>Whether channel playback is constrained by origin site. Default:\n      <code>false</code>.</p>"}))
    PlaybackRestrictionPolicy.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Playback-restriction-policy name. The value does not need to be unique.</p>"}))
    PlaybackRestrictionPolicy.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags attached to the resource. Array of 1-50 maps, each of the form <code>string:string\n        (key:value)</code>. See <a href=\"https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html\">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and \"Tag naming limits and requirements\"; Amazon IVS has no\n      service-specific constraints beyond what is documented there.</p>"}))
    PlaybackRestrictionPolicy.type = Types::PlaybackRestrictionPolicy
    PlaybackRestrictionPolicyAllowedCountryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyAllowedCountry)
    PlaybackRestrictionPolicyAllowedOriginList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyAllowedOrigin)
    PlaybackRestrictionPolicyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicySummary)
    PlaybackRestrictionPolicySummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Playback-restriction-policy ARN</p>", "smithy.api#required" => {}}))
    PlaybackRestrictionPolicySummary.add_member(:allowed_countries, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyAllowedCountryList, location_name: 'allowedCountries', traits: {"smithy.api#documentation" => "<p>A list of country codes that control geoblocking restriction. Allowed values are the\n      officially assigned <a href=\"https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2\">ISO 3166-1\n        alpha-2</a> codes. Default: All countries (an empty array).</p>", "smithy.api#required" => {}}))
    PlaybackRestrictionPolicySummary.add_member(:allowed_origins, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyAllowedOriginList, location_name: 'allowedOrigins', traits: {"smithy.api#documentation" => "<p>A list of origin sites that control CORS restriction. Allowed values are the same as valid\n      values of the Origin header defined at <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Origin\">https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Origin</a>. Default: All\n      origins (an empty array).</p>", "smithy.api#required" => {}}))
    PlaybackRestrictionPolicySummary.add_member(:enable_strict_origin_enforcement, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyEnableStrictOriginEnforcement, location_name: 'enableStrictOriginEnforcement', traits: {"smithy.api#documentation" => "<p>Whether channel playback is constrained by origin site. Default:\n      <code>false</code>.</p>"}))
    PlaybackRestrictionPolicySummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Playback-restriction-policy name. The value does not need to be unique.</p>"}))
    PlaybackRestrictionPolicySummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags attached to the resource. Array of 1-50 maps, each of the form <code>string:string\n        (key:value)</code>. See <a href=\"https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html\">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and \"Tag naming limits and requirements\"; Amazon IVS has no\n      service-specific constraints beyond what is documented there.</p>"}))
    PlaybackRestrictionPolicySummary.type = Types::PlaybackRestrictionPolicySummary
    PutMetadataInput.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: 'channelArn', traits: {"smithy.api#documentation" => "<p>ARN of the channel into which metadata is inserted. This channel must have an active\n      stream.</p>", "smithy.api#required" => {}}))
    PutMetadataInput.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamMetadata, location_name: 'metadata', traits: {"smithy.api#documentation" => "<p>Metadata to insert into the stream. Maximum: 1 KB per request.</p>", "smithy.api#required" => {}}))
    PutMetadataInput.type = Types::PutMetadataInput
    RecordingConfiguration.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingConfigurationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Recording-configuration ARN.</p>", "smithy.api#required" => {}}))
    RecordingConfiguration.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingConfigurationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Recording-configuration name. The value does not need to be unique.</p>"}))
    RecordingConfiguration.add_member(:destination_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationConfiguration, location_name: 'destinationConfiguration', traits: {"smithy.api#documentation" => "<p>A complex type that contains information about where recorded video will be stored.</p>", "smithy.api#required" => {}}))
    RecordingConfiguration.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingConfigurationState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>Indicates the current state of the recording configuration. When the state is\n        <code>ACTIVE</code>, the configuration is ready for recording a channel stream.</p>", "smithy.api#required" => {}}))
    RecordingConfiguration.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags attached to the resource. Array of 1-50 maps, each of the form <code>string:string\n        (key:value)</code>. See <a href=\"https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html\">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and \"Tag naming limits and requirements\"; Amazon IVS has no\n      service-specific constraints beyond what is documented there.</p>"}))
    RecordingConfiguration.add_member(:thumbnail_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ThumbnailConfiguration, location_name: 'thumbnailConfiguration', traits: {"smithy.api#documentation" => "<p>A complex type that allows you to enable/disable the recording of thumbnails for a live\n      session and modify the interval at which thumbnails are generated for the live session.</p>"}))
    RecordingConfiguration.add_member(:recording_reconnect_window_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingReconnectWindowSeconds, location_name: 'recordingReconnectWindowSeconds', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>If a broadcast disconnects and then reconnects within the specified interval, the multiple\n      streams will be considered a single broadcast and merged together. Default: 0.</p>"}))
    RecordingConfiguration.add_member(:rendition_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RenditionConfiguration, location_name: 'renditionConfiguration', traits: {"smithy.api#documentation" => "<p>Object that describes which renditions should be recorded for a stream.</p>"}))
    RecordingConfiguration.type = Types::RecordingConfiguration
    RecordingConfigurationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingConfigurationSummary)
    RecordingConfigurationSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingConfigurationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Recording-configuration ARN.</p>", "smithy.api#required" => {}}))
    RecordingConfigurationSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingConfigurationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Recording-configuration name. The value does not need to be unique.</p>"}))
    RecordingConfigurationSummary.add_member(:destination_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationConfiguration, location_name: 'destinationConfiguration', traits: {"smithy.api#documentation" => "<p>A complex type that contains information about where recorded video will be stored.</p>", "smithy.api#required" => {}}))
    RecordingConfigurationSummary.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingConfigurationState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>Indicates the current state of the recording configuration. When the state is\n        <code>ACTIVE</code>, the configuration is ready for recording a channel stream.</p>", "smithy.api#required" => {}}))
    RecordingConfigurationSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags attached to the resource. Array of 1-50 maps, each of the form <code>string:string\n        (key:value)</code>. See <a href=\"https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html\">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and \"Tag naming limits and requirements\"; Amazon IVS has no\n      service-specific constraints beyond what is documented there.</p>"}))
    RecordingConfigurationSummary.type = Types::RecordingConfigurationSummary
    RenditionConfiguration.add_member(:rendition_selection, Smithy::Schema::Shapes::ShapeRef.new(shape: RenditionConfigurationRenditionSelection, location_name: 'renditionSelection', traits: {"smithy.api#documentation" => "<p>Indicates which set of renditions are recorded for a stream. For <code>BASIC</code>\n      channels, the <code>CUSTOM</code> value has no effect. If <code>CUSTOM</code> is specified, a\n      set of renditions must be specified in the <code>renditions</code> field. Default:\n        <code>ALL</code>.</p>"}))
    RenditionConfiguration.add_member(:renditions, Smithy::Schema::Shapes::ShapeRef.new(shape: RenditionConfigurationRenditionList, location_name: 'renditions', traits: {"smithy.api#documentation" => "<p>Indicates which renditions are recorded for a stream, if <code>renditionSelection</code>\n      is <code>CUSTOM</code>; otherwise, this field is irrelevant. The selected renditions are\n      recorded if they are available during the stream. If a selected rendition is unavailable, the\n      best available rendition is recorded. For details on the resolution dimensions of each\n      rendition, see <a href=\"https://docs.aws.amazon.com/ivs/latest/userguide/record-to-s3.html\">Auto-Record to Amazon S3</a>.</p>"}))
    RenditionConfiguration.type = Types::RenditionConfiguration
    RenditionConfigurationRendition.add_member(:sd, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SD', traits: {"smithy.api#enumValue" => "SD"}))
    RenditionConfigurationRendition.add_member(:hd, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HD', traits: {"smithy.api#enumValue" => "HD"}))
    RenditionConfigurationRendition.add_member(:full_hd, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FULL_HD', traits: {"smithy.api#enumValue" => "FULL_HD"}))
    RenditionConfigurationRendition.add_member(:lowest_resolution, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOWEST_RESOLUTION', traits: {"smithy.api#enumValue" => "LOWEST_RESOLUTION"}))
    RenditionConfigurationRenditionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RenditionConfigurationRendition)
    ResourceNotFoundException.add_member(:exception_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'exceptionMessage', traits: {"smithy.api#documentation" => "<p>Request references a resource which does not exist.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3DestinationConfiguration.add_member(:bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: S3DestinationBucketName, location_name: 'bucketName', traits: {"smithy.api#documentation" => "<p>Location (S3 bucket name) where recorded videos will be stored.</p>", "smithy.api#required" => {}}))
    S3DestinationConfiguration.type = Types::S3DestinationConfiguration
    ServiceQuotaExceededException.add_member(:exception_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'exceptionMessage', traits: {"smithy.api#documentation" => "<p>Request would cause a service quota to be exceeded.</p>"}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Srt.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: SrtEndpoint, location_name: 'endpoint', traits: {"smithy.api#documentation" => "<p>The endpoint to be used when streaming with IVS using the SRT protocol.</p>"}))
    Srt.add_member(:passphrase, Smithy::Schema::Shapes::ShapeRef.new(shape: SrtPassphrase, location_name: 'passphrase', traits: {"smithy.api#documentation" => "<p>Auto-generated passphrase to enable encryption. This field is applicable only if the end\n      user has <i>not</i> enabled the <code>insecureIngest</code> option for the\n      channel.</p>"}))
    Srt.type = Types::Srt
    StartViewerSessionRevocationInput.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: 'channelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel associated with the viewer session to revoke.</p>", "smithy.api#required" => {}}))
    StartViewerSessionRevocationInput.add_member(:viewer_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ViewerId, location_name: 'viewerId', traits: {"smithy.api#documentation" => "<p>The ID of the viewer associated with the viewer session to revoke. Do not use this field\n      for personally identifying, confidential, or sensitive information.</p>", "smithy.api#required" => {}}))
    StartViewerSessionRevocationInput.add_member(:viewer_session_versions_less_than_or_equal_to, Smithy::Schema::Shapes::ShapeRef.new(shape: ViewerSessionVersion, location_name: 'viewerSessionVersionsLessThanOrEqualTo', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>An optional filter on which versions of the viewer session to revoke. All versions less\n      than or equal to the specified version will be revoked. Default: 0.</p>"}))
    StartViewerSessionRevocationInput.type = Types::StartViewerSessionRevocationInput
    StartViewerSessionRevocationOutput.type = Types::StartViewerSessionRevocationOutput
    StopStreamInput.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: 'channelArn', traits: {"smithy.api#documentation" => "<p>ARN of the channel for which the stream is to be stopped.</p>", "smithy.api#required" => {}}))
    StopStreamInput.type = Types::StopStreamInput
    StopStreamOutput.type = Types::StopStreamOutput
    Stream.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: 'channelArn', traits: {"smithy.api#documentation" => "<p>Channel ARN for the stream.</p>"}))
    Stream.add_member(:stream_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamId, location_name: 'streamId', traits: {"smithy.api#documentation" => "<p>Unique identifier for a live or previously live stream in the specified channel.</p>"}))
    Stream.add_member(:playback_url, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackURL, location_name: 'playbackUrl', traits: {"smithy.api#documentation" => "<p>URL of the master playlist, required by the video player to play the HLS stream.</p>"}))
    Stream.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamStartTime, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>Time of the stream’s start. This is an ISO 8601 timestamp; <i>note that this is\n        returned as a string</i>.</p>"}))
    Stream.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The stream’s state. Do not rely on the <code>OFFLINE</code> state, as the API may not\n      return it; instead, a \"NotBroadcasting\" error will indicate that the stream is not\n      live.</p>"}))
    Stream.add_member(:health, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamHealth, location_name: 'health', traits: {"smithy.api#documentation" => "<p>The stream’s health.</p>"}))
    Stream.add_member(:viewer_count, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamViewerCount, location_name: 'viewerCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>A count of concurrent views of the stream. Typically, a new view appears in\n        <code>viewerCount</code> within 15 seconds of when video playback starts and a view is\n      removed from <code>viewerCount</code> within 1 minute of when video playback ends. A value of\n      -1 indicates that the request timed out; in this case, retry.</p>"}))
    Stream.type = Types::Stream
    StreamEvent.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Name that identifies the stream event within a <code>type</code>.</p>"}))
    StreamEvent.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Logical group for certain events.</p>"}))
    StreamEvent.add_member(:event_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'eventTime', traits: {"smithy.api#documentation" => "<p>Time when the event occurred. This is an ISO 8601 timestamp; <i>note that this is\n        returned as a string</i>.</p>"}))
    StreamEvent.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'code', traits: {"smithy.api#documentation" => "<p>Provides additional details about the stream event. There are several values; the long descriptions are provided in the IVS console but not delivered through the IVS API or EventBridge. Multitrack-related codes are used only for certain Session Ended events.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>MultitrackInputNotAllowed</code> — The broadcast client attempted to connect with multitrack input, but multitrack input was not enabled on the channel. Check your broadcast software settings or set <code>MultitrackInputConfiguration.Policy</code> to <code>ALLOW</code> or <code>REQUIRE</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>MultitrackInputRequired</code> — The broadcast client attempted to connect with single-track video, but multitrack input is required on this channel. Enable multitrack video in your broadcast software or configure the channel’s <code>MultitrackInputConfiguration.Policy</code> to <code>ALLOW</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>InvalidGetClientConfigurationStreamKey</code> — The broadcast client attempted to connect with an invalid, expired, or corrupt stream key.</p>\n            </li>\n            <li>\n               <p>\n                  <code>GetClientConfigurationStreamKeyRequired</code> — The broadcast client attempted to stream multitrack video without providing an authenticated stream key from GetClientConfiguration.</p>\n            </li>\n            <li>\n               <p>\n                  <code>InvalidMultitrackInputTrackCount</code> — The multitrack input stream contained an invalid number of tracks.</p>\n            </li>\n            <li>\n               <p>\n                  <code>InvalidMultitrackInputVideoTrackMediaProperties</code> — The multitrack input stream contained one or more tracks with an invalid codec, resolution, bitrate, or framerate.</p>\n            </li>\n            <li>\n               <p>\n                  <code>StreamTakeoverMediaMismatch</code> — The broadcast client attempted to take over with different media properties (e.g., codec, resolution, or video track type) from the original stream.</p>\n            </li>\n            <li>\n               <p>\n                  <code>StreamTakeoverInvalidPriority</code> — The broadcast client attempted a takeover with either a priority integer value equal to or lower than the original stream's value or a value outside the allowed range of 1 to 2,147,483,647.</p>\n               <p>\n                  <code>StreamTakeoverLimitBreached</code> — The broadcast client reached the maximum allowed takeover attempts for this stream.</p>\n            </li>\n         </ul>"}))
    StreamEvent.type = Types::StreamEvent
    StreamEvents.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StreamEvent)
    StreamFilters.add_member(:health, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamHealth, location_name: 'health', traits: {"smithy.api#documentation" => "<p>The stream’s health.</p>"}))
    StreamFilters.type = Types::StreamFilters
    StreamKey.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamKeyArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Stream-key ARN.</p>"}))
    StreamKey.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamKeyValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>Stream-key value.</p>"}))
    StreamKey.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: 'channelArn', traits: {"smithy.api#documentation" => "<p>Channel ARN for the stream.</p>"}))
    StreamKey.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags attached to the resource. Array of 1-50 maps, each of the form <code>string:string\n        (key:value)</code>. See <a href=\"https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html\">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and \"Tag naming limits and requirements\"; Amazon IVS has no\n      service-specific constraints beyond what is documented there.</p>"}))
    StreamKey.type = Types::StreamKey
    StreamKeyArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StreamKeyArn)
    StreamKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StreamKeySummary)
    StreamKeySummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamKeyArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Stream-key ARN.</p>"}))
    StreamKeySummary.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: 'channelArn', traits: {"smithy.api#documentation" => "<p>Channel ARN for the stream.</p>"}))
    StreamKeySummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags attached to the resource. Array of 1-50 maps, each of the form <code>string:string\n        (key:value)</code>. See <a href=\"https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html\">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and \"Tag naming limits and requirements\"; Amazon IVS has no\n      service-specific constraints beyond what is documented there.</p>"}))
    StreamKeySummary.type = Types::StreamKeySummary
    StreamKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StreamKey)
    StreamList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StreamSummary)
    StreamSession.add_member(:stream_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamId, location_name: 'streamId', traits: {"smithy.api#documentation" => "<p>Unique identifier for a live or previously live stream in the specified channel.</p>"}))
    StreamSession.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>Time when the channel went live. This is an ISO 8601 timestamp; <i>note that this\n        is returned as a string</i>.</p>"}))
    StreamSession.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>Time when the channel went offline. This is an ISO 8601 timestamp; <i>note that\n        this is returned as a string</i>. For live streams, this is <code>NULL</code>.</p>"}))
    StreamSession.add_member(:channel, Smithy::Schema::Shapes::ShapeRef.new(shape: Channel, location_name: 'channel', traits: {"smithy.api#documentation" => "<p>The properties of the channel at the time of going live.</p>"}))
    StreamSession.add_member(:ingest_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestConfiguration, location_name: 'ingestConfiguration', traits: {"smithy.api#documentation" => "<p>The properties of the incoming RTMP stream.</p>\n         <p>\n            <b>Note:</b>\n            <code>ingestConfiguration</code> is deprecated in favor of <code>ingestConfigurations</code> but retained to ensure backward compatibility. If multitrack is not enabled, <code>ingestConfiguration</code> and <code>ingestConfigurations</code> contain the same data, namely information about track0 (the sole track). If multitrack is enabled, <code>ingestConfiguration</code> contains data for only the first track (track0) and <code>ingestConfigurations</code> contains data for all tracks.</p>"}))
    StreamSession.add_member(:ingest_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestConfigurations, location_name: 'ingestConfigurations', traits: {"smithy.api#documentation" => "<p>The properties of the incoming RTMP stream. If multitrack is enabled, <code>ingestConfigurations</code> contains data for all tracks; otherwise, it contains data only for track0 (the sole track).</p>"}))
    StreamSession.add_member(:recording_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingConfiguration, location_name: 'recordingConfiguration', traits: {"smithy.api#documentation" => "<p>The properties of recording the live stream.</p>"}))
    StreamSession.add_member(:truncated_events, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamEvents, location_name: 'truncatedEvents', traits: {"smithy.api#documentation" => "<p>List of Amazon IVS events that the stream encountered. The list is sorted by most recent\n      events and contains up to 500 events. For Amazon IVS events, see <a href=\"https://docs.aws.amazon.com/ivs/latest/userguide/eventbridge.html\">Using Amazon EventBridge with Amazon\n      IVS</a>.</p>"}))
    StreamSession.type = Types::StreamSession
    StreamSessionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StreamSessionSummary)
    StreamSessionSummary.add_member(:stream_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamId, location_name: 'streamId', traits: {"smithy.api#documentation" => "<p>Unique identifier for a live or previously live stream in the specified channel.</p>"}))
    StreamSessionSummary.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>Time when the channel went live. This is an ISO 8601 timestamp; <i>note that this\n        is returned as a string</i>.</p>"}))
    StreamSessionSummary.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>Time when the channel went offline. This is an ISO 8601 timestamp; <i>note that\n        this is returned as a string</i>. For live streams, this is <code>NULL</code>.</p>"}))
    StreamSessionSummary.add_member(:has_error_event, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'hasErrorEvent', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If <code>true</code>, this stream encountered a quota breach or failure.</p>"}))
    StreamSessionSummary.type = Types::StreamSessionSummary
    StreamSummary.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: 'channelArn', traits: {"smithy.api#documentation" => "<p>Channel ARN for the stream.</p>"}))
    StreamSummary.add_member(:stream_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamId, location_name: 'streamId', traits: {"smithy.api#documentation" => "<p>Unique identifier for a live or previously live stream in the specified channel.</p>"}))
    StreamSummary.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The stream’s state. Do not rely on the <code>OFFLINE</code> state, as the API may not\n      return it; instead, a \"NotBroadcasting\" error will indicate that the stream is not\n      live.</p>"}))
    StreamSummary.add_member(:health, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamHealth, location_name: 'health', traits: {"smithy.api#documentation" => "<p>The stream’s health.</p>"}))
    StreamSummary.add_member(:viewer_count, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamViewerCount, location_name: 'viewerCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>A count of concurrent views of the stream. Typically, a new view appears in\n        <code>viewerCount</code> within 15 seconds of when video playback starts and a view is\n      removed from <code>viewerCount</code> within 1 minute of when video playback ends. A value of\n      -1 indicates that the request timed out; in this case, retry.</p>"}))
    StreamSummary.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamStartTime, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>Time of the stream’s start. This is an ISO 8601 timestamp; <i>note that this is\n        returned as a string</i>. </p>"}))
    StreamSummary.type = Types::StreamSummary
    StreamUnavailable.add_member(:exception_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'exceptionMessage', traits: {"smithy.api#documentation" => "<p>The stream is temporarily unavailable.</p>"}))
    StreamUnavailable.type = Types::StreamUnavailable
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>ARN of the resource for which tags are to be added or updated. The ARN must be\n      URL-encoded.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Array of tags to be added or updated. Array of maps, each of the form <code>string:string\n        (key:value)</code>. See <a href=\"https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html\">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and \"Tag naming limits and requirements\"; Amazon IVS has no\n      service-specific constraints beyond what is documented there.</p>", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    Tags.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    ThrottlingException.add_member(:exception_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'exceptionMessage', traits: {"smithy.api#documentation" => "<p>Request was denied due to request throttling.</p>"}))
    ThrottlingException.type = Types::ThrottlingException
    ThumbnailConfiguration.add_member(:recording_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingMode, location_name: 'recordingMode', traits: {"smithy.api#documentation" => "<p>Thumbnail recording mode. Default: <code>INTERVAL</code>.</p>"}))
    ThumbnailConfiguration.add_member(:target_interval_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetIntervalSeconds, location_name: 'targetIntervalSeconds', traits: {"smithy.api#documentation" => "<p>The targeted thumbnail-generation interval in seconds. This is configurable (and required)\n      only if <code>recordingMode</code> is <code>INTERVAL</code>. Default: 60.</p>\n         <p>\n            <b>Important:</b> For the <code>BASIC</code> channel type,\n      or the <code>STANDARD</code> channel type with multitrack input,\n      setting a value for <code>targetIntervalSeconds</code> does not guarantee that thumbnails are\n      generated at the specified interval. For thumbnails to be generated at the\n        <code>targetIntervalSeconds</code> interval, the <code>IDR/Keyframe</code> value for the\n      input video must be less than the <code>targetIntervalSeconds</code> value. See <a href=\"https://docs.aws.amazon.com/ivs/latest/userguide/streaming-config.html\"> Amazon IVS Streaming\n        Configuration</a> for information on setting <code>IDR/Keyframe</code> to the\n      recommended value in video-encoder settings.</p>"}))
    ThumbnailConfiguration.add_member(:resolution, Smithy::Schema::Shapes::ShapeRef.new(shape: ThumbnailConfigurationResolution, location_name: 'resolution', traits: {"smithy.api#documentation" => "<p>Indicates the desired resolution of recorded thumbnails. Thumbnails are recorded at the\n      selected resolution if the corresponding rendition is available during the stream; otherwise,\n      they are recorded at source resolution. For more information about resolution values and their\n      corresponding height and width dimensions, see <a href=\"https://docs.aws.amazon.com/ivs/latest/userguide/record-to-s3.html\">Auto-Record to Amazon S3</a>. Default:\n      Null (source resolution is returned).</p>"}))
    ThumbnailConfiguration.add_member(:storage, Smithy::Schema::Shapes::ShapeRef.new(shape: ThumbnailConfigurationStorageList, location_name: 'storage', traits: {"smithy.api#documentation" => "<p>Indicates the format in which thumbnails are recorded. <code>SEQUENTIAL</code> records all\n      generated thumbnails in a serial manner, to the media/thumbnails directory.\n        <code>LATEST</code> saves the latest thumbnail in media/latest_thumbnail/thumb.jpg and\n      overwrites it at the interval specified by <code>targetIntervalSeconds</code>. You can enable\n      both <code>SEQUENTIAL</code> and <code>LATEST</code>. Default: <code>SEQUENTIAL</code>.</p>"}))
    ThumbnailConfiguration.type = Types::ThumbnailConfiguration
    ThumbnailConfigurationResolution.add_member(:sd, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SD', traits: {"smithy.api#enumValue" => "SD"}))
    ThumbnailConfigurationResolution.add_member(:hd, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HD', traits: {"smithy.api#enumValue" => "HD"}))
    ThumbnailConfigurationResolution.add_member(:full_hd, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FULL_HD', traits: {"smithy.api#enumValue" => "FULL_HD"}))
    ThumbnailConfigurationResolution.add_member(:lowest_resolution, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOWEST_RESOLUTION', traits: {"smithy.api#enumValue" => "LOWEST_RESOLUTION"}))
    ThumbnailConfigurationStorageList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ThumbnailConfigurationStorage)
    TranscodePreset.add_member(:higher_bandwidth_transcode_preset, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HigherBandwidthTranscodePreset', traits: {"smithy.api#enumValue" => "HIGHER_BANDWIDTH_DELIVERY"}))
    TranscodePreset.add_member(:constrained_bandwidth_transcode_preset, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ConstrainedBandwidthTranscodePreset', traits: {"smithy.api#enumValue" => "CONSTRAINED_BANDWIDTH_DELIVERY"}))
    UntagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>ARN of the resource for which tags are to be removed. The ARN must be URL-encoded.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>Array of tags to be removed. Array of maps, each of the form <code>string:string\n        (key:value)</code>. See <a href=\"https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html\">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and \"Tag naming limits and requirements\"; Amazon IVS has no\n      service-specific constraints beyond what is documented there.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateChannelInput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>ARN of the channel to be updated.</p>", "smithy.api#required" => {}}))
    UpdateChannelInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Channel name.</p>"}))
    UpdateChannelInput.add_member(:latency_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelLatencyMode, location_name: 'latencyMode', traits: {"smithy.api#documentation" => "<p>Channel latency mode. Use <code>NORMAL</code> to broadcast and deliver live video up to\n      Full HD. Use <code>LOW</code> for near-real-time interaction with viewers.</p>"}))
    UpdateChannelInput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Channel type, which determines the allowable resolution and bitrate. <i>If you\n        exceed the allowable input resolution or bitrate, the stream probably will disconnect\n        immediately.</i> Default: <code>STANDARD</code>. For details, see <a href=\"https://docs.aws.amazon.com/ivs/latest/LowLatencyAPIReference/channel-types.html\">Channel\n        Types</a>.</p>"}))
    UpdateChannelInput.add_member(:authorized, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'authorized', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether the channel is private (enabled for playback authorization).</p>"}))
    UpdateChannelInput.add_member(:recording_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelRecordingConfigurationArn, location_name: 'recordingConfigurationArn', traits: {"smithy.api#documentation" => "<p>Recording-configuration ARN. A valid ARN value here both specifies the ARN and enables recording.\n    If this is set to an empty string, recording is disabled.</p>"}))
    UpdateChannelInput.add_member(:insecure_ingest, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'insecureIngest', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether the channel allows insecure RTMP and SRT ingest. Default: <code>false</code>.</p>"}))
    UpdateChannelInput.add_member(:preset, Smithy::Schema::Shapes::ShapeRef.new(shape: TranscodePreset, location_name: 'preset', traits: {"smithy.api#documentation" => "<p>Optional transcode preset for the channel. This is selectable only for\n        <code>ADVANCED_HD</code> and <code>ADVANCED_SD</code> channel types. For those channel\n      types, the default <code>preset</code> is <code>HIGHER_BANDWIDTH_DELIVERY</code>. For other\n      channel types (<code>BASIC</code> and <code>STANDARD</code>), <code>preset</code> is the empty\n      string (<code>\"\"</code>).</p>"}))
    UpdateChannelInput.add_member(:playback_restriction_policy_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelPlaybackRestrictionPolicyArn, location_name: 'playbackRestrictionPolicyArn', traits: {"smithy.api#documentation" => "<p>Playback-restriction-policy ARN. A valid ARN value here both specifies the ARN and enables playback restriction.\n     If this is set to an empty string, playback restriction policy is disabled.</p>"}))
    UpdateChannelInput.add_member(:multitrack_input_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MultitrackInputConfiguration, location_name: 'multitrackInputConfiguration', traits: {"smithy.api#documentation" => "<p>Object specifying multitrack input configuration. Default: no multitrack input configuration is specified.</p>"}))
    UpdateChannelInput.add_member(:container_format, Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerFormat, location_name: 'containerFormat', traits: {"smithy.api#documentation" => "<p>Indicates which content-packaging format is used (MPEG-TS or fMP4). If <code>multitrackInputConfiguration</code> is specified and <code>enabled</code> is <code>true</code>, then <code>containerFormat</code> is required and must be set to <code>FRAGMENTED_MP4</code>. Otherwise, <code>containerFormat</code> may be set to <code>TS</code> or <code>FRAGMENTED_MP4</code>. Default: <code>TS</code>.</p>"}))
    UpdateChannelInput.type = Types::UpdateChannelInput
    UpdateChannelOutput.add_member(:channel, Smithy::Schema::Shapes::ShapeRef.new(shape: Channel, location_name: 'channel', traits: {"smithy.api#documentation" => "<p>Object specifying the updated channel.</p>"}))
    UpdateChannelOutput.type = Types::UpdateChannelOutput
    UpdatePlaybackRestrictionPolicyRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>ARN of the playback-restriction-policy to be updated.</p>", "smithy.api#required" => {}}))
    UpdatePlaybackRestrictionPolicyRequest.add_member(:allowed_countries, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyAllowedCountryList, location_name: 'allowedCountries', traits: {"smithy.api#documentation" => "<p>A list of country codes that control geoblocking restriction. Allowed values are the\n      officially assigned <a href=\"https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2\">ISO 3166-1\n        alpha-2</a> codes. Default: All countries (an empty array).</p>"}))
    UpdatePlaybackRestrictionPolicyRequest.add_member(:allowed_origins, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyAllowedOriginList, location_name: 'allowedOrigins', traits: {"smithy.api#documentation" => "<p>A list of origin sites that control CORS restriction. Allowed values are the same as valid\n      values of the Origin header defined at <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Origin\">https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Origin</a>. Default: All\n      origins (an empty array).</p>"}))
    UpdatePlaybackRestrictionPolicyRequest.add_member(:enable_strict_origin_enforcement, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyEnableStrictOriginEnforcement, location_name: 'enableStrictOriginEnforcement', traits: {"smithy.api#documentation" => "<p>Whether channel playback is constrained by origin site. Default:\n      <code>false</code>.</p>"}))
    UpdatePlaybackRestrictionPolicyRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Playback-restriction-policy name. The value does not need to be unique.</p>"}))
    UpdatePlaybackRestrictionPolicyRequest.type = Types::UpdatePlaybackRestrictionPolicyRequest
    UpdatePlaybackRestrictionPolicyResponse.add_member(:playback_restriction_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicy, location_name: 'playbackRestrictionPolicy', traits: {"smithy.api#documentation" => "<p>Object specifying the updated policy.</p>"}))
    UpdatePlaybackRestrictionPolicyResponse.type = Types::UpdatePlaybackRestrictionPolicyResponse
    ValidationException.add_member(:exception_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'exceptionMessage', traits: {"smithy.api#documentation" => "<p>The input fails to satisfy the constraints specified by an Amazon Web Services service.</p>"}))
    ValidationException.type = Types::ValidationException
    VideoConfiguration.add_member(:avc_profile, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'avcProfile', traits: {"smithy.api#documentation" => "<p>Indicates to the decoder the requirements for decoding the stream. For definitions of the\n      valid values, see the H.264 specification.</p>"}))
    VideoConfiguration.add_member(:avc_level, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'avcLevel', traits: {"smithy.api#documentation" => "<p>Indicates the degree of required decoder performance for a profile. Normally this is set\n      automatically by the encoder. For details, see the H.264 specification.</p>"}))
    VideoConfiguration.add_member(:codec, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'codec', traits: {"smithy.api#documentation" => "<p>Codec used for the video encoding.</p>"}))
    VideoConfiguration.add_member(:encoder, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'encoder', traits: {"smithy.api#documentation" => "<p>Software or hardware used to encode the video.</p>"}))
    VideoConfiguration.add_member(:target_bitrate, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'targetBitrate', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The expected ingest bitrate (bits per second). This is configured in the encoder.</p>"}))
    VideoConfiguration.add_member(:target_framerate, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'targetFramerate', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The expected ingest framerate. This is configured in the encoder.</p>"}))
    VideoConfiguration.add_member(:video_height, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'videoHeight', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Video-resolution height in pixels.</p>"}))
    VideoConfiguration.add_member(:video_width, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'videoWidth', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Video-resolution width in pixels.</p>"}))
    VideoConfiguration.add_member(:level, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'level', traits: {"smithy.api#documentation" => "<p>Indicates the degree of required decoder performance for a profile. Normally this is set automatically by the encoder. When an AVC codec is used, this field has the same value as <code>avcLevel</code>.</p>"}))
    VideoConfiguration.add_member(:track, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'track', traits: {"smithy.api#documentation" => "<p>Name of the video track. If multitrack is not enabled, this is track0 (the sole track).</p>"}))
    VideoConfiguration.add_member(:profile, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'profile', traits: {"smithy.api#documentation" => "<p>Indicates to the decoder the requirements for decoding the stream. When an AVC codec is used, this field has the same value as <code>avcProfile</code>.</p>"}))
    VideoConfiguration.type = Types::VideoConfiguration
    VideoConfigurationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VideoConfiguration)

    AmazonInteractiveVideoService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.ivs#AmazonInteractiveVideoService"
      service.name = "AmazonInteractiveVideoService"
      service.version = "2020-07-14"
      service.traits = {"aws.api#service" => {"sdkId" => "ivs", "arnNamespace" => "ivs", "cloudFormationName" => "IVS", "cloudTrailEventSource" => "ivs.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "ivs"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["Content-Type", "X-Api-Key", "X-Amz-Content-Sha256", "X-Amz-User-Agent", "amz-sdk-invocation-id", "amz-sdk-request"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-errormessage", "x-amzn-trace-id", "x-amzn-requestid", "x-amz-apigw-id", "date"]}, "smithy.api#title" => "Amazon Interactive Video Service"}
      service.add_operation(:batch_get_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#BatchGetChannel"
        operation.name = "BatchGetChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetChannelInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetChannelOutput)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BatchGetChannel"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:batch_get_stream_key, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#BatchGetStreamKey"
        operation.name = "BatchGetStreamKey"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetStreamKeyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetStreamKeyOutput)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BatchGetStreamKey"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:batch_start_viewer_session_revocation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#BatchStartViewerSessionRevocation"
        operation.name = "BatchStartViewerSessionRevocation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchStartViewerSessionRevocationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchStartViewerSessionRevocationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BatchStartViewerSessionRevocation"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:create_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#CreateChannel"
        operation.name = "CreateChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateChannelInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateChannelOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateChannel"}}
      end)
      service.add_operation(:create_playback_restriction_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#CreatePlaybackRestrictionPolicy"
        operation.name = "CreatePlaybackRestrictionPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePlaybackRestrictionPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePlaybackRestrictionPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreatePlaybackRestrictionPolicy"}}
      end)
      service.add_operation(:create_recording_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#CreateRecordingConfiguration"
        operation.name = "CreateRecordingConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRecordingConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRecordingConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateRecordingConfiguration"}}
      end)
      service.add_operation(:create_stream_key, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#CreateStreamKey"
        operation.name = "CreateStreamKey"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStreamKeyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStreamKeyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateStreamKey"}}
      end)
      service.add_operation(:delete_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#DeleteChannel"
        operation.name = "DeleteChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteChannelInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteChannel", "code" => 204}}
      end)
      service.add_operation(:delete_playback_key_pair, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#DeletePlaybackKeyPair"
        operation.name = "DeletePlaybackKeyPair"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePlaybackKeyPairInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePlaybackKeyPairOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeletePlaybackKeyPair"}}
      end)
      service.add_operation(:delete_playback_restriction_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#DeletePlaybackRestrictionPolicy"
        operation.name = "DeletePlaybackRestrictionPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePlaybackRestrictionPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeletePlaybackRestrictionPolicy", "code" => 204}}
      end)
      service.add_operation(:delete_recording_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#DeleteRecordingConfiguration"
        operation.name = "DeleteRecordingConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRecordingConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteRecordingConfiguration", "code" => 204}}
      end)
      service.add_operation(:delete_stream_key, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#DeleteStreamKey"
        operation.name = "DeleteStreamKey"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteStreamKeyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteStreamKey", "code" => 204}}
      end)
      service.add_operation(:get_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#GetChannel"
        operation.name = "GetChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetChannelInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetChannelOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetChannel"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_playback_key_pair, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#GetPlaybackKeyPair"
        operation.name = "GetPlaybackKeyPair"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPlaybackKeyPairInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPlaybackKeyPairOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetPlaybackKeyPair"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_playback_restriction_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#GetPlaybackRestrictionPolicy"
        operation.name = "GetPlaybackRestrictionPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPlaybackRestrictionPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPlaybackRestrictionPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetPlaybackRestrictionPolicy"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_recording_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#GetRecordingConfiguration"
        operation.name = "GetRecordingConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRecordingConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRecordingConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetRecordingConfiguration"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_stream, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#GetStream"
        operation.name = "GetStream"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetStreamInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetStreamOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelNotBroadcasting)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetStream"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_stream_key, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#GetStreamKey"
        operation.name = "GetStreamKey"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetStreamKeyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetStreamKeyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetStreamKey"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_stream_session, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#GetStreamSession"
        operation.name = "GetStreamSession"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetStreamSessionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetStreamSessionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetStreamSession"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:import_playback_key_pair, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#ImportPlaybackKeyPair"
        operation.name = "ImportPlaybackKeyPair"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportPlaybackKeyPairInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportPlaybackKeyPairOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ImportPlaybackKeyPair"}}
      end)
      service.add_operation(:list_channels, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#ListChannels"
        operation.name = "ListChannels"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListChannelsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListChannelsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListChannels"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListChannels.new
      end)
      service.add_operation(:list_playback_key_pairs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#ListPlaybackKeyPairs"
        operation.name = "ListPlaybackKeyPairs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPlaybackKeyPairsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPlaybackKeyPairsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListPlaybackKeyPairs"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPlaybackKeyPairs.new
      end)
      service.add_operation(:list_playback_restriction_policies, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#ListPlaybackRestrictionPolicies"
        operation.name = "ListPlaybackRestrictionPolicies"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPlaybackRestrictionPoliciesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPlaybackRestrictionPoliciesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListPlaybackRestrictionPolicies"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPlaybackRestrictionPolicies.new
      end)
      service.add_operation(:list_recording_configurations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#ListRecordingConfigurations"
        operation.name = "ListRecordingConfigurations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRecordingConfigurationsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRecordingConfigurationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListRecordingConfigurations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRecordingConfigurations.new
      end)
      service.add_operation(:list_stream_keys, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#ListStreamKeys"
        operation.name = "ListStreamKeys"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStreamKeysInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStreamKeysOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListStreamKeys"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListStreamKeys.new
      end)
      service.add_operation(:list_stream_sessions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#ListStreamSessions"
        operation.name = "ListStreamSessions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStreamSessionsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStreamSessionsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListStreamSessions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListStreamSessions.new
      end)
      service.add_operation(:list_streams, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#ListStreams"
        operation.name = "ListStreams"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStreamsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStreamsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListStreams"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListStreams.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:put_metadata, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#PutMetadata"
        operation.name = "PutMetadata"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutMetadataInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelNotBroadcasting)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/PutMetadata", "code" => 204}}
      end)
      service.add_operation(:start_viewer_session_revocation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#StartViewerSessionRevocation"
        operation.name = "StartViewerSessionRevocation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartViewerSessionRevocationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartViewerSessionRevocationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/StartViewerSessionRevocation"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:stop_stream, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#StopStream"
        operation.name = "StopStream"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopStreamInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopStreamOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelNotBroadcasting)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: StreamUnavailable)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/StopStream"}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}"}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#UpdateChannel"
        operation.name = "UpdateChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateChannelInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateChannelOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateChannel"}}
      end)
      service.add_operation(:update_playback_restriction_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#UpdatePlaybackRestrictionPolicy"
        operation.name = "UpdatePlaybackRestrictionPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePlaybackRestrictionPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePlaybackRestrictionPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdatePlaybackRestrictionPolicy"}}
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
