# frozen_string_literal: true

# This is generated code!

module Aws::IVSRealTime
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AttributeKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#AttributeKey", name: "AttributeKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]*$"})
    AutoParticipantRecordingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#AutoParticipantRecordingConfiguration", name: "AutoParticipantRecordingConfiguration")
    AutoParticipantRecordingStorageConfigurationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#AutoParticipantRecordingStorageConfigurationArn", name: "AutoParticipantRecordingStorageConfigurationArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^^$|^arn:aws:ivs:[a-z0-9-]+:[0-9]+:storage-configuration/[a-zA-Z0-9-]+$$"})
    Bitrate = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ivsrealtime#Bitrate", name: "Bitrate", traits: {"smithy.api#range" => {"min" => 1, "max" => 8500000}})
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.ivsrealtime#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    ChannelArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#ChannelArn", name: "ChannelArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:aws:ivs:[a-z0-9-]+:[0-9]+:channel/[a-zA-Z0-9-]+$"})
    ChannelDestinationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#ChannelDestinationConfiguration", name: "ChannelDestinationConfiguration")
    Composition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#Composition", name: "Composition")
    CompositionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#CompositionArn", name: "CompositionArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:aws:ivs:[a-z0-9-]+:[0-9]+:composition/[a-zA-Z0-9-]+$"})
    CompositionClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#CompositionClientToken", name: "CompositionClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]*$"})
    CompositionRecordingHlsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#CompositionRecordingHlsConfiguration", name: "CompositionRecordingHlsConfiguration")
    CompositionRecordingTargetSegmentDurationSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ivsrealtime#CompositionRecordingTargetSegmentDurationSeconds", name: "CompositionRecordingTargetSegmentDurationSeconds", traits: {"smithy.api#default" => 2, "smithy.api#range" => {"min" => 2, "max" => 10}})
    CompositionState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#CompositionState", name: "CompositionState", traits: {"smithy.api#enum" => [{"value" => "STARTING", "name" => "STARTING"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "STOPPING", "name" => "STOPPING"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "STOPPED", "name" => "STOPPED"}]})
    CompositionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#CompositionSummary", name: "CompositionSummary")
    CompositionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivsrealtime#CompositionSummaryList", name: "CompositionSummaryList")
    CompositionThumbnailConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#CompositionThumbnailConfiguration", name: "CompositionThumbnailConfiguration")
    CompositionThumbnailConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivsrealtime#CompositionThumbnailConfigurationList", name: "CompositionThumbnailConfigurationList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateEncoderConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#CreateEncoderConfigurationRequest", name: "CreateEncoderConfigurationRequest")
    CreateEncoderConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#CreateEncoderConfigurationResponse", name: "CreateEncoderConfigurationResponse")
    CreateIngestConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#CreateIngestConfigurationRequest", name: "CreateIngestConfigurationRequest")
    CreateIngestConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#CreateIngestConfigurationResponse", name: "CreateIngestConfigurationResponse")
    CreateParticipantTokenInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#CreateParticipantTokenInput", name: "CreateParticipantTokenInput")
    CreateParticipantTokenOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#CreateParticipantTokenOutput", name: "CreateParticipantTokenOutput")
    CreateStageInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#CreateStageInput", name: "CreateStageInput")
    CreateStageOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#CreateStageOutput", name: "CreateStageOutput")
    CreateStorageConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#CreateStorageConfigurationRequest", name: "CreateStorageConfigurationRequest")
    CreateStorageConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#CreateStorageConfigurationResponse", name: "CreateStorageConfigurationResponse")
    DeleteEncoderConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#DeleteEncoderConfigurationRequest", name: "DeleteEncoderConfigurationRequest")
    DeleteEncoderConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#DeleteEncoderConfigurationResponse", name: "DeleteEncoderConfigurationResponse")
    DeleteIngestConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#DeleteIngestConfigurationRequest", name: "DeleteIngestConfigurationRequest")
    DeleteIngestConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#DeleteIngestConfigurationResponse", name: "DeleteIngestConfigurationResponse")
    DeletePublicKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#DeletePublicKeyRequest", name: "DeletePublicKeyRequest")
    DeletePublicKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#DeletePublicKeyResponse", name: "DeletePublicKeyResponse")
    DeleteStageInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#DeleteStageInput", name: "DeleteStageInput")
    DeleteStageOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#DeleteStageOutput", name: "DeleteStageOutput")
    DeleteStorageConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#DeleteStorageConfigurationRequest", name: "DeleteStorageConfigurationRequest")
    DeleteStorageConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#DeleteStorageConfigurationResponse", name: "DeleteStorageConfigurationResponse")
    Destination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#Destination", name: "Destination")
    DestinationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#DestinationConfiguration", name: "DestinationConfiguration")
    DestinationConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivsrealtime#DestinationConfigurationList", name: "DestinationConfigurationList", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}, "smithy.api#uniqueItems" => {}})
    DestinationConfigurationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#DestinationConfigurationName", name: "DestinationConfigurationName", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]*$"})
    DestinationDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#DestinationDetail", name: "DestinationDetail")
    DestinationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivsrealtime#DestinationList", name: "DestinationList", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}, "smithy.api#uniqueItems" => {}})
    DestinationState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#DestinationState", name: "DestinationState", traits: {"smithy.api#enum" => [{"name" => "STARTING", "value" => "STARTING"}, {"name" => "ACTIVE", "value" => "ACTIVE"}, {"name" => "STOPPING", "value" => "STOPPING"}, {"name" => "RECONNECTING", "value" => "RECONNECTING"}, {"name" => "FAILED", "value" => "FAILED"}, {"name" => "STOPPED", "value" => "STOPPED"}]})
    DestinationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#DestinationSummary", name: "DestinationSummary")
    DestinationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivsrealtime#DestinationSummaryList", name: "DestinationSummaryList", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}, "smithy.api#uniqueItems" => {}})
    DisconnectParticipantInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#DisconnectParticipantInput", name: "DisconnectParticipantInput")
    DisconnectParticipantOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#DisconnectParticipantOutput", name: "DisconnectParticipantOutput")
    DisconnectParticipantReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#DisconnectParticipantReason", name: "DisconnectParticipantReason", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    EncoderConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#EncoderConfiguration", name: "EncoderConfiguration")
    EncoderConfigurationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#EncoderConfigurationArn", name: "EncoderConfigurationArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:aws:ivs:[a-z0-9-]+:[0-9]+:encoder-configuration/[a-zA-Z0-9-]+$"})
    EncoderConfigurationArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivsrealtime#EncoderConfigurationArnList", name: "EncoderConfigurationArnList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    EncoderConfigurationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#EncoderConfigurationName", name: "EncoderConfigurationName", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]*$"})
    EncoderConfigurationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#EncoderConfigurationSummary", name: "EncoderConfigurationSummary")
    EncoderConfigurationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivsrealtime#EncoderConfigurationSummaryList", name: "EncoderConfigurationSummaryList")
    Event = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#Event", name: "Event")
    EventErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ivsrealtime#EventErrorCode", name: "EventErrorCode")
    EventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivsrealtime#EventList", name: "EventList")
    EventName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#EventName", name: "EventName", traits: {"smithy.api#enum" => [{"value" => "JOINED", "name" => "JOINED"}, {"value" => "LEFT", "name" => "LEFT"}, {"value" => "PUBLISH_STARTED", "name" => "PUBLISH_STARTED"}, {"value" => "PUBLISH_STOPPED", "name" => "PUBLISH_STOPPED"}, {"value" => "SUBSCRIBE_STARTED", "name" => "SUBSCRIBE_STARTED"}, {"value" => "SUBSCRIBE_STOPPED", "name" => "SUBSCRIBE_STOPPED"}, {"value" => "PUBLISH_ERROR", "name" => "PUBLISH_ERROR"}, {"value" => "SUBSCRIBE_ERROR", "name" => "SUBSCRIBE_ERROR"}, {"value" => "JOIN_ERROR", "name" => "JOIN_ERROR"}, {"value" => "REPLICATION_STARTED", "name" => "REPLICATION_STARTED"}, {"value" => "REPLICATION_STOPPED", "name" => "REPLICATION_STOPPED"}]})
    Framerate = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.ivsrealtime#Framerate", name: "Framerate", traits: {"smithy.api#range" => {"min" => 1, "max" => 60}})
    GetCompositionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#GetCompositionRequest", name: "GetCompositionRequest")
    GetCompositionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#GetCompositionResponse", name: "GetCompositionResponse")
    GetEncoderConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#GetEncoderConfigurationRequest", name: "GetEncoderConfigurationRequest")
    GetEncoderConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#GetEncoderConfigurationResponse", name: "GetEncoderConfigurationResponse")
    GetIngestConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#GetIngestConfigurationRequest", name: "GetIngestConfigurationRequest")
    GetIngestConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#GetIngestConfigurationResponse", name: "GetIngestConfigurationResponse")
    GetParticipantRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#GetParticipantRequest", name: "GetParticipantRequest")
    GetParticipantResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#GetParticipantResponse", name: "GetParticipantResponse")
    GetPublicKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#GetPublicKeyRequest", name: "GetPublicKeyRequest")
    GetPublicKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#GetPublicKeyResponse", name: "GetPublicKeyResponse")
    GetStageInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#GetStageInput", name: "GetStageInput")
    GetStageOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#GetStageOutput", name: "GetStageOutput")
    GetStageSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#GetStageSessionRequest", name: "GetStageSessionRequest")
    GetStageSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#GetStageSessionResponse", name: "GetStageSessionResponse")
    GetStorageConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#GetStorageConfigurationRequest", name: "GetStorageConfigurationRequest")
    GetStorageConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#GetStorageConfigurationResponse", name: "GetStorageConfigurationResponse")
    GridConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#GridConfiguration", name: "GridConfiguration")
    GridGap = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ivsrealtime#GridGap", name: "GridGap", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    Height = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ivsrealtime#Height", name: "Height", traits: {"smithy.api#range" => {"min" => 2, "max" => 1920}})
    ImportPublicKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#ImportPublicKeyRequest", name: "ImportPublicKeyRequest")
    ImportPublicKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#ImportPublicKeyResponse", name: "ImportPublicKeyResponse")
    IngestConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#IngestConfiguration", name: "IngestConfiguration")
    IngestConfigurationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#IngestConfigurationArn", name: "IngestConfigurationArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:aws:ivs:[a-z0-9-]+:[0-9]+:ingest-configuration/[a-zA-Z0-9-]+$"})
    IngestConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivsrealtime#IngestConfigurationList", name: "IngestConfigurationList")
    IngestConfigurationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#IngestConfigurationName", name: "IngestConfigurationName", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]*$"})
    IngestConfigurationStageArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#IngestConfigurationStageArn", name: "IngestConfigurationStageArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^^$|^arn:aws:ivs:[a-z0-9-]+:[0-9]+:stage/[a-zA-Z0-9-]+$$"})
    IngestConfigurationState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#IngestConfigurationState", name: "IngestConfigurationState", traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "INACTIVE", "name" => "INACTIVE"}]})
    IngestConfigurationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#IngestConfigurationSummary", name: "IngestConfigurationSummary")
    IngestProtocol = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ivsrealtime#IngestProtocol", name: "IngestProtocol")
    InsecureIngest = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.ivsrealtime#InsecureIngest", name: "InsecureIngest", traits: {"smithy.api#default" => false})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    LayoutConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#LayoutConfiguration", name: "LayoutConfiguration")
    ListCompositionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#ListCompositionsRequest", name: "ListCompositionsRequest")
    ListCompositionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#ListCompositionsResponse", name: "ListCompositionsResponse")
    ListEncoderConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#ListEncoderConfigurationsRequest", name: "ListEncoderConfigurationsRequest")
    ListEncoderConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#ListEncoderConfigurationsResponse", name: "ListEncoderConfigurationsResponse")
    ListIngestConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#ListIngestConfigurationsRequest", name: "ListIngestConfigurationsRequest")
    ListIngestConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#ListIngestConfigurationsResponse", name: "ListIngestConfigurationsResponse")
    ListParticipantEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#ListParticipantEventsRequest", name: "ListParticipantEventsRequest")
    ListParticipantEventsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#ListParticipantEventsResponse", name: "ListParticipantEventsResponse")
    ListParticipantReplicasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#ListParticipantReplicasRequest", name: "ListParticipantReplicasRequest")
    ListParticipantReplicasResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#ListParticipantReplicasResponse", name: "ListParticipantReplicasResponse")
    ListParticipantsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#ListParticipantsRequest", name: "ListParticipantsRequest")
    ListParticipantsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#ListParticipantsResponse", name: "ListParticipantsResponse")
    ListPublicKeysRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#ListPublicKeysRequest", name: "ListPublicKeysRequest")
    ListPublicKeysResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#ListPublicKeysResponse", name: "ListPublicKeysResponse")
    ListStageSessionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#ListStageSessionsRequest", name: "ListStageSessionsRequest")
    ListStageSessionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#ListStageSessionsResponse", name: "ListStageSessionsResponse")
    ListStagesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#ListStagesInput", name: "ListStagesInput")
    ListStagesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#ListStagesOutput", name: "ListStagesOutput")
    ListStorageConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#ListStorageConfigurationsRequest", name: "ListStorageConfigurationsRequest")
    ListStorageConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#ListStorageConfigurationsResponse", name: "ListStorageConfigurationsResponse")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    MaxCompositionResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ivsrealtime#MaxCompositionResults", name: "MaxCompositionResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxEncoderConfigurationResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ivsrealtime#MaxEncoderConfigurationResults", name: "MaxEncoderConfigurationResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxIngestConfigurationResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ivsrealtime#MaxIngestConfigurationResults", name: "MaxIngestConfigurationResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxParticipantEventResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ivsrealtime#MaxParticipantEventResults", name: "MaxParticipantEventResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxParticipantReplicaResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ivsrealtime#MaxParticipantReplicaResults", name: "MaxParticipantReplicaResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxParticipantResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ivsrealtime#MaxParticipantResults", name: "MaxParticipantResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxPublicKeyResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ivsrealtime#MaxPublicKeyResults", name: "MaxPublicKeyResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxStageResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ivsrealtime#MaxStageResults", name: "MaxStageResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxStageSessionResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ivsrealtime#MaxStageSessionResults", name: "MaxStageSessionResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxStorageConfigurationResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ivsrealtime#MaxStorageConfigurationResults", name: "MaxStorageConfigurationResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    OmitStoppedVideo = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.ivsrealtime#OmitStoppedVideo", name: "OmitStoppedVideo", traits: {"smithy.api#default" => false})
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#PaginationToken", name: "PaginationToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[a-zA-Z0-9+/=_-]*$"})
    Participant = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#Participant", name: "Participant")
    ParticipantAttributes = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ivsrealtime#ParticipantAttributes", name: "ParticipantAttributes")
    ParticipantClientAttribute = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#ParticipantClientAttribute", name: "ParticipantClientAttribute", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_.,:;\\s]*$"})
    ParticipantId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#ParticipantId", name: "ParticipantId", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-]*$"})
    ParticipantList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivsrealtime#ParticipantList", name: "ParticipantList")
    ParticipantProtocol = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ivsrealtime#ParticipantProtocol", name: "ParticipantProtocol")
    ParticipantRecordingFilterByRecordingState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#ParticipantRecordingFilterByRecordingState", name: "ParticipantRecordingFilterByRecordingState", traits: {"smithy.api#enum" => [{"value" => "STARTING", "name" => "STARTING"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "STOPPING", "name" => "STOPPING"}, {"value" => "STOPPED", "name" => "STOPPED"}, {"value" => "FAILED", "name" => "FAILED"}]})
    ParticipantRecordingHlsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#ParticipantRecordingHlsConfiguration", name: "ParticipantRecordingHlsConfiguration")
    ParticipantRecordingMediaType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ivsrealtime#ParticipantRecordingMediaType", name: "ParticipantRecordingMediaType")
    ParticipantRecordingMediaTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivsrealtime#ParticipantRecordingMediaTypeList", name: "ParticipantRecordingMediaTypeList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    ParticipantRecordingReconnectWindowSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ivsrealtime#ParticipantRecordingReconnectWindowSeconds", name: "ParticipantRecordingReconnectWindowSeconds", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 300}})
    ParticipantRecordingS3BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#ParticipantRecordingS3BucketName", name: "ParticipantRecordingS3BucketName", traits: {"smithy.api#length" => {"min" => 0, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9-.]*$"})
    ParticipantRecordingS3Prefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#ParticipantRecordingS3Prefix", name: "ParticipantRecordingS3Prefix", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9-]*$"})
    ParticipantRecordingState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#ParticipantRecordingState", name: "ParticipantRecordingState", traits: {"smithy.api#enum" => [{"value" => "STARTING", "name" => "STARTING"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "STOPPING", "name" => "STOPPING"}, {"value" => "STOPPED", "name" => "STOPPED"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "DISABLED", "name" => "DISABLED"}]})
    ParticipantRecordingTargetSegmentDurationSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ivsrealtime#ParticipantRecordingTargetSegmentDurationSeconds", name: "ParticipantRecordingTargetSegmentDurationSeconds", traits: {"smithy.api#default" => 6, "smithy.api#range" => {"min" => 2, "max" => 10}})
    ParticipantReplica = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#ParticipantReplica", name: "ParticipantReplica")
    ParticipantReplicaList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivsrealtime#ParticipantReplicaList", name: "ParticipantReplicaList")
    ParticipantState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#ParticipantState", name: "ParticipantState", traits: {"smithy.api#enum" => [{"value" => "CONNECTED", "name" => "CONNECTED"}, {"value" => "DISCONNECTED", "name" => "DISCONNECTED"}]})
    ParticipantSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#ParticipantSummary", name: "ParticipantSummary")
    ParticipantThumbnailConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#ParticipantThumbnailConfiguration", name: "ParticipantThumbnailConfiguration")
    ParticipantToken = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#ParticipantToken", name: "ParticipantToken")
    ParticipantTokenAttributes = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ivsrealtime#ParticipantTokenAttributes", name: "ParticipantTokenAttributes")
    ParticipantTokenCapabilities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivsrealtime#ParticipantTokenCapabilities", name: "ParticipantTokenCapabilities", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    ParticipantTokenCapability = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#ParticipantTokenCapability", name: "ParticipantTokenCapability", traits: {"smithy.api#enum" => [{"value" => "PUBLISH", "name" => "PUBLISH"}, {"value" => "SUBSCRIBE", "name" => "SUBSCRIBE"}]})
    ParticipantTokenConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#ParticipantTokenConfiguration", name: "ParticipantTokenConfiguration")
    ParticipantTokenConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivsrealtime#ParticipantTokenConfigurations", name: "ParticipantTokenConfigurations", traits: {"smithy.api#length" => {"min" => 0, "max" => 12}})
    ParticipantTokenDurationMinutes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ivsrealtime#ParticipantTokenDurationMinutes", name: "ParticipantTokenDurationMinutes", traits: {"smithy.api#range" => {"min" => 1, "max" => 20160}})
    ParticipantTokenExpirationTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.ivsrealtime#ParticipantTokenExpirationTime", name: "ParticipantTokenExpirationTime", traits: {"smithy.api#timestampFormat" => "date-time"})
    ParticipantTokenId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#ParticipantTokenId", name: "ParticipantTokenId", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]*$"})
    ParticipantTokenList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivsrealtime#ParticipantTokenList", name: "ParticipantTokenList")
    ParticipantTokenString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#ParticipantTokenString", name: "ParticipantTokenString", traits: {"smithy.api#sensitive" => {}})
    ParticipantTokenUserId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#ParticipantTokenUserId", name: "ParticipantTokenUserId", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    PendingVerification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#PendingVerification", name: "PendingVerification", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    PipBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ivsrealtime#PipBehavior", name: "PipBehavior")
    PipConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#PipConfiguration", name: "PipConfiguration")
    PipHeight = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ivsrealtime#PipHeight", name: "PipHeight", traits: {"smithy.api#range" => {"min" => 1}})
    PipOffset = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ivsrealtime#PipOffset", name: "PipOffset", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    PipPosition = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ivsrealtime#PipPosition", name: "PipPosition")
    PipWidth = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ivsrealtime#PipWidth", name: "PipWidth", traits: {"smithy.api#range" => {"min" => 1}})
    PublicKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#PublicKey", name: "PublicKey")
    PublicKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#PublicKeyArn", name: "PublicKeyArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:aws:ivs:[a-z0-9-]+:[0-9]+:public-key/[a-zA-Z0-9-]+$"})
    PublicKeyFingerprint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#PublicKeyFingerprint", name: "PublicKeyFingerprint")
    PublicKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivsrealtime#PublicKeyList", name: "PublicKeyList")
    PublicKeyMaterial = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#PublicKeyMaterial", name: "PublicKeyMaterial", traits: {"smithy.api#pattern" => "-----BEGIN PUBLIC KEY-----\\r?\\n([a-zA-Z0-9+/=\\r\\n]+)\\r?\\n-----END PUBLIC KEY-----(\\r?\\n)?"})
    PublicKeyName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#PublicKeyName", name: "PublicKeyName", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]*$"})
    PublicKeySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#PublicKeySummary", name: "PublicKeySummary")
    Published = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.ivsrealtime#Published", name: "Published", traits: {"smithy.api#default" => false})
    ReconnectWindowSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ivsrealtime#ReconnectWindowSeconds", name: "ReconnectWindowSeconds", traits: {"smithy.api#range" => {"min" => 0, "max" => 60}})
    RecordParticipantReplicas = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.ivsrealtime#RecordParticipantReplicas", name: "RecordParticipantReplicas", traits: {"smithy.api#default" => false})
    RecordingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#RecordingConfiguration", name: "RecordingConfiguration")
    RecordingConfigurationFormat = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#RecordingConfigurationFormat", name: "RecordingConfigurationFormat", traits: {"smithy.api#enum" => [{"value" => "HLS", "name" => "HLS"}]})
    Replica = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.ivsrealtime#Replica", name: "Replica", traits: {"smithy.api#default" => false})
    ReplicationState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#ReplicationState", name: "ReplicationState", traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "STOPPED", "name" => "STOPPED"}]})
    ReplicationType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#ReplicationType", name: "ReplicationType", traits: {"smithy.api#enum" => [{"value" => "SOURCE", "name" => "SOURCE"}, {"value" => "REPLICA", "name" => "REPLICA"}, {"value" => "NONE", "name" => "NONE"}]})
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:aws:ivs:[a-z0-9-]+:[0-9]+:[a-z-]/[a-zA-Z0-9-]+$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    S3BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#S3BucketName", name: "S3BucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9-.]+$"})
    S3DestinationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#S3DestinationConfiguration", name: "S3DestinationConfiguration")
    S3Detail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#S3Detail", name: "S3Detail")
    S3StorageConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#S3StorageConfiguration", name: "S3StorageConfiguration")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Stage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#Stage", name: "Stage")
    StageArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#StageArn", name: "StageArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:aws:ivs:[a-z0-9-]+:[0-9]+:stage/[a-zA-Z0-9-]+$"})
    StageEndpoint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#StageEndpoint", name: "StageEndpoint", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    StageEndpoints = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#StageEndpoints", name: "StageEndpoints")
    StageName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#StageName", name: "StageName", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]*$"})
    StageSession = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#StageSession", name: "StageSession")
    StageSessionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#StageSessionId", name: "StageSessionId", traits: {"smithy.api#length" => {"min" => 16, "max" => 16}, "smithy.api#pattern" => "^st-[a-zA-Z0-9]+$"})
    StageSessionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivsrealtime#StageSessionList", name: "StageSessionList")
    StageSessionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#StageSessionSummary", name: "StageSessionSummary")
    StageSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#StageSummary", name: "StageSummary")
    StageSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivsrealtime#StageSummaryList", name: "StageSummaryList")
    StartCompositionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#StartCompositionRequest", name: "StartCompositionRequest")
    StartCompositionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#StartCompositionResponse", name: "StartCompositionResponse")
    StartParticipantReplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#StartParticipantReplicationRequest", name: "StartParticipantReplicationRequest")
    StartParticipantReplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#StartParticipantReplicationResponse", name: "StartParticipantReplicationResponse")
    StopCompositionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#StopCompositionRequest", name: "StopCompositionRequest")
    StopCompositionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#StopCompositionResponse", name: "StopCompositionResponse")
    StopParticipantReplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#StopParticipantReplicationRequest", name: "StopParticipantReplicationRequest")
    StopParticipantReplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#StopParticipantReplicationResponse", name: "StopParticipantReplicationResponse")
    StorageConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#StorageConfiguration", name: "StorageConfiguration")
    StorageConfigurationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#StorageConfigurationArn", name: "StorageConfigurationArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:aws:ivs:[a-z0-9-]+:[0-9]+:storage-configuration/[a-zA-Z0-9-]+$"})
    StorageConfigurationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#StorageConfigurationName", name: "StorageConfigurationName", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]*$"})
    StorageConfigurationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#StorageConfigurationSummary", name: "StorageConfigurationSummary")
    StorageConfigurationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivsrealtime#StorageConfigurationSummaryList", name: "StorageConfigurationSummaryList")
    StreamKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#StreamKey", name: "StreamKey", traits: {"smithy.api#pattern" => "^rt_[0-9]+_[a-z0-9-]+_[a-zA-Z0-9-]+_.+$", "smithy.api#sensitive" => {}})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#String", name: "String")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivsrealtime#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#TagResourceOutput", name: "TagResourceOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"max" => 256}})
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ivsrealtime#Tags", name: "Tags", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ThumbnailIntervalSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ivsrealtime#ThumbnailIntervalSeconds", name: "ThumbnailIntervalSeconds", traits: {"smithy.api#range" => {"min" => 1, "max" => 86400}})
    ThumbnailRecordingMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ivsrealtime#ThumbnailRecordingMode", name: "ThumbnailRecordingMode")
    ThumbnailStorageType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ivsrealtime#ThumbnailStorageType", name: "ThumbnailStorageType")
    ThumbnailStorageTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ivsrealtime#ThumbnailStorageTypeList", name: "ThumbnailStorageTypeList", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}, "smithy.api#uniqueItems" => {}})
    Time = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.ivsrealtime#Time", name: "Time", traits: {"smithy.api#timestampFormat" => "date-time"})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#UntagResourceOutput", name: "UntagResourceOutput")
    UpdateIngestConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#UpdateIngestConfigurationRequest", name: "UpdateIngestConfigurationRequest")
    UpdateIngestConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#UpdateIngestConfigurationResponse", name: "UpdateIngestConfigurationResponse")
    UpdateStageInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#UpdateStageInput", name: "UpdateStageInput")
    UpdateStageOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#UpdateStageOutput", name: "UpdateStageOutput")
    UserId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#UserId", name: "UserId", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Video = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ivsrealtime#Video", name: "Video")
    VideoAspectRatio = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ivsrealtime#VideoAspectRatio", name: "VideoAspectRatio")
    VideoFillMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ivsrealtime#VideoFillMode", name: "VideoFillMode")
    Width = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ivsrealtime#Width", name: "Width", traits: {"smithy.api#range" => {"min" => 2, "max" => 1920}})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ivsrealtime#errorMessage", name: "ErrorMessage")

    AccessDeniedException.add_member(:access_control_allow_origin, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accessControlAllowOrigin", traits: {"smithy.api#httpHeader" => "Access-Control-Allow-Origin"}))
    AccessDeniedException.add_member(:access_control_expose_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accessControlExposeHeaders", traits: {"smithy.api#httpHeader" => "Access-Control-Expose-Headers"}))
    AccessDeniedException.add_member(:cache_control, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cacheControl", traits: {"smithy.api#httpHeader" => "Cache-Control"}))
    AccessDeniedException.add_member(:content_security_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "contentSecurityPolicy", traits: {"smithy.api#httpHeader" => "Content-Security-Policy"}))
    AccessDeniedException.add_member(:strict_transport_security, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "strictTransportSecurity", traits: {"smithy.api#httpHeader" => "Strict-Transport-Security"}))
    AccessDeniedException.add_member(:x_content_type_options, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "xContentTypeOptions", traits: {"smithy.api#httpHeader" => "X-Content-Type-Options"}))
    AccessDeniedException.add_member(:x_frame_options, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "xFrameOptions", traits: {"smithy.api#httpHeader" => "X-Frame-Options"}))
    AccessDeniedException.add_member(:x_amzn_error_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "xAmznErrorType", traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    AccessDeniedException.add_member(:exception_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "exceptionMessage"))
    AccessDeniedException.type = Types::AccessDeniedException
    AutoParticipantRecordingConfiguration.add_member(:storage_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoParticipantRecordingStorageConfigurationArn, name: "storageConfigurationArn", traits: {"smithy.api#required" => {}}))
    AutoParticipantRecordingConfiguration.add_member(:media_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantRecordingMediaTypeList, name: "mediaTypes"))
    AutoParticipantRecordingConfiguration.add_member(:thumbnail_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantThumbnailConfiguration, name: "thumbnailConfiguration"))
    AutoParticipantRecordingConfiguration.add_member(:recording_reconnect_window_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantRecordingReconnectWindowSeconds, name: "recordingReconnectWindowSeconds", traits: {"smithy.api#default" => 0}))
    AutoParticipantRecordingConfiguration.add_member(:hls_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantRecordingHlsConfiguration, name: "hlsConfiguration"))
    AutoParticipantRecordingConfiguration.add_member(:record_participant_replicas, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordParticipantReplicas, name: "recordParticipantReplicas", traits: {"smithy.api#default" => false}))
    AutoParticipantRecordingConfiguration.type = Types::AutoParticipantRecordingConfiguration
    ChannelDestinationConfiguration.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelArn, name: "channelArn", traits: {"smithy.api#required" => {}}))
    ChannelDestinationConfiguration.add_member(:encoder_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EncoderConfigurationArn, name: "encoderConfigurationArn"))
    ChannelDestinationConfiguration.type = Types::ChannelDestinationConfiguration
    Composition.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositionArn, name: "arn", traits: {"smithy.api#required" => {}}))
    Composition.add_member(:stage_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StageArn, name: "stageArn", traits: {"smithy.api#required" => {}}))
    Composition.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositionState, name: "state", traits: {"smithy.api#required" => {}}))
    Composition.add_member(:layout, ::Smithy::Schema::Shapes::MemberShape.new(target: LayoutConfiguration, name: "layout", traits: {"smithy.api#required" => {}}))
    Composition.add_member(:destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationList, name: "destinations", traits: {"smithy.api#required" => {}}))
    Composition.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    Composition.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "startTime"))
    Composition.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "endTime"))
    Composition.type = Types::Composition
    CompositionRecordingHlsConfiguration.add_member(:target_segment_duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositionRecordingTargetSegmentDurationSeconds, name: "targetSegmentDurationSeconds", traits: {"smithy.api#default" => nil}))
    CompositionRecordingHlsConfiguration.type = Types::CompositionRecordingHlsConfiguration
    CompositionSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositionArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CompositionSummary.add_member(:stage_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StageArn, name: "stageArn", traits: {"smithy.api#required" => {}}))
    CompositionSummary.add_member(:destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationSummaryList, name: "destinations", traits: {"smithy.api#required" => {}}))
    CompositionSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositionState, name: "state", traits: {"smithy.api#required" => {}}))
    CompositionSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CompositionSummary.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "startTime"))
    CompositionSummary.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "endTime"))
    CompositionSummary.type = Types::CompositionSummary
    CompositionSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositionSummary, name: "member"))
    CompositionThumbnailConfiguration.add_member(:target_interval_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ThumbnailIntervalSeconds, name: "targetIntervalSeconds"))
    CompositionThumbnailConfiguration.add_member(:storage, ::Smithy::Schema::Shapes::MemberShape.new(target: ThumbnailStorageTypeList, name: "storage"))
    CompositionThumbnailConfiguration.type = Types::CompositionThumbnailConfiguration
    CompositionThumbnailConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositionThumbnailConfiguration, name: "member"))
    ConflictException.add_member(:access_control_allow_origin, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accessControlAllowOrigin", traits: {"smithy.api#httpHeader" => "Access-Control-Allow-Origin"}))
    ConflictException.add_member(:access_control_expose_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accessControlExposeHeaders", traits: {"smithy.api#httpHeader" => "Access-Control-Expose-Headers"}))
    ConflictException.add_member(:cache_control, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cacheControl", traits: {"smithy.api#httpHeader" => "Cache-Control"}))
    ConflictException.add_member(:content_security_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "contentSecurityPolicy", traits: {"smithy.api#httpHeader" => "Content-Security-Policy"}))
    ConflictException.add_member(:strict_transport_security, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "strictTransportSecurity", traits: {"smithy.api#httpHeader" => "Strict-Transport-Security"}))
    ConflictException.add_member(:x_content_type_options, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "xContentTypeOptions", traits: {"smithy.api#httpHeader" => "X-Content-Type-Options"}))
    ConflictException.add_member(:x_frame_options, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "xFrameOptions", traits: {"smithy.api#httpHeader" => "X-Frame-Options"}))
    ConflictException.add_member(:x_amzn_error_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "xAmznErrorType", traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    ConflictException.add_member(:exception_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "exceptionMessage"))
    ConflictException.type = Types::ConflictException
    CreateEncoderConfigurationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EncoderConfigurationName, name: "name"))
    CreateEncoderConfigurationRequest.add_member(:video, ::Smithy::Schema::Shapes::MemberShape.new(target: Video, name: "video"))
    CreateEncoderConfigurationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateEncoderConfigurationRequest.type = Types::CreateEncoderConfigurationRequest
    CreateEncoderConfigurationResponse.add_member(:encoder_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncoderConfiguration, name: "encoderConfiguration"))
    CreateEncoderConfigurationResponse.type = Types::CreateEncoderConfigurationResponse
    CreateIngestConfigurationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestConfigurationName, name: "name"))
    CreateIngestConfigurationRequest.add_member(:stage_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestConfigurationStageArn, name: "stageArn"))
    CreateIngestConfigurationRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId"))
    CreateIngestConfigurationRequest.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantAttributes, name: "attributes"))
    CreateIngestConfigurationRequest.add_member(:ingest_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestProtocol, name: "ingestProtocol", traits: {"smithy.api#required" => {}}))
    CreateIngestConfigurationRequest.add_member(:insecure_ingest, ::Smithy::Schema::Shapes::MemberShape.new(target: InsecureIngest, name: "insecureIngest", traits: {"smithy.api#default" => false}))
    CreateIngestConfigurationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateIngestConfigurationRequest.type = Types::CreateIngestConfigurationRequest
    CreateIngestConfigurationResponse.add_member(:ingest_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestConfiguration, name: "ingestConfiguration"))
    CreateIngestConfigurationResponse.type = Types::CreateIngestConfigurationResponse
    CreateParticipantTokenInput.add_member(:stage_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StageArn, name: "stageArn", traits: {"smithy.api#required" => {}}))
    CreateParticipantTokenInput.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantTokenDurationMinutes, name: "duration"))
    CreateParticipantTokenInput.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantTokenUserId, name: "userId"))
    CreateParticipantTokenInput.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantTokenAttributes, name: "attributes"))
    CreateParticipantTokenInput.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantTokenCapabilities, name: "capabilities"))
    CreateParticipantTokenInput.type = Types::CreateParticipantTokenInput
    CreateParticipantTokenOutput.add_member(:participant_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantToken, name: "participantToken"))
    CreateParticipantTokenOutput.type = Types::CreateParticipantTokenOutput
    CreateStageInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StageName, name: "name"))
    CreateStageInput.add_member(:participant_token_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantTokenConfigurations, name: "participantTokenConfigurations"))
    CreateStageInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateStageInput.add_member(:auto_participant_recording_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoParticipantRecordingConfiguration, name: "autoParticipantRecordingConfiguration"))
    CreateStageInput.type = Types::CreateStageInput
    CreateStageOutput.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: Stage, name: "stage"))
    CreateStageOutput.add_member(:participant_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantTokenList, name: "participantTokens"))
    CreateStageOutput.type = Types::CreateStageOutput
    CreateStorageConfigurationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageConfigurationName, name: "name"))
    CreateStorageConfigurationRequest.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3StorageConfiguration, name: "s3", traits: {"smithy.api#required" => {}}))
    CreateStorageConfigurationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateStorageConfigurationRequest.type = Types::CreateStorageConfigurationRequest
    CreateStorageConfigurationResponse.add_member(:storage_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageConfiguration, name: "storageConfiguration"))
    CreateStorageConfigurationResponse.type = Types::CreateStorageConfigurationResponse
    DeleteEncoderConfigurationRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EncoderConfigurationArn, name: "arn", traits: {"smithy.api#required" => {}}))
    DeleteEncoderConfigurationRequest.type = Types::DeleteEncoderConfigurationRequest
    DeleteEncoderConfigurationResponse.type = Types::DeleteEncoderConfigurationResponse
    DeleteIngestConfigurationRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestConfigurationArn, name: "arn", traits: {"smithy.api#required" => {}}))
    DeleteIngestConfigurationRequest.add_member(:force, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "force", traits: {"smithy.api#default" => false}))
    DeleteIngestConfigurationRequest.type = Types::DeleteIngestConfigurationRequest
    DeleteIngestConfigurationResponse.type = Types::DeleteIngestConfigurationResponse
    DeletePublicKeyRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicKeyArn, name: "arn", traits: {"smithy.api#required" => {}}))
    DeletePublicKeyRequest.type = Types::DeletePublicKeyRequest
    DeletePublicKeyResponse.type = Types::DeletePublicKeyResponse
    DeleteStageInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StageArn, name: "arn", traits: {"smithy.api#required" => {}}))
    DeleteStageInput.type = Types::DeleteStageInput
    DeleteStageOutput.type = Types::DeleteStageOutput
    DeleteStorageConfigurationRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageConfigurationArn, name: "arn", traits: {"smithy.api#required" => {}}))
    DeleteStorageConfigurationRequest.type = Types::DeleteStorageConfigurationRequest
    DeleteStorageConfigurationResponse.type = Types::DeleteStorageConfigurationResponse
    Destination.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id", traits: {"smithy.api#required" => {}}))
    Destination.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationState, name: "state", traits: {"smithy.api#required" => {}}))
    Destination.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "startTime"))
    Destination.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "endTime"))
    Destination.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfiguration, name: "configuration", traits: {"smithy.api#required" => {}}))
    Destination.add_member(:detail, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationDetail, name: "detail"))
    Destination.type = Types::Destination
    DestinationConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfigurationName, name: "name"))
    DestinationConfiguration.add_member(:channel, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelDestinationConfiguration, name: "channel"))
    DestinationConfiguration.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationConfiguration, name: "s3"))
    DestinationConfiguration.type = Types::DestinationConfiguration
    DestinationConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfiguration, name: "member"))
    DestinationDetail.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Detail, name: "s3"))
    DestinationDetail.type = Types::DestinationDetail
    DestinationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Destination, name: "member"))
    DestinationSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id", traits: {"smithy.api#required" => {}}))
    DestinationSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationState, name: "state", traits: {"smithy.api#required" => {}}))
    DestinationSummary.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "startTime"))
    DestinationSummary.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "endTime"))
    DestinationSummary.type = Types::DestinationSummary
    DestinationSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationSummary, name: "member"))
    DisconnectParticipantInput.add_member(:stage_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StageArn, name: "stageArn", traits: {"smithy.api#required" => {}}))
    DisconnectParticipantInput.add_member(:participant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantTokenId, name: "participantId", traits: {"smithy.api#required" => {}}))
    DisconnectParticipantInput.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: DisconnectParticipantReason, name: "reason"))
    DisconnectParticipantInput.type = Types::DisconnectParticipantInput
    DisconnectParticipantOutput.type = Types::DisconnectParticipantOutput
    EncoderConfiguration.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EncoderConfigurationArn, name: "arn", traits: {"smithy.api#required" => {}}))
    EncoderConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EncoderConfigurationName, name: "name"))
    EncoderConfiguration.add_member(:video, ::Smithy::Schema::Shapes::MemberShape.new(target: Video, name: "video"))
    EncoderConfiguration.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    EncoderConfiguration.type = Types::EncoderConfiguration
    EncoderConfigurationArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EncoderConfigurationArn, name: "member"))
    EncoderConfigurationSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EncoderConfigurationArn, name: "arn", traits: {"smithy.api#required" => {}}))
    EncoderConfigurationSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EncoderConfigurationName, name: "name"))
    EncoderConfigurationSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    EncoderConfigurationSummary.type = Types::EncoderConfigurationSummary
    EncoderConfigurationSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EncoderConfigurationSummary, name: "member"))
    Event.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventName, name: "name"))
    Event.add_member(:participant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantId, name: "participantId"))
    Event.add_member(:event_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "eventTime"))
    Event.add_member(:remote_participant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantId, name: "remoteParticipantId"))
    Event.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: EventErrorCode, name: "errorCode"))
    Event.add_member(:destination_stage_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StageArn, name: "destinationStageArn"))
    Event.add_member(:destination_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StageSessionId, name: "destinationSessionId"))
    Event.add_member(:replica, ::Smithy::Schema::Shapes::MemberShape.new(target: Replica, name: "replica", traits: {"smithy.api#default" => false}))
    Event.type = Types::Event
    EventErrorCode.add_member(:insufficient_capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSUFFICIENT_CAPABILITIES", traits: {"smithy.api#enumValue" => "INSUFFICIENT_CAPABILITIES"}))
    EventErrorCode.add_member(:quota_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUOTA_EXCEEDED", traits: {"smithy.api#enumValue" => "QUOTA_EXCEEDED"}))
    EventErrorCode.add_member(:publisher_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLISHER_NOT_FOUND", traits: {"smithy.api#enumValue" => "PUBLISHER_NOT_FOUND"}))
    EventErrorCode.add_member(:bitrate_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BITRATE_EXCEEDED", traits: {"smithy.api#enumValue" => "BITRATE_EXCEEDED"}))
    EventErrorCode.add_member(:resolution_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOLUTION_EXCEEDED", traits: {"smithy.api#enumValue" => "RESOLUTION_EXCEEDED"}))
    EventErrorCode.add_member(:stream_duration_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STREAM_DURATION_EXCEEDED", traits: {"smithy.api#enumValue" => "STREAM_DURATION_EXCEEDED"}))
    EventErrorCode.add_member(:invalid_audio_codec, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_AUDIO_CODEC", traits: {"smithy.api#enumValue" => "INVALID_AUDIO_CODEC"}))
    EventErrorCode.add_member(:invalid_video_codec, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_VIDEO_CODEC", traits: {"smithy.api#enumValue" => "INVALID_VIDEO_CODEC"}))
    EventErrorCode.add_member(:invalid_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_PROTOCOL", traits: {"smithy.api#enumValue" => "INVALID_PROTOCOL"}))
    EventErrorCode.add_member(:invalid_stream_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_STREAM_KEY", traits: {"smithy.api#enumValue" => "INVALID_STREAM_KEY"}))
    EventErrorCode.add_member(:reuse_of_stream_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REUSE_OF_STREAM_KEY", traits: {"smithy.api#enumValue" => "REUSE_OF_STREAM_KEY"}))
    EventErrorCode.add_member(:b_frame_present, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "B_FRAME_PRESENT", traits: {"smithy.api#enumValue" => "B_FRAME_PRESENT"}))
    EventErrorCode.add_member(:invalid_input, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_INPUT", traits: {"smithy.api#enumValue" => "INVALID_INPUT"}))
    EventErrorCode.add_member(:internal_server_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_SERVER_EXCEPTION", traits: {"smithy.api#enumValue" => "INTERNAL_SERVER_EXCEPTION"}))
    EventList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Event, name: "member"))
    GetCompositionRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositionArn, name: "arn", traits: {"smithy.api#required" => {}}))
    GetCompositionRequest.type = Types::GetCompositionRequest
    GetCompositionResponse.add_member(:composition, ::Smithy::Schema::Shapes::MemberShape.new(target: Composition, name: "composition"))
    GetCompositionResponse.type = Types::GetCompositionResponse
    GetEncoderConfigurationRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EncoderConfigurationArn, name: "arn", traits: {"smithy.api#required" => {}}))
    GetEncoderConfigurationRequest.type = Types::GetEncoderConfigurationRequest
    GetEncoderConfigurationResponse.add_member(:encoder_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncoderConfiguration, name: "encoderConfiguration"))
    GetEncoderConfigurationResponse.type = Types::GetEncoderConfigurationResponse
    GetIngestConfigurationRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestConfigurationArn, name: "arn", traits: {"smithy.api#required" => {}}))
    GetIngestConfigurationRequest.type = Types::GetIngestConfigurationRequest
    GetIngestConfigurationResponse.add_member(:ingest_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestConfiguration, name: "ingestConfiguration"))
    GetIngestConfigurationResponse.type = Types::GetIngestConfigurationResponse
    GetParticipantRequest.add_member(:stage_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StageArn, name: "stageArn", traits: {"smithy.api#required" => {}}))
    GetParticipantRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StageSessionId, name: "sessionId", traits: {"smithy.api#required" => {}}))
    GetParticipantRequest.add_member(:participant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantId, name: "participantId", traits: {"smithy.api#required" => {}}))
    GetParticipantRequest.type = Types::GetParticipantRequest
    GetParticipantResponse.add_member(:participant, ::Smithy::Schema::Shapes::MemberShape.new(target: Participant, name: "participant"))
    GetParticipantResponse.type = Types::GetParticipantResponse
    GetPublicKeyRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicKeyArn, name: "arn", traits: {"smithy.api#required" => {}}))
    GetPublicKeyRequest.type = Types::GetPublicKeyRequest
    GetPublicKeyResponse.add_member(:public_key, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicKey, name: "publicKey"))
    GetPublicKeyResponse.type = Types::GetPublicKeyResponse
    GetStageInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StageArn, name: "arn", traits: {"smithy.api#required" => {}}))
    GetStageInput.type = Types::GetStageInput
    GetStageOutput.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: Stage, name: "stage"))
    GetStageOutput.type = Types::GetStageOutput
    GetStageSessionRequest.add_member(:stage_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StageArn, name: "stageArn", traits: {"smithy.api#required" => {}}))
    GetStageSessionRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StageSessionId, name: "sessionId", traits: {"smithy.api#required" => {}}))
    GetStageSessionRequest.type = Types::GetStageSessionRequest
    GetStageSessionResponse.add_member(:stage_session, ::Smithy::Schema::Shapes::MemberShape.new(target: StageSession, name: "stageSession"))
    GetStageSessionResponse.type = Types::GetStageSessionResponse
    GetStorageConfigurationRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageConfigurationArn, name: "arn", traits: {"smithy.api#required" => {}}))
    GetStorageConfigurationRequest.type = Types::GetStorageConfigurationRequest
    GetStorageConfigurationResponse.add_member(:storage_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageConfiguration, name: "storageConfiguration"))
    GetStorageConfigurationResponse.type = Types::GetStorageConfigurationResponse
    GridConfiguration.add_member(:featured_participant_attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeKey, name: "featuredParticipantAttribute"))
    GridConfiguration.add_member(:omit_stopped_video, ::Smithy::Schema::Shapes::MemberShape.new(target: OmitStoppedVideo, name: "omitStoppedVideo", traits: {"smithy.api#default" => false}))
    GridConfiguration.add_member(:video_aspect_ratio, ::Smithy::Schema::Shapes::MemberShape.new(target: VideoAspectRatio, name: "videoAspectRatio"))
    GridConfiguration.add_member(:video_fill_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: VideoFillMode, name: "videoFillMode"))
    GridConfiguration.add_member(:grid_gap, ::Smithy::Schema::Shapes::MemberShape.new(target: GridGap, name: "gridGap", traits: {"smithy.api#default" => 0}))
    GridConfiguration.add_member(:participant_order_attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeKey, name: "participantOrderAttribute"))
    GridConfiguration.type = Types::GridConfiguration
    ImportPublicKeyRequest.add_member(:public_key_material, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicKeyMaterial, name: "publicKeyMaterial", traits: {"smithy.api#required" => {}}))
    ImportPublicKeyRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicKeyName, name: "name"))
    ImportPublicKeyRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    ImportPublicKeyRequest.type = Types::ImportPublicKeyRequest
    ImportPublicKeyResponse.add_member(:public_key, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicKey, name: "publicKey"))
    ImportPublicKeyResponse.type = Types::ImportPublicKeyResponse
    IngestConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestConfigurationName, name: "name"))
    IngestConfiguration.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestConfigurationArn, name: "arn", traits: {"smithy.api#required" => {}}))
    IngestConfiguration.add_member(:ingest_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestProtocol, name: "ingestProtocol", traits: {"smithy.api#required" => {}}))
    IngestConfiguration.add_member(:stream_key, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamKey, name: "streamKey", traits: {"smithy.api#required" => {}}))
    IngestConfiguration.add_member(:stage_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestConfigurationStageArn, name: "stageArn", traits: {"smithy.api#required" => {}}))
    IngestConfiguration.add_member(:participant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantId, name: "participantId", traits: {"smithy.api#required" => {}}))
    IngestConfiguration.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestConfigurationState, name: "state", traits: {"smithy.api#required" => {}}))
    IngestConfiguration.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId"))
    IngestConfiguration.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantAttributes, name: "attributes"))
    IngestConfiguration.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    IngestConfiguration.type = Types::IngestConfiguration
    IngestConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestConfigurationSummary, name: "member"))
    IngestConfigurationSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestConfigurationName, name: "name"))
    IngestConfigurationSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestConfigurationArn, name: "arn", traits: {"smithy.api#required" => {}}))
    IngestConfigurationSummary.add_member(:ingest_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestProtocol, name: "ingestProtocol", traits: {"smithy.api#required" => {}}))
    IngestConfigurationSummary.add_member(:stage_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestConfigurationStageArn, name: "stageArn", traits: {"smithy.api#required" => {}}))
    IngestConfigurationSummary.add_member(:participant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantId, name: "participantId", traits: {"smithy.api#required" => {}}))
    IngestConfigurationSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestConfigurationState, name: "state", traits: {"smithy.api#required" => {}}))
    IngestConfigurationSummary.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId"))
    IngestConfigurationSummary.type = Types::IngestConfigurationSummary
    IngestProtocol.add_member(:rtmp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RTMP", traits: {"smithy.api#enumValue" => "RTMP"}))
    IngestProtocol.add_member(:rtmps, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RTMPS", traits: {"smithy.api#enumValue" => "RTMPS"}))
    InternalServerException.add_member(:access_control_allow_origin, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accessControlAllowOrigin", traits: {"smithy.api#httpHeader" => "Access-Control-Allow-Origin"}))
    InternalServerException.add_member(:access_control_expose_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accessControlExposeHeaders", traits: {"smithy.api#httpHeader" => "Access-Control-Expose-Headers"}))
    InternalServerException.add_member(:cache_control, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cacheControl", traits: {"smithy.api#httpHeader" => "Cache-Control"}))
    InternalServerException.add_member(:content_security_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "contentSecurityPolicy", traits: {"smithy.api#httpHeader" => "Content-Security-Policy"}))
    InternalServerException.add_member(:strict_transport_security, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "strictTransportSecurity", traits: {"smithy.api#httpHeader" => "Strict-Transport-Security"}))
    InternalServerException.add_member(:x_content_type_options, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "xContentTypeOptions", traits: {"smithy.api#httpHeader" => "X-Content-Type-Options"}))
    InternalServerException.add_member(:x_frame_options, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "xFrameOptions", traits: {"smithy.api#httpHeader" => "X-Frame-Options"}))
    InternalServerException.add_member(:x_amzn_error_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "xAmznErrorType", traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    InternalServerException.add_member(:exception_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "exceptionMessage"))
    InternalServerException.type = Types::InternalServerException
    LayoutConfiguration.add_member(:grid, ::Smithy::Schema::Shapes::MemberShape.new(target: GridConfiguration, name: "grid"))
    LayoutConfiguration.add_member(:pip, ::Smithy::Schema::Shapes::MemberShape.new(target: PipConfiguration, name: "pip"))
    LayoutConfiguration.type = Types::LayoutConfiguration
    ListCompositionsRequest.add_member(:filter_by_stage_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StageArn, name: "filterByStageArn"))
    ListCompositionsRequest.add_member(:filter_by_encoder_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EncoderConfigurationArn, name: "filterByEncoderConfigurationArn"))
    ListCompositionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListCompositionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxCompositionResults, name: "maxResults"))
    ListCompositionsRequest.type = Types::ListCompositionsRequest
    ListCompositionsResponse.add_member(:compositions, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositionSummaryList, name: "compositions", traits: {"smithy.api#required" => {}}))
    ListCompositionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListCompositionsResponse.type = Types::ListCompositionsResponse
    ListEncoderConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListEncoderConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxEncoderConfigurationResults, name: "maxResults"))
    ListEncoderConfigurationsRequest.type = Types::ListEncoderConfigurationsRequest
    ListEncoderConfigurationsResponse.add_member(:encoder_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: EncoderConfigurationSummaryList, name: "encoderConfigurations", traits: {"smithy.api#required" => {}}))
    ListEncoderConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListEncoderConfigurationsResponse.type = Types::ListEncoderConfigurationsResponse
    ListIngestConfigurationsRequest.add_member(:filter_by_stage_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StageArn, name: "filterByStageArn"))
    ListIngestConfigurationsRequest.add_member(:filter_by_state, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestConfigurationState, name: "filterByState"))
    ListIngestConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListIngestConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxIngestConfigurationResults, name: "maxResults"))
    ListIngestConfigurationsRequest.type = Types::ListIngestConfigurationsRequest
    ListIngestConfigurationsResponse.add_member(:ingest_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestConfigurationList, name: "ingestConfigurations", traits: {"smithy.api#required" => {}}))
    ListIngestConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListIngestConfigurationsResponse.type = Types::ListIngestConfigurationsResponse
    ListParticipantEventsRequest.add_member(:stage_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StageArn, name: "stageArn", traits: {"smithy.api#required" => {}}))
    ListParticipantEventsRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StageSessionId, name: "sessionId", traits: {"smithy.api#required" => {}}))
    ListParticipantEventsRequest.add_member(:participant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantId, name: "participantId", traits: {"smithy.api#required" => {}}))
    ListParticipantEventsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListParticipantEventsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxParticipantEventResults, name: "maxResults"))
    ListParticipantEventsRequest.type = Types::ListParticipantEventsRequest
    ListParticipantEventsResponse.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: EventList, name: "events", traits: {"smithy.api#required" => {}}))
    ListParticipantEventsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListParticipantEventsResponse.type = Types::ListParticipantEventsResponse
    ListParticipantReplicasRequest.add_member(:source_stage_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StageArn, name: "sourceStageArn", traits: {"smithy.api#required" => {}}))
    ListParticipantReplicasRequest.add_member(:participant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantId, name: "participantId", traits: {"smithy.api#required" => {}}))
    ListParticipantReplicasRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListParticipantReplicasRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxParticipantReplicaResults, name: "maxResults"))
    ListParticipantReplicasRequest.type = Types::ListParticipantReplicasRequest
    ListParticipantReplicasResponse.add_member(:replicas, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantReplicaList, name: "replicas", traits: {"smithy.api#required" => {}}))
    ListParticipantReplicasResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListParticipantReplicasResponse.type = Types::ListParticipantReplicasResponse
    ListParticipantsRequest.add_member(:stage_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StageArn, name: "stageArn", traits: {"smithy.api#required" => {}}))
    ListParticipantsRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StageSessionId, name: "sessionId", traits: {"smithy.api#required" => {}}))
    ListParticipantsRequest.add_member(:filter_by_user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "filterByUserId"))
    ListParticipantsRequest.add_member(:filter_by_published, ::Smithy::Schema::Shapes::MemberShape.new(target: Published, name: "filterByPublished", traits: {"smithy.api#default" => false}))
    ListParticipantsRequest.add_member(:filter_by_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantState, name: "filterByState"))
    ListParticipantsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListParticipantsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxParticipantResults, name: "maxResults"))
    ListParticipantsRequest.add_member(:filter_by_recording_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantRecordingFilterByRecordingState, name: "filterByRecordingState"))
    ListParticipantsRequest.type = Types::ListParticipantsRequest
    ListParticipantsResponse.add_member(:participants, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantList, name: "participants", traits: {"smithy.api#required" => {}}))
    ListParticipantsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListParticipantsResponse.type = Types::ListParticipantsResponse
    ListPublicKeysRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListPublicKeysRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxPublicKeyResults, name: "maxResults"))
    ListPublicKeysRequest.type = Types::ListPublicKeysRequest
    ListPublicKeysResponse.add_member(:public_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicKeyList, name: "publicKeys", traits: {"smithy.api#required" => {}}))
    ListPublicKeysResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListPublicKeysResponse.type = Types::ListPublicKeysResponse
    ListStageSessionsRequest.add_member(:stage_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StageArn, name: "stageArn", traits: {"smithy.api#required" => {}}))
    ListStageSessionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListStageSessionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxStageSessionResults, name: "maxResults"))
    ListStageSessionsRequest.type = Types::ListStageSessionsRequest
    ListStageSessionsResponse.add_member(:stage_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: StageSessionList, name: "stageSessions", traits: {"smithy.api#required" => {}}))
    ListStageSessionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListStageSessionsResponse.type = Types::ListStageSessionsResponse
    ListStagesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListStagesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxStageResults, name: "maxResults"))
    ListStagesInput.type = Types::ListStagesInput
    ListStagesOutput.add_member(:stages, ::Smithy::Schema::Shapes::MemberShape.new(target: StageSummaryList, name: "stages", traits: {"smithy.api#required" => {}}))
    ListStagesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListStagesOutput.type = Types::ListStagesOutput
    ListStorageConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListStorageConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxStorageConfigurationResults, name: "maxResults"))
    ListStorageConfigurationsRequest.type = Types::ListStorageConfigurationsRequest
    ListStorageConfigurationsResponse.add_member(:storage_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageConfigurationSummaryList, name: "storageConfigurations", traits: {"smithy.api#required" => {}}))
    ListStorageConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListStorageConfigurationsResponse.type = Types::ListStorageConfigurationsResponse
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    Participant.add_member(:participant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantId, name: "participantId"))
    Participant.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId"))
    Participant.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantState, name: "state"))
    Participant.add_member(:first_join_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "firstJoinTime"))
    Participant.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantAttributes, name: "attributes"))
    Participant.add_member(:published, ::Smithy::Schema::Shapes::MemberShape.new(target: Published, name: "published", traits: {"smithy.api#default" => false}))
    Participant.add_member(:isp_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantClientAttribute, name: "ispName"))
    Participant.add_member(:os_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantClientAttribute, name: "osName"))
    Participant.add_member(:os_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantClientAttribute, name: "osVersion"))
    Participant.add_member(:browser_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantClientAttribute, name: "browserName"))
    Participant.add_member(:browser_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantClientAttribute, name: "browserVersion"))
    Participant.add_member(:sdk_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantClientAttribute, name: "sdkVersion"))
    Participant.add_member(:recording_s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantRecordingS3BucketName, name: "recordingS3BucketName"))
    Participant.add_member(:recording_s3_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantRecordingS3Prefix, name: "recordingS3Prefix"))
    Participant.add_member(:recording_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantRecordingState, name: "recordingState"))
    Participant.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantProtocol, name: "protocol"))
    Participant.add_member(:replication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationType, name: "replicationType"))
    Participant.add_member(:replication_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationState, name: "replicationState"))
    Participant.add_member(:source_stage_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StageArn, name: "sourceStageArn"))
    Participant.add_member(:source_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StageSessionId, name: "sourceSessionId"))
    Participant.type = Types::Participant
    ParticipantAttributes.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    ParticipantAttributes.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    ParticipantList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantSummary, name: "member"))
    ParticipantProtocol.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN", traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    ParticipantProtocol.add_member(:whip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WHIP", traits: {"smithy.api#enumValue" => "WHIP"}))
    ParticipantProtocol.add_member(:rtmp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RTMP", traits: {"smithy.api#enumValue" => "RTMP"}))
    ParticipantProtocol.add_member(:rtmps, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RTMPS", traits: {"smithy.api#enumValue" => "RTMPS"}))
    ParticipantRecordingHlsConfiguration.add_member(:target_segment_duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantRecordingTargetSegmentDurationSeconds, name: "targetSegmentDurationSeconds", traits: {"smithy.api#default" => nil}))
    ParticipantRecordingHlsConfiguration.type = Types::ParticipantRecordingHlsConfiguration
    ParticipantRecordingMediaType.add_member(:audio_video, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUDIO_VIDEO", traits: {"smithy.api#enumValue" => "AUDIO_VIDEO"}))
    ParticipantRecordingMediaType.add_member(:audio_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUDIO_ONLY", traits: {"smithy.api#enumValue" => "AUDIO_ONLY"}))
    ParticipantRecordingMediaType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    ParticipantRecordingMediaTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantRecordingMediaType, name: "member"))
    ParticipantReplica.add_member(:source_stage_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StageArn, name: "sourceStageArn", traits: {"smithy.api#required" => {}}))
    ParticipantReplica.add_member(:participant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantId, name: "participantId", traits: {"smithy.api#required" => {}}))
    ParticipantReplica.add_member(:source_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StageSessionId, name: "sourceSessionId", traits: {"smithy.api#required" => {}}))
    ParticipantReplica.add_member(:destination_stage_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StageArn, name: "destinationStageArn", traits: {"smithy.api#required" => {}}))
    ParticipantReplica.add_member(:destination_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StageSessionId, name: "destinationSessionId", traits: {"smithy.api#required" => {}}))
    ParticipantReplica.add_member(:replication_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationState, name: "replicationState", traits: {"smithy.api#required" => {}}))
    ParticipantReplica.type = Types::ParticipantReplica
    ParticipantReplicaList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantReplica, name: "member"))
    ParticipantSummary.add_member(:participant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantId, name: "participantId"))
    ParticipantSummary.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId"))
    ParticipantSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantState, name: "state"))
    ParticipantSummary.add_member(:first_join_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "firstJoinTime"))
    ParticipantSummary.add_member(:published, ::Smithy::Schema::Shapes::MemberShape.new(target: Published, name: "published", traits: {"smithy.api#default" => false}))
    ParticipantSummary.add_member(:recording_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantRecordingState, name: "recordingState"))
    ParticipantSummary.add_member(:replication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationType, name: "replicationType"))
    ParticipantSummary.add_member(:replication_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationState, name: "replicationState"))
    ParticipantSummary.add_member(:source_stage_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StageArn, name: "sourceStageArn"))
    ParticipantSummary.add_member(:source_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StageSessionId, name: "sourceSessionId"))
    ParticipantSummary.type = Types::ParticipantSummary
    ParticipantThumbnailConfiguration.add_member(:target_interval_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ThumbnailIntervalSeconds, name: "targetIntervalSeconds"))
    ParticipantThumbnailConfiguration.add_member(:storage, ::Smithy::Schema::Shapes::MemberShape.new(target: ThumbnailStorageTypeList, name: "storage"))
    ParticipantThumbnailConfiguration.add_member(:recording_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ThumbnailRecordingMode, name: "recordingMode"))
    ParticipantThumbnailConfiguration.type = Types::ParticipantThumbnailConfiguration
    ParticipantToken.add_member(:participant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantTokenId, name: "participantId"))
    ParticipantToken.add_member(:token, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantTokenString, name: "token"))
    ParticipantToken.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantTokenUserId, name: "userId"))
    ParticipantToken.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantTokenAttributes, name: "attributes"))
    ParticipantToken.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantTokenDurationMinutes, name: "duration"))
    ParticipantToken.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantTokenCapabilities, name: "capabilities"))
    ParticipantToken.add_member(:expiration_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantTokenExpirationTime, name: "expirationTime"))
    ParticipantToken.type = Types::ParticipantToken
    ParticipantTokenAttributes.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    ParticipantTokenAttributes.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    ParticipantTokenCapabilities.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantTokenCapability, name: "member"))
    ParticipantTokenConfiguration.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantTokenDurationMinutes, name: "duration"))
    ParticipantTokenConfiguration.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantTokenUserId, name: "userId"))
    ParticipantTokenConfiguration.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantTokenAttributes, name: "attributes"))
    ParticipantTokenConfiguration.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantTokenCapabilities, name: "capabilities"))
    ParticipantTokenConfiguration.type = Types::ParticipantTokenConfiguration
    ParticipantTokenConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantTokenConfiguration, name: "member"))
    ParticipantTokenList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantToken, name: "member"))
    PendingVerification.add_member(:access_control_allow_origin, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accessControlAllowOrigin", traits: {"smithy.api#httpHeader" => "Access-Control-Allow-Origin"}))
    PendingVerification.add_member(:access_control_expose_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accessControlExposeHeaders", traits: {"smithy.api#httpHeader" => "Access-Control-Expose-Headers"}))
    PendingVerification.add_member(:cache_control, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cacheControl", traits: {"smithy.api#httpHeader" => "Cache-Control"}))
    PendingVerification.add_member(:content_security_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "contentSecurityPolicy", traits: {"smithy.api#httpHeader" => "Content-Security-Policy"}))
    PendingVerification.add_member(:strict_transport_security, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "strictTransportSecurity", traits: {"smithy.api#httpHeader" => "Strict-Transport-Security"}))
    PendingVerification.add_member(:x_content_type_options, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "xContentTypeOptions", traits: {"smithy.api#httpHeader" => "X-Content-Type-Options"}))
    PendingVerification.add_member(:x_frame_options, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "xFrameOptions", traits: {"smithy.api#httpHeader" => "X-Frame-Options"}))
    PendingVerification.add_member(:x_amzn_error_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "xAmznErrorType", traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    PendingVerification.add_member(:exception_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "exceptionMessage"))
    PendingVerification.type = Types::PendingVerification
    PipBehavior.add_member(:static, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STATIC", traits: {"smithy.api#enumValue" => "STATIC"}))
    PipBehavior.add_member(:dynamic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DYNAMIC", traits: {"smithy.api#enumValue" => "DYNAMIC"}))
    PipConfiguration.add_member(:featured_participant_attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeKey, name: "featuredParticipantAttribute"))
    PipConfiguration.add_member(:omit_stopped_video, ::Smithy::Schema::Shapes::MemberShape.new(target: OmitStoppedVideo, name: "omitStoppedVideo", traits: {"smithy.api#default" => false}))
    PipConfiguration.add_member(:video_fill_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: VideoFillMode, name: "videoFillMode"))
    PipConfiguration.add_member(:grid_gap, ::Smithy::Schema::Shapes::MemberShape.new(target: GridGap, name: "gridGap", traits: {"smithy.api#default" => 0}))
    PipConfiguration.add_member(:pip_participant_attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeKey, name: "pipParticipantAttribute"))
    PipConfiguration.add_member(:pip_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: PipBehavior, name: "pipBehavior"))
    PipConfiguration.add_member(:pip_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: PipOffset, name: "pipOffset", traits: {"smithy.api#default" => 0}))
    PipConfiguration.add_member(:pip_position, ::Smithy::Schema::Shapes::MemberShape.new(target: PipPosition, name: "pipPosition"))
    PipConfiguration.add_member(:pip_width, ::Smithy::Schema::Shapes::MemberShape.new(target: PipWidth, name: "pipWidth"))
    PipConfiguration.add_member(:pip_height, ::Smithy::Schema::Shapes::MemberShape.new(target: PipHeight, name: "pipHeight"))
    PipConfiguration.add_member(:participant_order_attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeKey, name: "participantOrderAttribute"))
    PipConfiguration.type = Types::PipConfiguration
    PipPosition.add_member(:top_left, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOP_LEFT", traits: {"smithy.api#enumValue" => "TOP_LEFT"}))
    PipPosition.add_member(:top_right, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOP_RIGHT", traits: {"smithy.api#enumValue" => "TOP_RIGHT"}))
    PipPosition.add_member(:bottom_left, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOTTOM_LEFT", traits: {"smithy.api#enumValue" => "BOTTOM_LEFT"}))
    PipPosition.add_member(:bottom_right, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOTTOM_RIGHT", traits: {"smithy.api#enumValue" => "BOTTOM_RIGHT"}))
    PublicKey.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicKeyArn, name: "arn"))
    PublicKey.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicKeyName, name: "name"))
    PublicKey.add_member(:public_key_material, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicKeyMaterial, name: "publicKeyMaterial"))
    PublicKey.add_member(:fingerprint, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicKeyFingerprint, name: "fingerprint"))
    PublicKey.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    PublicKey.type = Types::PublicKey
    PublicKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicKeySummary, name: "member"))
    PublicKeySummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicKeyArn, name: "arn"))
    PublicKeySummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicKeyName, name: "name"))
    PublicKeySummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    PublicKeySummary.type = Types::PublicKeySummary
    RecordingConfiguration.add_member(:hls_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositionRecordingHlsConfiguration, name: "hlsConfiguration"))
    RecordingConfiguration.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordingConfigurationFormat, name: "format"))
    RecordingConfiguration.type = Types::RecordingConfiguration
    ResourceNotFoundException.add_member(:access_control_allow_origin, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accessControlAllowOrigin", traits: {"smithy.api#httpHeader" => "Access-Control-Allow-Origin"}))
    ResourceNotFoundException.add_member(:access_control_expose_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accessControlExposeHeaders", traits: {"smithy.api#httpHeader" => "Access-Control-Expose-Headers"}))
    ResourceNotFoundException.add_member(:cache_control, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cacheControl", traits: {"smithy.api#httpHeader" => "Cache-Control"}))
    ResourceNotFoundException.add_member(:content_security_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "contentSecurityPolicy", traits: {"smithy.api#httpHeader" => "Content-Security-Policy"}))
    ResourceNotFoundException.add_member(:strict_transport_security, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "strictTransportSecurity", traits: {"smithy.api#httpHeader" => "Strict-Transport-Security"}))
    ResourceNotFoundException.add_member(:x_content_type_options, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "xContentTypeOptions", traits: {"smithy.api#httpHeader" => "X-Content-Type-Options"}))
    ResourceNotFoundException.add_member(:x_frame_options, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "xFrameOptions", traits: {"smithy.api#httpHeader" => "X-Frame-Options"}))
    ResourceNotFoundException.add_member(:x_amzn_error_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "xAmznErrorType", traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    ResourceNotFoundException.add_member(:exception_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "exceptionMessage"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3DestinationConfiguration.add_member(:storage_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageConfigurationArn, name: "storageConfigurationArn", traits: {"smithy.api#required" => {}}))
    S3DestinationConfiguration.add_member(:encoder_configuration_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: EncoderConfigurationArnList, name: "encoderConfigurationArns", traits: {"smithy.api#required" => {}}))
    S3DestinationConfiguration.add_member(:recording_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordingConfiguration, name: "recordingConfiguration"))
    S3DestinationConfiguration.add_member(:thumbnail_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositionThumbnailConfigurationList, name: "thumbnailConfigurations"))
    S3DestinationConfiguration.type = Types::S3DestinationConfiguration
    S3Detail.add_member(:recording_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "recordingPrefix", traits: {"smithy.api#required" => {}}))
    S3Detail.type = Types::S3Detail
    S3StorageConfiguration.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "bucketName", traits: {"smithy.api#required" => {}}))
    S3StorageConfiguration.type = Types::S3StorageConfiguration
    ServiceQuotaExceededException.add_member(:access_control_allow_origin, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accessControlAllowOrigin", traits: {"smithy.api#httpHeader" => "Access-Control-Allow-Origin"}))
    ServiceQuotaExceededException.add_member(:access_control_expose_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accessControlExposeHeaders", traits: {"smithy.api#httpHeader" => "Access-Control-Expose-Headers"}))
    ServiceQuotaExceededException.add_member(:cache_control, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cacheControl", traits: {"smithy.api#httpHeader" => "Cache-Control"}))
    ServiceQuotaExceededException.add_member(:content_security_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "contentSecurityPolicy", traits: {"smithy.api#httpHeader" => "Content-Security-Policy"}))
    ServiceQuotaExceededException.add_member(:strict_transport_security, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "strictTransportSecurity", traits: {"smithy.api#httpHeader" => "Strict-Transport-Security"}))
    ServiceQuotaExceededException.add_member(:x_content_type_options, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "xContentTypeOptions", traits: {"smithy.api#httpHeader" => "X-Content-Type-Options"}))
    ServiceQuotaExceededException.add_member(:x_frame_options, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "xFrameOptions", traits: {"smithy.api#httpHeader" => "X-Frame-Options"}))
    ServiceQuotaExceededException.add_member(:x_amzn_error_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "xAmznErrorType", traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    ServiceQuotaExceededException.add_member(:exception_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "exceptionMessage"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Stage.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StageArn, name: "arn", traits: {"smithy.api#required" => {}}))
    Stage.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StageName, name: "name"))
    Stage.add_member(:active_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StageSessionId, name: "activeSessionId"))
    Stage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    Stage.add_member(:auto_participant_recording_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoParticipantRecordingConfiguration, name: "autoParticipantRecordingConfiguration"))
    Stage.add_member(:endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: StageEndpoints, name: "endpoints"))
    Stage.type = Types::Stage
    StageEndpoints.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: StageEndpoint, name: "events"))
    StageEndpoints.add_member(:whip, ::Smithy::Schema::Shapes::MemberShape.new(target: StageEndpoint, name: "whip"))
    StageEndpoints.add_member(:rtmp, ::Smithy::Schema::Shapes::MemberShape.new(target: StageEndpoint, name: "rtmp"))
    StageEndpoints.add_member(:rtmps, ::Smithy::Schema::Shapes::MemberShape.new(target: StageEndpoint, name: "rtmps"))
    StageEndpoints.type = Types::StageEndpoints
    StageSession.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StageSessionId, name: "sessionId"))
    StageSession.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "startTime"))
    StageSession.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "endTime"))
    StageSession.type = Types::StageSession
    StageSessionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StageSessionSummary, name: "member"))
    StageSessionSummary.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StageSessionId, name: "sessionId"))
    StageSessionSummary.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "startTime"))
    StageSessionSummary.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "endTime"))
    StageSessionSummary.type = Types::StageSessionSummary
    StageSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StageArn, name: "arn", traits: {"smithy.api#required" => {}}))
    StageSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StageName, name: "name"))
    StageSummary.add_member(:active_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StageSessionId, name: "activeSessionId"))
    StageSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    StageSummary.type = Types::StageSummary
    StageSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StageSummary, name: "member"))
    StartCompositionRequest.add_member(:stage_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StageArn, name: "stageArn", traits: {"smithy.api#required" => {}}))
    StartCompositionRequest.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositionClientToken, name: "idempotencyToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartCompositionRequest.add_member(:layout, ::Smithy::Schema::Shapes::MemberShape.new(target: LayoutConfiguration, name: "layout"))
    StartCompositionRequest.add_member(:destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfigurationList, name: "destinations", traits: {"smithy.api#required" => {}}))
    StartCompositionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    StartCompositionRequest.type = Types::StartCompositionRequest
    StartCompositionResponse.add_member(:composition, ::Smithy::Schema::Shapes::MemberShape.new(target: Composition, name: "composition"))
    StartCompositionResponse.type = Types::StartCompositionResponse
    StartParticipantReplicationRequest.add_member(:source_stage_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StageArn, name: "sourceStageArn", traits: {"smithy.api#required" => {}}))
    StartParticipantReplicationRequest.add_member(:destination_stage_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StageArn, name: "destinationStageArn", traits: {"smithy.api#required" => {}}))
    StartParticipantReplicationRequest.add_member(:participant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantId, name: "participantId", traits: {"smithy.api#required" => {}}))
    StartParticipantReplicationRequest.add_member(:reconnect_window_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ReconnectWindowSeconds, name: "reconnectWindowSeconds"))
    StartParticipantReplicationRequest.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantAttributes, name: "attributes"))
    StartParticipantReplicationRequest.type = Types::StartParticipantReplicationRequest
    StartParticipantReplicationResponse.add_member(:access_control_allow_origin, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accessControlAllowOrigin", traits: {"smithy.api#httpHeader" => "Access-Control-Allow-Origin"}))
    StartParticipantReplicationResponse.add_member(:access_control_expose_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accessControlExposeHeaders", traits: {"smithy.api#httpHeader" => "Access-Control-Expose-Headers"}))
    StartParticipantReplicationResponse.add_member(:cache_control, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cacheControl", traits: {"smithy.api#httpHeader" => "Cache-Control"}))
    StartParticipantReplicationResponse.add_member(:content_security_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "contentSecurityPolicy", traits: {"smithy.api#httpHeader" => "Content-Security-Policy"}))
    StartParticipantReplicationResponse.add_member(:strict_transport_security, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "strictTransportSecurity", traits: {"smithy.api#httpHeader" => "Strict-Transport-Security"}))
    StartParticipantReplicationResponse.add_member(:x_content_type_options, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "xContentTypeOptions", traits: {"smithy.api#httpHeader" => "X-Content-Type-Options"}))
    StartParticipantReplicationResponse.add_member(:x_frame_options, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "xFrameOptions", traits: {"smithy.api#httpHeader" => "X-Frame-Options"}))
    StartParticipantReplicationResponse.type = Types::StartParticipantReplicationResponse
    StopCompositionRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositionArn, name: "arn", traits: {"smithy.api#required" => {}}))
    StopCompositionRequest.type = Types::StopCompositionRequest
    StopCompositionResponse.type = Types::StopCompositionResponse
    StopParticipantReplicationRequest.add_member(:source_stage_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StageArn, name: "sourceStageArn", traits: {"smithy.api#required" => {}}))
    StopParticipantReplicationRequest.add_member(:destination_stage_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StageArn, name: "destinationStageArn", traits: {"smithy.api#required" => {}}))
    StopParticipantReplicationRequest.add_member(:participant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantId, name: "participantId", traits: {"smithy.api#required" => {}}))
    StopParticipantReplicationRequest.type = Types::StopParticipantReplicationRequest
    StopParticipantReplicationResponse.add_member(:access_control_allow_origin, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accessControlAllowOrigin", traits: {"smithy.api#httpHeader" => "Access-Control-Allow-Origin"}))
    StopParticipantReplicationResponse.add_member(:access_control_expose_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accessControlExposeHeaders", traits: {"smithy.api#httpHeader" => "Access-Control-Expose-Headers"}))
    StopParticipantReplicationResponse.add_member(:cache_control, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cacheControl", traits: {"smithy.api#httpHeader" => "Cache-Control"}))
    StopParticipantReplicationResponse.add_member(:content_security_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "contentSecurityPolicy", traits: {"smithy.api#httpHeader" => "Content-Security-Policy"}))
    StopParticipantReplicationResponse.add_member(:strict_transport_security, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "strictTransportSecurity", traits: {"smithy.api#httpHeader" => "Strict-Transport-Security"}))
    StopParticipantReplicationResponse.add_member(:x_content_type_options, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "xContentTypeOptions", traits: {"smithy.api#httpHeader" => "X-Content-Type-Options"}))
    StopParticipantReplicationResponse.add_member(:x_frame_options, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "xFrameOptions", traits: {"smithy.api#httpHeader" => "X-Frame-Options"}))
    StopParticipantReplicationResponse.type = Types::StopParticipantReplicationResponse
    StorageConfiguration.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageConfigurationArn, name: "arn", traits: {"smithy.api#required" => {}}))
    StorageConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageConfigurationName, name: "name"))
    StorageConfiguration.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3StorageConfiguration, name: "s3"))
    StorageConfiguration.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    StorageConfiguration.type = Types::StorageConfiguration
    StorageConfigurationSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageConfigurationArn, name: "arn", traits: {"smithy.api#required" => {}}))
    StorageConfigurationSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageConfigurationName, name: "name"))
    StorageConfigurationSummary.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3StorageConfiguration, name: "s3"))
    StorageConfigurationSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    StorageConfigurationSummary.type = Types::StorageConfigurationSummary
    StorageConfigurationSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageConfigurationSummary, name: "member"))
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    Tags.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    Tags.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    ThumbnailRecordingMode.add_member(:interval, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERVAL", traits: {"smithy.api#enumValue" => "INTERVAL"}))
    ThumbnailRecordingMode.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ThumbnailStorageType.add_member(:sequential, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEQUENTIAL", traits: {"smithy.api#enumValue" => "SEQUENTIAL"}))
    ThumbnailStorageType.add_member(:latest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LATEST", traits: {"smithy.api#enumValue" => "LATEST"}))
    ThumbnailStorageTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ThumbnailStorageType, name: "member"))
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateIngestConfigurationRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestConfigurationArn, name: "arn", traits: {"smithy.api#required" => {}}))
    UpdateIngestConfigurationRequest.add_member(:stage_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestConfigurationStageArn, name: "stageArn"))
    UpdateIngestConfigurationRequest.type = Types::UpdateIngestConfigurationRequest
    UpdateIngestConfigurationResponse.add_member(:ingest_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestConfiguration, name: "ingestConfiguration"))
    UpdateIngestConfigurationResponse.type = Types::UpdateIngestConfigurationResponse
    UpdateStageInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StageArn, name: "arn", traits: {"smithy.api#required" => {}}))
    UpdateStageInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StageName, name: "name"))
    UpdateStageInput.add_member(:auto_participant_recording_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoParticipantRecordingConfiguration, name: "autoParticipantRecordingConfiguration"))
    UpdateStageInput.type = Types::UpdateStageInput
    UpdateStageOutput.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: Stage, name: "stage"))
    UpdateStageOutput.type = Types::UpdateStageOutput
    ValidationException.add_member(:access_control_allow_origin, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accessControlAllowOrigin", traits: {"smithy.api#httpHeader" => "Access-Control-Allow-Origin"}))
    ValidationException.add_member(:access_control_expose_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accessControlExposeHeaders", traits: {"smithy.api#httpHeader" => "Access-Control-Expose-Headers"}))
    ValidationException.add_member(:cache_control, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cacheControl", traits: {"smithy.api#httpHeader" => "Cache-Control"}))
    ValidationException.add_member(:content_security_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "contentSecurityPolicy", traits: {"smithy.api#httpHeader" => "Content-Security-Policy"}))
    ValidationException.add_member(:strict_transport_security, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "strictTransportSecurity", traits: {"smithy.api#httpHeader" => "Strict-Transport-Security"}))
    ValidationException.add_member(:x_content_type_options, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "xContentTypeOptions", traits: {"smithy.api#httpHeader" => "X-Content-Type-Options"}))
    ValidationException.add_member(:x_frame_options, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "xFrameOptions", traits: {"smithy.api#httpHeader" => "X-Frame-Options"}))
    ValidationException.add_member(:x_amzn_error_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "xAmznErrorType", traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    ValidationException.add_member(:exception_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "exceptionMessage"))
    ValidationException.type = Types::ValidationException
    Video.add_member(:width, ::Smithy::Schema::Shapes::MemberShape.new(target: Width, name: "width"))
    Video.add_member(:height, ::Smithy::Schema::Shapes::MemberShape.new(target: Height, name: "height"))
    Video.add_member(:framerate, ::Smithy::Schema::Shapes::MemberShape.new(target: Framerate, name: "framerate"))
    Video.add_member(:bitrate, ::Smithy::Schema::Shapes::MemberShape.new(target: Bitrate, name: "bitrate"))
    Video.type = Types::Video
    VideoAspectRatio.add_member(:auto, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTO", traits: {"smithy.api#enumValue" => "AUTO"}))
    VideoAspectRatio.add_member(:video, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VIDEO", traits: {"smithy.api#enumValue" => "VIDEO"}))
    VideoAspectRatio.add_member(:square, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SQUARE", traits: {"smithy.api#enumValue" => "SQUARE"}))
    VideoAspectRatio.add_member(:portrait, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PORTRAIT", traits: {"smithy.api#enumValue" => "PORTRAIT"}))
    VideoFillMode.add_member(:fill, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FILL", traits: {"smithy.api#enumValue" => "FILL"}))
    VideoFillMode.add_member(:cover, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COVER", traits: {"smithy.api#enumValue" => "COVER"}))
    VideoFillMode.add_member(:contain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAIN", traits: {"smithy.api#enumValue" => "CONTAIN"}))

    AmazonInteractiveVideoServiceRealTime = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.ivsrealtime#AmazonInteractiveVideoServiceRealTime"
      service.name = "AmazonInteractiveVideoServiceRealTime"
      service.version = "2020-07-14"
      service.traits = {"aws.api#service" => {"sdkId" => "IVS RealTime", "arnNamespace" => "ivs", "cloudFormationName" => "IVS", "cloudTrailEventSource" => "ivs.amazonaws.com", "endpointPrefix" => "ivsrealtime"}, "aws.auth#sigv4" => {"name" => "ivs"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["Content-Type", "X-Api-Key", "X-Amz-Content-Sha256", "X-Amz-User-Agent", "amz-sdk-invocation-id", "amz-sdk-request"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-errormessage", "x-amzn-trace-id", "x-amzn-requestid", "x-amz-apigw-id", "date"]}, "smithy.api#title" => "Amazon Interactive Video Service RealTime"}
      service.add_operation(:create_encoder_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#CreateEncoderConfiguration"
        operation.name = "CreateEncoderConfiguration"
        operation.input = CreateEncoderConfigurationRequest
        operation.output = CreateEncoderConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << PendingVerification
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateEncoderConfiguration"}}
      end)
      service.add_operation(:create_ingest_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#CreateIngestConfiguration"
        operation.name = "CreateIngestConfiguration"
        operation.input = CreateIngestConfigurationRequest
        operation.output = CreateIngestConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << PendingVerification
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateIngestConfiguration"}}
      end)
      service.add_operation(:create_participant_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#CreateParticipantToken"
        operation.name = "CreateParticipantToken"
        operation.input = CreateParticipantTokenInput
        operation.output = CreateParticipantTokenOutput
        operation.errors << AccessDeniedException
        operation.errors << PendingVerification
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateParticipantToken"}}
      end)
      service.add_operation(:create_stage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#CreateStage"
        operation.name = "CreateStage"
        operation.input = CreateStageInput
        operation.output = CreateStageOutput
        operation.errors << AccessDeniedException
        operation.errors << PendingVerification
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateStage"}}
      end)
      service.add_operation(:create_storage_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#CreateStorageConfiguration"
        operation.name = "CreateStorageConfiguration"
        operation.input = CreateStorageConfigurationRequest
        operation.output = CreateStorageConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << PendingVerification
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateStorageConfiguration"}}
      end)
      service.add_operation(:delete_encoder_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#DeleteEncoderConfiguration"
        operation.name = "DeleteEncoderConfiguration"
        operation.input = DeleteEncoderConfigurationRequest
        operation.output = DeleteEncoderConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteEncoderConfiguration"}}
      end)
      service.add_operation(:delete_ingest_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#DeleteIngestConfiguration"
        operation.name = "DeleteIngestConfiguration"
        operation.input = DeleteIngestConfigurationRequest
        operation.output = DeleteIngestConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << PendingVerification
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteIngestConfiguration"}}
      end)
      service.add_operation(:delete_public_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#DeletePublicKey"
        operation.name = "DeletePublicKey"
        operation.input = DeletePublicKeyRequest
        operation.output = DeletePublicKeyResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << PendingVerification
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeletePublicKey"}}
      end)
      service.add_operation(:delete_stage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#DeleteStage"
        operation.name = "DeleteStage"
        operation.input = DeleteStageInput
        operation.output = DeleteStageOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << PendingVerification
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteStage"}}
      end)
      service.add_operation(:delete_storage_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#DeleteStorageConfiguration"
        operation.name = "DeleteStorageConfiguration"
        operation.input = DeleteStorageConfigurationRequest
        operation.output = DeleteStorageConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteStorageConfiguration"}}
      end)
      service.add_operation(:disconnect_participant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#DisconnectParticipant"
        operation.name = "DisconnectParticipant"
        operation.input = DisconnectParticipantInput
        operation.output = DisconnectParticipantOutput
        operation.errors << AccessDeniedException
        operation.errors << PendingVerification
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DisconnectParticipant"}}
      end)
      service.add_operation(:get_composition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#GetComposition"
        operation.name = "GetComposition"
        operation.input = GetCompositionRequest
        operation.output = GetCompositionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetComposition"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_encoder_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#GetEncoderConfiguration"
        operation.name = "GetEncoderConfiguration"
        operation.input = GetEncoderConfigurationRequest
        operation.output = GetEncoderConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetEncoderConfiguration"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_ingest_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#GetIngestConfiguration"
        operation.name = "GetIngestConfiguration"
        operation.input = GetIngestConfigurationRequest
        operation.output = GetIngestConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetIngestConfiguration"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_participant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#GetParticipant"
        operation.name = "GetParticipant"
        operation.input = GetParticipantRequest
        operation.output = GetParticipantResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetParticipant"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_public_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#GetPublicKey"
        operation.name = "GetPublicKey"
        operation.input = GetPublicKeyRequest
        operation.output = GetPublicKeyResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetPublicKey"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_stage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#GetStage"
        operation.name = "GetStage"
        operation.input = GetStageInput
        operation.output = GetStageOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetStage"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_stage_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#GetStageSession"
        operation.name = "GetStageSession"
        operation.input = GetStageSessionRequest
        operation.output = GetStageSessionResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetStageSession"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_storage_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#GetStorageConfiguration"
        operation.name = "GetStorageConfiguration"
        operation.input = GetStorageConfigurationRequest
        operation.output = GetStorageConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetStorageConfiguration"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:import_public_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#ImportPublicKey"
        operation.name = "ImportPublicKey"
        operation.input = ImportPublicKeyRequest
        operation.output = ImportPublicKeyResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << PendingVerification
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ImportPublicKey"}}
      end)
      service.add_operation(:list_compositions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#ListCompositions"
        operation.name = "ListCompositions"
        operation.input = ListCompositionsRequest
        operation.output = ListCompositionsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListCompositions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCompositions.new
      end)
      service.add_operation(:list_encoder_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#ListEncoderConfigurations"
        operation.name = "ListEncoderConfigurations"
        operation.input = ListEncoderConfigurationsRequest
        operation.output = ListEncoderConfigurationsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListEncoderConfigurations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEncoderConfigurations.new
      end)
      service.add_operation(:list_ingest_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#ListIngestConfigurations"
        operation.name = "ListIngestConfigurations"
        operation.input = ListIngestConfigurationsRequest
        operation.output = ListIngestConfigurationsResponse
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListIngestConfigurations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListIngestConfigurations.new
      end)
      service.add_operation(:list_participant_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#ListParticipantEvents"
        operation.name = "ListParticipantEvents"
        operation.input = ListParticipantEventsRequest
        operation.output = ListParticipantEventsResponse
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListParticipantEvents"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListParticipantEvents.new
      end)
      service.add_operation(:list_participant_replicas, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#ListParticipantReplicas"
        operation.name = "ListParticipantReplicas"
        operation.input = ListParticipantReplicasRequest
        operation.output = ListParticipantReplicasResponse
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListParticipantReplicas"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListParticipantReplicas.new
      end)
      service.add_operation(:list_participants, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#ListParticipants"
        operation.name = "ListParticipants"
        operation.input = ListParticipantsRequest
        operation.output = ListParticipantsResponse
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListParticipants"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListParticipants.new
      end)
      service.add_operation(:list_public_keys, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#ListPublicKeys"
        operation.name = "ListPublicKeys"
        operation.input = ListPublicKeysRequest
        operation.output = ListPublicKeysResponse
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListPublicKeys"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPublicKeys.new
      end)
      service.add_operation(:list_stage_sessions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#ListStageSessions"
        operation.name = "ListStageSessions"
        operation.input = ListStageSessionsRequest
        operation.output = ListStageSessionsResponse
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListStageSessions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListStageSessions.new
      end)
      service.add_operation(:list_stages, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#ListStages"
        operation.name = "ListStages"
        operation.input = ListStagesInput
        operation.output = ListStagesOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListStages"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListStages.new
      end)
      service.add_operation(:list_storage_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#ListStorageConfigurations"
        operation.name = "ListStorageConfigurations"
        operation.input = ListStorageConfigurationsRequest
        operation.output = ListStorageConfigurationsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListStorageConfigurations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListStorageConfigurations.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:start_composition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#StartComposition"
        operation.name = "StartComposition"
        operation.input = StartCompositionRequest
        operation.output = StartCompositionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << PendingVerification
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/StartComposition"}}
      end)
      service.add_operation(:start_participant_replication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#StartParticipantReplication"
        operation.name = "StartParticipantReplication"
        operation.input = StartParticipantReplicationRequest
        operation.output = StartParticipantReplicationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << PendingVerification
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/StartParticipantReplication"}}
      end)
      service.add_operation(:stop_composition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#StopComposition"
        operation.name = "StopComposition"
        operation.input = StopCompositionRequest
        operation.output = StopCompositionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/StopComposition"}}
      end)
      service.add_operation(:stop_participant_replication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#StopParticipantReplication"
        operation.name = "StopParticipantReplication"
        operation.input = StopParticipantReplicationRequest
        operation.output = StopParticipantReplicationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/StopParticipantReplication"}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_ingest_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#UpdateIngestConfiguration"
        operation.name = "UpdateIngestConfiguration"
        operation.input = UpdateIngestConfigurationRequest
        operation.output = UpdateIngestConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << PendingVerification
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateIngestConfiguration"}}
      end)
      service.add_operation(:update_stage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#UpdateStage"
        operation.name = "UpdateStage"
        operation.input = UpdateStageInput
        operation.output = UpdateStageOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << PendingVerification
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateStage"}}
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
