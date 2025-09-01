# frozen_string_literal: true

# This is generated code!

module Aws::IVSRealTime
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AttributeKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#AttributeKey', name: 'AttributeKey', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]*$"})
    AutoParticipantRecordingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#AutoParticipantRecordingConfiguration', name: 'AutoParticipantRecordingConfiguration')
    AutoParticipantRecordingStorageConfigurationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#AutoParticipantRecordingStorageConfigurationArn', name: 'AutoParticipantRecordingStorageConfigurationArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^^$|^arn:aws:ivs:[a-z0-9-]+:[0-9]+:storage-configuration/[a-zA-Z0-9-]+$$"})
    Bitrate = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ivsrealtime#Bitrate', name: 'Bitrate', traits: {"smithy.api#range" => {"min" => 1, "max" => 8500000}})
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.ivsrealtime#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    ChannelArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#ChannelArn', name: 'ChannelArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:aws:ivs:[a-z0-9-]+:[0-9]+:channel/[a-zA-Z0-9-]+$"})
    ChannelDestinationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#ChannelDestinationConfiguration', name: 'ChannelDestinationConfiguration')
    Composition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#Composition', name: 'Composition')
    CompositionArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#CompositionArn', name: 'CompositionArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:aws:ivs:[a-z0-9-]+:[0-9]+:composition/[a-zA-Z0-9-]+$"})
    CompositionClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#CompositionClientToken', name: 'CompositionClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]*$"})
    CompositionRecordingHlsConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#CompositionRecordingHlsConfiguration', name: 'CompositionRecordingHlsConfiguration')
    CompositionRecordingTargetSegmentDurationSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ivsrealtime#CompositionRecordingTargetSegmentDurationSeconds', name: 'CompositionRecordingTargetSegmentDurationSeconds', traits: {"smithy.api#default" => 2, "smithy.api#range" => {"min" => 2, "max" => 10}})
    CompositionState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#CompositionState', name: 'CompositionState', traits: {"smithy.api#enum" => [{"value" => "STARTING", "name" => "STARTING"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "STOPPING", "name" => "STOPPING"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "STOPPED", "name" => "STOPPED"}]})
    CompositionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#CompositionSummary', name: 'CompositionSummary')
    CompositionSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivsrealtime#CompositionSummaryList', name: 'CompositionSummaryList')
    CompositionThumbnailConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#CompositionThumbnailConfiguration', name: 'CompositionThumbnailConfiguration')
    CompositionThumbnailConfigurationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivsrealtime#CompositionThumbnailConfigurationList', name: 'CompositionThumbnailConfigurationList', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateEncoderConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#CreateEncoderConfigurationRequest', name: 'CreateEncoderConfigurationRequest')
    CreateEncoderConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#CreateEncoderConfigurationResponse', name: 'CreateEncoderConfigurationResponse')
    CreateIngestConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#CreateIngestConfigurationRequest', name: 'CreateIngestConfigurationRequest')
    CreateIngestConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#CreateIngestConfigurationResponse', name: 'CreateIngestConfigurationResponse')
    CreateParticipantTokenInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#CreateParticipantTokenInput', name: 'CreateParticipantTokenInput')
    CreateParticipantTokenOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#CreateParticipantTokenOutput', name: 'CreateParticipantTokenOutput')
    CreateStageInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#CreateStageInput', name: 'CreateStageInput')
    CreateStageOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#CreateStageOutput', name: 'CreateStageOutput')
    CreateStorageConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#CreateStorageConfigurationRequest', name: 'CreateStorageConfigurationRequest')
    CreateStorageConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#CreateStorageConfigurationResponse', name: 'CreateStorageConfigurationResponse')
    DeleteEncoderConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#DeleteEncoderConfigurationRequest', name: 'DeleteEncoderConfigurationRequest')
    DeleteEncoderConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#DeleteEncoderConfigurationResponse', name: 'DeleteEncoderConfigurationResponse')
    DeleteIngestConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#DeleteIngestConfigurationRequest', name: 'DeleteIngestConfigurationRequest')
    DeleteIngestConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#DeleteIngestConfigurationResponse', name: 'DeleteIngestConfigurationResponse')
    DeletePublicKeyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#DeletePublicKeyRequest', name: 'DeletePublicKeyRequest')
    DeletePublicKeyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#DeletePublicKeyResponse', name: 'DeletePublicKeyResponse')
    DeleteStageInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#DeleteStageInput', name: 'DeleteStageInput')
    DeleteStageOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#DeleteStageOutput', name: 'DeleteStageOutput')
    DeleteStorageConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#DeleteStorageConfigurationRequest', name: 'DeleteStorageConfigurationRequest')
    DeleteStorageConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#DeleteStorageConfigurationResponse', name: 'DeleteStorageConfigurationResponse')
    Destination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#Destination', name: 'Destination')
    DestinationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#DestinationConfiguration', name: 'DestinationConfiguration')
    DestinationConfigurationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivsrealtime#DestinationConfigurationList', name: 'DestinationConfigurationList', traits: {"smithy.api#length" => {"min" => 1, "max" => 2}, "smithy.api#uniqueItems" => {}})
    DestinationConfigurationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#DestinationConfigurationName', name: 'DestinationConfigurationName', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]*$"})
    DestinationDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#DestinationDetail', name: 'DestinationDetail')
    DestinationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivsrealtime#DestinationList', name: 'DestinationList', traits: {"smithy.api#length" => {"min" => 1, "max" => 2}, "smithy.api#uniqueItems" => {}})
    DestinationState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#DestinationState', name: 'DestinationState', traits: {"smithy.api#enum" => [{"name" => "STARTING", "value" => "STARTING"}, {"name" => "ACTIVE", "value" => "ACTIVE"}, {"name" => "STOPPING", "value" => "STOPPING"}, {"name" => "RECONNECTING", "value" => "RECONNECTING"}, {"name" => "FAILED", "value" => "FAILED"}, {"name" => "STOPPED", "value" => "STOPPED"}]})
    DestinationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#DestinationSummary', name: 'DestinationSummary')
    DestinationSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivsrealtime#DestinationSummaryList', name: 'DestinationSummaryList', traits: {"smithy.api#length" => {"min" => 1, "max" => 2}, "smithy.api#uniqueItems" => {}})
    DisconnectParticipantInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#DisconnectParticipantInput', name: 'DisconnectParticipantInput')
    DisconnectParticipantOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#DisconnectParticipantOutput', name: 'DisconnectParticipantOutput')
    DisconnectParticipantReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#DisconnectParticipantReason', name: 'DisconnectParticipantReason', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    EncoderConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#EncoderConfiguration', name: 'EncoderConfiguration')
    EncoderConfigurationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#EncoderConfigurationArn', name: 'EncoderConfigurationArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:aws:ivs:[a-z0-9-]+:[0-9]+:encoder-configuration/[a-zA-Z0-9-]+$"})
    EncoderConfigurationArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivsrealtime#EncoderConfigurationArnList', name: 'EncoderConfigurationArnList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    EncoderConfigurationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#EncoderConfigurationName', name: 'EncoderConfigurationName', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]*$"})
    EncoderConfigurationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#EncoderConfigurationSummary', name: 'EncoderConfigurationSummary')
    EncoderConfigurationSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivsrealtime#EncoderConfigurationSummaryList', name: 'EncoderConfigurationSummaryList')
    Event = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#Event', name: 'Event')
    EventErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ivsrealtime#EventErrorCode', name: 'EventErrorCode')
    EventList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivsrealtime#EventList', name: 'EventList')
    EventName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#EventName', name: 'EventName', traits: {"smithy.api#enum" => [{"value" => "JOINED", "name" => "JOINED"}, {"value" => "LEFT", "name" => "LEFT"}, {"value" => "PUBLISH_STARTED", "name" => "PUBLISH_STARTED"}, {"value" => "PUBLISH_STOPPED", "name" => "PUBLISH_STOPPED"}, {"value" => "SUBSCRIBE_STARTED", "name" => "SUBSCRIBE_STARTED"}, {"value" => "SUBSCRIBE_STOPPED", "name" => "SUBSCRIBE_STOPPED"}, {"value" => "PUBLISH_ERROR", "name" => "PUBLISH_ERROR"}, {"value" => "SUBSCRIBE_ERROR", "name" => "SUBSCRIBE_ERROR"}, {"value" => "JOIN_ERROR", "name" => "JOIN_ERROR"}, {"value" => "REPLICATION_STARTED", "name" => "REPLICATION_STARTED"}, {"value" => "REPLICATION_STOPPED", "name" => "REPLICATION_STOPPED"}]})
    Framerate = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.ivsrealtime#Framerate', name: 'Framerate', traits: {"smithy.api#range" => {"min" => 1, "max" => 60}})
    GetCompositionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#GetCompositionRequest', name: 'GetCompositionRequest')
    GetCompositionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#GetCompositionResponse', name: 'GetCompositionResponse')
    GetEncoderConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#GetEncoderConfigurationRequest', name: 'GetEncoderConfigurationRequest')
    GetEncoderConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#GetEncoderConfigurationResponse', name: 'GetEncoderConfigurationResponse')
    GetIngestConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#GetIngestConfigurationRequest', name: 'GetIngestConfigurationRequest')
    GetIngestConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#GetIngestConfigurationResponse', name: 'GetIngestConfigurationResponse')
    GetParticipantRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#GetParticipantRequest', name: 'GetParticipantRequest')
    GetParticipantResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#GetParticipantResponse', name: 'GetParticipantResponse')
    GetPublicKeyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#GetPublicKeyRequest', name: 'GetPublicKeyRequest')
    GetPublicKeyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#GetPublicKeyResponse', name: 'GetPublicKeyResponse')
    GetStageInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#GetStageInput', name: 'GetStageInput')
    GetStageOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#GetStageOutput', name: 'GetStageOutput')
    GetStageSessionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#GetStageSessionRequest', name: 'GetStageSessionRequest')
    GetStageSessionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#GetStageSessionResponse', name: 'GetStageSessionResponse')
    GetStorageConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#GetStorageConfigurationRequest', name: 'GetStorageConfigurationRequest')
    GetStorageConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#GetStorageConfigurationResponse', name: 'GetStorageConfigurationResponse')
    GridConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#GridConfiguration', name: 'GridConfiguration')
    GridGap = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ivsrealtime#GridGap', name: 'GridGap', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    Height = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ivsrealtime#Height', name: 'Height', traits: {"smithy.api#range" => {"min" => 2, "max" => 1920}})
    ImportPublicKeyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#ImportPublicKeyRequest', name: 'ImportPublicKeyRequest')
    ImportPublicKeyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#ImportPublicKeyResponse', name: 'ImportPublicKeyResponse')
    IngestConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#IngestConfiguration', name: 'IngestConfiguration')
    IngestConfigurationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#IngestConfigurationArn', name: 'IngestConfigurationArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:aws:ivs:[a-z0-9-]+:[0-9]+:ingest-configuration/[a-zA-Z0-9-]+$"})
    IngestConfigurationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivsrealtime#IngestConfigurationList', name: 'IngestConfigurationList')
    IngestConfigurationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#IngestConfigurationName', name: 'IngestConfigurationName', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]*$"})
    IngestConfigurationStageArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#IngestConfigurationStageArn', name: 'IngestConfigurationStageArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^^$|^arn:aws:ivs:[a-z0-9-]+:[0-9]+:stage/[a-zA-Z0-9-]+$$"})
    IngestConfigurationState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#IngestConfigurationState', name: 'IngestConfigurationState', traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "INACTIVE", "name" => "INACTIVE"}]})
    IngestConfigurationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#IngestConfigurationSummary', name: 'IngestConfigurationSummary')
    IngestProtocol = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ivsrealtime#IngestProtocol', name: 'IngestProtocol')
    InsecureIngest = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.ivsrealtime#InsecureIngest', name: 'InsecureIngest', traits: {"smithy.api#default" => false})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    LayoutConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#LayoutConfiguration', name: 'LayoutConfiguration')
    ListCompositionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#ListCompositionsRequest', name: 'ListCompositionsRequest')
    ListCompositionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#ListCompositionsResponse', name: 'ListCompositionsResponse')
    ListEncoderConfigurationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#ListEncoderConfigurationsRequest', name: 'ListEncoderConfigurationsRequest')
    ListEncoderConfigurationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#ListEncoderConfigurationsResponse', name: 'ListEncoderConfigurationsResponse')
    ListIngestConfigurationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#ListIngestConfigurationsRequest', name: 'ListIngestConfigurationsRequest')
    ListIngestConfigurationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#ListIngestConfigurationsResponse', name: 'ListIngestConfigurationsResponse')
    ListParticipantEventsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#ListParticipantEventsRequest', name: 'ListParticipantEventsRequest')
    ListParticipantEventsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#ListParticipantEventsResponse', name: 'ListParticipantEventsResponse')
    ListParticipantReplicasRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#ListParticipantReplicasRequest', name: 'ListParticipantReplicasRequest')
    ListParticipantReplicasResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#ListParticipantReplicasResponse', name: 'ListParticipantReplicasResponse')
    ListParticipantsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#ListParticipantsRequest', name: 'ListParticipantsRequest')
    ListParticipantsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#ListParticipantsResponse', name: 'ListParticipantsResponse')
    ListPublicKeysRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#ListPublicKeysRequest', name: 'ListPublicKeysRequest')
    ListPublicKeysResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#ListPublicKeysResponse', name: 'ListPublicKeysResponse')
    ListStageSessionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#ListStageSessionsRequest', name: 'ListStageSessionsRequest')
    ListStageSessionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#ListStageSessionsResponse', name: 'ListStageSessionsResponse')
    ListStagesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#ListStagesInput', name: 'ListStagesInput')
    ListStagesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#ListStagesOutput', name: 'ListStagesOutput')
    ListStorageConfigurationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#ListStorageConfigurationsRequest', name: 'ListStorageConfigurationsRequest')
    ListStorageConfigurationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#ListStorageConfigurationsResponse', name: 'ListStorageConfigurationsResponse')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    MaxCompositionResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ivsrealtime#MaxCompositionResults', name: 'MaxCompositionResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxEncoderConfigurationResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ivsrealtime#MaxEncoderConfigurationResults', name: 'MaxEncoderConfigurationResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxIngestConfigurationResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ivsrealtime#MaxIngestConfigurationResults', name: 'MaxIngestConfigurationResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxParticipantEventResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ivsrealtime#MaxParticipantEventResults', name: 'MaxParticipantEventResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxParticipantReplicaResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ivsrealtime#MaxParticipantReplicaResults', name: 'MaxParticipantReplicaResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxParticipantResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ivsrealtime#MaxParticipantResults', name: 'MaxParticipantResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxPublicKeyResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ivsrealtime#MaxPublicKeyResults', name: 'MaxPublicKeyResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxStageResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ivsrealtime#MaxStageResults', name: 'MaxStageResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxStageSessionResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ivsrealtime#MaxStageSessionResults', name: 'MaxStageSessionResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxStorageConfigurationResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ivsrealtime#MaxStorageConfigurationResults', name: 'MaxStorageConfigurationResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    OmitStoppedVideo = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.ivsrealtime#OmitStoppedVideo', name: 'OmitStoppedVideo', traits: {"smithy.api#default" => false})
    PaginationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[a-zA-Z0-9+/=_-]*$"})
    Participant = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#Participant', name: 'Participant')
    ParticipantAttributes = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.ivsrealtime#ParticipantAttributes', name: 'ParticipantAttributes')
    ParticipantClientAttribute = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#ParticipantClientAttribute', name: 'ParticipantClientAttribute', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_.,:;\\s]*$"})
    ParticipantId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#ParticipantId', name: 'ParticipantId', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-]*$"})
    ParticipantList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivsrealtime#ParticipantList', name: 'ParticipantList')
    ParticipantProtocol = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ivsrealtime#ParticipantProtocol', name: 'ParticipantProtocol')
    ParticipantRecordingFilterByRecordingState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#ParticipantRecordingFilterByRecordingState', name: 'ParticipantRecordingFilterByRecordingState', traits: {"smithy.api#enum" => [{"value" => "STARTING", "name" => "STARTING"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "STOPPING", "name" => "STOPPING"}, {"value" => "STOPPED", "name" => "STOPPED"}, {"value" => "FAILED", "name" => "FAILED"}]})
    ParticipantRecordingHlsConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#ParticipantRecordingHlsConfiguration', name: 'ParticipantRecordingHlsConfiguration')
    ParticipantRecordingMediaType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ivsrealtime#ParticipantRecordingMediaType', name: 'ParticipantRecordingMediaType')
    ParticipantRecordingMediaTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivsrealtime#ParticipantRecordingMediaTypeList', name: 'ParticipantRecordingMediaTypeList', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    ParticipantRecordingReconnectWindowSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ivsrealtime#ParticipantRecordingReconnectWindowSeconds', name: 'ParticipantRecordingReconnectWindowSeconds', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 300}})
    ParticipantRecordingS3BucketName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#ParticipantRecordingS3BucketName', name: 'ParticipantRecordingS3BucketName', traits: {"smithy.api#length" => {"min" => 0, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9-.]*$"})
    ParticipantRecordingS3Prefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#ParticipantRecordingS3Prefix', name: 'ParticipantRecordingS3Prefix', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9-]*$"})
    ParticipantRecordingState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#ParticipantRecordingState', name: 'ParticipantRecordingState', traits: {"smithy.api#enum" => [{"value" => "STARTING", "name" => "STARTING"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "STOPPING", "name" => "STOPPING"}, {"value" => "STOPPED", "name" => "STOPPED"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "DISABLED", "name" => "DISABLED"}]})
    ParticipantRecordingTargetSegmentDurationSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ivsrealtime#ParticipantRecordingTargetSegmentDurationSeconds', name: 'ParticipantRecordingTargetSegmentDurationSeconds', traits: {"smithy.api#default" => 6, "smithy.api#range" => {"min" => 2, "max" => 10}})
    ParticipantReplica = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#ParticipantReplica', name: 'ParticipantReplica')
    ParticipantReplicaList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivsrealtime#ParticipantReplicaList', name: 'ParticipantReplicaList')
    ParticipantState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#ParticipantState', name: 'ParticipantState', traits: {"smithy.api#enum" => [{"value" => "CONNECTED", "name" => "CONNECTED"}, {"value" => "DISCONNECTED", "name" => "DISCONNECTED"}]})
    ParticipantSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#ParticipantSummary', name: 'ParticipantSummary')
    ParticipantThumbnailConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#ParticipantThumbnailConfiguration', name: 'ParticipantThumbnailConfiguration')
    ParticipantToken = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#ParticipantToken', name: 'ParticipantToken')
    ParticipantTokenAttributes = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.ivsrealtime#ParticipantTokenAttributes', name: 'ParticipantTokenAttributes')
    ParticipantTokenCapabilities = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivsrealtime#ParticipantTokenCapabilities', name: 'ParticipantTokenCapabilities', traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    ParticipantTokenCapability = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#ParticipantTokenCapability', name: 'ParticipantTokenCapability', traits: {"smithy.api#enum" => [{"value" => "PUBLISH", "name" => "PUBLISH"}, {"value" => "SUBSCRIBE", "name" => "SUBSCRIBE"}]})
    ParticipantTokenConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#ParticipantTokenConfiguration', name: 'ParticipantTokenConfiguration')
    ParticipantTokenConfigurations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivsrealtime#ParticipantTokenConfigurations', name: 'ParticipantTokenConfigurations', traits: {"smithy.api#length" => {"min" => 0, "max" => 12}})
    ParticipantTokenDurationMinutes = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ivsrealtime#ParticipantTokenDurationMinutes', name: 'ParticipantTokenDurationMinutes', traits: {"smithy.api#range" => {"min" => 1, "max" => 20160}})
    ParticipantTokenExpirationTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.ivsrealtime#ParticipantTokenExpirationTime', name: 'ParticipantTokenExpirationTime', traits: {"smithy.api#timestampFormat" => "date-time"})
    ParticipantTokenId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#ParticipantTokenId', name: 'ParticipantTokenId', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]*$"})
    ParticipantTokenList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivsrealtime#ParticipantTokenList', name: 'ParticipantTokenList')
    ParticipantTokenString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#ParticipantTokenString', name: 'ParticipantTokenString', traits: {"smithy.api#sensitive" => {}})
    ParticipantTokenUserId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#ParticipantTokenUserId', name: 'ParticipantTokenUserId', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    PendingVerification = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#PendingVerification', name: 'PendingVerification', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    PipBehavior = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ivsrealtime#PipBehavior', name: 'PipBehavior')
    PipConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#PipConfiguration', name: 'PipConfiguration')
    PipHeight = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ivsrealtime#PipHeight', name: 'PipHeight', traits: {"smithy.api#range" => {"min" => 1}})
    PipOffset = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ivsrealtime#PipOffset', name: 'PipOffset', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    PipPosition = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ivsrealtime#PipPosition', name: 'PipPosition')
    PipWidth = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ivsrealtime#PipWidth', name: 'PipWidth', traits: {"smithy.api#range" => {"min" => 1}})
    PublicKey = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#PublicKey', name: 'PublicKey')
    PublicKeyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#PublicKeyArn', name: 'PublicKeyArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:aws:ivs:[a-z0-9-]+:[0-9]+:public-key/[a-zA-Z0-9-]+$"})
    PublicKeyFingerprint = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#PublicKeyFingerprint', name: 'PublicKeyFingerprint')
    PublicKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivsrealtime#PublicKeyList', name: 'PublicKeyList')
    PublicKeyMaterial = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#PublicKeyMaterial', name: 'PublicKeyMaterial', traits: {"smithy.api#pattern" => "-----BEGIN PUBLIC KEY-----\\r?\\n([a-zA-Z0-9+/=\\r\\n]+)\\r?\\n-----END PUBLIC KEY-----(\\r?\\n)?"})
    PublicKeyName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#PublicKeyName', name: 'PublicKeyName', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]*$"})
    PublicKeySummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#PublicKeySummary', name: 'PublicKeySummary')
    Published = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.ivsrealtime#Published', name: 'Published', traits: {"smithy.api#default" => false})
    ReconnectWindowSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ivsrealtime#ReconnectWindowSeconds', name: 'ReconnectWindowSeconds', traits: {"smithy.api#range" => {"min" => 0, "max" => 60}})
    RecordParticipantReplicas = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.ivsrealtime#RecordParticipantReplicas', name: 'RecordParticipantReplicas', traits: {"smithy.api#default" => false})
    RecordingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#RecordingConfiguration', name: 'RecordingConfiguration')
    RecordingConfigurationFormat = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#RecordingConfigurationFormat', name: 'RecordingConfigurationFormat', traits: {"smithy.api#enum" => [{"value" => "HLS", "name" => "HLS"}]})
    Replica = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.ivsrealtime#Replica', name: 'Replica', traits: {"smithy.api#default" => false})
    ReplicationState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#ReplicationState', name: 'ReplicationState', traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "STOPPED", "name" => "STOPPED"}]})
    ReplicationType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#ReplicationType', name: 'ReplicationType', traits: {"smithy.api#enum" => [{"value" => "SOURCE", "name" => "SOURCE"}, {"value" => "REPLICA", "name" => "REPLICA"}, {"value" => "NONE", "name" => "NONE"}]})
    ResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#ResourceArn', name: 'ResourceArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:aws:ivs:[a-z0-9-]+:[0-9]+:[a-z-]/[a-zA-Z0-9-]+$"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    S3BucketName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#S3BucketName', name: 'S3BucketName', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9-.]+$"})
    S3DestinationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#S3DestinationConfiguration', name: 'S3DestinationConfiguration')
    S3Detail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#S3Detail', name: 'S3Detail')
    S3StorageConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#S3StorageConfiguration', name: 'S3StorageConfiguration')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Stage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#Stage', name: 'Stage')
    StageArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#StageArn', name: 'StageArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:aws:ivs:[a-z0-9-]+:[0-9]+:stage/[a-zA-Z0-9-]+$"})
    StageEndpoint = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#StageEndpoint', name: 'StageEndpoint', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    StageEndpoints = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#StageEndpoints', name: 'StageEndpoints')
    StageName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#StageName', name: 'StageName', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]*$"})
    StageSession = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#StageSession', name: 'StageSession')
    StageSessionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#StageSessionId', name: 'StageSessionId', traits: {"smithy.api#length" => {"min" => 16, "max" => 16}, "smithy.api#pattern" => "^st-[a-zA-Z0-9]+$"})
    StageSessionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivsrealtime#StageSessionList', name: 'StageSessionList')
    StageSessionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#StageSessionSummary', name: 'StageSessionSummary')
    StageSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#StageSummary', name: 'StageSummary')
    StageSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivsrealtime#StageSummaryList', name: 'StageSummaryList')
    StartCompositionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#StartCompositionRequest', name: 'StartCompositionRequest')
    StartCompositionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#StartCompositionResponse', name: 'StartCompositionResponse')
    StartParticipantReplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#StartParticipantReplicationRequest', name: 'StartParticipantReplicationRequest')
    StartParticipantReplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#StartParticipantReplicationResponse', name: 'StartParticipantReplicationResponse')
    StopCompositionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#StopCompositionRequest', name: 'StopCompositionRequest')
    StopCompositionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#StopCompositionResponse', name: 'StopCompositionResponse')
    StopParticipantReplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#StopParticipantReplicationRequest', name: 'StopParticipantReplicationRequest')
    StopParticipantReplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#StopParticipantReplicationResponse', name: 'StopParticipantReplicationResponse')
    StorageConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#StorageConfiguration', name: 'StorageConfiguration')
    StorageConfigurationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#StorageConfigurationArn', name: 'StorageConfigurationArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:aws:ivs:[a-z0-9-]+:[0-9]+:storage-configuration/[a-zA-Z0-9-]+$"})
    StorageConfigurationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#StorageConfigurationName', name: 'StorageConfigurationName', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]*$"})
    StorageConfigurationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#StorageConfigurationSummary', name: 'StorageConfigurationSummary')
    StorageConfigurationSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivsrealtime#StorageConfigurationSummaryList', name: 'StorageConfigurationSummaryList')
    StreamKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#StreamKey', name: 'StreamKey', traits: {"smithy.api#pattern" => "^rt_[0-9]+_[a-z0-9-]+_[a-zA-Z0-9-]+_.+$", "smithy.api#sensitive" => {}})
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#String', name: 'String')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivsrealtime#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"max" => 256}})
    Tags = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.ivsrealtime#Tags', name: 'Tags', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ThumbnailIntervalSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ivsrealtime#ThumbnailIntervalSeconds', name: 'ThumbnailIntervalSeconds', traits: {"smithy.api#range" => {"min" => 1, "max" => 86400}})
    ThumbnailRecordingMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ivsrealtime#ThumbnailRecordingMode', name: 'ThumbnailRecordingMode')
    ThumbnailStorageType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ivsrealtime#ThumbnailStorageType', name: 'ThumbnailStorageType')
    ThumbnailStorageTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ivsrealtime#ThumbnailStorageTypeList', name: 'ThumbnailStorageTypeList', traits: {"smithy.api#length" => {"min" => 0, "max" => 2}, "smithy.api#uniqueItems" => {}})
    Time = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.ivsrealtime#Time', name: 'Time', traits: {"smithy.api#timestampFormat" => "date-time"})
    UntagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateIngestConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#UpdateIngestConfigurationRequest', name: 'UpdateIngestConfigurationRequest')
    UpdateIngestConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#UpdateIngestConfigurationResponse', name: 'UpdateIngestConfigurationResponse')
    UpdateStageInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#UpdateStageInput', name: 'UpdateStageInput')
    UpdateStageOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#UpdateStageOutput', name: 'UpdateStageOutput')
    UserId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#UserId', name: 'UserId', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Video = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ivsrealtime#Video', name: 'Video')
    VideoAspectRatio = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ivsrealtime#VideoAspectRatio', name: 'VideoAspectRatio')
    VideoFillMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ivsrealtime#VideoFillMode', name: 'VideoFillMode')
    Width = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ivsrealtime#Width', name: 'Width', traits: {"smithy.api#range" => {"min" => 2, "max" => 1920}})
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ivsrealtime#errorMessage', name: 'ErrorMessage')

    AccessDeniedException.add_member(:access_control_allow_origin, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accessControlAllowOrigin', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Access-Control-Allow-Origin"}))
    AccessDeniedException.add_member(:access_control_expose_headers, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accessControlExposeHeaders', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Access-Control-Expose-Headers"}))
    AccessDeniedException.add_member(:cache_control, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'cacheControl', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Cache-Control"}))
    AccessDeniedException.add_member(:content_security_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'contentSecurityPolicy', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Content-Security-Policy"}))
    AccessDeniedException.add_member(:strict_transport_security, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'strictTransportSecurity', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Strict-Transport-Security"}))
    AccessDeniedException.add_member(:x_content_type_options, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'xContentTypeOptions', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "X-Content-Type-Options"}))
    AccessDeniedException.add_member(:x_frame_options, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'xFrameOptions', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "X-Frame-Options"}))
    AccessDeniedException.add_member(:x_amzn_error_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'xAmznErrorType', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    AccessDeniedException.add_member(:exception_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'exceptionMessage', traits: {"smithy.api#documentation" => "<p>User does not have sufficient access to perform this action.</p>"}))
    AccessDeniedException.type = Types::AccessDeniedException
    AutoParticipantRecordingConfiguration.add_member(:storage_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoParticipantRecordingStorageConfigurationArn, location_name: 'storageConfigurationArn', traits: {"smithy.api#documentation" => "<p>ARN of the <a>StorageConfiguration</a> resource to use for individual\n         participant recording. Default: <code>\"\"</code> (empty string, no storage configuration is\n         specified). Individual participant recording cannot be started unless a storage\n         configuration is specified, when a <a>Stage</a> is created or updated. To\n         disable individual participant recording, set this to <code>\"\"</code>; other fields in this object will\n         get reset to their defaults when sending <code>\"\"</code>. </p>", "smithy.api#required" => {}}))
    AutoParticipantRecordingConfiguration.add_member(:media_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantRecordingMediaTypeList, location_name: 'mediaTypes', traits: {"smithy.api#documentation" => "<p>Types of media to be recorded. Default: <code>AUDIO_VIDEO</code>.</p>"}))
    AutoParticipantRecordingConfiguration.add_member(:thumbnail_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantThumbnailConfiguration, location_name: 'thumbnailConfiguration', traits: {"smithy.api#documentation" => "<p>A complex type that allows you to enable/disable the recording of thumbnails for\n         individual participant recording and modify the interval at which thumbnails are generated\n         for the live session.</p>"}))
    AutoParticipantRecordingConfiguration.add_member(:recording_reconnect_window_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantRecordingReconnectWindowSeconds, location_name: 'recordingReconnectWindowSeconds', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>If a stage publisher disconnects and then reconnects within the specified interval, \n\t  the multiple recordings will be considered a single recording and merged together.</p>\n         <p>The default value is 0, which disables merging.</p>"}))
    AutoParticipantRecordingConfiguration.add_member(:hls_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantRecordingHlsConfiguration, location_name: 'hlsConfiguration', traits: {"smithy.api#documentation" => "<p>HLS configuration object for individual participant recording.</p>"}))
    AutoParticipantRecordingConfiguration.add_member(:record_participant_replicas, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordParticipantReplicas, location_name: 'recordParticipantReplicas', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Optional field to disable replica participant recording. If this is set to <code>false</code> when a \n\t  participant is a replica, replica participants are not recorded. Default: <code>true</code>.</p>"}))
    AutoParticipantRecordingConfiguration.type = Types::AutoParticipantRecordingConfiguration
    ChannelDestinationConfiguration.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: 'channelArn', traits: {"smithy.api#documentation" => "<p>ARN of the channel to use for broadcasting. The channel and stage resources must be in\n         the same AWS account and region. The channel must be offline (not broadcasting).</p>", "smithy.api#required" => {}}))
    ChannelDestinationConfiguration.add_member(:encoder_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EncoderConfigurationArn, location_name: 'encoderConfigurationArn', traits: {"smithy.api#documentation" => "<p>ARN of the <a>EncoderConfiguration</a> resource. The encoder configuration\n         and stage resources must be in the same AWS account and region.</p>"}))
    ChannelDestinationConfiguration.type = Types::ChannelDestinationConfiguration
    Composition.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CompositionArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>ARN of the Composition resource.</p>", "smithy.api#required" => {}}))
    Composition.add_member(:stage_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StageArn, location_name: 'stageArn', traits: {"smithy.api#documentation" => "<p>ARN of the stage used as input</p>", "smithy.api#required" => {}}))
    Composition.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: CompositionState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>State of the Composition.</p>", "smithy.api#required" => {}}))
    Composition.add_member(:layout, Smithy::Schema::Shapes::ShapeRef.new(shape: LayoutConfiguration, location_name: 'layout', traits: {"smithy.api#documentation" => "<p>Layout object to configure composition parameters.</p>", "smithy.api#required" => {}}))
    Composition.add_member(:destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationList, location_name: 'destinations', traits: {"smithy.api#documentation" => "<p>Array of Destination objects. A Composition can contain either one destination\n            (<code>channel</code> or <code>s3</code>) or two (one <code>channel</code> and one\n            <code>s3</code>).</p>", "smithy.api#required" => {}}))
    Composition.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags attached to the resource. Array of maps, each of the form <code>string:string\n            (key:value)</code>. See <a href=\"https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html\">Best practices and strategies</a> in <i>Tagging AWS Resources and Tag\n            Editor</i> for details, including restrictions that apply to tags and \"Tag naming\n         limits and requirements\"; Amazon IVS has no constraints on tags beyond what is documented\n         there.</p>"}))
    Composition.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>UTC time of the Composition start. This is an ISO 8601 timestamp; <i>note that\n            this is returned as a string</i>.</p>"}))
    Composition.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>UTC time of the Composition end. This is an ISO 8601 timestamp; <i>note that this\n            is returned as a string</i>.</p>"}))
    Composition.type = Types::Composition
    CompositionRecordingHlsConfiguration.add_member(:target_segment_duration_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: CompositionRecordingTargetSegmentDurationSeconds, location_name: 'targetSegmentDurationSeconds', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>Defines the target duration for recorded segments generated when using composite recording. Default: 2.</p>"}))
    CompositionRecordingHlsConfiguration.type = Types::CompositionRecordingHlsConfiguration
    CompositionSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CompositionArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>ARN of the Composition resource.</p>", "smithy.api#required" => {}}))
    CompositionSummary.add_member(:stage_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StageArn, location_name: 'stageArn', traits: {"smithy.api#documentation" => "<p>ARN of the attached stage.</p>", "smithy.api#required" => {}}))
    CompositionSummary.add_member(:destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationSummaryList, location_name: 'destinations', traits: {"smithy.api#documentation" => "<p>Array of Destination objects.</p>", "smithy.api#required" => {}}))
    CompositionSummary.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: CompositionState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>State of the Composition resource.</p>", "smithy.api#required" => {}}))
    CompositionSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags attached to the resource. Array of maps, each of the form <code>string:string\n            (key:value)</code>. See <a href=\"https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html\">Best practices and strategies</a> in <i>Tagging AWS Resources and Tag\n            Editor</i> for details, including restrictions that apply to tags and \"Tag naming\n         limits and requirements\"; Amazon IVS has no constraints on tags beyond what is documented\n         there.</p>"}))
    CompositionSummary.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>UTC time of the Composition start. This is an ISO 8601 timestamp; <i>note that\n            this is returned as a string</i>.</p>"}))
    CompositionSummary.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>UTC time of the Composition end. This is an ISO 8601 timestamp; <i>note that this\n            is returned as a string</i>.</p>"}))
    CompositionSummary.type = Types::CompositionSummary
    CompositionSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CompositionSummary)
    CompositionThumbnailConfiguration.add_member(:target_interval_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: ThumbnailIntervalSeconds, location_name: 'targetIntervalSeconds', traits: {"smithy.api#documentation" => "<p>The targeted thumbnail-generation interval in seconds. Default: 60.</p>"}))
    CompositionThumbnailConfiguration.add_member(:storage, Smithy::Schema::Shapes::ShapeRef.new(shape: ThumbnailStorageTypeList, location_name: 'storage', traits: {"smithy.api#documentation" => "<p>Indicates the format in which thumbnails are recorded. <code>SEQUENTIAL</code> records\n         all generated thumbnails in a serial manner, to the media/thumbnails/(width)x(height)\n         directory, where (width) and (height) are the width and height of the thumbnail.\n            <code>LATEST</code> saves the latest thumbnail in\n         media/latest_thumbnail/(width)x(height)/thumb.jpg and overwrites it at the interval\n         specified by <code>targetIntervalSeconds</code>. You can enable both\n            <code>SEQUENTIAL</code> and <code>LATEST</code>. Default:\n         <code>SEQUENTIAL</code>.</p>"}))
    CompositionThumbnailConfiguration.type = Types::CompositionThumbnailConfiguration
    CompositionThumbnailConfigurationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CompositionThumbnailConfiguration)
    ConflictException.add_member(:access_control_allow_origin, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accessControlAllowOrigin', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Access-Control-Allow-Origin"}))
    ConflictException.add_member(:access_control_expose_headers, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accessControlExposeHeaders', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Access-Control-Expose-Headers"}))
    ConflictException.add_member(:cache_control, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'cacheControl', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Cache-Control"}))
    ConflictException.add_member(:content_security_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'contentSecurityPolicy', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Content-Security-Policy"}))
    ConflictException.add_member(:strict_transport_security, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'strictTransportSecurity', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Strict-Transport-Security"}))
    ConflictException.add_member(:x_content_type_options, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'xContentTypeOptions', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "X-Content-Type-Options"}))
    ConflictException.add_member(:x_frame_options, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'xFrameOptions', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "X-Frame-Options"}))
    ConflictException.add_member(:x_amzn_error_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'xAmznErrorType', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    ConflictException.add_member(:exception_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'exceptionMessage', traits: {"smithy.api#documentation" => "<p>Updating or deleting a resource can cause an inconsistent state.</p>"}))
    ConflictException.type = Types::ConflictException
    CreateEncoderConfigurationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EncoderConfigurationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Optional name to identify the resource.</p>"}))
    CreateEncoderConfigurationRequest.add_member(:video, Smithy::Schema::Shapes::ShapeRef.new(shape: Video, location_name: 'video', traits: {"smithy.api#documentation" => "<p>Video configuration. Default: video resolution 1280x720, bitrate 2500 kbps, 30\n         fps.</p>"}))
    CreateEncoderConfigurationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags attached to the resource. Array of maps, each of the form <code>string:string\n         (key:value)</code>. See <a href=\"https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html\">Best practices and strategies</a>\n         in <i>Tagging AWS Resources and Tag Editor</i> for details, including restrictions that apply to tags and \"Tag naming\n         limits and requirements\"; Amazon IVS has no constraints on tags beyond what is documented\n         there.</p>"}))
    CreateEncoderConfigurationRequest.type = Types::CreateEncoderConfigurationRequest
    CreateEncoderConfigurationResponse.add_member(:encoder_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EncoderConfiguration, location_name: 'encoderConfiguration', traits: {"smithy.api#documentation" => "<p>The EncoderConfiguration that was created.</p>"}))
    CreateEncoderConfigurationResponse.type = Types::CreateEncoderConfigurationResponse
    CreateIngestConfigurationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestConfigurationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Optional name that can be specified for the IngestConfiguration being created.</p>"}))
    CreateIngestConfigurationRequest.add_member(:stage_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestConfigurationStageArn, location_name: 'stageArn', traits: {"smithy.api#documentation" => "<p>ARN of the stage with which the IngestConfiguration is associated.</p>"}))
    CreateIngestConfigurationRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>Customer-assigned name to help identify the participant using the IngestConfiguration; this can be used to link a participant to a user in the customer’s own systems. This can be any UTF-8 encoded text.\n      <i>This field is exposed to all stage participants and should not be used for personally identifying, confidential, or sensitive information.</i>\n         </p>"}))
    CreateIngestConfigurationRequest.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantAttributes, location_name: 'attributes', traits: {"smithy.api#documentation" => "<p>Application-provided attributes to store in the IngestConfiguration and attach to a stage. Map keys and values can contain UTF-8 encoded text. The maximum length of this field is 1 KB total.\n      <i>This field is exposed to all stage participants and should not be used for personally identifying, confidential, or sensitive information.</i>\n         </p>"}))
    CreateIngestConfigurationRequest.add_member(:ingest_protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestProtocol, location_name: 'ingestProtocol', traits: {"smithy.api#documentation" => "<p>Type of ingest protocol that the user employs to broadcast. If this is set to <code>RTMP</code>, <code>insecureIngest</code> must be set to <code>true</code>.</p>", "smithy.api#required" => {}}))
    CreateIngestConfigurationRequest.add_member(:insecure_ingest, Smithy::Schema::Shapes::ShapeRef.new(shape: InsecureIngest, location_name: 'insecureIngest', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether the stage allows insecure RTMP ingest. This must be set to <code>true</code>, if <code>ingestProtocol</code> is set to <code>RTMP</code>. Default: <code>false</code>. </p>"}))
    CreateIngestConfigurationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags attached to the resource. Array of maps, each of the form <code>string:string\n         (key:value)</code>. See <a href=\"https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html\">Best practices and strategies</a>\n         in <i>Tagging AWS Resources and Tag Editor</i> for details, including restrictions that apply to tags and \"Tag naming\n         limits and requirements\"; Amazon IVS has no constraints on tags beyond what is documented\n\t there.</p>"}))
    CreateIngestConfigurationRequest.type = Types::CreateIngestConfigurationRequest
    CreateIngestConfigurationResponse.add_member(:ingest_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestConfiguration, location_name: 'ingestConfiguration', traits: {"smithy.api#documentation" => "<p>The IngestConfiguration that was created.</p>"}))
    CreateIngestConfigurationResponse.type = Types::CreateIngestConfigurationResponse
    CreateParticipantTokenInput.add_member(:stage_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StageArn, location_name: 'stageArn', traits: {"smithy.api#documentation" => "<p>ARN of the stage to which this token is scoped.</p>", "smithy.api#required" => {}}))
    CreateParticipantTokenInput.add_member(:duration, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantTokenDurationMinutes, location_name: 'duration', traits: {"smithy.api#documentation" => "<p>Duration (in minutes), after which the token expires. Default: 720 (12 hours).</p>"}))
    CreateParticipantTokenInput.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantTokenUserId, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>Name that can be specified to help identify the token. This can be any UTF-8 encoded\n         text. <i>This field is exposed to all stage participants and should not be used for\n            personally identifying, confidential, or sensitive information.</i>\n         </p>"}))
    CreateParticipantTokenInput.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantTokenAttributes, location_name: 'attributes', traits: {"smithy.api#documentation" => "<p>Application-provided attributes to encode into the token and attach to a stage. Map keys\n         and values can contain UTF-8 encoded text. The maximum length of this field is 1 KB total.\n            <i>This field is exposed to all stage participants and should not be used for\n            personally identifying, confidential, or sensitive information.</i>\n         </p>"}))
    CreateParticipantTokenInput.add_member(:capabilities, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantTokenCapabilities, location_name: 'capabilities', traits: {"smithy.api#documentation" => "<p>Set of capabilities that the user is allowed to perform in the stage. Default:\n            <code>PUBLISH, SUBSCRIBE</code>.</p>"}))
    CreateParticipantTokenInput.type = Types::CreateParticipantTokenInput
    CreateParticipantTokenOutput.add_member(:participant_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantToken, location_name: 'participantToken', traits: {"smithy.api#documentation" => "<p>The participant token that was created.</p>"}))
    CreateParticipantTokenOutput.type = Types::CreateParticipantTokenOutput
    CreateStageInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: StageName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Optional name that can be specified for the stage being created.</p>"}))
    CreateStageInput.add_member(:participant_token_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantTokenConfigurations, location_name: 'participantTokenConfigurations', traits: {"smithy.api#documentation" => "<p>Array of participant token configuration objects to attach to the new stage.</p>"}))
    CreateStageInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags attached to the resource. Array of maps, each of the form <code>string:string\n         (key:value)</code>. See <a href=\"https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html\">Best practices and strategies</a>\n         in <i>Tagging AWS Resources and Tag Editor</i> for details, including restrictions that apply to tags and \"Tag naming\n         limits and requirements\"; Amazon IVS has no constraints on tags beyond what is documented\n         there. </p>"}))
    CreateStageInput.add_member(:auto_participant_recording_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoParticipantRecordingConfiguration, location_name: 'autoParticipantRecordingConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration object for individual participant recording, to attach to the new stage.</p>"}))
    CreateStageInput.type = Types::CreateStageInput
    CreateStageOutput.add_member(:stage, Smithy::Schema::Shapes::ShapeRef.new(shape: Stage, location_name: 'stage', traits: {"smithy.api#documentation" => "<p>The stage that was created.</p>"}))
    CreateStageOutput.add_member(:participant_tokens, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantTokenList, location_name: 'participantTokens', traits: {"smithy.api#documentation" => "<p>Participant tokens attached to the stage. These correspond to the\n            <code>participants</code> in the request.</p>"}))
    CreateStageOutput.type = Types::CreateStageOutput
    CreateStorageConfigurationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageConfigurationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Storage configuration name. The value does not need to be unique.</p>"}))
    CreateStorageConfigurationRequest.add_member(:s3, Smithy::Schema::Shapes::ShapeRef.new(shape: S3StorageConfiguration, location_name: 's3', traits: {"smithy.api#documentation" => "<p>A complex type that contains a storage configuration for where recorded video will be stored.</p>", "smithy.api#required" => {}}))
    CreateStorageConfigurationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags attached to the resource. Array of maps, each of the form <code>string:string\n         (key:value)</code>. See <a href=\"https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html\">Best practices and strategies</a>\n\t in <i>Tagging AWS Resources and Tag Editor</i> for details, including restrictions that apply to tags and \"Tag naming\n         limits and requirements\"; Amazon IVS has no constraints on tags beyond what is documented\n         there.</p>"}))
    CreateStorageConfigurationRequest.type = Types::CreateStorageConfigurationRequest
    CreateStorageConfigurationResponse.add_member(:storage_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageConfiguration, location_name: 'storageConfiguration', traits: {"smithy.api#documentation" => "<p>The StorageConfiguration that was created.</p>"}))
    CreateStorageConfigurationResponse.type = Types::CreateStorageConfigurationResponse
    DeleteEncoderConfigurationRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EncoderConfigurationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>ARN of the EncoderConfiguration.</p>", "smithy.api#required" => {}}))
    DeleteEncoderConfigurationRequest.type = Types::DeleteEncoderConfigurationRequest
    DeleteEncoderConfigurationResponse.type = Types::DeleteEncoderConfigurationResponse
    DeleteIngestConfigurationRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestConfigurationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>ARN of the IngestConfiguration.</p>", "smithy.api#required" => {}}))
    DeleteIngestConfigurationRequest.add_member(:force, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'force', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Optional field to force deletion of the IngestConfiguration. If this is set to <code>true</code> when a participant is actively publishing, the participant is disconnected from the stage, followed by deletion of the IngestConfiguration. Default: <code>false</code>.</p>"}))
    DeleteIngestConfigurationRequest.type = Types::DeleteIngestConfigurationRequest
    DeleteIngestConfigurationResponse.type = Types::DeleteIngestConfigurationResponse
    DeletePublicKeyRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PublicKeyArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>ARN of the public key to be deleted.</p>", "smithy.api#required" => {}}))
    DeletePublicKeyRequest.type = Types::DeletePublicKeyRequest
    DeletePublicKeyResponse.type = Types::DeletePublicKeyResponse
    DeleteStageInput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StageArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>ARN of the stage to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteStageInput.type = Types::DeleteStageInput
    DeleteStageOutput.type = Types::DeleteStageOutput
    DeleteStorageConfigurationRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageConfigurationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>ARN of the storage configuration to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteStorageConfigurationRequest.type = Types::DeleteStorageConfigurationRequest
    DeleteStorageConfigurationResponse.type = Types::DeleteStorageConfigurationResponse
    Destination.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>Unique identifier for this destination, assigned by IVS.</p>", "smithy.api#required" => {}}))
    Destination.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>State of the Composition Destination.</p>", "smithy.api#required" => {}}))
    Destination.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>UTC time of the destination start. This is an ISO 8601 timestamp; <i>note that\n            this is returned as a string</i>.</p>"}))
    Destination.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>UTC time of the destination end. This is an ISO 8601 timestamp; <i>note that this\n            is returned as a string</i>.</p>"}))
    Destination.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationConfiguration, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>Configuration used to create this destination.</p>", "smithy.api#required" => {}}))
    Destination.add_member(:detail, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationDetail, location_name: 'detail', traits: {"smithy.api#documentation" => "<p>Optional details regarding the status of the destination.</p>"}))
    Destination.type = Types::Destination
    DestinationConfiguration.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationConfigurationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Name that can be specified to help identify the destination.</p>"}))
    DestinationConfiguration.add_member(:channel, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelDestinationConfiguration, location_name: 'channel', traits: {"smithy.api#documentation" => "<p>An IVS channel to be used for broadcasting, for server-side composition. Either a\n            <code>channel</code> or an <code>s3</code> must be specified. </p>"}))
    DestinationConfiguration.add_member(:s3, Smithy::Schema::Shapes::ShapeRef.new(shape: S3DestinationConfiguration, location_name: 's3', traits: {"smithy.api#documentation" => "<p>An S3 storage configuration to be used for recording video data. Either a\n            <code>channel</code> or an <code>s3</code> must be specified.</p>"}))
    DestinationConfiguration.type = Types::DestinationConfiguration
    DestinationConfigurationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationConfiguration)
    DestinationDetail.add_member(:s3, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Detail, location_name: 's3', traits: {"smithy.api#documentation" => "<p>An S3 detail object to return information about the S3 destination.</p>"}))
    DestinationDetail.type = Types::DestinationDetail
    DestinationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Destination)
    DestinationSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>Unique identifier for this destination, assigned by IVS.</p>", "smithy.api#required" => {}}))
    DestinationSummary.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>State of the Composition Destination.</p>", "smithy.api#required" => {}}))
    DestinationSummary.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>UTC time of the destination start. This is an ISO 8601 timestamp; <i>note that\n            this is returned as a string</i>.</p>"}))
    DestinationSummary.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>UTC time of the destination end. This is an ISO 8601 timestamp; <i>note that this\n            is returned as a string</i>.</p>"}))
    DestinationSummary.type = Types::DestinationSummary
    DestinationSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationSummary)
    DisconnectParticipantInput.add_member(:stage_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StageArn, location_name: 'stageArn', traits: {"smithy.api#documentation" => "<p>ARN of the stage to which the participant is attached.</p>", "smithy.api#required" => {}}))
    DisconnectParticipantInput.add_member(:participant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantTokenId, location_name: 'participantId', traits: {"smithy.api#documentation" => "<p>Identifier of the participant to be disconnected. IVS assigns this; it is returned\n            by <a>CreateParticipantToken</a> (for streams using WebRTC ingest) or <a>CreateIngestConfiguration</a> (for\n\t    streams using RTMP ingest).</p>", "smithy.api#required" => {}}))
    DisconnectParticipantInput.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: DisconnectParticipantReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>Description of why this participant is being disconnected.</p>"}))
    DisconnectParticipantInput.type = Types::DisconnectParticipantInput
    DisconnectParticipantOutput.type = Types::DisconnectParticipantOutput
    EncoderConfiguration.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EncoderConfigurationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>ARN of the EncoderConfiguration resource.</p>", "smithy.api#required" => {}}))
    EncoderConfiguration.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EncoderConfigurationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Optional name to identify the resource.</p>"}))
    EncoderConfiguration.add_member(:video, Smithy::Schema::Shapes::ShapeRef.new(shape: Video, location_name: 'video', traits: {"smithy.api#documentation" => "<p>Video configuration. Default: video resolution 1280x720, bitrate 2500 kbps, 30\n         fps</p>"}))
    EncoderConfiguration.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags attached to the resource. Array of maps, each of the form <code>string:string\n            (key:value)</code>. See <a href=\"https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html\">Best practices and strategies</a> in <i>Tagging AWS Resources and Tag\n            Editor</i> for details, including restrictions that apply to tags and \"Tag naming\n         limits and requirements\"; Amazon IVS has no constraints on tags beyond what is documented\n         there.</p>"}))
    EncoderConfiguration.type = Types::EncoderConfiguration
    EncoderConfigurationArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EncoderConfigurationArn)
    EncoderConfigurationSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EncoderConfigurationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>ARN of the EncoderConfiguration resource.</p>", "smithy.api#required" => {}}))
    EncoderConfigurationSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EncoderConfigurationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Optional name to identify the resource.</p>"}))
    EncoderConfigurationSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags attached to the resource. Array of maps, each of the form <code>string:string\n            (key:value)</code>. See <a href=\"https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html\">Best practices and strategies</a> in <i>Tagging AWS Resources and Tag\n            Editor</i> for details, including restrictions that apply to tags and \"Tag naming\n         limits and requirements\"; Amazon IVS has no constraints on tags beyond what is documented\n         there.</p>"}))
    EncoderConfigurationSummary.type = Types::EncoderConfigurationSummary
    EncoderConfigurationSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EncoderConfigurationSummary)
    Event.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the event.</p>"}))
    Event.add_member(:participant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantId, location_name: 'participantId', traits: {"smithy.api#documentation" => "<p>Unique identifier for the participant who triggered the event. This is assigned by\n         IVS.</p>"}))
    Event.add_member(:event_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'eventTime', traits: {"smithy.api#documentation" => "<p>ISO 8601 timestamp (returned as a string) for when the event occurred.</p>"}))
    Event.add_member(:remote_participant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantId, location_name: 'remoteParticipantId', traits: {"smithy.api#documentation" => "<p>Unique identifier for the remote participant. For a subscribe event, this is the\n         publisher. For a publish or join event, this is null. This is assigned by IVS.</p>"}))
    Event.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: EventErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>If the event is an error event, the error code is provided to give insight into the\n         specific error that occurred. If the event is not an error event, this field is\n         null.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>B_FRAME_PRESENT</code> — The participant's stream includes B-frames.\n               For details, see <a href=\"https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/rt-rtmp-publishing.html\"> IVS RTMP\n                  Publishing</a>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>BITRATE_EXCEEDED</code> — The participant exceeded the maximum\n               supported bitrate. For details, see <a href=\"https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/service-quotas.html\"> Service\n               Quotas</a>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>INSUFFICIENT_CAPABILITIES</code> — The participant tried to take an\n               action that the participant’s token is not allowed to do. For details on participant\n               capabilities, see the <code>capabilities</code> field in <a>CreateParticipantToken</a>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>INTERNAL_SERVER_EXCEPTION</code> — The participant failed to publish\n               to the stage due to an internal server error.</p>\n            </li>\n            <li>\n               <p>\n                  <code>INVALID_AUDIO_CODEC</code> — The participant is using an invalid audio\n               codec. For details, see <a href=\"https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/rt-stream-ingest.html\"> Stream\n               Ingest</a>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>INVALID_INPUT</code> — The participant is using an invalid input\n               stream.</p>\n            </li>\n            <li>\n               <p>\n                  <code>INVALID_PROTOCOL</code> — The participant's IngestConfiguration\n               resource is configured for RTMPS but they tried streaming with RTMP. For details, see\n                  <a href=\"https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/rt-rtmp-publishing.html\"> IVS RTMP\n                  Publishing</a>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>INVALID_STREAM_KEY</code> — The participant is using an invalid stream\n               key. For details, see <a href=\"https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/rt-rtmp-publishing.html\"> IVS RTMP\n                  Publishing</a>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>INVALID_VIDEO_CODEC</code> — The participant is using an invalid video\n               codec. For details, see <a href=\"https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/rt-stream-ingest.html\"> Stream\n               Ingest</a>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>PUBLISHER_NOT_FOUND</code> — The participant tried to subscribe to a\n               publisher that doesn’t exist.</p>\n            </li>\n            <li>\n               <p>\n                  <code>QUOTA_EXCEEDED</code> — The number of participants who want to\n               publish/subscribe to a stage exceeds the quota. For details, see <a href=\"https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/service-quotas.html\">\n                  Service Quotas</a>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>RESOLUTION_EXCEEDED</code> — The participant exceeded the maximum\n               supported resolution. For details, see <a href=\"https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/service-quotas.html\"> Service\n               Quotas</a>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>REUSE_OF_STREAM_KEY</code> — The participant tried to use a stream key\n               that is associated with another active stage session.</p>\n            </li>\n            <li>\n               <p>\n                  <code>STREAM_DURATION_EXCEEDED</code> — The participant exceeded the maximum\n               allowed stream duration. For details, see <a href=\"https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/service-quotas.html\"> Service\n               Quotas</a>.</p>\n            </li>\n         </ul>"}))
    Event.add_member(:destination_stage_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StageArn, location_name: 'destinationStageArn', traits: {"smithy.api#documentation" => "<p>ARN of the stage where the participant is replicated. Applicable only if the event name is \n\t  <code>REPLICATION_STARTED</code> or <code>REPLICATION_STOPPED</code>.</p>"}))
    Event.add_member(:destination_session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StageSessionId, location_name: 'destinationSessionId', traits: {"smithy.api#documentation" => "<p>ID of the session within the destination stage. Applicable only if the event name is \n\t  <code>REPLICATION_STARTED</code> or <code>REPLICATION_STOPPED</code>.</p>"}))
    Event.add_member(:replica, Smithy::Schema::Shapes::ShapeRef.new(shape: Replica, location_name: 'replica', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If true, this indicates the <code>participantId</code> is a replicated participant. \n\t  If this is a subscribe event, then this flag refers to <code>remoteParticipantId</code>.</p>"}))
    Event.type = Types::Event
    EventErrorCode.add_member(:insufficient_capabilities, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSUFFICIENT_CAPABILITIES', traits: {"smithy.api#enumValue" => "INSUFFICIENT_CAPABILITIES"}))
    EventErrorCode.add_member(:quota_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUOTA_EXCEEDED', traits: {"smithy.api#enumValue" => "QUOTA_EXCEEDED"}))
    EventErrorCode.add_member(:publisher_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUBLISHER_NOT_FOUND', traits: {"smithy.api#enumValue" => "PUBLISHER_NOT_FOUND"}))
    EventErrorCode.add_member(:bitrate_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BITRATE_EXCEEDED', traits: {"smithy.api#enumValue" => "BITRATE_EXCEEDED"}))
    EventErrorCode.add_member(:resolution_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOLUTION_EXCEEDED', traits: {"smithy.api#enumValue" => "RESOLUTION_EXCEEDED"}))
    EventErrorCode.add_member(:stream_duration_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STREAM_DURATION_EXCEEDED', traits: {"smithy.api#enumValue" => "STREAM_DURATION_EXCEEDED"}))
    EventErrorCode.add_member(:invalid_audio_codec, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_AUDIO_CODEC', traits: {"smithy.api#enumValue" => "INVALID_AUDIO_CODEC"}))
    EventErrorCode.add_member(:invalid_video_codec, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_VIDEO_CODEC', traits: {"smithy.api#enumValue" => "INVALID_VIDEO_CODEC"}))
    EventErrorCode.add_member(:invalid_protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_PROTOCOL', traits: {"smithy.api#enumValue" => "INVALID_PROTOCOL"}))
    EventErrorCode.add_member(:invalid_stream_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_STREAM_KEY', traits: {"smithy.api#enumValue" => "INVALID_STREAM_KEY"}))
    EventErrorCode.add_member(:reuse_of_stream_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REUSE_OF_STREAM_KEY', traits: {"smithy.api#enumValue" => "REUSE_OF_STREAM_KEY"}))
    EventErrorCode.add_member(:b_frame_present, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'B_FRAME_PRESENT', traits: {"smithy.api#enumValue" => "B_FRAME_PRESENT"}))
    EventErrorCode.add_member(:invalid_input, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_INPUT', traits: {"smithy.api#enumValue" => "INVALID_INPUT"}))
    EventErrorCode.add_member(:internal_server_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_SERVER_EXCEPTION', traits: {"smithy.api#enumValue" => "INTERNAL_SERVER_EXCEPTION"}))
    EventList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Event)
    GetCompositionRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CompositionArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>ARN of the Composition resource.</p>", "smithy.api#required" => {}}))
    GetCompositionRequest.type = Types::GetCompositionRequest
    GetCompositionResponse.add_member(:composition, Smithy::Schema::Shapes::ShapeRef.new(shape: Composition, location_name: 'composition', traits: {"smithy.api#documentation" => "<p>The Composition that was returned.</p>"}))
    GetCompositionResponse.type = Types::GetCompositionResponse
    GetEncoderConfigurationRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EncoderConfigurationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>ARN of the EncoderConfiguration resource.</p>", "smithy.api#required" => {}}))
    GetEncoderConfigurationRequest.type = Types::GetEncoderConfigurationRequest
    GetEncoderConfigurationResponse.add_member(:encoder_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EncoderConfiguration, location_name: 'encoderConfiguration', traits: {"smithy.api#documentation" => "<p>The EncoderConfiguration that was returned.</p>"}))
    GetEncoderConfigurationResponse.type = Types::GetEncoderConfigurationResponse
    GetIngestConfigurationRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestConfigurationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>ARN of the ingest for which the information is to be retrieved.</p>", "smithy.api#required" => {}}))
    GetIngestConfigurationRequest.type = Types::GetIngestConfigurationRequest
    GetIngestConfigurationResponse.add_member(:ingest_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestConfiguration, location_name: 'ingestConfiguration', traits: {"smithy.api#documentation" => "<p>The IngestConfiguration that was returned.</p>"}))
    GetIngestConfigurationResponse.type = Types::GetIngestConfigurationResponse
    GetParticipantRequest.add_member(:stage_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StageArn, location_name: 'stageArn', traits: {"smithy.api#documentation" => "<p>Stage ARN.</p>", "smithy.api#required" => {}}))
    GetParticipantRequest.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StageSessionId, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>ID of a session within the stage.</p>", "smithy.api#required" => {}}))
    GetParticipantRequest.add_member(:participant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantId, location_name: 'participantId', traits: {"smithy.api#documentation" => "<p>Unique identifier for the participant. This is assigned by IVS and returned by <a>CreateParticipantToken</a>.</p>", "smithy.api#required" => {}}))
    GetParticipantRequest.type = Types::GetParticipantRequest
    GetParticipantResponse.add_member(:participant, Smithy::Schema::Shapes::ShapeRef.new(shape: Participant, location_name: 'participant', traits: {"smithy.api#documentation" => "<p>The participant that is returned.</p>"}))
    GetParticipantResponse.type = Types::GetParticipantResponse
    GetPublicKeyRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PublicKeyArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>ARN of the public key for which the information is to be retrieved.</p>", "smithy.api#required" => {}}))
    GetPublicKeyRequest.type = Types::GetPublicKeyRequest
    GetPublicKeyResponse.add_member(:public_key, Smithy::Schema::Shapes::ShapeRef.new(shape: PublicKey, location_name: 'publicKey', traits: {"smithy.api#documentation" => "<p>The public key that is returned.</p>"}))
    GetPublicKeyResponse.type = Types::GetPublicKeyResponse
    GetStageInput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StageArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>ARN of the stage for which the information is to be retrieved.</p>", "smithy.api#required" => {}}))
    GetStageInput.type = Types::GetStageInput
    GetStageOutput.add_member(:stage, Smithy::Schema::Shapes::ShapeRef.new(shape: Stage, location_name: 'stage', traits: {"smithy.api#documentation" => "<p>The stage that is returned.</p>"}))
    GetStageOutput.type = Types::GetStageOutput
    GetStageSessionRequest.add_member(:stage_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StageArn, location_name: 'stageArn', traits: {"smithy.api#documentation" => "<p>ARN of the stage for which the information is to be retrieved.</p>", "smithy.api#required" => {}}))
    GetStageSessionRequest.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StageSessionId, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>ID of a session within the stage.</p>", "smithy.api#required" => {}}))
    GetStageSessionRequest.type = Types::GetStageSessionRequest
    GetStageSessionResponse.add_member(:stage_session, Smithy::Schema::Shapes::ShapeRef.new(shape: StageSession, location_name: 'stageSession', traits: {"smithy.api#documentation" => "<p>The stage session that is returned.</p>"}))
    GetStageSessionResponse.type = Types::GetStageSessionResponse
    GetStorageConfigurationRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageConfigurationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>ARN of the storage configuration to be retrieved.</p>", "smithy.api#required" => {}}))
    GetStorageConfigurationRequest.type = Types::GetStorageConfigurationRequest
    GetStorageConfigurationResponse.add_member(:storage_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageConfiguration, location_name: 'storageConfiguration', traits: {"smithy.api#documentation" => "<p>The StorageConfiguration that was returned.</p>"}))
    GetStorageConfigurationResponse.type = Types::GetStorageConfigurationResponse
    GridConfiguration.add_member(:featured_participant_attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeKey, location_name: 'featuredParticipantAttribute', traits: {"smithy.api#documentation" => "<p>This attribute name identifies the featured slot. A participant with this attribute set\n         to <code>\"true\"</code> (as a string value) in <a>ParticipantTokenConfiguration</a> is placed in the featured slot. Default: <code>\"\"</code> (no featured\n         participant).</p>"}))
    GridConfiguration.add_member(:omit_stopped_video, Smithy::Schema::Shapes::ShapeRef.new(shape: OmitStoppedVideo, location_name: 'omitStoppedVideo', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Determines whether to omit participants with stopped video in the composition. Default:\n            <code>false</code>.</p>"}))
    GridConfiguration.add_member(:video_aspect_ratio, Smithy::Schema::Shapes::ShapeRef.new(shape: VideoAspectRatio, location_name: 'videoAspectRatio', traits: {"smithy.api#documentation" => "<p>Sets the non-featured participant display mode, to control the aspect ratio of video\n         tiles. <code>VIDEO</code> is 16:9, <code>SQUARE</code> is 1:1, and <code>PORTRAIT</code> is\n         3:4. Default: <code>VIDEO</code>.</p>"}))
    GridConfiguration.add_member(:video_fill_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: VideoFillMode, location_name: 'videoFillMode', traits: {"smithy.api#documentation" => "<p>Defines how video content fits within the participant tile: <code>FILL</code>\n         (stretched), <code>COVER</code> (cropped), or <code>CONTAIN</code> (letterboxed). When not\n         set, <code>videoFillMode</code> defaults to <code>COVER</code> fill mode for participants\n         in the grid and to <code>CONTAIN</code> fill mode for featured participants.</p>"}))
    GridConfiguration.add_member(:grid_gap, Smithy::Schema::Shapes::ShapeRef.new(shape: GridGap, location_name: 'gridGap', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Specifies the spacing between participant tiles in pixels. Default:\n         <code>2</code>.</p>"}))
    GridConfiguration.type = Types::GridConfiguration
    ImportPublicKeyRequest.add_member(:public_key_material, Smithy::Schema::Shapes::ShapeRef.new(shape: PublicKeyMaterial, location_name: 'publicKeyMaterial', traits: {"smithy.api#documentation" => "<p>The content of the public key to be imported.</p>", "smithy.api#required" => {}}))
    ImportPublicKeyRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PublicKeyName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Name of the public key to be imported.</p>"}))
    ImportPublicKeyRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags attached to the resource. Array of maps, each of the form <code>string:string\n         (key:value)</code>. See <a href=\"https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html\">Best practices and strategies</a>\n         in <i>Tagging AWS Resources and Tag Editor</i> for details, including restrictions that apply to tags and \"Tag naming\n         limits and requirements\"; Amazon IVS has no constraints on tags beyond what is documented\n         there.</p>"}))
    ImportPublicKeyRequest.type = Types::ImportPublicKeyRequest
    ImportPublicKeyResponse.add_member(:public_key, Smithy::Schema::Shapes::ShapeRef.new(shape: PublicKey, location_name: 'publicKey', traits: {"smithy.api#documentation" => "<p>The public key that was imported.</p>"}))
    ImportPublicKeyResponse.type = Types::ImportPublicKeyResponse
    IngestConfiguration.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestConfigurationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Ingest name</p>"}))
    IngestConfiguration.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestConfigurationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Ingest configuration ARN.</p>", "smithy.api#required" => {}}))
    IngestConfiguration.add_member(:ingest_protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestProtocol, location_name: 'ingestProtocol', traits: {"smithy.api#documentation" => "<p>Type of ingest protocol that the user employs for broadcasting.</p>", "smithy.api#required" => {}}))
    IngestConfiguration.add_member(:stream_key, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamKey, location_name: 'streamKey', traits: {"smithy.api#documentation" => "<p>Ingest-key value for the RTMP(S) protocol.</p>", "smithy.api#required" => {}}))
    IngestConfiguration.add_member(:stage_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestConfigurationStageArn, location_name: 'stageArn', traits: {"smithy.api#documentation" => "<p>ARN of the stage with which the IngestConfiguration is associated.</p>", "smithy.api#required" => {}}))
    IngestConfiguration.add_member(:participant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantId, location_name: 'participantId', traits: {"smithy.api#documentation" => "<p>ID of the participant within the stage.</p>", "smithy.api#required" => {}}))
    IngestConfiguration.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestConfigurationState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>State of the ingest configuration. It is <code>ACTIVE</code> if a publisher currently is\n         publishing to the stage associated with the ingest configuration.</p>", "smithy.api#required" => {}}))
    IngestConfiguration.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>Customer-assigned name to help identify the participant using the IngestConfiguration;\n         this can be used to link a participant to a user in the customer’s own systems. This can be\n         any UTF-8 encoded text. <i>This field is exposed to all stage participants and\n            should not be used for personally identifying, confidential, or sensitive\n            information.</i>\n         </p>"}))
    IngestConfiguration.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantAttributes, location_name: 'attributes', traits: {"smithy.api#documentation" => "<p>Application-provided attributes to to store in the IngestConfiguration and attach to a\n         stage. Map keys and values can contain UTF-8 encoded text. The maximum length of this field\n         is 1 KB total. <i>This field is exposed to all stage participants and should not be\n            used for personally identifying, confidential, or sensitive\n         information.</i>\n         </p>"}))
    IngestConfiguration.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags attached to the resource. Array of maps, each of the form <code>string:string\n            (key:value)</code>. See <a href=\"https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html\">Best practices and strategies</a> in <i>Tagging AWS Resources and Tag\n            Editor</i> for details, including restrictions that apply to tags and \"Tag naming\n         limits and requirements\"; Amazon IVS has no constraints on tags beyond what is documented\n         there.</p>"}))
    IngestConfiguration.type = Types::IngestConfiguration
    IngestConfigurationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IngestConfigurationSummary)
    IngestConfigurationSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestConfigurationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Ingest name.</p>"}))
    IngestConfigurationSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestConfigurationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Ingest configuration ARN.</p>", "smithy.api#required" => {}}))
    IngestConfigurationSummary.add_member(:ingest_protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestProtocol, location_name: 'ingestProtocol', traits: {"smithy.api#documentation" => "<p>Type of ingest protocol that the user employs for broadcasting.</p>", "smithy.api#required" => {}}))
    IngestConfigurationSummary.add_member(:stage_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestConfigurationStageArn, location_name: 'stageArn', traits: {"smithy.api#documentation" => "<p>ARN of the stage with which the IngestConfiguration is associated.</p>", "smithy.api#required" => {}}))
    IngestConfigurationSummary.add_member(:participant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantId, location_name: 'participantId', traits: {"smithy.api#documentation" => "<p>ID of the participant within the stage.</p>", "smithy.api#required" => {}}))
    IngestConfigurationSummary.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestConfigurationState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>State of the ingest configuration. It is <code>ACTIVE</code> if a publisher currently is\n         publishing to the stage associated with the ingest configuration.</p>", "smithy.api#required" => {}}))
    IngestConfigurationSummary.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>Customer-assigned name to help identify the participant using the IngestConfiguration;\n         this can be used to link a participant to a user in the customer’s own systems. This can be\n         any UTF-8 encoded text. <i>This field is exposed to all stage participants and\n            should not be used for personally identifying, confidential, or sensitive\n            information.</i>\n         </p>"}))
    IngestConfigurationSummary.type = Types::IngestConfigurationSummary
    IngestProtocol.add_member(:rtmp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RTMP', traits: {"smithy.api#enumValue" => "RTMP"}))
    IngestProtocol.add_member(:rtmps, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RTMPS', traits: {"smithy.api#enumValue" => "RTMPS"}))
    InternalServerException.add_member(:access_control_allow_origin, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accessControlAllowOrigin', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Access-Control-Allow-Origin"}))
    InternalServerException.add_member(:access_control_expose_headers, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accessControlExposeHeaders', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Access-Control-Expose-Headers"}))
    InternalServerException.add_member(:cache_control, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'cacheControl', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Cache-Control"}))
    InternalServerException.add_member(:content_security_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'contentSecurityPolicy', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Content-Security-Policy"}))
    InternalServerException.add_member(:strict_transport_security, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'strictTransportSecurity', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Strict-Transport-Security"}))
    InternalServerException.add_member(:x_content_type_options, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'xContentTypeOptions', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "X-Content-Type-Options"}))
    InternalServerException.add_member(:x_frame_options, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'xFrameOptions', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "X-Frame-Options"}))
    InternalServerException.add_member(:x_amzn_error_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'xAmznErrorType', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    InternalServerException.add_member(:exception_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'exceptionMessage', traits: {"smithy.api#documentation" => "<p>Unexpected error during processing of request.</p>"}))
    InternalServerException.type = Types::InternalServerException
    LayoutConfiguration.add_member(:grid, Smithy::Schema::Shapes::ShapeRef.new(shape: GridConfiguration, location_name: 'grid', traits: {"smithy.api#documentation" => "<p>Configuration related to grid layout. Default: Grid layout.</p>"}))
    LayoutConfiguration.add_member(:pip, Smithy::Schema::Shapes::ShapeRef.new(shape: PipConfiguration, location_name: 'pip', traits: {"smithy.api#documentation" => "<p>Configuration related to PiP layout.</p>"}))
    LayoutConfiguration.type = Types::LayoutConfiguration
    ListCompositionsRequest.add_member(:filter_by_stage_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StageArn, location_name: 'filterByStageArn', traits: {"smithy.api#documentation" => "<p>Filters the Composition list to match the specified Stage ARN.</p>"}))
    ListCompositionsRequest.add_member(:filter_by_encoder_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EncoderConfigurationArn, location_name: 'filterByEncoderConfigurationArn', traits: {"smithy.api#documentation" => "<p>Filters the Composition list to match the specified EncoderConfiguration attached to at\n         least one of its output.</p>"}))
    ListCompositionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The first Composition to retrieve. This is used for pagination; see the\n         <code>nextToken</code> response field.</p>"}))
    ListCompositionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxCompositionResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of results to return. Default: 100.</p>"}))
    ListCompositionsRequest.type = Types::ListCompositionsRequest
    ListCompositionsResponse.add_member(:compositions, Smithy::Schema::Shapes::ShapeRef.new(shape: CompositionSummaryList, location_name: 'compositions', traits: {"smithy.api#documentation" => "<p>List of the matching Compositions (summary information only).</p>", "smithy.api#required" => {}}))
    ListCompositionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are more compositions than <code>maxResults</code>, use <code>nextToken</code>\n         in the request to get the next set.</p>"}))
    ListCompositionsResponse.type = Types::ListCompositionsResponse
    ListEncoderConfigurationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The first encoder configuration to retrieve. This is used for pagination; see the\n            <code>nextToken</code> response field.</p>"}))
    ListEncoderConfigurationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxEncoderConfigurationResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of results to return. Default: 100.</p>"}))
    ListEncoderConfigurationsRequest.type = Types::ListEncoderConfigurationsRequest
    ListEncoderConfigurationsResponse.add_member(:encoder_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: EncoderConfigurationSummaryList, location_name: 'encoderConfigurations', traits: {"smithy.api#documentation" => "<p>List of the matching EncoderConfigurations (summary information only).</p>", "smithy.api#required" => {}}))
    ListEncoderConfigurationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are more encoder configurations than <code>maxResults</code>, use\n            <code>nextToken</code> in the request to get the next set.</p>"}))
    ListEncoderConfigurationsResponse.type = Types::ListEncoderConfigurationsResponse
    ListIngestConfigurationsRequest.add_member(:filter_by_stage_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StageArn, location_name: 'filterByStageArn', traits: {"smithy.api#documentation" => "<p>Filters the response list to match the specified stage ARN. Only one filter (by stage ARN or by state) can be used at a time.</p>"}))
    ListIngestConfigurationsRequest.add_member(:filter_by_state, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestConfigurationState, location_name: 'filterByState', traits: {"smithy.api#documentation" => "<p>Filters the response list to match the specified state. Only one filter (by stage ARN or by state) can be used at a time.</p>"}))
    ListIngestConfigurationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The first IngestConfiguration to retrieve. This is used for pagination; see the <code>nextToken</code> response field.</p>"}))
    ListIngestConfigurationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxIngestConfigurationResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of results to return. Default: 50.</p>"}))
    ListIngestConfigurationsRequest.type = Types::ListIngestConfigurationsRequest
    ListIngestConfigurationsResponse.add_member(:ingest_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestConfigurationList, location_name: 'ingestConfigurations', traits: {"smithy.api#documentation" => "<p>List of the matching ingest configurations (summary information only).</p>", "smithy.api#required" => {}}))
    ListIngestConfigurationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are more IngestConfigurations than <code>maxResults</code>, use <code>nextToken</code> in the request to get the next set.</p>"}))
    ListIngestConfigurationsResponse.type = Types::ListIngestConfigurationsResponse
    ListParticipantEventsRequest.add_member(:stage_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StageArn, location_name: 'stageArn', traits: {"smithy.api#documentation" => "<p>Stage ARN.</p>", "smithy.api#required" => {}}))
    ListParticipantEventsRequest.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StageSessionId, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>ID of a session within the stage.</p>", "smithy.api#required" => {}}))
    ListParticipantEventsRequest.add_member(:participant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantId, location_name: 'participantId', traits: {"smithy.api#documentation" => "<p>Unique identifier for this participant. This is assigned by IVS and returned by <a>CreateParticipantToken</a>.</p>", "smithy.api#required" => {}}))
    ListParticipantEventsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The first participant event to retrieve. This is used for pagination; see the\n            <code>nextToken</code> response field.</p>"}))
    ListParticipantEventsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxParticipantEventResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of results to return. Default: 50.</p>"}))
    ListParticipantEventsRequest.type = Types::ListParticipantEventsRequest
    ListParticipantEventsResponse.add_member(:events, Smithy::Schema::Shapes::ShapeRef.new(shape: EventList, location_name: 'events', traits: {"smithy.api#documentation" => "<p>List of the matching events.</p>", "smithy.api#required" => {}}))
    ListParticipantEventsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are more events than <code>maxResults</code>, use <code>nextToken</code> in the\n         request to get the next set. </p>"}))
    ListParticipantEventsResponse.type = Types::ListParticipantEventsResponse
    ListParticipantReplicasRequest.add_member(:source_stage_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StageArn, location_name: 'sourceStageArn', traits: {"smithy.api#documentation" => "<p>ARN of the stage where the participant is publishing.</p>", "smithy.api#required" => {}}))
    ListParticipantReplicasRequest.add_member(:participant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantId, location_name: 'participantId', traits: {"smithy.api#documentation" => "<p>Participant ID of the publisher that has been replicated. This is assigned by IVS and returned by \n\t\t<a>CreateParticipantToken</a> \n\t\tor the <code>jti</code> (JWT ID) used to <a href=\"https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/getting-started-distribute-tokens.html#getting-started-distribute-tokens-self-signed\">create a self signed token</a>.</p>", "smithy.api#required" => {}}))
    ListParticipantReplicasRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The first participant to retrieve. This is used for pagination; see the <code>nextToken</code> response field.</p>"}))
    ListParticipantReplicasRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxParticipantReplicaResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of results to return. Default: 50.</p>"}))
    ListParticipantReplicasRequest.type = Types::ListParticipantReplicasRequest
    ListParticipantReplicasResponse.add_member(:replicas, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantReplicaList, location_name: 'replicas', traits: {"smithy.api#documentation" => "<p>List of all participant replicas.</p>", "smithy.api#required" => {}}))
    ListParticipantReplicasResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are more participants than <code>maxResults</code>, use <code>nextToken</code> in the request to get the next set.</p>"}))
    ListParticipantReplicasResponse.type = Types::ListParticipantReplicasResponse
    ListParticipantsRequest.add_member(:stage_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StageArn, location_name: 'stageArn', traits: {"smithy.api#documentation" => "<p>Stage ARN.</p>", "smithy.api#required" => {}}))
    ListParticipantsRequest.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StageSessionId, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>ID of the session within the stage.</p>", "smithy.api#required" => {}}))
    ListParticipantsRequest.add_member(:filter_by_user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'filterByUserId', traits: {"smithy.api#documentation" => "<p>Filters the response list to match the specified user ID. \n            Only one of <code>filterByUserId</code>, <code>filterByPublished</code>, \n            <code>filterByState</code>, or <code>filterByRecordingState</code> can be provided per request.\n\t    A <code>userId</code> is a\n            customer-assigned name to help identify the token; this can be used to link a participant\n            to a user in the customer’s own systems.</p>"}))
    ListParticipantsRequest.add_member(:filter_by_published, Smithy::Schema::Shapes::ShapeRef.new(shape: Published, location_name: 'filterByPublished', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Filters the response list to only show participants who published during the stage session.\n            Only one of <code>filterByUserId</code>, <code>filterByPublished</code>, \n            <code>filterByState</code>, or <code>filterByRecordingState</code> can be provided per request.</p>"}))
    ListParticipantsRequest.add_member(:filter_by_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantState, location_name: 'filterByState', traits: {"smithy.api#documentation" => "<p>Filters the response list to only show participants in the specified state. \n            Only one of <code>filterByUserId</code>, <code>filterByPublished</code>, \n            <code>filterByState</code>, or <code>filterByRecordingState</code> can be provided per request.</p>"}))
    ListParticipantsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The first participant to retrieve. This is used for pagination; see the\n            <code>nextToken</code> response field.</p>"}))
    ListParticipantsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxParticipantResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of results to return. Default: 50.</p>"}))
    ListParticipantsRequest.add_member(:filter_by_recording_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantRecordingFilterByRecordingState, location_name: 'filterByRecordingState', traits: {"smithy.api#documentation" => "<p>Filters the response list to only show participants with the specified recording state.\n            Only one of <code>filterByUserId</code>, <code>filterByPublished</code>, \n            <code>filterByState</code>, or <code>filterByRecordingState</code> can be provided per request.</p>"}))
    ListParticipantsRequest.type = Types::ListParticipantsRequest
    ListParticipantsResponse.add_member(:participants, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantList, location_name: 'participants', traits: {"smithy.api#documentation" => "<p>List of the matching participants (summary information only).</p>", "smithy.api#required" => {}}))
    ListParticipantsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are more participants than <code>maxResults</code>, use <code>nextToken</code>\n         in the request to get the next set.</p>"}))
    ListParticipantsResponse.type = Types::ListParticipantsResponse
    ListPublicKeysRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The first public key to retrieve. This is used for pagination; see the <code>nextToken</code> response field.</p>"}))
    ListPublicKeysRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPublicKeyResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of results to return. Default: 50.</p>"}))
    ListPublicKeysRequest.type = Types::ListPublicKeysRequest
    ListPublicKeysResponse.add_member(:public_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: PublicKeyList, location_name: 'publicKeys', traits: {"smithy.api#documentation" => "<p>List of the matching public keys (summary information only).</p>", "smithy.api#required" => {}}))
    ListPublicKeysResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are more public keys than <code>maxResults</code>, use <code>nextToken</code> in the request to get the next set.</p>"}))
    ListPublicKeysResponse.type = Types::ListPublicKeysResponse
    ListStageSessionsRequest.add_member(:stage_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StageArn, location_name: 'stageArn', traits: {"smithy.api#documentation" => "<p>Stage ARN.</p>", "smithy.api#required" => {}}))
    ListStageSessionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The first stage session to retrieve. This is used for pagination; see the\n            <code>nextToken</code> response field.</p>"}))
    ListStageSessionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxStageSessionResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of results to return. Default: 50.</p>"}))
    ListStageSessionsRequest.type = Types::ListStageSessionsRequest
    ListStageSessionsResponse.add_member(:stage_sessions, Smithy::Schema::Shapes::ShapeRef.new(shape: StageSessionList, location_name: 'stageSessions', traits: {"smithy.api#documentation" => "<p>List of matching stage sessions.</p>", "smithy.api#required" => {}}))
    ListStageSessionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are more stage sessions than <code>maxResults</code>, use\n            <code>nextToken</code> in the request to get the next set.</p>"}))
    ListStageSessionsResponse.type = Types::ListStageSessionsResponse
    ListStagesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The first stage to retrieve. This is used for pagination; see the <code>nextToken</code>\n         response field.</p>"}))
    ListStagesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxStageResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of results to return. Default: 50.</p>"}))
    ListStagesInput.type = Types::ListStagesInput
    ListStagesOutput.add_member(:stages, Smithy::Schema::Shapes::ShapeRef.new(shape: StageSummaryList, location_name: 'stages', traits: {"smithy.api#documentation" => "<p>List of the matching stages (summary information only).</p>", "smithy.api#required" => {}}))
    ListStagesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are more stages than <code>maxResults</code>, use <code>nextToken</code> in the\n         request to get the next set.</p>"}))
    ListStagesOutput.type = Types::ListStagesOutput
    ListStorageConfigurationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The first storage configuration to retrieve. This is used for pagination; \n\t  see the <code>nextToken</code> response field.</p>"}))
    ListStorageConfigurationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxStorageConfigurationResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of storage configurations to return. Default: your service quota or 100, \n\t  whichever is smaller.</p>"}))
    ListStorageConfigurationsRequest.type = Types::ListStorageConfigurationsRequest
    ListStorageConfigurationsResponse.add_member(:storage_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageConfigurationSummaryList, location_name: 'storageConfigurations', traits: {"smithy.api#documentation" => "<p>List of the matching storage configurations.</p>", "smithy.api#required" => {}}))
    ListStorageConfigurationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are more storage configurations than <code>maxResults</code>, use <code>nextToken</code>\n     in the request to get the next set.</p>"}))
    ListStorageConfigurationsResponse.type = Types::ListStorageConfigurationsResponse
    ListTagsForResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource to be retrieved. The ARN must be URL-encoded.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags attached to the resource. Array of maps, each of the form <code>string:string\n            (key:value)</code>.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    Participant.add_member(:participant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantId, location_name: 'participantId', traits: {"smithy.api#documentation" => "<p>Unique identifier for this participant, assigned by IVS.</p>"}))
    Participant.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>Customer-assigned name to help identify the token; this can be used to link a\n         participant to a user in the customer’s own systems. This can be any UTF-8 encoded text.\n            <i>This field is exposed to all stage participants and should not be used for\n            personally identifying, confidential, or sensitive information</i>.</p>"}))
    Participant.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>Whether the participant is connected to or disconnected from the stage.</p>"}))
    Participant.add_member(:first_join_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'firstJoinTime', traits: {"smithy.api#documentation" => "<p>ISO 8601 timestamp (returned as a string) when the participant first joined the stage\n         session.</p>"}))
    Participant.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantAttributes, location_name: 'attributes', traits: {"smithy.api#documentation" => "<p>Application-provided attributes to encode into the token and attach to a stage. Map keys\n         and values can contain UTF-8 encoded text. The maximum length of this field is 1 KB total.\n            <i>This field is exposed to all stage participants and should not be used for\n            personally identifying, confidential, or sensitive information</i>.</p>"}))
    Participant.add_member(:published, Smithy::Schema::Shapes::ShapeRef.new(shape: Published, location_name: 'published', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether the participant ever published to the stage session.</p>"}))
    Participant.add_member(:isp_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantClientAttribute, location_name: 'ispName', traits: {"smithy.api#documentation" => "<p>The participant’s Internet Service Provider.</p>"}))
    Participant.add_member(:os_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantClientAttribute, location_name: 'osName', traits: {"smithy.api#documentation" => "<p>The participant’s operating system.</p>"}))
    Participant.add_member(:os_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantClientAttribute, location_name: 'osVersion', traits: {"smithy.api#documentation" => "<p>The participant’s operating system version.</p>"}))
    Participant.add_member(:browser_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantClientAttribute, location_name: 'browserName', traits: {"smithy.api#documentation" => "<p>The participant’s browser.</p>"}))
    Participant.add_member(:browser_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantClientAttribute, location_name: 'browserVersion', traits: {"smithy.api#documentation" => "<p>The participant’s browser version.</p>"}))
    Participant.add_member(:sdk_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantClientAttribute, location_name: 'sdkVersion', traits: {"smithy.api#documentation" => "<p>The participant’s SDK version.</p>"}))
    Participant.add_member(:recording_s3_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantRecordingS3BucketName, location_name: 'recordingS3BucketName', traits: {"smithy.api#documentation" => "<p>Name of the S3 bucket to where the participant is being recorded, if individual\n         participant recording is enabled, or <code>\"\"</code> (empty string), if recording is not\n         enabled.</p>"}))
    Participant.add_member(:recording_s3_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantRecordingS3Prefix, location_name: 'recordingS3Prefix', traits: {"smithy.api#documentation" => "<p>S3 prefix of the S3 bucket where the participant is being recorded, if individual\n         participant recording is enabled, or <code>\"\"</code> (empty string), if recording is not\n         enabled. If individual participant recording merge is enabled, and if a stage publisher \n\t\t disconnects from a stage and then reconnects, IVS tries to record to the same S3 prefix as \n\t\t the previous session. See \n\t\t <a href=\"/ivs/latest/RealTimeUserGuide/rt-individual-participant-recording.html#ind-part-rec-merge-frag\">\n\t\t Merge Fragmented Individual Participant Recordings</a>.</p>"}))
    Participant.add_member(:recording_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantRecordingState, location_name: 'recordingState', traits: {"smithy.api#documentation" => "<p>The participant’s recording state.</p>"}))
    Participant.add_member(:protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantProtocol, location_name: 'protocol', traits: {"smithy.api#documentation" => "<p>Type of ingest protocol that the participant employs for broadcasting.</p>"}))
    Participant.add_member(:replication_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationType, location_name: 'replicationType', traits: {"smithy.api#documentation" => "<p>Indicates if the participant has been replicated to another stage or is a replica from another stage. Default: <code>NONE</code>. </p>"}))
    Participant.add_member(:replication_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationState, location_name: 'replicationState', traits: {"smithy.api#documentation" => "<p>The participant's replication state.</p>"}))
    Participant.add_member(:source_stage_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StageArn, location_name: 'sourceStageArn', traits: {"smithy.api#documentation" => "<p>Source stage ARN from which this participant is replicated, if <code>replicationType</code> is <code>REPLICA</code>.\n</p>"}))
    Participant.add_member(:source_session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StageSessionId, location_name: 'sourceSessionId', traits: {"smithy.api#documentation" => "<p>ID of the session within the source stage, if <code>replicationType</code> is <code>REPLICA</code>.</p>"}))
    Participant.type = Types::Participant
    ParticipantAttributes.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ParticipantAttributes.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ParticipantList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantSummary)
    ParticipantProtocol.add_member(:unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    ParticipantProtocol.add_member(:whip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WHIP', traits: {"smithy.api#enumValue" => "WHIP"}))
    ParticipantProtocol.add_member(:rtmp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RTMP', traits: {"smithy.api#enumValue" => "RTMP"}))
    ParticipantProtocol.add_member(:rtmps, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RTMPS', traits: {"smithy.api#enumValue" => "RTMPS"}))
    ParticipantRecordingHlsConfiguration.add_member(:target_segment_duration_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantRecordingTargetSegmentDurationSeconds, location_name: 'targetSegmentDurationSeconds', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>Defines the target duration for recorded segments generated when recording a stage participant. \n\t  Segments may have durations longer than the specified value when needed to ensure each segment begins with a keyframe. \n\t  Default: 6.</p>"}))
    ParticipantRecordingHlsConfiguration.type = Types::ParticipantRecordingHlsConfiguration
    ParticipantRecordingMediaType.add_member(:audio_video, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUDIO_VIDEO', traits: {"smithy.api#enumValue" => "AUDIO_VIDEO"}))
    ParticipantRecordingMediaType.add_member(:audio_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUDIO_ONLY', traits: {"smithy.api#enumValue" => "AUDIO_ONLY"}))
    ParticipantRecordingMediaType.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    ParticipantRecordingMediaTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantRecordingMediaType)
    ParticipantReplica.add_member(:source_stage_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StageArn, location_name: 'sourceStageArn', traits: {"smithy.api#documentation" => "<p>ARN of the stage from which this participant is replicated.</p>", "smithy.api#required" => {}}))
    ParticipantReplica.add_member(:participant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantId, location_name: 'participantId', traits: {"smithy.api#documentation" => "<p>Participant ID of the publisher that will be replicated. This is assigned by IVS and returned by \n\t\t<a>CreateParticipantToken</a> \n\t\tor the <code>jti</code> (JWT ID) used to <a href=\"https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/getting-started-distribute-tokens.html#getting-started-distribute-tokens-self-signed\">\n\t\t\t\t  create a self signed token</a>.</p>", "smithy.api#required" => {}}))
    ParticipantReplica.add_member(:source_session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StageSessionId, location_name: 'sourceSessionId', traits: {"smithy.api#documentation" => "<p>ID of the session within the source stage.</p>", "smithy.api#required" => {}}))
    ParticipantReplica.add_member(:destination_stage_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StageArn, location_name: 'destinationStageArn', traits: {"smithy.api#documentation" => "<p>ARN of the stage where the participant is replicated.</p>", "smithy.api#required" => {}}))
    ParticipantReplica.add_member(:destination_session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StageSessionId, location_name: 'destinationSessionId', traits: {"smithy.api#documentation" => "<p>ID of the session within the destination stage.</p>", "smithy.api#required" => {}}))
    ParticipantReplica.add_member(:replication_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationState, location_name: 'replicationState', traits: {"smithy.api#documentation" => "<p>Replica’s current replication state.</p>", "smithy.api#required" => {}}))
    ParticipantReplica.type = Types::ParticipantReplica
    ParticipantReplicaList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantReplica)
    ParticipantSummary.add_member(:participant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantId, location_name: 'participantId', traits: {"smithy.api#documentation" => "<p>Unique identifier for this participant, assigned by IVS.</p>"}))
    ParticipantSummary.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>Customer-assigned name to help identify the token; this can be used to link a\n         participant to a user in the customer’s own systems. This can be any UTF-8 encoded text.\n            <i>This field is exposed to all stage participants and should not be used for\n            personally identifying, confidential, or sensitive information</i>.</p>"}))
    ParticipantSummary.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>Whether the participant is connected to or disconnected from the stage.</p>"}))
    ParticipantSummary.add_member(:first_join_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'firstJoinTime', traits: {"smithy.api#documentation" => "<p>ISO 8601 timestamp (returned as a string) when the participant first joined the stage\n         session.</p>"}))
    ParticipantSummary.add_member(:published, Smithy::Schema::Shapes::ShapeRef.new(shape: Published, location_name: 'published', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether the participant ever published to the stage session.</p>"}))
    ParticipantSummary.add_member(:recording_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantRecordingState, location_name: 'recordingState', traits: {"smithy.api#documentation" => "<p>The participant’s recording state.</p>"}))
    ParticipantSummary.add_member(:replication_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationType, location_name: 'replicationType', traits: {"smithy.api#documentation" => "<p>Indicates if the participant has been replicated to another stage or is a replica from another stage. Default: <code>NONE</code>. </p>"}))
    ParticipantSummary.add_member(:replication_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationState, location_name: 'replicationState', traits: {"smithy.api#documentation" => "<p>The participant's replication state.</p>"}))
    ParticipantSummary.add_member(:source_stage_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StageArn, location_name: 'sourceStageArn', traits: {"smithy.api#documentation" => "<p>ARN of the stage from which this participant is replicated.</p>"}))
    ParticipantSummary.add_member(:source_session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StageSessionId, location_name: 'sourceSessionId', traits: {"smithy.api#documentation" => "<p>ID of the session within the source stage, if <code>replicationType</code> is <code>REPLICA</code>.</p>"}))
    ParticipantSummary.type = Types::ParticipantSummary
    ParticipantThumbnailConfiguration.add_member(:target_interval_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: ThumbnailIntervalSeconds, location_name: 'targetIntervalSeconds', traits: {"smithy.api#documentation" => "<p>The targeted thumbnail-generation interval in seconds. This is configurable only if\n            <code>recordingMode</code> is <code>INTERVAL</code>. Default: 60.</p>"}))
    ParticipantThumbnailConfiguration.add_member(:storage, Smithy::Schema::Shapes::ShapeRef.new(shape: ThumbnailStorageTypeList, location_name: 'storage', traits: {"smithy.api#documentation" => "<p>Indicates the format in which thumbnails are recorded. <code>SEQUENTIAL</code> records\n         all generated thumbnails in a serial manner, to the media/thumbnails/high directory.\n            <code>LATEST</code> saves the latest thumbnail in media/latest_thumbnail/high/thumb.jpg\n         and overwrites it at the interval specified by <code>targetIntervalSeconds</code>. You can\n         enable both <code>SEQUENTIAL</code> and <code>LATEST</code>. Default:\n            <code>SEQUENTIAL</code>.</p>"}))
    ParticipantThumbnailConfiguration.add_member(:recording_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ThumbnailRecordingMode, location_name: 'recordingMode', traits: {"smithy.api#documentation" => "<p>Thumbnail recording mode. Default: <code>DISABLED</code>.</p>"}))
    ParticipantThumbnailConfiguration.type = Types::ParticipantThumbnailConfiguration
    ParticipantToken.add_member(:participant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantTokenId, location_name: 'participantId', traits: {"smithy.api#documentation" => "<p>Unique identifier for this participant token, assigned by IVS.</p>"}))
    ParticipantToken.add_member(:token, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantTokenString, location_name: 'token', traits: {"smithy.api#documentation" => "<p>The issued client token, encrypted.</p>"}))
    ParticipantToken.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantTokenUserId, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>Customer-assigned name to help identify the token; this can be used to link a\n         participant to a user in the customer’s own systems. This can be any UTF-8 encoded text.\n            <i>This field is exposed to all stage participants and should not be used for\n            personally identifying, confidential, or sensitive information.</i>\n         </p>"}))
    ParticipantToken.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantTokenAttributes, location_name: 'attributes', traits: {"smithy.api#documentation" => "<p>Application-provided attributes to encode into the token and attach to a stage.\n            <i>This field is exposed to all stage participants and should not be used for\n            personally identifying, confidential, or sensitive information.</i>\n         </p>"}))
    ParticipantToken.add_member(:duration, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantTokenDurationMinutes, location_name: 'duration', traits: {"smithy.api#documentation" => "<p>Duration (in minutes), after which the participant token expires. Default: 720 (12\n         hours).</p>"}))
    ParticipantToken.add_member(:capabilities, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantTokenCapabilities, location_name: 'capabilities', traits: {"smithy.api#documentation" => "<p>Set of capabilities that the user is allowed to perform in the stage.</p>"}))
    ParticipantToken.add_member(:expiration_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantTokenExpirationTime, location_name: 'expirationTime', traits: {"smithy.api#documentation" => "<p>ISO 8601 timestamp (returned as a string) for when this token expires.</p>"}))
    ParticipantToken.type = Types::ParticipantToken
    ParticipantTokenAttributes.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ParticipantTokenAttributes.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ParticipantTokenCapabilities.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantTokenCapability)
    ParticipantTokenConfiguration.add_member(:duration, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantTokenDurationMinutes, location_name: 'duration', traits: {"smithy.api#documentation" => "<p>Duration (in minutes), after which the corresponding participant token expires. Default:\n         720 (12 hours).</p>"}))
    ParticipantTokenConfiguration.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantTokenUserId, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>Customer-assigned name to help identify the token; this can be used to link a\n         participant to a user in the customer’s own systems. This can be any UTF-8 encoded text.\n            <i>This field is exposed to all stage participants and should not be used for\n            personally identifying, confidential, or sensitive information.</i>\n         </p>"}))
    ParticipantTokenConfiguration.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantTokenAttributes, location_name: 'attributes', traits: {"smithy.api#documentation" => "<p>Application-provided attributes to encode into the corresponding participant token and\n         attach to a stage. Map keys and values can contain UTF-8 encoded text. The maximum length\n         of this field is 1 KB total. <i>This field is exposed to all stage participants and\n            should not be used for personally identifying, confidential, or sensitive\n            information.</i>\n         </p>"}))
    ParticipantTokenConfiguration.add_member(:capabilities, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantTokenCapabilities, location_name: 'capabilities', traits: {"smithy.api#documentation" => "<p>Set of capabilities that the user is allowed to perform in the stage.</p>"}))
    ParticipantTokenConfiguration.type = Types::ParticipantTokenConfiguration
    ParticipantTokenConfigurations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantTokenConfiguration)
    ParticipantTokenList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantToken)
    PendingVerification.add_member(:access_control_allow_origin, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accessControlAllowOrigin', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Access-Control-Allow-Origin"}))
    PendingVerification.add_member(:access_control_expose_headers, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accessControlExposeHeaders', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Access-Control-Expose-Headers"}))
    PendingVerification.add_member(:cache_control, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'cacheControl', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Cache-Control"}))
    PendingVerification.add_member(:content_security_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'contentSecurityPolicy', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Content-Security-Policy"}))
    PendingVerification.add_member(:strict_transport_security, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'strictTransportSecurity', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Strict-Transport-Security"}))
    PendingVerification.add_member(:x_content_type_options, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'xContentTypeOptions', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "X-Content-Type-Options"}))
    PendingVerification.add_member(:x_frame_options, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'xFrameOptions', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "X-Frame-Options"}))
    PendingVerification.add_member(:x_amzn_error_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'xAmznErrorType', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    PendingVerification.add_member(:exception_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'exceptionMessage', traits: {"smithy.api#documentation" => "<p> Your account is pending verification. </p>"}))
    PendingVerification.type = Types::PendingVerification
    PipBehavior.add_member(:static, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STATIC', traits: {"smithy.api#enumValue" => "STATIC"}))
    PipBehavior.add_member(:dynamic, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DYNAMIC', traits: {"smithy.api#enumValue" => "DYNAMIC"}))
    PipConfiguration.add_member(:featured_participant_attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeKey, location_name: 'featuredParticipantAttribute', traits: {"smithy.api#documentation" => "<p>This attribute name identifies the featured slot. A participant with this attribute set\n         to <code>\"true\"</code> (as a string value) in <a>ParticipantTokenConfiguration</a> is placed in the featured slot. Default: <code>\"\"</code> (no featured\n         participant).</p>"}))
    PipConfiguration.add_member(:omit_stopped_video, Smithy::Schema::Shapes::ShapeRef.new(shape: OmitStoppedVideo, location_name: 'omitStoppedVideo', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Determines whether to omit participants with stopped video in the composition. Default:\n            <code>false</code>.</p>"}))
    PipConfiguration.add_member(:video_fill_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: VideoFillMode, location_name: 'videoFillMode', traits: {"smithy.api#documentation" => "<p>Defines how video content fits within the participant tile: <code>FILL</code>\n         (stretched), <code>COVER</code> (cropped), or <code>CONTAIN</code> (letterboxed). Default:\n            <code>COVER</code>.</p>"}))
    PipConfiguration.add_member(:grid_gap, Smithy::Schema::Shapes::ShapeRef.new(shape: GridGap, location_name: 'gridGap', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Specifies the spacing between participant tiles in pixels. Default:\n         <code>0</code>.</p>"}))
    PipConfiguration.add_member(:pip_participant_attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeKey, location_name: 'pipParticipantAttribute', traits: {"smithy.api#documentation" => "<p>Specifies the participant for the PiP window. A participant with this attribute set to\n            <code>\"true\"</code> (as a string value) in <a>ParticipantTokenConfiguration</a> is placed in the PiP slot. Default: <code>\"\"</code> (no PiP participant).</p>"}))
    PipConfiguration.add_member(:pip_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: PipBehavior, location_name: 'pipBehavior', traits: {"smithy.api#documentation" => "<p>Defines PiP behavior when all participants have left: <code>STATIC</code> (maintains\n         original position/size) or <code>DYNAMIC</code> (expands to full composition). Default:\n            <code>STATIC</code>.</p>"}))
    PipConfiguration.add_member(:pip_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: PipOffset, location_name: 'pipOffset', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Sets the PiP window’s offset position in pixels from the closest edges determined by\n            <code>PipPosition</code>. Default: <code>0</code>.</p>"}))
    PipConfiguration.add_member(:pip_position, Smithy::Schema::Shapes::ShapeRef.new(shape: PipPosition, location_name: 'pipPosition', traits: {"smithy.api#documentation" => "<p>Determines the corner position of the PiP window. Default:\n         <code>BOTTOM_RIGHT</code>.</p>"}))
    PipConfiguration.add_member(:pip_width, Smithy::Schema::Shapes::ShapeRef.new(shape: PipWidth, location_name: 'pipWidth', traits: {"smithy.api#documentation" => "<p>Specifies the width of the PiP window in pixels. When this is not set explicitly,\n            <code>pipWidth</code>’s value will be based on the size of the composition and the\n         aspect ratio of the participant’s video.</p>"}))
    PipConfiguration.add_member(:pip_height, Smithy::Schema::Shapes::ShapeRef.new(shape: PipHeight, location_name: 'pipHeight', traits: {"smithy.api#documentation" => "<p>Specifies the height of the PiP window in pixels. When this is not set explicitly,\n            <code>pipHeight</code>’s value will be based on the size of the composition and the\n         aspect ratio of the participant’s video.</p>"}))
    PipConfiguration.type = Types::PipConfiguration
    PipPosition.add_member(:top_left, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TOP_LEFT', traits: {"smithy.api#enumValue" => "TOP_LEFT"}))
    PipPosition.add_member(:top_right, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TOP_RIGHT', traits: {"smithy.api#enumValue" => "TOP_RIGHT"}))
    PipPosition.add_member(:bottom_left, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOTTOM_LEFT', traits: {"smithy.api#enumValue" => "BOTTOM_LEFT"}))
    PipPosition.add_member(:bottom_right, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOTTOM_RIGHT', traits: {"smithy.api#enumValue" => "BOTTOM_RIGHT"}))
    PublicKey.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PublicKeyArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Public key ARN.</p>"}))
    PublicKey.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PublicKeyName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Public key name.</p>"}))
    PublicKey.add_member(:public_key_material, Smithy::Schema::Shapes::ShapeRef.new(shape: PublicKeyMaterial, location_name: 'publicKeyMaterial', traits: {"smithy.api#documentation" => "<p>Public key material.</p>"}))
    PublicKey.add_member(:fingerprint, Smithy::Schema::Shapes::ShapeRef.new(shape: PublicKeyFingerprint, location_name: 'fingerprint', traits: {"smithy.api#documentation" => "<p>The public key fingerprint, a short string used to identify or verify the full public\n         key.</p>"}))
    PublicKey.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags attached to the resource. Array of maps, each of the form <code>string:string\n            (key:value)</code>. See <a href=\"https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html\">Best practices and strategies</a> in <i>Tagging AWS Resources and Tag\n            Editor</i> for details, including restrictions that apply to tags and \"Tag naming\n         limits and requirements\"; Amazon IVS has no constraints on tags beyond what is documented\n         there.</p>"}))
    PublicKey.type = Types::PublicKey
    PublicKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PublicKeySummary)
    PublicKeySummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PublicKeyArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Public key ARN.</p>"}))
    PublicKeySummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PublicKeyName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Public key name.</p>"}))
    PublicKeySummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags attached to the resource. Array of maps, each of the form <code>string:string\n            (key:value)</code>. See <a href=\"https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html\">Best practices and strategies</a> in <i>Tagging AWS Resources and Tag\n            Editor</i> for details, including restrictions that apply to tags and \"Tag naming\n         limits and requirements\"; Amazon IVS has no constraints on tags beyond what is documented\n         there.</p>"}))
    PublicKeySummary.type = Types::PublicKeySummary
    RecordingConfiguration.add_member(:hls_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CompositionRecordingHlsConfiguration, location_name: 'hlsConfiguration', traits: {"smithy.api#documentation" => "<p>An HLS configuration object to return information about how the recording will be configured.</p>"}))
    RecordingConfiguration.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingConfigurationFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>The recording format for storing a recording in Amazon S3.</p>"}))
    RecordingConfiguration.type = Types::RecordingConfiguration
    ResourceNotFoundException.add_member(:access_control_allow_origin, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accessControlAllowOrigin', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Access-Control-Allow-Origin"}))
    ResourceNotFoundException.add_member(:access_control_expose_headers, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accessControlExposeHeaders', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Access-Control-Expose-Headers"}))
    ResourceNotFoundException.add_member(:cache_control, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'cacheControl', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Cache-Control"}))
    ResourceNotFoundException.add_member(:content_security_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'contentSecurityPolicy', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Content-Security-Policy"}))
    ResourceNotFoundException.add_member(:strict_transport_security, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'strictTransportSecurity', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Strict-Transport-Security"}))
    ResourceNotFoundException.add_member(:x_content_type_options, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'xContentTypeOptions', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "X-Content-Type-Options"}))
    ResourceNotFoundException.add_member(:x_frame_options, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'xFrameOptions', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "X-Frame-Options"}))
    ResourceNotFoundException.add_member(:x_amzn_error_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'xAmznErrorType', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    ResourceNotFoundException.add_member(:exception_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'exceptionMessage', traits: {"smithy.api#documentation" => "<p>Request references a resource which does not exist.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3DestinationConfiguration.add_member(:storage_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageConfigurationArn, location_name: 'storageConfigurationArn', traits: {"smithy.api#documentation" => "<p>ARN of the <a>StorageConfiguration</a> where recorded videos will be\n         stored.</p>", "smithy.api#required" => {}}))
    S3DestinationConfiguration.add_member(:encoder_configuration_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: EncoderConfigurationArnList, location_name: 'encoderConfigurationArns', traits: {"smithy.api#documentation" => "<p>ARNs of the <a>EncoderConfiguration</a> resource. The encoder configuration\n         and stage resources must be in the same AWS account and region. </p>", "smithy.api#required" => {}}))
    S3DestinationConfiguration.add_member(:recording_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingConfiguration, location_name: 'recordingConfiguration', traits: {"smithy.api#documentation" => "<p>Array of maps, each of the form <code>string:string (key:value)</code>. This is an\n         optional customer specification, currently used only to specify the recording format for\n         storing a recording in Amazon S3.</p>"}))
    S3DestinationConfiguration.add_member(:thumbnail_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: CompositionThumbnailConfigurationList, location_name: 'thumbnailConfigurations', traits: {"smithy.api#documentation" => "<p>A complex type that allows you to enable/disable the recording of thumbnails for a <a>Composition</a> and modify the interval at which thumbnails are generated for\n         the live session.</p>"}))
    S3DestinationConfiguration.type = Types::S3DestinationConfiguration
    S3Detail.add_member(:recording_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'recordingPrefix', traits: {"smithy.api#documentation" => "<p>The S3 bucket prefix under which the recording is stored.</p>", "smithy.api#required" => {}}))
    S3Detail.type = Types::S3Detail
    S3StorageConfiguration.add_member(:bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'bucketName', traits: {"smithy.api#documentation" => "<p>Location (S3 bucket name) where recorded videos will be stored. Note that the\n         StorageConfiguration and S3 bucket must be in the same region as the Composition.</p>", "smithy.api#required" => {}}))
    S3StorageConfiguration.type = Types::S3StorageConfiguration
    ServiceQuotaExceededException.add_member(:access_control_allow_origin, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accessControlAllowOrigin', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Access-Control-Allow-Origin"}))
    ServiceQuotaExceededException.add_member(:access_control_expose_headers, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accessControlExposeHeaders', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Access-Control-Expose-Headers"}))
    ServiceQuotaExceededException.add_member(:cache_control, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'cacheControl', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Cache-Control"}))
    ServiceQuotaExceededException.add_member(:content_security_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'contentSecurityPolicy', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Content-Security-Policy"}))
    ServiceQuotaExceededException.add_member(:strict_transport_security, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'strictTransportSecurity', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Strict-Transport-Security"}))
    ServiceQuotaExceededException.add_member(:x_content_type_options, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'xContentTypeOptions', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "X-Content-Type-Options"}))
    ServiceQuotaExceededException.add_member(:x_frame_options, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'xFrameOptions', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "X-Frame-Options"}))
    ServiceQuotaExceededException.add_member(:x_amzn_error_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'xAmznErrorType', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    ServiceQuotaExceededException.add_member(:exception_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'exceptionMessage', traits: {"smithy.api#documentation" => "<p>Request would cause a service quota to be exceeded.</p>"}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Stage.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StageArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Stage ARN.</p>", "smithy.api#required" => {}}))
    Stage.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: StageName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Stage name.</p>"}))
    Stage.add_member(:active_session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StageSessionId, location_name: 'activeSessionId', traits: {"smithy.api#documentation" => "<p>ID of the active session within the stage.</p>"}))
    Stage.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags attached to the resource. Array of maps, each of the form <code>string:string\n            (key:value)</code>. See <a href=\"https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html\">Best practices and strategies</a> in <i>Tagging AWS Resources and Tag\n            Editor</i> for details, including restrictions that apply to tags and \"Tag naming\n         limits and requirements\"; Amazon IVS has no constraints on tags beyond what is documented\n         there.</p>"}))
    Stage.add_member(:auto_participant_recording_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoParticipantRecordingConfiguration, location_name: 'autoParticipantRecordingConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration object for individual participant recording, attached to the stage.</p>"}))
    Stage.add_member(:endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: StageEndpoints, location_name: 'endpoints', traits: {"smithy.api#documentation" => "<p>Summary information about various endpoints for a stage.</p>"}))
    Stage.type = Types::Stage
    StageEndpoints.add_member(:events, Smithy::Schema::Shapes::ShapeRef.new(shape: StageEndpoint, location_name: 'events', traits: {"smithy.api#documentation" => "<p>Events endpoint.</p>"}))
    StageEndpoints.add_member(:whip, Smithy::Schema::Shapes::ShapeRef.new(shape: StageEndpoint, location_name: 'whip', traits: {"smithy.api#documentation" => "<p>The endpoint to be used for IVS real-time streaming using the WHIP protocol.</p>"}))
    StageEndpoints.add_member(:rtmp, Smithy::Schema::Shapes::ShapeRef.new(shape: StageEndpoint, location_name: 'rtmp', traits: {"smithy.api#documentation" => "<p>The endpoint to be used for IVS real-time streaming using the RTMP protocol.</p>"}))
    StageEndpoints.add_member(:rtmps, Smithy::Schema::Shapes::ShapeRef.new(shape: StageEndpoint, location_name: 'rtmps', traits: {"smithy.api#documentation" => "<p>The endpoint to be used for IVS real-time streaming using the RTMPS protocol.</p>"}))
    StageEndpoints.type = Types::StageEndpoints
    StageSession.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StageSessionId, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>ID of the session within the stage.</p>"}))
    StageSession.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p> ISO 8601 timestamp (returned as a string) when this stage session began.</p>"}))
    StageSession.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>ISO 8601 timestamp (returned as a string) when the stage session ended. This is null if\n         the stage is active.</p>"}))
    StageSession.type = Types::StageSession
    StageSessionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StageSessionSummary)
    StageSessionSummary.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StageSessionId, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>ID of the session within the stage.</p>"}))
    StageSessionSummary.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p> ISO 8601 timestamp (returned as a string) when this stage session began.</p>"}))
    StageSessionSummary.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>ISO 8601 timestamp (returned as a string) when the stage session ended. This is null if\n         the stage is active.</p>"}))
    StageSessionSummary.type = Types::StageSessionSummary
    StageSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StageArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Stage ARN.</p>", "smithy.api#required" => {}}))
    StageSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: StageName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Stage name.</p>"}))
    StageSummary.add_member(:active_session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StageSessionId, location_name: 'activeSessionId', traits: {"smithy.api#documentation" => "<p>ID of the active session within the stage.</p>"}))
    StageSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags attached to the resource. Array of maps, each of the form <code>string:string\n            (key:value)</code>. See <a href=\"https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html\">Best practices and strategies</a> in <i>Tagging AWS Resources and Tag\n            Editor</i> for details, including restrictions that apply to tags and \"Tag naming\n         limits and requirements\"; Amazon IVS has no constraints on tags beyond what is documented\n         there.</p>"}))
    StageSummary.type = Types::StageSummary
    StageSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StageSummary)
    StartCompositionRequest.add_member(:stage_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StageArn, location_name: 'stageArn', traits: {"smithy.api#documentation" => "<p>ARN of the stage to be used for compositing.</p>", "smithy.api#required" => {}}))
    StartCompositionRequest.add_member(:idempotency_token, Smithy::Schema::Shapes::ShapeRef.new(shape: CompositionClientToken, location_name: 'idempotencyToken', traits: {"smithy.api#documentation" => "<p>Idempotency token.</p>", "smithy.api#idempotencyToken" => {}}))
    StartCompositionRequest.add_member(:layout, Smithy::Schema::Shapes::ShapeRef.new(shape: LayoutConfiguration, location_name: 'layout', traits: {"smithy.api#documentation" => "<p>Layout object to configure composition parameters.</p>"}))
    StartCompositionRequest.add_member(:destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationConfigurationList, location_name: 'destinations', traits: {"smithy.api#documentation" => "<p>Array of destination configuration.</p>", "smithy.api#required" => {}}))
    StartCompositionRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags attached to the resource. Array of maps, each of the form <code>string:string\n         (key:value)</code>. See <a href=\"https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html\">Best practices and strategies</a>\n         in <i>Tagging AWS Resources and Tag Editor</i> for details, including restrictions that apply to tags and \"Tag naming\n         limits and requirements\"; Amazon IVS has no constraints on tags beyond what is documented\n         there.</p>"}))
    StartCompositionRequest.type = Types::StartCompositionRequest
    StartCompositionResponse.add_member(:composition, Smithy::Schema::Shapes::ShapeRef.new(shape: Composition, location_name: 'composition', traits: {"smithy.api#documentation" => "<p>The Composition that was created.</p>"}))
    StartCompositionResponse.type = Types::StartCompositionResponse
    StartParticipantReplicationRequest.add_member(:source_stage_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StageArn, location_name: 'sourceStageArn', traits: {"smithy.api#documentation" => "<p>ARN of the stage where the participant is publishing.</p>", "smithy.api#required" => {}}))
    StartParticipantReplicationRequest.add_member(:destination_stage_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StageArn, location_name: 'destinationStageArn', traits: {"smithy.api#documentation" => "<p>ARN of the stage to which the participant will be replicated.</p>", "smithy.api#required" => {}}))
    StartParticipantReplicationRequest.add_member(:participant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantId, location_name: 'participantId', traits: {"smithy.api#documentation" => "<p>Participant ID of the publisher that will be replicated. This is assigned by IVS and returned by \n\t\t<a>CreateParticipantToken</a> \n\t\tor the <code>jti</code> (JWT ID) used to <a href=\"https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/getting-started-distribute-tokens.html#getting-started-distribute-tokens-self-signed\">create a self signed token</a>.\n\t  </p>", "smithy.api#required" => {}}))
    StartParticipantReplicationRequest.add_member(:reconnect_window_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: ReconnectWindowSeconds, location_name: 'reconnectWindowSeconds', traits: {"smithy.api#documentation" => "<p>If the participant disconnects and then reconnects within the specified interval, replication will continue to be <code>ACTIVE</code>. \n\t  Default: 0.</p>"}))
    StartParticipantReplicationRequest.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantAttributes, location_name: 'attributes', traits: {"smithy.api#documentation" => "<p>Application-provided attributes to set on the replicated participant in the destination stage. \n\t  Map keys and values can contain UTF-8 encoded text. The maximum length of this field is 1 KB total. \n\t  <i>This field is exposed to all stage participants and should not be used for personally identifying, \n\t  confidential, or sensitive information.</i>\n         </p>\n         <p>These attributes are merged with any attributes set for this participant when creating the token. \n\t  If there is overlap in keys, the values in these attributes are replaced.</p>"}))
    StartParticipantReplicationRequest.type = Types::StartParticipantReplicationRequest
    StartParticipantReplicationResponse.add_member(:access_control_allow_origin, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accessControlAllowOrigin', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Access-Control-Allow-Origin"}))
    StartParticipantReplicationResponse.add_member(:access_control_expose_headers, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accessControlExposeHeaders', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Access-Control-Expose-Headers"}))
    StartParticipantReplicationResponse.add_member(:cache_control, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'cacheControl', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Cache-Control"}))
    StartParticipantReplicationResponse.add_member(:content_security_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'contentSecurityPolicy', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Content-Security-Policy"}))
    StartParticipantReplicationResponse.add_member(:strict_transport_security, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'strictTransportSecurity', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Strict-Transport-Security"}))
    StartParticipantReplicationResponse.add_member(:x_content_type_options, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'xContentTypeOptions', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "X-Content-Type-Options"}))
    StartParticipantReplicationResponse.add_member(:x_frame_options, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'xFrameOptions', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "X-Frame-Options"}))
    StartParticipantReplicationResponse.type = Types::StartParticipantReplicationResponse
    StopCompositionRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CompositionArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>ARN of the Composition.</p>", "smithy.api#required" => {}}))
    StopCompositionRequest.type = Types::StopCompositionRequest
    StopCompositionResponse.type = Types::StopCompositionResponse
    StopParticipantReplicationRequest.add_member(:source_stage_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StageArn, location_name: 'sourceStageArn', traits: {"smithy.api#documentation" => "<p>ARN of the stage where the participant is publishing.</p>", "smithy.api#required" => {}}))
    StopParticipantReplicationRequest.add_member(:destination_stage_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StageArn, location_name: 'destinationStageArn', traits: {"smithy.api#documentation" => "<p>ARN of the stage where the participant has been replicated.</p>", "smithy.api#required" => {}}))
    StopParticipantReplicationRequest.add_member(:participant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantId, location_name: 'participantId', traits: {"smithy.api#documentation" => "<p>Participant ID of the publisher that has been replicated. This is assigned by IVS and returned by \n\t\t<a>CreateParticipantToken</a> \n\t\tor the <code>jti</code> (JWT ID) used to <a href=\"https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/getting-started-distribute-tokens.html#getting-started-distribute-tokens-self-signed\">\n\t\t\t\t  create a self signed token</a>.</p>", "smithy.api#required" => {}}))
    StopParticipantReplicationRequest.type = Types::StopParticipantReplicationRequest
    StopParticipantReplicationResponse.add_member(:access_control_allow_origin, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accessControlAllowOrigin', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Access-Control-Allow-Origin"}))
    StopParticipantReplicationResponse.add_member(:access_control_expose_headers, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accessControlExposeHeaders', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Access-Control-Expose-Headers"}))
    StopParticipantReplicationResponse.add_member(:cache_control, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'cacheControl', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Cache-Control"}))
    StopParticipantReplicationResponse.add_member(:content_security_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'contentSecurityPolicy', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Content-Security-Policy"}))
    StopParticipantReplicationResponse.add_member(:strict_transport_security, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'strictTransportSecurity', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Strict-Transport-Security"}))
    StopParticipantReplicationResponse.add_member(:x_content_type_options, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'xContentTypeOptions', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "X-Content-Type-Options"}))
    StopParticipantReplicationResponse.add_member(:x_frame_options, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'xFrameOptions', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "X-Frame-Options"}))
    StopParticipantReplicationResponse.type = Types::StopParticipantReplicationResponse
    StorageConfiguration.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageConfigurationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>ARN of the storage configuration.</p>", "smithy.api#required" => {}}))
    StorageConfiguration.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageConfigurationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Name of the storage configuration.</p>"}))
    StorageConfiguration.add_member(:s3, Smithy::Schema::Shapes::ShapeRef.new(shape: S3StorageConfiguration, location_name: 's3', traits: {"smithy.api#documentation" => "<p>An S3 destination configuration where recorded videos will be stored.</p>"}))
    StorageConfiguration.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags attached to the resource. Array of maps, each of the form <code>string:string\n            (key:value)</code>. See <a href=\"https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html\">Best practices and strategies</a> in <i>Tagging AWS Resources and Tag\n            Editor</i> for details, including restrictions that apply to tags and \"Tag naming\n         limits and requirements\"; Amazon IVS has no constraints on tags beyond what is documented\n         there.</p>"}))
    StorageConfiguration.type = Types::StorageConfiguration
    StorageConfigurationSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageConfigurationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>ARN of the storage configuration.</p>", "smithy.api#required" => {}}))
    StorageConfigurationSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageConfigurationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Name of the storage configuration.</p>"}))
    StorageConfigurationSummary.add_member(:s3, Smithy::Schema::Shapes::ShapeRef.new(shape: S3StorageConfiguration, location_name: 's3', traits: {"smithy.api#documentation" => "<p>An S3 destination configuration where recorded videos will be stored.</p>"}))
    StorageConfigurationSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags attached to the resource. Array of maps, each of the form <code>string:string\n            (key:value)</code>. See <a href=\"https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html\">Best practices and strategies</a> in <i>Tagging AWS Resources and Tag\n            Editor</i> for details, including restrictions that apply to tags and \"Tag naming\n         limits and requirements\"; Amazon IVS has no constraints on tags beyond what is documented\n         there.</p>"}))
    StorageConfigurationSummary.type = Types::StorageConfigurationSummary
    StorageConfigurationSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StorageConfigurationSummary)
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource to be tagged. The ARN must be URL-encoded.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Array of tags to be added or updated. Array of maps, each of the form\n         <code>string:string (key:value)</code>. See <a href=\"https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html\">Best practices and strategies</a>\n         in <i>Tagging AWS Resources and Tag Editor</i> for details, including restrictions that apply to tags and \"Tag naming\n         limits and requirements\"; Amazon IVS has no constraints on tags beyond what is documented\n         there.</p>", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    Tags.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    ThumbnailRecordingMode.add_member(:interval, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERVAL', traits: {"smithy.api#enumValue" => "INTERVAL"}))
    ThumbnailRecordingMode.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    ThumbnailStorageType.add_member(:sequential, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SEQUENTIAL', traits: {"smithy.api#enumValue" => "SEQUENTIAL"}))
    ThumbnailStorageType.add_member(:latest, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LATEST', traits: {"smithy.api#enumValue" => "LATEST"}))
    ThumbnailStorageTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ThumbnailStorageType)
    UntagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource to be untagged. The ARN must be URL-encoded.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>Array of tag keys (strings) for the tags to be removed.\n         See <a href=\"https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html\">Best practices and strategies</a>\n         in <i>Tagging AWS Resources and Tag Editor</i> for details, including restrictions that apply to tags and \"Tag naming\n         limits and requirements\"; Amazon IVS has no constraints on tags beyond what is documented\n         there.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateIngestConfigurationRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestConfigurationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>ARN of the IngestConfiguration, for which the related stage ARN needs to be updated.</p>", "smithy.api#required" => {}}))
    UpdateIngestConfigurationRequest.add_member(:stage_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestConfigurationStageArn, location_name: 'stageArn', traits: {"smithy.api#documentation" => "<p>Stage ARN that needs to be updated.</p>"}))
    UpdateIngestConfigurationRequest.type = Types::UpdateIngestConfigurationRequest
    UpdateIngestConfigurationResponse.add_member(:ingest_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestConfiguration, location_name: 'ingestConfiguration', traits: {"smithy.api#documentation" => "<p>The updated IngestConfiguration.</p>"}))
    UpdateIngestConfigurationResponse.type = Types::UpdateIngestConfigurationResponse
    UpdateStageInput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StageArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>ARN of the stage to be updated.</p>", "smithy.api#required" => {}}))
    UpdateStageInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: StageName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Name of the stage to be updated.</p>"}))
    UpdateStageInput.add_member(:auto_participant_recording_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoParticipantRecordingConfiguration, location_name: 'autoParticipantRecordingConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration object for individual participant recording, to attach to the stage. Note that this cannot be updated while recording is active.</p>"}))
    UpdateStageInput.type = Types::UpdateStageInput
    UpdateStageOutput.add_member(:stage, Smithy::Schema::Shapes::ShapeRef.new(shape: Stage, location_name: 'stage', traits: {"smithy.api#documentation" => "<p>The updated stage.</p>"}))
    UpdateStageOutput.type = Types::UpdateStageOutput
    ValidationException.add_member(:access_control_allow_origin, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accessControlAllowOrigin', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Access-Control-Allow-Origin"}))
    ValidationException.add_member(:access_control_expose_headers, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accessControlExposeHeaders', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Access-Control-Expose-Headers"}))
    ValidationException.add_member(:cache_control, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'cacheControl', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Cache-Control"}))
    ValidationException.add_member(:content_security_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'contentSecurityPolicy', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Content-Security-Policy"}))
    ValidationException.add_member(:strict_transport_security, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'strictTransportSecurity', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "Strict-Transport-Security"}))
    ValidationException.add_member(:x_content_type_options, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'xContentTypeOptions', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "X-Content-Type-Options"}))
    ValidationException.add_member(:x_frame_options, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'xFrameOptions', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "X-Frame-Options"}))
    ValidationException.add_member(:x_amzn_error_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'xAmznErrorType', traits: {"smithy.api#documentation" => "<p/>", "smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    ValidationException.add_member(:exception_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'exceptionMessage', traits: {"smithy.api#documentation" => "<p>The input fails to satisfy the constraints specified by an Amazon Web Services service.</p>"}))
    ValidationException.type = Types::ValidationException
    Video.add_member(:width, Smithy::Schema::Shapes::ShapeRef.new(shape: Width, location_name: 'width', traits: {"smithy.api#documentation" => "<p>Video-resolution width. This must be an even number. Note that the maximum value is\n         determined by <code>width</code> times <code>height</code>, such that the maximum total\n         pixels is 2073600 (1920x1080 or 1080x1920). Default: 1280.</p>"}))
    Video.add_member(:height, Smithy::Schema::Shapes::ShapeRef.new(shape: Height, location_name: 'height', traits: {"smithy.api#documentation" => "<p>Video-resolution height. This must be an even number. Note that the maximum value is\n         determined by <code>width</code> times <code>height</code>, such that the maximum total\n         pixels is 2073600 (1920x1080 or 1080x1920). Default: 720.</p>"}))
    Video.add_member(:framerate, Smithy::Schema::Shapes::ShapeRef.new(shape: Framerate, location_name: 'framerate', traits: {"smithy.api#documentation" => "<p>Video frame rate, in fps. Default: 30.</p>"}))
    Video.add_member(:bitrate, Smithy::Schema::Shapes::ShapeRef.new(shape: Bitrate, location_name: 'bitrate', traits: {"smithy.api#documentation" => "<p>Bitrate for generated output, in bps. Default: 2500000.</p>"}))
    Video.type = Types::Video
    VideoAspectRatio.add_member(:auto, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTO', traits: {"smithy.api#enumValue" => "AUTO"}))
    VideoAspectRatio.add_member(:video, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VIDEO', traits: {"smithy.api#enumValue" => "VIDEO"}))
    VideoAspectRatio.add_member(:square, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SQUARE', traits: {"smithy.api#enumValue" => "SQUARE"}))
    VideoAspectRatio.add_member(:portrait, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PORTRAIT', traits: {"smithy.api#enumValue" => "PORTRAIT"}))
    VideoFillMode.add_member(:fill, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FILL', traits: {"smithy.api#enumValue" => "FILL"}))
    VideoFillMode.add_member(:cover, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COVER', traits: {"smithy.api#enumValue" => "COVER"}))
    VideoFillMode.add_member(:contain, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTAIN', traits: {"smithy.api#enumValue" => "CONTAIN"}))

    AmazonInteractiveVideoServiceRealTime = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.ivsrealtime#AmazonInteractiveVideoServiceRealTime"
      service.name = "AmazonInteractiveVideoServiceRealTime"
      service.version = "2020-07-14"
      service.traits = {"aws.api#service" => {"sdkId" => "IVS RealTime", "arnNamespace" => "ivs", "cloudFormationName" => "IVS", "cloudTrailEventSource" => "ivs.amazonaws.com", "endpointPrefix" => "ivsrealtime"}, "aws.auth#sigv4" => {"name" => "ivs"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["Content-Type", "X-Api-Key", "X-Amz-Content-Sha256", "X-Amz-User-Agent", "amz-sdk-invocation-id", "amz-sdk-request"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-errormessage", "x-amzn-trace-id", "x-amzn-requestid", "x-amz-apigw-id", "date"]}, "smithy.api#title" => "Amazon Interactive Video Service RealTime"}
      service.add_operation(:create_encoder_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#CreateEncoderConfiguration"
        operation.name = "CreateEncoderConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEncoderConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEncoderConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateEncoderConfiguration"}}
      end)
      service.add_operation(:create_ingest_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#CreateIngestConfiguration"
        operation.name = "CreateIngestConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIngestConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIngestConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateIngestConfiguration"}}
      end)
      service.add_operation(:create_participant_token, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#CreateParticipantToken"
        operation.name = "CreateParticipantToken"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateParticipantTokenInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateParticipantTokenOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateParticipantToken"}}
      end)
      service.add_operation(:create_stage, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#CreateStage"
        operation.name = "CreateStage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStageInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStageOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateStage"}}
      end)
      service.add_operation(:create_storage_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#CreateStorageConfiguration"
        operation.name = "CreateStorageConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStorageConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStorageConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateStorageConfiguration"}}
      end)
      service.add_operation(:delete_encoder_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#DeleteEncoderConfiguration"
        operation.name = "DeleteEncoderConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEncoderConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEncoderConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteEncoderConfiguration"}}
      end)
      service.add_operation(:delete_ingest_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#DeleteIngestConfiguration"
        operation.name = "DeleteIngestConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIngestConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIngestConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteIngestConfiguration"}}
      end)
      service.add_operation(:delete_public_key, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#DeletePublicKey"
        operation.name = "DeletePublicKey"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePublicKeyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePublicKeyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeletePublicKey"}}
      end)
      service.add_operation(:delete_stage, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#DeleteStage"
        operation.name = "DeleteStage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteStageInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteStageOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteStage"}}
      end)
      service.add_operation(:delete_storage_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#DeleteStorageConfiguration"
        operation.name = "DeleteStorageConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteStorageConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteStorageConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteStorageConfiguration"}}
      end)
      service.add_operation(:disconnect_participant, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#DisconnectParticipant"
        operation.name = "DisconnectParticipant"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisconnectParticipantInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisconnectParticipantOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DisconnectParticipant"}}
      end)
      service.add_operation(:get_composition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#GetComposition"
        operation.name = "GetComposition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCompositionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCompositionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetComposition"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_encoder_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#GetEncoderConfiguration"
        operation.name = "GetEncoderConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEncoderConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEncoderConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetEncoderConfiguration"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_ingest_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#GetIngestConfiguration"
        operation.name = "GetIngestConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIngestConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIngestConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetIngestConfiguration"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_participant, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#GetParticipant"
        operation.name = "GetParticipant"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetParticipantRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetParticipantResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetParticipant"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_public_key, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#GetPublicKey"
        operation.name = "GetPublicKey"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPublicKeyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPublicKeyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetPublicKey"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_stage, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#GetStage"
        operation.name = "GetStage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetStageInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetStageOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetStage"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_stage_session, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#GetStageSession"
        operation.name = "GetStageSession"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetStageSessionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetStageSessionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetStageSession"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_storage_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#GetStorageConfiguration"
        operation.name = "GetStorageConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetStorageConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetStorageConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetStorageConfiguration"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:import_public_key, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#ImportPublicKey"
        operation.name = "ImportPublicKey"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportPublicKeyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportPublicKeyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ImportPublicKey"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_compositions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#ListCompositions"
        operation.name = "ListCompositions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCompositionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCompositionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListCompositions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCompositions.new
      end)
      service.add_operation(:list_encoder_configurations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#ListEncoderConfigurations"
        operation.name = "ListEncoderConfigurations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEncoderConfigurationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEncoderConfigurationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListEncoderConfigurations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEncoderConfigurations.new
      end)
      service.add_operation(:list_ingest_configurations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#ListIngestConfigurations"
        operation.name = "ListIngestConfigurations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListIngestConfigurationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListIngestConfigurationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListIngestConfigurations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListIngestConfigurations.new
      end)
      service.add_operation(:list_participant_events, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#ListParticipantEvents"
        operation.name = "ListParticipantEvents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListParticipantEventsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListParticipantEventsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListParticipantEvents"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListParticipantEvents.new
      end)
      service.add_operation(:list_participant_replicas, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#ListParticipantReplicas"
        operation.name = "ListParticipantReplicas"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListParticipantReplicasRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListParticipantReplicasResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListParticipantReplicas"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListParticipantReplicas.new
      end)
      service.add_operation(:list_participants, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#ListParticipants"
        operation.name = "ListParticipants"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListParticipantsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListParticipantsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListParticipants"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListParticipants.new
      end)
      service.add_operation(:list_public_keys, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#ListPublicKeys"
        operation.name = "ListPublicKeys"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPublicKeysRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPublicKeysResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListPublicKeys"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPublicKeys.new
      end)
      service.add_operation(:list_stage_sessions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#ListStageSessions"
        operation.name = "ListStageSessions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStageSessionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStageSessionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListStageSessions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListStageSessions.new
      end)
      service.add_operation(:list_stages, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#ListStages"
        operation.name = "ListStages"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStagesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStagesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListStages"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListStages.new
      end)
      service.add_operation(:list_storage_configurations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#ListStorageConfigurations"
        operation.name = "ListStorageConfigurations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStorageConfigurationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStorageConfigurationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListStorageConfigurations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListStorageConfigurations.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:start_composition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#StartComposition"
        operation.name = "StartComposition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartCompositionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartCompositionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/StartComposition"}}
      end)
      service.add_operation(:start_participant_replication, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#StartParticipantReplication"
        operation.name = "StartParticipantReplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartParticipantReplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartParticipantReplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/StartParticipantReplication"}}
      end)
      service.add_operation(:stop_composition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#StopComposition"
        operation.name = "StopComposition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopCompositionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopCompositionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/StopComposition"}}
      end)
      service.add_operation(:stop_participant_replication, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#StopParticipantReplication"
        operation.name = "StopParticipantReplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopParticipantReplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopParticipantReplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/StopParticipantReplication"}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}"}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_ingest_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#UpdateIngestConfiguration"
        operation.name = "UpdateIngestConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIngestConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIngestConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateIngestConfiguration"}}
      end)
      service.add_operation(:update_stage, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ivsrealtime#UpdateStage"
        operation.name = "UpdateStage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStageInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStageOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PendingVerification)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateStage"}}
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
