# frozen_string_literal: true

# This is generated code!

module Aws::Ivs
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AudioConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#AudioConfiguration", name: "AudioConfiguration")
    AudioConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivs#AudioConfigurationList", name: "AudioConfigurationList")
    BatchError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#BatchError", name: "BatchError")
    BatchErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivs#BatchErrors", name: "BatchErrors")
    BatchGetChannelInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#BatchGetChannelInput", name: "BatchGetChannelInput")
    BatchGetChannelOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#BatchGetChannelOutput", name: "BatchGetChannelOutput")
    BatchGetStreamKeyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#BatchGetStreamKeyInput", name: "BatchGetStreamKeyInput")
    BatchGetStreamKeyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#BatchGetStreamKeyOutput", name: "BatchGetStreamKeyOutput")
    BatchStartViewerSessionRevocationError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#BatchStartViewerSessionRevocationError", name: "BatchStartViewerSessionRevocationError")
    BatchStartViewerSessionRevocationErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivs#BatchStartViewerSessionRevocationErrors", name: "BatchStartViewerSessionRevocationErrors")
    BatchStartViewerSessionRevocationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#BatchStartViewerSessionRevocationInput", name: "BatchStartViewerSessionRevocationInput")
    BatchStartViewerSessionRevocationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#BatchStartViewerSessionRevocationOutput", name: "BatchStartViewerSessionRevocationOutput")
    BatchStartViewerSessionRevocationViewerSession = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#BatchStartViewerSessionRevocationViewerSession", name: "BatchStartViewerSessionRevocationViewerSession")
    BatchStartViewerSessionRevocationViewerSessionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivs#BatchStartViewerSessionRevocationViewerSessionList", name: "BatchStartViewerSessionRevocationViewerSessionList", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.ivs#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    Channel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#Channel", name: "Channel")
    ChannelArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivs#ChannelArn", name: "ChannelArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:aws:ivs:[a-z0-9-]+:[0-9]+:channel/[a-zA-Z0-9-]+$"})
    ChannelArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivs#ChannelArnList", name: "ChannelArnList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ChannelLatencyMode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivs#ChannelLatencyMode", name: "ChannelLatencyMode", traits: {"smithy.api#enum" => [{"value" => "NORMAL", "name" => "NormalLatency"}, {"value" => "LOW", "name" => "LowLatency"}]})
    ChannelList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivs#ChannelList", name: "ChannelList")
    ChannelName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivs#ChannelName", name: "ChannelName", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]*$"})
    ChannelNotBroadcasting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#ChannelNotBroadcasting", name: "ChannelNotBroadcasting", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ChannelPlaybackRestrictionPolicyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivs#ChannelPlaybackRestrictionPolicyArn", name: "ChannelPlaybackRestrictionPolicyArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^^$|^arn:aws:ivs:[a-z0-9-]+:[0-9]+:playback-restriction-policy/[a-zA-Z0-9-]+$$"})
    ChannelRecordingConfigurationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivs#ChannelRecordingConfigurationArn", name: "ChannelRecordingConfigurationArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^^$|^arn:aws:ivs:[a-z0-9-]+:[0-9]+:recording-configuration/[a-zA-Z0-9-]+$$"})
    ChannelSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#ChannelSummary", name: "ChannelSummary")
    ChannelType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ivs#ChannelType", name: "ChannelType")
    Channels = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivs#Channels", name: "Channels")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContainerFormat = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivs#ContainerFormat", name: "ContainerFormat", traits: {"smithy.api#enum" => [{"value" => "TS", "name" => "TS"}, {"value" => "FRAGMENTED_MP4", "name" => "FragmentedMP4"}]})
    CreateChannelInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#CreateChannelInput", name: "CreateChannelInput")
    CreateChannelOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#CreateChannelOutput", name: "CreateChannelOutput")
    CreatePlaybackRestrictionPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#CreatePlaybackRestrictionPolicyRequest", name: "CreatePlaybackRestrictionPolicyRequest")
    CreatePlaybackRestrictionPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#CreatePlaybackRestrictionPolicyResponse", name: "CreatePlaybackRestrictionPolicyResponse")
    CreateRecordingConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#CreateRecordingConfigurationInput", name: "CreateRecordingConfigurationInput")
    CreateRecordingConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#CreateRecordingConfigurationOutput", name: "CreateRecordingConfigurationOutput")
    CreateStreamKeyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#CreateStreamKeyInput", name: "CreateStreamKeyInput")
    CreateStreamKeyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#CreateStreamKeyOutput", name: "CreateStreamKeyOutput")
    DeleteChannelInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#DeleteChannelInput", name: "DeleteChannelInput")
    DeletePlaybackKeyPairInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#DeletePlaybackKeyPairInput", name: "DeletePlaybackKeyPairInput")
    DeletePlaybackKeyPairOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#DeletePlaybackKeyPairOutput", name: "DeletePlaybackKeyPairOutput")
    DeletePlaybackRestrictionPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#DeletePlaybackRestrictionPolicyRequest", name: "DeletePlaybackRestrictionPolicyRequest")
    DeleteRecordingConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#DeleteRecordingConfigurationInput", name: "DeleteRecordingConfigurationInput")
    DeleteStreamKeyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#DeleteStreamKeyInput", name: "DeleteStreamKeyInput")
    DestinationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#DestinationConfiguration", name: "DestinationConfiguration")
    GetChannelInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#GetChannelInput", name: "GetChannelInput")
    GetChannelOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#GetChannelOutput", name: "GetChannelOutput")
    GetPlaybackKeyPairInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#GetPlaybackKeyPairInput", name: "GetPlaybackKeyPairInput")
    GetPlaybackKeyPairOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#GetPlaybackKeyPairOutput", name: "GetPlaybackKeyPairOutput")
    GetPlaybackRestrictionPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#GetPlaybackRestrictionPolicyRequest", name: "GetPlaybackRestrictionPolicyRequest")
    GetPlaybackRestrictionPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#GetPlaybackRestrictionPolicyResponse", name: "GetPlaybackRestrictionPolicyResponse")
    GetRecordingConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#GetRecordingConfigurationInput", name: "GetRecordingConfigurationInput")
    GetRecordingConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#GetRecordingConfigurationOutput", name: "GetRecordingConfigurationOutput")
    GetStreamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#GetStreamInput", name: "GetStreamInput")
    GetStreamKeyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#GetStreamKeyInput", name: "GetStreamKeyInput")
    GetStreamKeyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#GetStreamKeyOutput", name: "GetStreamKeyOutput")
    GetStreamOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#GetStreamOutput", name: "GetStreamOutput")
    GetStreamSessionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#GetStreamSessionInput", name: "GetStreamSessionInput")
    GetStreamSessionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#GetStreamSessionOutput", name: "GetStreamSessionOutput")
    ImportPlaybackKeyPairInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#ImportPlaybackKeyPairInput", name: "ImportPlaybackKeyPairInput")
    ImportPlaybackKeyPairOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#ImportPlaybackKeyPairOutput", name: "ImportPlaybackKeyPairOutput")
    IngestConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#IngestConfiguration", name: "IngestConfiguration")
    IngestConfigurations = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#IngestConfigurations", name: "IngestConfigurations")
    IngestEndpoint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivs#IngestEndpoint", name: "IngestEndpoint")
    InsecureIngest = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.ivs#InsecureIngest", name: "InsecureIngest", traits: {"smithy.api#default" => false})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ivs#Integer", name: "Integer", traits: {"smithy.api#default" => 0})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    IsAuthorized = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.ivs#IsAuthorized", name: "IsAuthorized", traits: {"smithy.api#default" => false})
    IsMultitrackInputEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.ivs#IsMultitrackInputEnabled", name: "IsMultitrackInputEnabled", traits: {"smithy.api#default" => false})
    ListChannelsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#ListChannelsInput", name: "ListChannelsInput")
    ListChannelsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#ListChannelsOutput", name: "ListChannelsOutput")
    ListPlaybackKeyPairsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#ListPlaybackKeyPairsInput", name: "ListPlaybackKeyPairsInput")
    ListPlaybackKeyPairsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#ListPlaybackKeyPairsOutput", name: "ListPlaybackKeyPairsOutput")
    ListPlaybackRestrictionPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#ListPlaybackRestrictionPoliciesRequest", name: "ListPlaybackRestrictionPoliciesRequest")
    ListPlaybackRestrictionPoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#ListPlaybackRestrictionPoliciesResponse", name: "ListPlaybackRestrictionPoliciesResponse")
    ListRecordingConfigurationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#ListRecordingConfigurationsInput", name: "ListRecordingConfigurationsInput")
    ListRecordingConfigurationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#ListRecordingConfigurationsOutput", name: "ListRecordingConfigurationsOutput")
    ListStreamKeysInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#ListStreamKeysInput", name: "ListStreamKeysInput")
    ListStreamKeysOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#ListStreamKeysOutput", name: "ListStreamKeysOutput")
    ListStreamSessionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#ListStreamSessionsInput", name: "ListStreamSessionsInput")
    ListStreamSessionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#ListStreamSessionsOutput", name: "ListStreamSessionsOutput")
    ListStreamsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#ListStreamsInput", name: "ListStreamsInput")
    ListStreamsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#ListStreamsOutput", name: "ListStreamsOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    MaxChannelResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ivs#MaxChannelResults", name: "MaxChannelResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxPlaybackKeyPairResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ivs#MaxPlaybackKeyPairResults", name: "MaxPlaybackKeyPairResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxPlaybackRestrictionPolicyResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ivs#MaxPlaybackRestrictionPolicyResults", name: "MaxPlaybackRestrictionPolicyResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxRecordingConfigurationResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ivs#MaxRecordingConfigurationResults", name: "MaxRecordingConfigurationResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxStreamKeyResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ivs#MaxStreamKeyResults", name: "MaxStreamKeyResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxStreamResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ivs#MaxStreamResults", name: "MaxStreamResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MultitrackInputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#MultitrackInputConfiguration", name: "MultitrackInputConfiguration")
    MultitrackMaximumResolution = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ivs#MultitrackMaximumResolution", name: "MultitrackMaximumResolution")
    MultitrackPolicy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ivs#MultitrackPolicy", name: "MultitrackPolicy")
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivs#PaginationToken", name: "PaginationToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[a-zA-Z0-9+/=_-]*$"})
    PendingVerification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#PendingVerification", name: "PendingVerification", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    PlaybackKeyPair = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#PlaybackKeyPair", name: "PlaybackKeyPair")
    PlaybackKeyPairArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivs#PlaybackKeyPairArn", name: "PlaybackKeyPairArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:aws:ivs:[a-z0-9-]+:[0-9]+:playback-key/[a-zA-Z0-9-]+$"})
    PlaybackKeyPairFingerprint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivs#PlaybackKeyPairFingerprint", name: "PlaybackKeyPairFingerprint")
    PlaybackKeyPairList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivs#PlaybackKeyPairList", name: "PlaybackKeyPairList")
    PlaybackKeyPairName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivs#PlaybackKeyPairName", name: "PlaybackKeyPairName", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]*$"})
    PlaybackKeyPairSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#PlaybackKeyPairSummary", name: "PlaybackKeyPairSummary")
    PlaybackPublicKeyMaterial = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivs#PlaybackPublicKeyMaterial", name: "PlaybackPublicKeyMaterial")
    PlaybackRestrictionPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#PlaybackRestrictionPolicy", name: "PlaybackRestrictionPolicy")
    PlaybackRestrictionPolicyAllowedCountry = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivs#PlaybackRestrictionPolicyAllowedCountry", name: "PlaybackRestrictionPolicyAllowedCountry", traits: {"smithy.api#length" => {"min" => 2, "max" => 2}})
    PlaybackRestrictionPolicyAllowedCountryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivs#PlaybackRestrictionPolicyAllowedCountryList", name: "PlaybackRestrictionPolicyAllowedCountryList")
    PlaybackRestrictionPolicyAllowedOrigin = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivs#PlaybackRestrictionPolicyAllowedOrigin", name: "PlaybackRestrictionPolicyAllowedOrigin", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    PlaybackRestrictionPolicyAllowedOriginList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivs#PlaybackRestrictionPolicyAllowedOriginList", name: "PlaybackRestrictionPolicyAllowedOriginList")
    PlaybackRestrictionPolicyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivs#PlaybackRestrictionPolicyArn", name: "PlaybackRestrictionPolicyArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:aws:ivs:[a-z0-9-]+:[0-9]+:playback-restriction-policy/[a-zA-Z0-9-]+$"})
    PlaybackRestrictionPolicyEnableStrictOriginEnforcement = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.ivs#PlaybackRestrictionPolicyEnableStrictOriginEnforcement", name: "PlaybackRestrictionPolicyEnableStrictOriginEnforcement")
    PlaybackRestrictionPolicyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivs#PlaybackRestrictionPolicyList", name: "PlaybackRestrictionPolicyList")
    PlaybackRestrictionPolicyName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivs#PlaybackRestrictionPolicyName", name: "PlaybackRestrictionPolicyName", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]*$"})
    PlaybackRestrictionPolicySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#PlaybackRestrictionPolicySummary", name: "PlaybackRestrictionPolicySummary")
    PlaybackURL = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivs#PlaybackURL", name: "PlaybackURL")
    PutMetadataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#PutMetadataInput", name: "PutMetadataInput")
    RecordingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#RecordingConfiguration", name: "RecordingConfiguration")
    RecordingConfigurationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivs#RecordingConfigurationArn", name: "RecordingConfigurationArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^arn:aws:ivs:[a-z0-9-]+:[0-9]+:recording-configuration/[a-zA-Z0-9-]+$"})
    RecordingConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivs#RecordingConfigurationList", name: "RecordingConfigurationList")
    RecordingConfigurationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivs#RecordingConfigurationName", name: "RecordingConfigurationName", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]*$"})
    RecordingConfigurationState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivs#RecordingConfigurationState", name: "RecordingConfigurationState", traits: {"smithy.api#enum" => [{"value" => "CREATING", "name" => "Creating"}, {"value" => "CREATE_FAILED", "name" => "CreateFailed"}, {"value" => "ACTIVE", "name" => "Active"}]})
    RecordingConfigurationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#RecordingConfigurationSummary", name: "RecordingConfigurationSummary")
    RecordingMode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivs#RecordingMode", name: "RecordingMode", traits: {"smithy.api#enum" => [{"value" => "DISABLED", "name" => "Disabled"}, {"value" => "INTERVAL", "name" => "Interval"}]})
    RecordingReconnectWindowSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ivs#RecordingReconnectWindowSeconds", name: "RecordingReconnectWindowSeconds", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 300}})
    RenditionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#RenditionConfiguration", name: "RenditionConfiguration")
    RenditionConfigurationRendition = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ivs#RenditionConfigurationRendition", name: "RenditionConfigurationRendition")
    RenditionConfigurationRenditionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivs#RenditionConfigurationRenditionList", name: "RenditionConfigurationRenditionList")
    RenditionConfigurationRenditionSelection = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivs#RenditionConfigurationRenditionSelection", name: "RenditionConfigurationRenditionSelection", traits: {"smithy.api#enum" => [{"value" => "ALL", "name" => "ALL"}, {"value" => "NONE", "name" => "NONE"}, {"value" => "CUSTOM", "name" => "CUSTOM"}]})
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivs#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:aws:ivs:[a-z0-9-]+:[0-9]+:[a-z-]/[a-zA-Z0-9-]+$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    S3DestinationBucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivs#S3DestinationBucketName", name: "S3DestinationBucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9-.]+$"})
    S3DestinationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#S3DestinationConfiguration", name: "S3DestinationConfiguration")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Srt = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#Srt", name: "Srt")
    SrtEndpoint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivs#SrtEndpoint", name: "SrtEndpoint")
    SrtPassphrase = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivs#SrtPassphrase", name: "SrtPassphrase", traits: {"smithy.api#sensitive" => {}})
    StartViewerSessionRevocationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#StartViewerSessionRevocationInput", name: "StartViewerSessionRevocationInput")
    StartViewerSessionRevocationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#StartViewerSessionRevocationOutput", name: "StartViewerSessionRevocationOutput")
    StopStreamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#StopStreamInput", name: "StopStreamInput")
    StopStreamOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#StopStreamOutput", name: "StopStreamOutput")
    Stream = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#Stream", name: "Stream")
    StreamEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#StreamEvent", name: "StreamEvent")
    StreamEvents = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivs#StreamEvents", name: "StreamEvents", traits: {"smithy.api#length" => {"max" => 500}})
    StreamFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#StreamFilters", name: "StreamFilters")
    StreamHealth = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivs#StreamHealth", name: "StreamHealth", traits: {"smithy.api#enum" => [{"value" => "HEALTHY", "name" => "StreamHealthy"}, {"value" => "STARVING", "name" => "Starving"}, {"value" => "UNKNOWN", "name" => "Unknown"}]})
    StreamId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivs#StreamId", name: "StreamId", traits: {"smithy.api#length" => {"min" => 26, "max" => 26}, "smithy.api#pattern" => "^st-[a-zA-Z0-9]+$"})
    StreamKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#StreamKey", name: "StreamKey")
    StreamKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivs#StreamKeyArn", name: "StreamKeyArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:aws:ivs:[a-z0-9-]+:[0-9]+:stream-key/[a-zA-Z0-9-]+$"})
    StreamKeyArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivs#StreamKeyArnList", name: "StreamKeyArnList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    StreamKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivs#StreamKeyList", name: "StreamKeyList")
    StreamKeySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#StreamKeySummary", name: "StreamKeySummary")
    StreamKeyValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivs#StreamKeyValue", name: "StreamKeyValue", traits: {"smithy.api#sensitive" => {}})
    StreamKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivs#StreamKeys", name: "StreamKeys")
    StreamList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivs#StreamList", name: "StreamList")
    StreamMetadata = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivs#StreamMetadata", name: "StreamMetadata", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#sensitive" => {}})
    StreamSession = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#StreamSession", name: "StreamSession")
    StreamSessionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivs#StreamSessionList", name: "StreamSessionList")
    StreamSessionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#StreamSessionSummary", name: "StreamSessionSummary")
    StreamStartTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.ivs#StreamStartTime", name: "StreamStartTime", traits: {"smithy.api#timestampFormat" => "date-time"})
    StreamState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivs#StreamState", name: "StreamState", traits: {"smithy.api#enum" => [{"value" => "LIVE", "name" => "StreamLive"}, {"value" => "OFFLINE", "name" => "StreamOffline"}]})
    StreamSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#StreamSummary", name: "StreamSummary")
    StreamUnavailable = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#StreamUnavailable", name: "StreamUnavailable", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    StreamViewerCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ivs#StreamViewerCount", name: "StreamViewerCount", traits: {"smithy.api#default" => 0})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivs#String", name: "String")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivs#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivs#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#TagResourceOutput", name: "TagResourceOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivs#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"max" => 256}})
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ivs#Tags", name: "Tags", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TargetIntervalSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ivs#TargetIntervalSeconds", name: "TargetIntervalSeconds", traits: {"smithy.api#range" => {"min" => 1, "max" => 60}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ThumbnailConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#ThumbnailConfiguration", name: "ThumbnailConfiguration")
    ThumbnailConfigurationResolution = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ivs#ThumbnailConfigurationResolution", name: "ThumbnailConfigurationResolution")
    ThumbnailConfigurationStorage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivs#ThumbnailConfigurationStorage", name: "ThumbnailConfigurationStorage", traits: {"smithy.api#enum" => [{"value" => "SEQUENTIAL", "name" => "SEQUENTIAL"}, {"value" => "LATEST", "name" => "LATEST"}]})
    ThumbnailConfigurationStorageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivs#ThumbnailConfigurationStorageList", name: "ThumbnailConfigurationStorageList")
    Time = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.ivs#Time", name: "Time", traits: {"smithy.api#timestampFormat" => "date-time"})
    TranscodePreset = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ivs#TranscodePreset", name: "TranscodePreset")
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#UntagResourceOutput", name: "UntagResourceOutput")
    UpdateChannelInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#UpdateChannelInput", name: "UpdateChannelInput")
    UpdateChannelOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#UpdateChannelOutput", name: "UpdateChannelOutput")
    UpdatePlaybackRestrictionPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#UpdatePlaybackRestrictionPolicyRequest", name: "UpdatePlaybackRestrictionPolicyRequest")
    UpdatePlaybackRestrictionPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#UpdatePlaybackRestrictionPolicyResponse", name: "UpdatePlaybackRestrictionPolicyResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VideoConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivs#VideoConfiguration", name: "VideoConfiguration")
    VideoConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivs#VideoConfigurationList", name: "VideoConfigurationList")
    ViewerId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivs#ViewerId", name: "ViewerId", traits: {"smithy.api#length" => {"min" => 1, "max" => 40}})
    ViewerSessionVersion = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ivs#ViewerSessionVersion", name: "ViewerSessionVersion", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivs#errorCode", name: "ErrorCode")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivs#errorMessage", name: "ErrorMessage")

    AccessDeniedException.add_member(:exception_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "exceptionMessage"))
    AccessDeniedException.type = Types::AccessDeniedException
    AudioConfiguration.add_member(:codec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "codec"))
    AudioConfiguration.add_member(:target_bitrate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "targetBitrate", traits: {"smithy.api#default" => 0}))
    AudioConfiguration.add_member(:sample_rate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "sampleRate", traits: {"smithy.api#default" => 0}))
    AudioConfiguration.add_member(:channels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "channels", traits: {"smithy.api#default" => 0}))
    AudioConfiguration.add_member(:track, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "track"))
    AudioConfiguration.type = Types::AudioConfiguration
    AudioConfigurationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudioConfiguration)
    BatchError.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "arn"))
    BatchError.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: "code"))
    BatchError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    BatchError.type = Types::BatchError
    BatchErrors.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchError)
    BatchGetChannelInput.add_member(:arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArnList, location_name: "arns", traits: {"smithy.api#required" => {}}))
    BatchGetChannelInput.type = Types::BatchGetChannelInput
    BatchGetChannelOutput.add_member(:channels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Channels, location_name: "channels"))
    BatchGetChannelOutput.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchErrors, location_name: "errors"))
    BatchGetChannelOutput.type = Types::BatchGetChannelOutput
    BatchGetStreamKeyInput.add_member(:arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamKeyArnList, location_name: "arns", traits: {"smithy.api#required" => {}}))
    BatchGetStreamKeyInput.type = Types::BatchGetStreamKeyInput
    BatchGetStreamKeyOutput.add_member(:stream_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamKeys, location_name: "streamKeys"))
    BatchGetStreamKeyOutput.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchErrors, location_name: "errors"))
    BatchGetStreamKeyOutput.type = Types::BatchGetStreamKeyOutput
    BatchStartViewerSessionRevocationError.add_member(:channel_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: "channelArn", traits: {"smithy.api#required" => {}}))
    BatchStartViewerSessionRevocationError.add_member(:viewer_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViewerId, location_name: "viewerId", traits: {"smithy.api#required" => {}}))
    BatchStartViewerSessionRevocationError.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: "code"))
    BatchStartViewerSessionRevocationError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    BatchStartViewerSessionRevocationError.type = Types::BatchStartViewerSessionRevocationError
    BatchStartViewerSessionRevocationErrors.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchStartViewerSessionRevocationError)
    BatchStartViewerSessionRevocationInput.add_member(:viewer_sessions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchStartViewerSessionRevocationViewerSessionList, location_name: "viewerSessions", traits: {"smithy.api#required" => {}}))
    BatchStartViewerSessionRevocationInput.type = Types::BatchStartViewerSessionRevocationInput
    BatchStartViewerSessionRevocationOutput.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchStartViewerSessionRevocationErrors, location_name: "errors"))
    BatchStartViewerSessionRevocationOutput.type = Types::BatchStartViewerSessionRevocationOutput
    BatchStartViewerSessionRevocationViewerSession.add_member(:channel_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: "channelArn", traits: {"smithy.api#required" => {}}))
    BatchStartViewerSessionRevocationViewerSession.add_member(:viewer_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViewerId, location_name: "viewerId", traits: {"smithy.api#required" => {}}))
    BatchStartViewerSessionRevocationViewerSession.add_member(:viewer_session_versions_less_than_or_equal_to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViewerSessionVersion, location_name: "viewerSessionVersionsLessThanOrEqualTo", traits: {"smithy.api#default" => 0}))
    BatchStartViewerSessionRevocationViewerSession.type = Types::BatchStartViewerSessionRevocationViewerSession
    BatchStartViewerSessionRevocationViewerSessionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchStartViewerSessionRevocationViewerSession)
    Channel.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: "arn"))
    Channel.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: "name"))
    Channel.add_member(:latency_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelLatencyMode, location_name: "latencyMode"))
    Channel.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelType, location_name: "type"))
    Channel.add_member(:recording_configuration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelRecordingConfigurationArn, location_name: "recordingConfigurationArn"))
    Channel.add_member(:ingest_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IngestEndpoint, location_name: "ingestEndpoint"))
    Channel.add_member(:playback_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackURL, location_name: "playbackUrl"))
    Channel.add_member(:authorized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsAuthorized, location_name: "authorized", traits: {"smithy.api#default" => false}))
    Channel.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    Channel.add_member(:insecure_ingest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsecureIngest, location_name: "insecureIngest", traits: {"smithy.api#default" => false}))
    Channel.add_member(:preset, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscodePreset, location_name: "preset"))
    Channel.add_member(:srt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Srt, location_name: "srt"))
    Channel.add_member(:playback_restriction_policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelPlaybackRestrictionPolicyArn, location_name: "playbackRestrictionPolicyArn"))
    Channel.add_member(:multitrack_input_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultitrackInputConfiguration, location_name: "multitrackInputConfiguration"))
    Channel.add_member(:container_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerFormat, location_name: "containerFormat"))
    Channel.type = Types::Channel
    ChannelArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn)
    ChannelList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelSummary)
    ChannelNotBroadcasting.add_member(:exception_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "exceptionMessage"))
    ChannelNotBroadcasting.type = Types::ChannelNotBroadcasting
    ChannelSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: "arn"))
    ChannelSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: "name"))
    ChannelSummary.add_member(:latency_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelLatencyMode, location_name: "latencyMode"))
    ChannelSummary.add_member(:authorized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsAuthorized, location_name: "authorized", traits: {"smithy.api#default" => false}))
    ChannelSummary.add_member(:recording_configuration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelRecordingConfigurationArn, location_name: "recordingConfigurationArn"))
    ChannelSummary.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ChannelSummary.add_member(:insecure_ingest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsecureIngest, location_name: "insecureIngest", traits: {"smithy.api#default" => false}))
    ChannelSummary.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelType, location_name: "type"))
    ChannelSummary.add_member(:preset, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscodePreset, location_name: "preset"))
    ChannelSummary.add_member(:playback_restriction_policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelPlaybackRestrictionPolicyArn, location_name: "playbackRestrictionPolicyArn"))
    ChannelSummary.type = Types::ChannelSummary
    ChannelType.add_member(:basic_channel_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BasicChannelType", traits: {"smithy.api#enumValue" => "BASIC"}))
    ChannelType.add_member(:standard_channel_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "StandardChannelType", traits: {"smithy.api#enumValue" => "STANDARD"}))
    ChannelType.add_member(:advanced_sd_channel_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AdvancedSDChannelType", traits: {"smithy.api#enumValue" => "ADVANCED_SD"}))
    ChannelType.add_member(:advanced_hd_channel_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AdvancedHDChannelType", traits: {"smithy.api#enumValue" => "ADVANCED_HD"}))
    Channels.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Channel)
    ConflictException.add_member(:exception_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "exceptionMessage"))
    ConflictException.type = Types::ConflictException
    CreateChannelInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: "name"))
    CreateChannelInput.add_member(:latency_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelLatencyMode, location_name: "latencyMode"))
    CreateChannelInput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelType, location_name: "type"))
    CreateChannelInput.add_member(:authorized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "authorized", traits: {"smithy.api#default" => false}))
    CreateChannelInput.add_member(:recording_configuration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelRecordingConfigurationArn, location_name: "recordingConfigurationArn"))
    CreateChannelInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateChannelInput.add_member(:insecure_ingest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "insecureIngest", traits: {"smithy.api#default" => false}))
    CreateChannelInput.add_member(:preset, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscodePreset, location_name: "preset"))
    CreateChannelInput.add_member(:playback_restriction_policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelPlaybackRestrictionPolicyArn, location_name: "playbackRestrictionPolicyArn"))
    CreateChannelInput.add_member(:multitrack_input_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultitrackInputConfiguration, location_name: "multitrackInputConfiguration"))
    CreateChannelInput.add_member(:container_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerFormat, location_name: "containerFormat"))
    CreateChannelInput.type = Types::CreateChannelInput
    CreateChannelOutput.add_member(:channel, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Channel, location_name: "channel"))
    CreateChannelOutput.add_member(:stream_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamKey, location_name: "streamKey"))
    CreateChannelOutput.type = Types::CreateChannelOutput
    CreatePlaybackRestrictionPolicyRequest.add_member(:allowed_countries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyAllowedCountryList, location_name: "allowedCountries"))
    CreatePlaybackRestrictionPolicyRequest.add_member(:allowed_origins, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyAllowedOriginList, location_name: "allowedOrigins"))
    CreatePlaybackRestrictionPolicyRequest.add_member(:enable_strict_origin_enforcement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyEnableStrictOriginEnforcement, location_name: "enableStrictOriginEnforcement"))
    CreatePlaybackRestrictionPolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyName, location_name: "name"))
    CreatePlaybackRestrictionPolicyRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreatePlaybackRestrictionPolicyRequest.type = Types::CreatePlaybackRestrictionPolicyRequest
    CreatePlaybackRestrictionPolicyResponse.add_member(:playback_restriction_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicy, location_name: "playbackRestrictionPolicy"))
    CreatePlaybackRestrictionPolicyResponse.type = Types::CreatePlaybackRestrictionPolicyResponse
    CreateRecordingConfigurationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingConfigurationName, location_name: "name"))
    CreateRecordingConfigurationInput.add_member(:destination_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationConfiguration, location_name: "destinationConfiguration", traits: {"smithy.api#required" => {}}))
    CreateRecordingConfigurationInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateRecordingConfigurationInput.add_member(:thumbnail_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThumbnailConfiguration, location_name: "thumbnailConfiguration"))
    CreateRecordingConfigurationInput.add_member(:recording_reconnect_window_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingReconnectWindowSeconds, location_name: "recordingReconnectWindowSeconds", traits: {"smithy.api#default" => 0}))
    CreateRecordingConfigurationInput.add_member(:rendition_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RenditionConfiguration, location_name: "renditionConfiguration"))
    CreateRecordingConfigurationInput.type = Types::CreateRecordingConfigurationInput
    CreateRecordingConfigurationOutput.add_member(:recording_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingConfiguration, location_name: "recordingConfiguration"))
    CreateRecordingConfigurationOutput.type = Types::CreateRecordingConfigurationOutput
    CreateStreamKeyInput.add_member(:channel_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: "channelArn", traits: {"smithy.api#required" => {}}))
    CreateStreamKeyInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateStreamKeyInput.type = Types::CreateStreamKeyInput
    CreateStreamKeyOutput.add_member(:stream_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamKey, location_name: "streamKey"))
    CreateStreamKeyOutput.type = Types::CreateStreamKeyOutput
    DeleteChannelInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    DeleteChannelInput.type = Types::DeleteChannelInput
    DeletePlaybackKeyPairInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackKeyPairArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    DeletePlaybackKeyPairInput.type = Types::DeletePlaybackKeyPairInput
    DeletePlaybackKeyPairOutput.type = Types::DeletePlaybackKeyPairOutput
    DeletePlaybackRestrictionPolicyRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    DeletePlaybackRestrictionPolicyRequest.type = Types::DeletePlaybackRestrictionPolicyRequest
    DeleteRecordingConfigurationInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingConfigurationArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    DeleteRecordingConfigurationInput.type = Types::DeleteRecordingConfigurationInput
    DeleteStreamKeyInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamKeyArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    DeleteStreamKeyInput.type = Types::DeleteStreamKeyInput
    DestinationConfiguration.add_member(:s3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3DestinationConfiguration, location_name: "s3"))
    DestinationConfiguration.type = Types::DestinationConfiguration
    GetChannelInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    GetChannelInput.type = Types::GetChannelInput
    GetChannelOutput.add_member(:channel, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Channel, location_name: "channel"))
    GetChannelOutput.type = Types::GetChannelOutput
    GetPlaybackKeyPairInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackKeyPairArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    GetPlaybackKeyPairInput.type = Types::GetPlaybackKeyPairInput
    GetPlaybackKeyPairOutput.add_member(:key_pair, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackKeyPair, location_name: "keyPair"))
    GetPlaybackKeyPairOutput.type = Types::GetPlaybackKeyPairOutput
    GetPlaybackRestrictionPolicyRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    GetPlaybackRestrictionPolicyRequest.type = Types::GetPlaybackRestrictionPolicyRequest
    GetPlaybackRestrictionPolicyResponse.add_member(:playback_restriction_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicy, location_name: "playbackRestrictionPolicy"))
    GetPlaybackRestrictionPolicyResponse.type = Types::GetPlaybackRestrictionPolicyResponse
    GetRecordingConfigurationInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingConfigurationArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    GetRecordingConfigurationInput.type = Types::GetRecordingConfigurationInput
    GetRecordingConfigurationOutput.add_member(:recording_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingConfiguration, location_name: "recordingConfiguration"))
    GetRecordingConfigurationOutput.type = Types::GetRecordingConfigurationOutput
    GetStreamInput.add_member(:channel_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: "channelArn", traits: {"smithy.api#required" => {}}))
    GetStreamInput.type = Types::GetStreamInput
    GetStreamKeyInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamKeyArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    GetStreamKeyInput.type = Types::GetStreamKeyInput
    GetStreamKeyOutput.add_member(:stream_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamKey, location_name: "streamKey"))
    GetStreamKeyOutput.type = Types::GetStreamKeyOutput
    GetStreamOutput.add_member(:stream, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Stream, location_name: "stream"))
    GetStreamOutput.type = Types::GetStreamOutput
    GetStreamSessionInput.add_member(:channel_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: "channelArn", traits: {"smithy.api#required" => {}}))
    GetStreamSessionInput.add_member(:stream_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamId, location_name: "streamId"))
    GetStreamSessionInput.type = Types::GetStreamSessionInput
    GetStreamSessionOutput.add_member(:stream_session, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamSession, location_name: "streamSession"))
    GetStreamSessionOutput.type = Types::GetStreamSessionOutput
    ImportPlaybackKeyPairInput.add_member(:public_key_material, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackPublicKeyMaterial, location_name: "publicKeyMaterial", traits: {"smithy.api#required" => {}}))
    ImportPlaybackKeyPairInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackKeyPairName, location_name: "name"))
    ImportPlaybackKeyPairInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ImportPlaybackKeyPairInput.type = Types::ImportPlaybackKeyPairInput
    ImportPlaybackKeyPairOutput.add_member(:key_pair, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackKeyPair, location_name: "keyPair"))
    ImportPlaybackKeyPairOutput.type = Types::ImportPlaybackKeyPairOutput
    IngestConfiguration.add_member(:video, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VideoConfiguration, location_name: "video"))
    IngestConfiguration.add_member(:audio, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudioConfiguration, location_name: "audio"))
    IngestConfiguration.type = Types::IngestConfiguration
    IngestConfigurations.add_member(:video_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VideoConfigurationList, location_name: "videoConfigurations", traits: {"smithy.api#required" => {}}))
    IngestConfigurations.add_member(:audio_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudioConfigurationList, location_name: "audioConfigurations", traits: {"smithy.api#required" => {}}))
    IngestConfigurations.type = Types::IngestConfigurations
    InternalServerException.add_member(:exception_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "exceptionMessage"))
    InternalServerException.type = Types::InternalServerException
    ListChannelsInput.add_member(:filter_by_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: "filterByName"))
    ListChannelsInput.add_member(:filter_by_recording_configuration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelRecordingConfigurationArn, location_name: "filterByRecordingConfigurationArn"))
    ListChannelsInput.add_member(:filter_by_playback_restriction_policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelPlaybackRestrictionPolicyArn, location_name: "filterByPlaybackRestrictionPolicyArn"))
    ListChannelsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListChannelsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxChannelResults, location_name: "maxResults"))
    ListChannelsInput.type = Types::ListChannelsInput
    ListChannelsOutput.add_member(:channels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelList, location_name: "channels", traits: {"smithy.api#required" => {}}))
    ListChannelsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListChannelsOutput.type = Types::ListChannelsOutput
    ListPlaybackKeyPairsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListPlaybackKeyPairsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPlaybackKeyPairResults, location_name: "maxResults"))
    ListPlaybackKeyPairsInput.type = Types::ListPlaybackKeyPairsInput
    ListPlaybackKeyPairsOutput.add_member(:key_pairs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackKeyPairList, location_name: "keyPairs", traits: {"smithy.api#required" => {}}))
    ListPlaybackKeyPairsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListPlaybackKeyPairsOutput.type = Types::ListPlaybackKeyPairsOutput
    ListPlaybackRestrictionPoliciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListPlaybackRestrictionPoliciesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPlaybackRestrictionPolicyResults, location_name: "maxResults"))
    ListPlaybackRestrictionPoliciesRequest.type = Types::ListPlaybackRestrictionPoliciesRequest
    ListPlaybackRestrictionPoliciesResponse.add_member(:playback_restriction_policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyList, location_name: "playbackRestrictionPolicies", traits: {"smithy.api#required" => {}}))
    ListPlaybackRestrictionPoliciesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListPlaybackRestrictionPoliciesResponse.type = Types::ListPlaybackRestrictionPoliciesResponse
    ListRecordingConfigurationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListRecordingConfigurationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxRecordingConfigurationResults, location_name: "maxResults"))
    ListRecordingConfigurationsInput.type = Types::ListRecordingConfigurationsInput
    ListRecordingConfigurationsOutput.add_member(:recording_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingConfigurationList, location_name: "recordingConfigurations", traits: {"smithy.api#required" => {}}))
    ListRecordingConfigurationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListRecordingConfigurationsOutput.type = Types::ListRecordingConfigurationsOutput
    ListStreamKeysInput.add_member(:channel_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: "channelArn", traits: {"smithy.api#required" => {}}))
    ListStreamKeysInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListStreamKeysInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxStreamKeyResults, location_name: "maxResults"))
    ListStreamKeysInput.type = Types::ListStreamKeysInput
    ListStreamKeysOutput.add_member(:stream_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamKeyList, location_name: "streamKeys", traits: {"smithy.api#required" => {}}))
    ListStreamKeysOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListStreamKeysOutput.type = Types::ListStreamKeysOutput
    ListStreamSessionsInput.add_member(:channel_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: "channelArn", traits: {"smithy.api#required" => {}}))
    ListStreamSessionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListStreamSessionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxStreamResults, location_name: "maxResults"))
    ListStreamSessionsInput.type = Types::ListStreamSessionsInput
    ListStreamSessionsOutput.add_member(:stream_sessions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamSessionList, location_name: "streamSessions", traits: {"smithy.api#required" => {}}))
    ListStreamSessionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListStreamSessionsOutput.type = Types::ListStreamSessionsOutput
    ListStreamsInput.add_member(:filter_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamFilters, location_name: "filterBy"))
    ListStreamsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListStreamsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxStreamResults, location_name: "maxResults"))
    ListStreamsInput.type = Types::ListStreamsInput
    ListStreamsOutput.add_member(:streams, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamList, location_name: "streams", traits: {"smithy.api#required" => {}}))
    ListStreamsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListStreamsOutput.type = Types::ListStreamsOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    MultitrackInputConfiguration.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsMultitrackInputEnabled, location_name: "enabled", traits: {"smithy.api#default" => false}))
    MultitrackInputConfiguration.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultitrackPolicy, location_name: "policy"))
    MultitrackInputConfiguration.add_member(:maximum_resolution, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultitrackMaximumResolution, location_name: "maximumResolution"))
    MultitrackInputConfiguration.type = Types::MultitrackInputConfiguration
    MultitrackMaximumResolution.add_member(:sd, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SD", traits: {"smithy.api#enumValue" => "SD"}))
    MultitrackMaximumResolution.add_member(:hd, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HD", traits: {"smithy.api#enumValue" => "HD"}))
    MultitrackMaximumResolution.add_member(:full_hd, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FULL_HD", traits: {"smithy.api#enumValue" => "FULL_HD"}))
    MultitrackPolicy.add_member(:allow, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALLOW", traits: {"smithy.api#enumValue" => "ALLOW"}))
    MultitrackPolicy.add_member(:require, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REQUIRE", traits: {"smithy.api#enumValue" => "REQUIRE"}))
    PendingVerification.add_member(:exception_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "exceptionMessage"))
    PendingVerification.type = Types::PendingVerification
    PlaybackKeyPair.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackKeyPairArn, location_name: "arn"))
    PlaybackKeyPair.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackKeyPairName, location_name: "name"))
    PlaybackKeyPair.add_member(:fingerprint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackKeyPairFingerprint, location_name: "fingerprint"))
    PlaybackKeyPair.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    PlaybackKeyPair.type = Types::PlaybackKeyPair
    PlaybackKeyPairList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackKeyPairSummary)
    PlaybackKeyPairSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackKeyPairArn, location_name: "arn"))
    PlaybackKeyPairSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackKeyPairName, location_name: "name"))
    PlaybackKeyPairSummary.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    PlaybackKeyPairSummary.type = Types::PlaybackKeyPairSummary
    PlaybackRestrictionPolicy.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    PlaybackRestrictionPolicy.add_member(:allowed_countries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyAllowedCountryList, location_name: "allowedCountries", traits: {"smithy.api#required" => {}}))
    PlaybackRestrictionPolicy.add_member(:allowed_origins, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyAllowedOriginList, location_name: "allowedOrigins", traits: {"smithy.api#required" => {}}))
    PlaybackRestrictionPolicy.add_member(:enable_strict_origin_enforcement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyEnableStrictOriginEnforcement, location_name: "enableStrictOriginEnforcement"))
    PlaybackRestrictionPolicy.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyName, location_name: "name"))
    PlaybackRestrictionPolicy.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    PlaybackRestrictionPolicy.type = Types::PlaybackRestrictionPolicy
    PlaybackRestrictionPolicyAllowedCountryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyAllowedCountry)
    PlaybackRestrictionPolicyAllowedOriginList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyAllowedOrigin)
    PlaybackRestrictionPolicyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicySummary)
    PlaybackRestrictionPolicySummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    PlaybackRestrictionPolicySummary.add_member(:allowed_countries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyAllowedCountryList, location_name: "allowedCountries", traits: {"smithy.api#required" => {}}))
    PlaybackRestrictionPolicySummary.add_member(:allowed_origins, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyAllowedOriginList, location_name: "allowedOrigins", traits: {"smithy.api#required" => {}}))
    PlaybackRestrictionPolicySummary.add_member(:enable_strict_origin_enforcement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyEnableStrictOriginEnforcement, location_name: "enableStrictOriginEnforcement"))
    PlaybackRestrictionPolicySummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyName, location_name: "name"))
    PlaybackRestrictionPolicySummary.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    PlaybackRestrictionPolicySummary.type = Types::PlaybackRestrictionPolicySummary
    PutMetadataInput.add_member(:channel_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: "channelArn", traits: {"smithy.api#required" => {}}))
    PutMetadataInput.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamMetadata, location_name: "metadata", traits: {"smithy.api#required" => {}}))
    PutMetadataInput.type = Types::PutMetadataInput
    RecordingConfiguration.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingConfigurationArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    RecordingConfiguration.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingConfigurationName, location_name: "name"))
    RecordingConfiguration.add_member(:destination_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationConfiguration, location_name: "destinationConfiguration", traits: {"smithy.api#required" => {}}))
    RecordingConfiguration.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingConfigurationState, location_name: "state", traits: {"smithy.api#required" => {}}))
    RecordingConfiguration.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    RecordingConfiguration.add_member(:thumbnail_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThumbnailConfiguration, location_name: "thumbnailConfiguration"))
    RecordingConfiguration.add_member(:recording_reconnect_window_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingReconnectWindowSeconds, location_name: "recordingReconnectWindowSeconds", traits: {"smithy.api#default" => 0}))
    RecordingConfiguration.add_member(:rendition_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RenditionConfiguration, location_name: "renditionConfiguration"))
    RecordingConfiguration.type = Types::RecordingConfiguration
    RecordingConfigurationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingConfigurationSummary)
    RecordingConfigurationSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingConfigurationArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    RecordingConfigurationSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingConfigurationName, location_name: "name"))
    RecordingConfigurationSummary.add_member(:destination_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationConfiguration, location_name: "destinationConfiguration", traits: {"smithy.api#required" => {}}))
    RecordingConfigurationSummary.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingConfigurationState, location_name: "state", traits: {"smithy.api#required" => {}}))
    RecordingConfigurationSummary.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    RecordingConfigurationSummary.type = Types::RecordingConfigurationSummary
    RenditionConfiguration.add_member(:rendition_selection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RenditionConfigurationRenditionSelection, location_name: "renditionSelection"))
    RenditionConfiguration.add_member(:renditions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RenditionConfigurationRenditionList, location_name: "renditions"))
    RenditionConfiguration.type = Types::RenditionConfiguration
    RenditionConfigurationRendition.add_member(:sd, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SD", traits: {"smithy.api#enumValue" => "SD"}))
    RenditionConfigurationRendition.add_member(:hd, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HD", traits: {"smithy.api#enumValue" => "HD"}))
    RenditionConfigurationRendition.add_member(:full_hd, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FULL_HD", traits: {"smithy.api#enumValue" => "FULL_HD"}))
    RenditionConfigurationRendition.add_member(:lowest_resolution, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOWEST_RESOLUTION", traits: {"smithy.api#enumValue" => "LOWEST_RESOLUTION"}))
    RenditionConfigurationRenditionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RenditionConfigurationRendition)
    ResourceNotFoundException.add_member(:exception_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "exceptionMessage"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3DestinationConfiguration.add_member(:bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3DestinationBucketName, location_name: "bucketName", traits: {"smithy.api#required" => {}}))
    S3DestinationConfiguration.type = Types::S3DestinationConfiguration
    ServiceQuotaExceededException.add_member(:exception_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "exceptionMessage"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Srt.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SrtEndpoint, location_name: "endpoint"))
    Srt.add_member(:passphrase, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SrtPassphrase, location_name: "passphrase"))
    Srt.type = Types::Srt
    StartViewerSessionRevocationInput.add_member(:channel_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: "channelArn", traits: {"smithy.api#required" => {}}))
    StartViewerSessionRevocationInput.add_member(:viewer_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViewerId, location_name: "viewerId", traits: {"smithy.api#required" => {}}))
    StartViewerSessionRevocationInput.add_member(:viewer_session_versions_less_than_or_equal_to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViewerSessionVersion, location_name: "viewerSessionVersionsLessThanOrEqualTo", traits: {"smithy.api#default" => 0}))
    StartViewerSessionRevocationInput.type = Types::StartViewerSessionRevocationInput
    StartViewerSessionRevocationOutput.type = Types::StartViewerSessionRevocationOutput
    StopStreamInput.add_member(:channel_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: "channelArn", traits: {"smithy.api#required" => {}}))
    StopStreamInput.type = Types::StopStreamInput
    StopStreamOutput.type = Types::StopStreamOutput
    Stream.add_member(:channel_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: "channelArn"))
    Stream.add_member(:stream_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamId, location_name: "streamId"))
    Stream.add_member(:playback_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackURL, location_name: "playbackUrl"))
    Stream.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamStartTime, location_name: "startTime"))
    Stream.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamState, location_name: "state"))
    Stream.add_member(:health, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamHealth, location_name: "health"))
    Stream.add_member(:viewer_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamViewerCount, location_name: "viewerCount", traits: {"smithy.api#default" => 0}))
    Stream.type = Types::Stream
    StreamEvent.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "name"))
    StreamEvent.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "type"))
    StreamEvent.add_member(:event_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "eventTime"))
    StreamEvent.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "code"))
    StreamEvent.type = Types::StreamEvent
    StreamEvents.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamEvent)
    StreamFilters.add_member(:health, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamHealth, location_name: "health"))
    StreamFilters.type = Types::StreamFilters
    StreamKey.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamKeyArn, location_name: "arn"))
    StreamKey.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamKeyValue, location_name: "value"))
    StreamKey.add_member(:channel_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: "channelArn"))
    StreamKey.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    StreamKey.type = Types::StreamKey
    StreamKeyArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamKeyArn)
    StreamKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamKeySummary)
    StreamKeySummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamKeyArn, location_name: "arn"))
    StreamKeySummary.add_member(:channel_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: "channelArn"))
    StreamKeySummary.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    StreamKeySummary.type = Types::StreamKeySummary
    StreamKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamKey)
    StreamList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamSummary)
    StreamSession.add_member(:stream_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamId, location_name: "streamId"))
    StreamSession.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "startTime"))
    StreamSession.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "endTime"))
    StreamSession.add_member(:channel, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Channel, location_name: "channel"))
    StreamSession.add_member(:ingest_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IngestConfiguration, location_name: "ingestConfiguration"))
    StreamSession.add_member(:ingest_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IngestConfigurations, location_name: "ingestConfigurations"))
    StreamSession.add_member(:recording_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingConfiguration, location_name: "recordingConfiguration"))
    StreamSession.add_member(:truncated_events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamEvents, location_name: "truncatedEvents"))
    StreamSession.type = Types::StreamSession
    StreamSessionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamSessionSummary)
    StreamSessionSummary.add_member(:stream_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamId, location_name: "streamId"))
    StreamSessionSummary.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "startTime"))
    StreamSessionSummary.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "endTime"))
    StreamSessionSummary.add_member(:has_error_event, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "hasErrorEvent", traits: {"smithy.api#default" => false}))
    StreamSessionSummary.type = Types::StreamSessionSummary
    StreamSummary.add_member(:channel_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: "channelArn"))
    StreamSummary.add_member(:stream_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamId, location_name: "streamId"))
    StreamSummary.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamState, location_name: "state"))
    StreamSummary.add_member(:health, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamHealth, location_name: "health"))
    StreamSummary.add_member(:viewer_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamViewerCount, location_name: "viewerCount", traits: {"smithy.api#default" => 0}))
    StreamSummary.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamStartTime, location_name: "startTime"))
    StreamSummary.type = Types::StreamSummary
    StreamUnavailable.add_member(:exception_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "exceptionMessage"))
    StreamUnavailable.type = Types::StreamUnavailable
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    Tags.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    ThrottlingException.add_member(:exception_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "exceptionMessage"))
    ThrottlingException.type = Types::ThrottlingException
    ThumbnailConfiguration.add_member(:recording_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingMode, location_name: "recordingMode"))
    ThumbnailConfiguration.add_member(:target_interval_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetIntervalSeconds, location_name: "targetIntervalSeconds"))
    ThumbnailConfiguration.add_member(:resolution, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThumbnailConfigurationResolution, location_name: "resolution"))
    ThumbnailConfiguration.add_member(:storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThumbnailConfigurationStorageList, location_name: "storage"))
    ThumbnailConfiguration.type = Types::ThumbnailConfiguration
    ThumbnailConfigurationResolution.add_member(:sd, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SD", traits: {"smithy.api#enumValue" => "SD"}))
    ThumbnailConfigurationResolution.add_member(:hd, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HD", traits: {"smithy.api#enumValue" => "HD"}))
    ThumbnailConfigurationResolution.add_member(:full_hd, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FULL_HD", traits: {"smithy.api#enumValue" => "FULL_HD"}))
    ThumbnailConfigurationResolution.add_member(:lowest_resolution, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOWEST_RESOLUTION", traits: {"smithy.api#enumValue" => "LOWEST_RESOLUTION"}))
    ThumbnailConfigurationStorageList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThumbnailConfigurationStorage)
    TranscodePreset.add_member(:higher_bandwidth_transcode_preset, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HigherBandwidthTranscodePreset", traits: {"smithy.api#enumValue" => "HIGHER_BANDWIDTH_DELIVERY"}))
    TranscodePreset.add_member(:constrained_bandwidth_transcode_preset, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ConstrainedBandwidthTranscodePreset", traits: {"smithy.api#enumValue" => "CONSTRAINED_BANDWIDTH_DELIVERY"}))
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateChannelInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    UpdateChannelInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: "name"))
    UpdateChannelInput.add_member(:latency_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelLatencyMode, location_name: "latencyMode"))
    UpdateChannelInput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelType, location_name: "type"))
    UpdateChannelInput.add_member(:authorized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "authorized", traits: {"smithy.api#default" => false}))
    UpdateChannelInput.add_member(:recording_configuration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelRecordingConfigurationArn, location_name: "recordingConfigurationArn"))
    UpdateChannelInput.add_member(:insecure_ingest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "insecureIngest", traits: {"smithy.api#default" => false}))
    UpdateChannelInput.add_member(:preset, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscodePreset, location_name: "preset"))
    UpdateChannelInput.add_member(:playback_restriction_policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelPlaybackRestrictionPolicyArn, location_name: "playbackRestrictionPolicyArn"))
    UpdateChannelInput.add_member(:multitrack_input_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultitrackInputConfiguration, location_name: "multitrackInputConfiguration"))
    UpdateChannelInput.add_member(:container_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerFormat, location_name: "containerFormat"))
    UpdateChannelInput.type = Types::UpdateChannelInput
    UpdateChannelOutput.add_member(:channel, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Channel, location_name: "channel"))
    UpdateChannelOutput.type = Types::UpdateChannelOutput
    UpdatePlaybackRestrictionPolicyRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    UpdatePlaybackRestrictionPolicyRequest.add_member(:allowed_countries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyAllowedCountryList, location_name: "allowedCountries"))
    UpdatePlaybackRestrictionPolicyRequest.add_member(:allowed_origins, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyAllowedOriginList, location_name: "allowedOrigins"))
    UpdatePlaybackRestrictionPolicyRequest.add_member(:enable_strict_origin_enforcement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyEnableStrictOriginEnforcement, location_name: "enableStrictOriginEnforcement"))
    UpdatePlaybackRestrictionPolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyName, location_name: "name"))
    UpdatePlaybackRestrictionPolicyRequest.type = Types::UpdatePlaybackRestrictionPolicyRequest
    UpdatePlaybackRestrictionPolicyResponse.add_member(:playback_restriction_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicy, location_name: "playbackRestrictionPolicy"))
    UpdatePlaybackRestrictionPolicyResponse.type = Types::UpdatePlaybackRestrictionPolicyResponse
    ValidationException.add_member(:exception_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "exceptionMessage"))
    ValidationException.type = Types::ValidationException
    VideoConfiguration.add_member(:avc_profile, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "avcProfile"))
    VideoConfiguration.add_member(:avc_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "avcLevel"))
    VideoConfiguration.add_member(:codec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "codec"))
    VideoConfiguration.add_member(:encoder, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "encoder"))
    VideoConfiguration.add_member(:target_bitrate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "targetBitrate", traits: {"smithy.api#default" => 0}))
    VideoConfiguration.add_member(:target_framerate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "targetFramerate", traits: {"smithy.api#default" => 0}))
    VideoConfiguration.add_member(:video_height, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "videoHeight", traits: {"smithy.api#default" => 0}))
    VideoConfiguration.add_member(:video_width, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "videoWidth", traits: {"smithy.api#default" => 0}))
    VideoConfiguration.add_member(:level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "level"))
    VideoConfiguration.add_member(:track, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "track"))
    VideoConfiguration.add_member(:profile, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "profile"))
    VideoConfiguration.type = Types::VideoConfiguration
    VideoConfigurationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VideoConfiguration)

    AmazonInteractiveVideoService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.ivs#AmazonInteractiveVideoService"
      service.name = "AmazonInteractiveVideoService"
      service.version = "2020-07-14"
      service.traits = {"aws.api#service" => {"sdkId" => "ivs", "arnNamespace" => "ivs", "cloudFormationName" => "IVS", "cloudTrailEventSource" => "ivs.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "ivs"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["Content-Type", "X-Api-Key", "X-Amz-Content-Sha256", "X-Amz-User-Agent", "amz-sdk-invocation-id", "amz-sdk-request"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-errormessage", "x-amzn-trace-id", "x-amzn-requestid", "x-amz-apigw-id", "date"]}, "smithy.api#title" => "Amazon Interactive Video Service"}
      service.add_operation(:batch_get_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#BatchGetChannel"
        operation.name = "BatchGetChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetChannelInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetChannelOutput)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BatchGetChannel"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:batch_get_stream_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#BatchGetStreamKey"
        operation.name = "BatchGetStreamKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetStreamKeyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetStreamKeyOutput)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BatchGetStreamKey"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:batch_start_viewer_session_revocation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#BatchStartViewerSessionRevocation"
        operation.name = "BatchStartViewerSessionRevocation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchStartViewerSessionRevocationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchStartViewerSessionRevocationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BatchStartViewerSessionRevocation"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:create_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#CreateChannel"
        operation.name = "CreateChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateChannelInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateChannelOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateChannel"}}
      end)
      service.add_operation(:create_playback_restriction_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#CreatePlaybackRestrictionPolicy"
        operation.name = "CreatePlaybackRestrictionPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePlaybackRestrictionPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePlaybackRestrictionPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreatePlaybackRestrictionPolicy"}}
      end)
      service.add_operation(:create_recording_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#CreateRecordingConfiguration"
        operation.name = "CreateRecordingConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRecordingConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRecordingConfigurationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateRecordingConfiguration"}}
      end)
      service.add_operation(:create_stream_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#CreateStreamKey"
        operation.name = "CreateStreamKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStreamKeyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStreamKeyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateStreamKey"}}
      end)
      service.add_operation(:delete_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#DeleteChannel"
        operation.name = "DeleteChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteChannelInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteChannel", "code" => 204}}
      end)
      service.add_operation(:delete_playback_key_pair, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#DeletePlaybackKeyPair"
        operation.name = "DeletePlaybackKeyPair"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePlaybackKeyPairInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePlaybackKeyPairOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeletePlaybackKeyPair"}}
      end)
      service.add_operation(:delete_playback_restriction_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#DeletePlaybackRestrictionPolicy"
        operation.name = "DeletePlaybackRestrictionPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePlaybackRestrictionPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeletePlaybackRestrictionPolicy", "code" => 204}}
      end)
      service.add_operation(:delete_recording_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#DeleteRecordingConfiguration"
        operation.name = "DeleteRecordingConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRecordingConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteRecordingConfiguration", "code" => 204}}
      end)
      service.add_operation(:delete_stream_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#DeleteStreamKey"
        operation.name = "DeleteStreamKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteStreamKeyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteStreamKey", "code" => 204}}
      end)
      service.add_operation(:get_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#GetChannel"
        operation.name = "GetChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetChannelInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetChannelOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetChannel"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_playback_key_pair, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#GetPlaybackKeyPair"
        operation.name = "GetPlaybackKeyPair"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPlaybackKeyPairInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPlaybackKeyPairOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetPlaybackKeyPair"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_playback_restriction_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#GetPlaybackRestrictionPolicy"
        operation.name = "GetPlaybackRestrictionPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPlaybackRestrictionPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPlaybackRestrictionPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetPlaybackRestrictionPolicy"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_recording_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#GetRecordingConfiguration"
        operation.name = "GetRecordingConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRecordingConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRecordingConfigurationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetRecordingConfiguration"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#GetStream"
        operation.name = "GetStream"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetStreamInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetStreamOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelNotBroadcasting)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetStream"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_stream_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#GetStreamKey"
        operation.name = "GetStreamKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetStreamKeyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetStreamKeyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetStreamKey"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_stream_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#GetStreamSession"
        operation.name = "GetStreamSession"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetStreamSessionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetStreamSessionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetStreamSession"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:import_playback_key_pair, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#ImportPlaybackKeyPair"
        operation.name = "ImportPlaybackKeyPair"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportPlaybackKeyPairInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportPlaybackKeyPairOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ImportPlaybackKeyPair"}}
      end)
      service.add_operation(:list_channels, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#ListChannels"
        operation.name = "ListChannels"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListChannelsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListChannelsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListChannels"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListChannels.new
      end)
      service.add_operation(:list_playback_key_pairs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#ListPlaybackKeyPairs"
        operation.name = "ListPlaybackKeyPairs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPlaybackKeyPairsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPlaybackKeyPairsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListPlaybackKeyPairs"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPlaybackKeyPairs.new
      end)
      service.add_operation(:list_playback_restriction_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#ListPlaybackRestrictionPolicies"
        operation.name = "ListPlaybackRestrictionPolicies"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPlaybackRestrictionPoliciesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPlaybackRestrictionPoliciesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListPlaybackRestrictionPolicies"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPlaybackRestrictionPolicies.new
      end)
      service.add_operation(:list_recording_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#ListRecordingConfigurations"
        operation.name = "ListRecordingConfigurations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRecordingConfigurationsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRecordingConfigurationsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListRecordingConfigurations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRecordingConfigurations.new
      end)
      service.add_operation(:list_stream_keys, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#ListStreamKeys"
        operation.name = "ListStreamKeys"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListStreamKeysInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListStreamKeysOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListStreamKeys"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListStreamKeys.new
      end)
      service.add_operation(:list_stream_sessions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#ListStreamSessions"
        operation.name = "ListStreamSessions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListStreamSessionsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListStreamSessionsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListStreamSessions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListStreamSessions.new
      end)
      service.add_operation(:list_streams, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#ListStreams"
        operation.name = "ListStreams"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListStreamsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListStreamsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListStreams"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListStreams.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:put_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#PutMetadata"
        operation.name = "PutMetadata"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutMetadataInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelNotBroadcasting)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/PutMetadata", "code" => 204}}
      end)
      service.add_operation(:start_viewer_session_revocation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#StartViewerSessionRevocation"
        operation.name = "StartViewerSessionRevocation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartViewerSessionRevocationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartViewerSessionRevocationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/StartViewerSessionRevocation"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:stop_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#StopStream"
        operation.name = "StopStream"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopStreamInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopStreamOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelNotBroadcasting)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamUnavailable)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/StopStream"}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#UpdateChannel"
        operation.name = "UpdateChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateChannelInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateChannelOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateChannel"}}
      end)
      service.add_operation(:update_playback_restriction_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivs#UpdatePlaybackRestrictionPolicy"
        operation.name = "UpdatePlaybackRestrictionPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePlaybackRestrictionPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePlaybackRestrictionPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdatePlaybackRestrictionPolicy"}}
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
