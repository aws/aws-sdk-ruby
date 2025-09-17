# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IVSRealTime
  module Types

    # @!attribute [rw] access_control_allow_origin
    #   @return [String]
    #
    # @!attribute [rw] access_control_expose_headers
    #   @return [String]
    #
    # @!attribute [rw] cache_control
    #   @return [String]
    #
    # @!attribute [rw] content_security_policy
    #   @return [String]
    #
    # @!attribute [rw] strict_transport_security
    #   @return [String]
    #
    # @!attribute [rw] x_content_type_options
    #   @return [String]
    #
    # @!attribute [rw] x_frame_options
    #   @return [String]
    #
    # @!attribute [rw] x_amzn_error_type
    #   @return [String]
    #
    # @!attribute [rw] exception_message
    #   User does not have sufficient access to perform this action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :access_control_allow_origin,
      :access_control_expose_headers,
      :cache_control,
      :content_security_policy,
      :strict_transport_security,
      :x_content_type_options,
      :x_frame_options,
      :x_amzn_error_type,
      :exception_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object specifying a configuration for individual participant
    # recording.
    #
    # @!attribute [rw] storage_configuration_arn
    #   ARN of the StorageConfiguration resource to use for individual
    #   participant recording. Default: `""` (empty string, no storage
    #   configuration is specified). Individual participant recording cannot
    #   be started unless a storage configuration is specified, when a Stage
    #   is created or updated. To disable individual participant recording,
    #   set this to `""`; other fields in this object will get reset to
    #   their defaults when sending `""`.
    #   @return [String]
    #
    # @!attribute [rw] media_types
    #   Types of media to be recorded. Default: `AUDIO_VIDEO`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] thumbnail_configuration
    #   A complex type that allows you to enable/disable the recording of
    #   thumbnails for individual participant recording and modify the
    #   interval at which thumbnails are generated for the live session.
    #   @return [Types::ParticipantThumbnailConfiguration]
    #
    # @!attribute [rw] recording_reconnect_window_seconds
    #   If a stage publisher disconnects and then reconnects within the
    #   specified interval, the multiple recordings will be considered a
    #   single recording and merged together.
    #
    #   The default value is 0, which disables merging.
    #   @return [Integer]
    #
    # @!attribute [rw] hls_configuration
    #   HLS configuration object for individual participant recording.
    #   @return [Types::ParticipantRecordingHlsConfiguration]
    #
    # @!attribute [rw] record_participant_replicas
    #   Optional field to disable replica participant recording. If this is
    #   set to `false` when a participant is a replica, replica participants
    #   are not recorded. Default: `true`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/AutoParticipantRecordingConfiguration AWS API Documentation
    #
    class AutoParticipantRecordingConfiguration < Struct.new(
      :storage_configuration_arn,
      :media_types,
      :thumbnail_configuration,
      :recording_reconnect_window_seconds,
      :hls_configuration,
      :record_participant_replicas)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object specifying a channel as a destination.
    #
    # @!attribute [rw] channel_arn
    #   ARN of the channel to use for broadcasting. The channel and stage
    #   resources must be in the same AWS account and region. The channel
    #   must be offline (not broadcasting).
    #   @return [String]
    #
    # @!attribute [rw] encoder_configuration_arn
    #   ARN of the EncoderConfiguration resource. The encoder configuration
    #   and stage resources must be in the same AWS account and region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ChannelDestinationConfiguration AWS API Documentation
    #
    class ChannelDestinationConfiguration < Struct.new(
      :channel_arn,
      :encoder_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object specifying a Composition resource.
    #
    # @!attribute [rw] arn
    #   ARN of the Composition resource.
    #   @return [String]
    #
    # @!attribute [rw] stage_arn
    #   ARN of the stage used as input
    #   @return [String]
    #
    # @!attribute [rw] state
    #   State of the Composition.
    #   @return [String]
    #
    # @!attribute [rw] layout
    #   Layout object to configure composition parameters.
    #   @return [Types::LayoutConfiguration]
    #
    # @!attribute [rw] destinations
    #   Array of Destination objects. A Composition can contain either one
    #   destination (`channel` or `s3`) or two (one `channel` and one `s3`).
    #   @return [Array<Types::Destination>]
    #
    # @!attribute [rw] tags
    #   Tags attached to the resource. Array of maps, each of the form
    #   `string:string (key:value)`. See [Best practices and strategies][1]
    #   in *Tagging AWS Resources and Tag Editor* for details, including
    #   restrictions that apply to tags and "Tag naming limits and
    #   requirements"; Amazon IVS has no constraints on tags beyond what is
    #   documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] start_time
    #   UTC time of the Composition start. This is an ISO 8601 timestamp;
    #   *note that this is returned as a string*.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   UTC time of the Composition end. This is an ISO 8601 timestamp;
    #   *note that this is returned as a string*.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/Composition AWS API Documentation
    #
    class Composition < Struct.new(
      :arn,
      :stage_arn,
      :state,
      :layout,
      :destinations,
      :tags,
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing a configuration of HLS recordings for
    # server-side composition.
    #
    # @!attribute [rw] target_segment_duration_seconds
    #   Defines the target duration for recorded segments generated when
    #   using composite recording. Default: 2.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/CompositionRecordingHlsConfiguration AWS API Documentation
    #
    class CompositionRecordingHlsConfiguration < Struct.new(
      :target_segment_duration_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a Composition.
    #
    # @!attribute [rw] arn
    #   ARN of the Composition resource.
    #   @return [String]
    #
    # @!attribute [rw] stage_arn
    #   ARN of the attached stage.
    #   @return [String]
    #
    # @!attribute [rw] destinations
    #   Array of Destination objects.
    #   @return [Array<Types::DestinationSummary>]
    #
    # @!attribute [rw] state
    #   State of the Composition resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags attached to the resource. Array of maps, each of the form
    #   `string:string (key:value)`. See [Best practices and strategies][1]
    #   in *Tagging AWS Resources and Tag Editor* for details, including
    #   restrictions that apply to tags and "Tag naming limits and
    #   requirements"; Amazon IVS has no constraints on tags beyond what is
    #   documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] start_time
    #   UTC time of the Composition start. This is an ISO 8601 timestamp;
    #   *note that this is returned as a string*.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   UTC time of the Composition end. This is an ISO 8601 timestamp;
    #   *note that this is returned as a string*.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/CompositionSummary AWS API Documentation
    #
    class CompositionSummary < Struct.new(
      :arn,
      :stage_arn,
      :destinations,
      :state,
      :tags,
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing a configuration of thumbnails for recorded
    # video for a Composition.
    #
    # @!attribute [rw] target_interval_seconds
    #   The targeted thumbnail-generation interval in seconds. Default: 60.
    #   @return [Integer]
    #
    # @!attribute [rw] storage
    #   Indicates the format in which thumbnails are recorded. `SEQUENTIAL`
    #   records all generated thumbnails in a serial manner, to the
    #   media/thumbnails/(width)x(height) directory, where (width) and
    #   (height) are the width and height of the thumbnail. `LATEST` saves
    #   the latest thumbnail in
    #   media/latest\_thumbnail/(width)x(height)/thumb.jpg and overwrites it
    #   at the interval specified by `targetIntervalSeconds`. You can enable
    #   both `SEQUENTIAL` and `LATEST`. Default: `SEQUENTIAL`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/CompositionThumbnailConfiguration AWS API Documentation
    #
    class CompositionThumbnailConfiguration < Struct.new(
      :target_interval_seconds,
      :storage)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_control_allow_origin
    #   @return [String]
    #
    # @!attribute [rw] access_control_expose_headers
    #   @return [String]
    #
    # @!attribute [rw] cache_control
    #   @return [String]
    #
    # @!attribute [rw] content_security_policy
    #   @return [String]
    #
    # @!attribute [rw] strict_transport_security
    #   @return [String]
    #
    # @!attribute [rw] x_content_type_options
    #   @return [String]
    #
    # @!attribute [rw] x_frame_options
    #   @return [String]
    #
    # @!attribute [rw] x_amzn_error_type
    #   @return [String]
    #
    # @!attribute [rw] exception_message
    #   Updating or deleting a resource can cause an inconsistent state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :access_control_allow_origin,
      :access_control_expose_headers,
      :cache_control,
      :content_security_policy,
      :strict_transport_security,
      :x_content_type_options,
      :x_frame_options,
      :x_amzn_error_type,
      :exception_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Optional name to identify the resource.
    #   @return [String]
    #
    # @!attribute [rw] video
    #   Video configuration. Default: video resolution 1280x720, bitrate
    #   2500 kbps, 30 fps.
    #   @return [Types::Video]
    #
    # @!attribute [rw] tags
    #   Tags attached to the resource. Array of maps, each of the form
    #   `string:string (key:value)`. See [Best practices and strategies][1]
    #   in *Tagging AWS Resources and Tag Editor* for details, including
    #   restrictions that apply to tags and "Tag naming limits and
    #   requirements"; Amazon IVS has no constraints on tags beyond what is
    #   documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/CreateEncoderConfigurationRequest AWS API Documentation
    #
    class CreateEncoderConfigurationRequest < Struct.new(
      :name,
      :video,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] encoder_configuration
    #   The EncoderConfiguration that was created.
    #   @return [Types::EncoderConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/CreateEncoderConfigurationResponse AWS API Documentation
    #
    class CreateEncoderConfigurationResponse < Struct.new(
      :encoder_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Optional name that can be specified for the IngestConfiguration
    #   being created.
    #   @return [String]
    #
    # @!attribute [rw] stage_arn
    #   ARN of the stage with which the IngestConfiguration is associated.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   Customer-assigned name to help identify the participant using the
    #   IngestConfiguration; this can be used to link a participant to a
    #   user in the customer’s own systems. This can be any UTF-8 encoded
    #   text. *This field is exposed to all stage participants and should
    #   not be used for personally identifying, confidential, or sensitive
    #   information.*
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   Application-provided attributes to store in the IngestConfiguration
    #   and attach to a stage. Map keys and values can contain UTF-8 encoded
    #   text. The maximum length of this field is 1 KB total. *This field is
    #   exposed to all stage participants and should not be used for
    #   personally identifying, confidential, or sensitive information.*
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] ingest_protocol
    #   Type of ingest protocol that the user employs to broadcast. If this
    #   is set to `RTMP`, `insecureIngest` must be set to `true`.
    #   @return [String]
    #
    # @!attribute [rw] insecure_ingest
    #   Whether the stage allows insecure RTMP ingest. This must be set to
    #   `true`, if `ingestProtocol` is set to `RTMP`. Default: `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   Tags attached to the resource. Array of maps, each of the form
    #   `string:string (key:value)`. See [Best practices and strategies][1]
    #   in *Tagging AWS Resources and Tag Editor* for details, including
    #   restrictions that apply to tags and "Tag naming limits and
    #   requirements"; Amazon IVS has no constraints on tags beyond what is
    #   documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/CreateIngestConfigurationRequest AWS API Documentation
    #
    class CreateIngestConfigurationRequest < Struct.new(
      :name,
      :stage_arn,
      :user_id,
      :attributes,
      :ingest_protocol,
      :insecure_ingest,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ingest_configuration
    #   The IngestConfiguration that was created.
    #   @return [Types::IngestConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/CreateIngestConfigurationResponse AWS API Documentation
    #
    class CreateIngestConfigurationResponse < Struct.new(
      :ingest_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stage_arn
    #   ARN of the stage to which this token is scoped.
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   Duration (in minutes), after which the token expires. Default: 720
    #   (12 hours).
    #   @return [Integer]
    #
    # @!attribute [rw] user_id
    #   Name that can be specified to help identify the token. This can be
    #   any UTF-8 encoded text. *This field is exposed to all stage
    #   participants and should not be used for personally identifying,
    #   confidential, or sensitive information.*
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   Application-provided attributes to encode into the token and attach
    #   to a stage. Map keys and values can contain UTF-8 encoded text. The
    #   maximum length of this field is 1 KB total. *This field is exposed
    #   to all stage participants and should not be used for personally
    #   identifying, confidential, or sensitive information.*
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] capabilities
    #   Set of capabilities that the user is allowed to perform in the
    #   stage. Default: `PUBLISH, SUBSCRIBE`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/CreateParticipantTokenRequest AWS API Documentation
    #
    class CreateParticipantTokenRequest < Struct.new(
      :stage_arn,
      :duration,
      :user_id,
      :attributes,
      :capabilities)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] participant_token
    #   The participant token that was created.
    #   @return [Types::ParticipantToken]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/CreateParticipantTokenResponse AWS API Documentation
    #
    class CreateParticipantTokenResponse < Struct.new(
      :participant_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Optional name that can be specified for the stage being created.
    #   @return [String]
    #
    # @!attribute [rw] participant_token_configurations
    #   Array of participant token configuration objects to attach to the
    #   new stage.
    #   @return [Array<Types::ParticipantTokenConfiguration>]
    #
    # @!attribute [rw] tags
    #   Tags attached to the resource. Array of maps, each of the form
    #   `string:string (key:value)`. See [Best practices and strategies][1]
    #   in *Tagging AWS Resources and Tag Editor* for details, including
    #   restrictions that apply to tags and "Tag naming limits and
    #   requirements"; Amazon IVS has no constraints on tags beyond what is
    #   documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] auto_participant_recording_configuration
    #   Configuration object for individual participant recording, to attach
    #   to the new stage.
    #   @return [Types::AutoParticipantRecordingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/CreateStageRequest AWS API Documentation
    #
    class CreateStageRequest < Struct.new(
      :name,
      :participant_token_configurations,
      :tags,
      :auto_participant_recording_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stage
    #   The stage that was created.
    #   @return [Types::Stage]
    #
    # @!attribute [rw] participant_tokens
    #   Participant tokens attached to the stage. These correspond to the
    #   `participants` in the request.
    #   @return [Array<Types::ParticipantToken>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/CreateStageResponse AWS API Documentation
    #
    class CreateStageResponse < Struct.new(
      :stage,
      :participant_tokens)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Storage configuration name. The value does not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] s3
    #   A complex type that contains a storage configuration for where
    #   recorded video will be stored.
    #   @return [Types::S3StorageConfiguration]
    #
    # @!attribute [rw] tags
    #   Tags attached to the resource. Array of maps, each of the form
    #   `string:string (key:value)`. See [Best practices and strategies][1]
    #   in *Tagging AWS Resources and Tag Editor* for details, including
    #   restrictions that apply to tags and "Tag naming limits and
    #   requirements"; Amazon IVS has no constraints on tags beyond what is
    #   documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/CreateStorageConfigurationRequest AWS API Documentation
    #
    class CreateStorageConfigurationRequest < Struct.new(
      :name,
      :s3,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] storage_configuration
    #   The StorageConfiguration that was created.
    #   @return [Types::StorageConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/CreateStorageConfigurationResponse AWS API Documentation
    #
    class CreateStorageConfigurationResponse < Struct.new(
      :storage_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   ARN of the EncoderConfiguration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/DeleteEncoderConfigurationRequest AWS API Documentation
    #
    class DeleteEncoderConfigurationRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/DeleteEncoderConfigurationResponse AWS API Documentation
    #
    class DeleteEncoderConfigurationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] arn
    #   ARN of the IngestConfiguration.
    #   @return [String]
    #
    # @!attribute [rw] force
    #   Optional field to force deletion of the IngestConfiguration. If this
    #   is set to `true` when a participant is actively publishing, the
    #   participant is disconnected from the stage, followed by deletion of
    #   the IngestConfiguration. Default: `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/DeleteIngestConfigurationRequest AWS API Documentation
    #
    class DeleteIngestConfigurationRequest < Struct.new(
      :arn,
      :force)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/DeleteIngestConfigurationResponse AWS API Documentation
    #
    class DeleteIngestConfigurationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] arn
    #   ARN of the public key to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/DeletePublicKeyRequest AWS API Documentation
    #
    class DeletePublicKeyRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/DeletePublicKeyResponse AWS API Documentation
    #
    class DeletePublicKeyResponse < Aws::EmptyStructure; end

    # @!attribute [rw] arn
    #   ARN of the stage to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/DeleteStageRequest AWS API Documentation
    #
    class DeleteStageRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/DeleteStageResponse AWS API Documentation
    #
    class DeleteStageResponse < Aws::EmptyStructure; end

    # @!attribute [rw] arn
    #   ARN of the storage configuration to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/DeleteStorageConfigurationRequest AWS API Documentation
    #
    class DeleteStorageConfigurationRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/DeleteStorageConfigurationResponse AWS API Documentation
    #
    class DeleteStorageConfigurationResponse < Aws::EmptyStructure; end

    # Object specifying the status of a Destination.
    #
    # @!attribute [rw] id
    #   Unique identifier for this destination, assigned by IVS.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   State of the Composition Destination.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   UTC time of the destination start. This is an ISO 8601 timestamp;
    #   *note that this is returned as a string*.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   UTC time of the destination end. This is an ISO 8601 timestamp;
    #   *note that this is returned as a string*.
    #   @return [Time]
    #
    # @!attribute [rw] configuration
    #   Configuration used to create this destination.
    #   @return [Types::DestinationConfiguration]
    #
    # @!attribute [rw] detail
    #   Optional details regarding the status of the destination.
    #   @return [Types::DestinationDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/Destination AWS API Documentation
    #
    class Destination < Struct.new(
      :id,
      :state,
      :start_time,
      :end_time,
      :configuration,
      :detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # Complex data type that defines destination-configuration objects.
    #
    # @!attribute [rw] name
    #   Name that can be specified to help identify the destination.
    #   @return [String]
    #
    # @!attribute [rw] channel
    #   An IVS channel to be used for broadcasting, for server-side
    #   composition. Either a `channel` or an `s3` must be specified.
    #   @return [Types::ChannelDestinationConfiguration]
    #
    # @!attribute [rw] s3
    #   An S3 storage configuration to be used for recording video data.
    #   Either a `channel` or an `s3` must be specified.
    #   @return [Types::S3DestinationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/DestinationConfiguration AWS API Documentation
    #
    class DestinationConfiguration < Struct.new(
      :name,
      :channel,
      :s3)
      SENSITIVE = []
      include Aws::Structure
    end

    # Complex data type that defines destination-detail objects.
    #
    # @!attribute [rw] s3
    #   An S3 detail object to return information about the S3 destination.
    #   @return [Types::S3Detail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/DestinationDetail AWS API Documentation
    #
    class DestinationDetail < Struct.new(
      :s3)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a Destination.
    #
    # @!attribute [rw] id
    #   Unique identifier for this destination, assigned by IVS.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   State of the Composition Destination.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   UTC time of the destination start. This is an ISO 8601 timestamp;
    #   *note that this is returned as a string*.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   UTC time of the destination end. This is an ISO 8601 timestamp;
    #   *note that this is returned as a string*.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/DestinationSummary AWS API Documentation
    #
    class DestinationSummary < Struct.new(
      :id,
      :state,
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stage_arn
    #   ARN of the stage to which the participant is attached.
    #   @return [String]
    #
    # @!attribute [rw] participant_id
    #   Identifier of the participant to be disconnected. IVS assigns this;
    #   it is returned by CreateParticipantToken (for streams using WebRTC
    #   ingest) or CreateIngestConfiguration (for streams using RTMP
    #   ingest).
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Description of why this participant is being disconnected.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/DisconnectParticipantRequest AWS API Documentation
    #
    class DisconnectParticipantRequest < Struct.new(
      :stage_arn,
      :participant_id,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/DisconnectParticipantResponse AWS API Documentation
    #
    class DisconnectParticipantResponse < Aws::EmptyStructure; end

    # Settings for transcoding.
    #
    # @!attribute [rw] arn
    #   ARN of the EncoderConfiguration resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Optional name to identify the resource.
    #   @return [String]
    #
    # @!attribute [rw] video
    #   Video configuration. Default: video resolution 1280x720, bitrate
    #   2500 kbps, 30 fps
    #   @return [Types::Video]
    #
    # @!attribute [rw] tags
    #   Tags attached to the resource. Array of maps, each of the form
    #   `string:string (key:value)`. See [Best practices and strategies][1]
    #   in *Tagging AWS Resources and Tag Editor* for details, including
    #   restrictions that apply to tags and "Tag naming limits and
    #   requirements"; Amazon IVS has no constraints on tags beyond what is
    #   documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/EncoderConfiguration AWS API Documentation
    #
    class EncoderConfiguration < Struct.new(
      :arn,
      :name,
      :video,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about an EncoderConfiguration.
    #
    # @!attribute [rw] arn
    #   ARN of the EncoderConfiguration resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Optional name to identify the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags attached to the resource. Array of maps, each of the form
    #   `string:string (key:value)`. See [Best practices and strategies][1]
    #   in *Tagging AWS Resources and Tag Editor* for details, including
    #   restrictions that apply to tags and "Tag naming limits and
    #   requirements"; Amazon IVS has no constraints on tags beyond what is
    #   documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/EncoderConfigurationSummary AWS API Documentation
    #
    class EncoderConfigurationSummary < Struct.new(
      :arn,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # An occurrence during a stage session.
    #
    # @!attribute [rw] name
    #   The name of the event.
    #   @return [String]
    #
    # @!attribute [rw] participant_id
    #   Unique identifier for the participant who triggered the event. This
    #   is assigned by IVS.
    #   @return [String]
    #
    # @!attribute [rw] event_time
    #   ISO 8601 timestamp (returned as a string) for when the event
    #   occurred.
    #   @return [Time]
    #
    # @!attribute [rw] remote_participant_id
    #   Unique identifier for the remote participant. For a subscribe event,
    #   this is the publisher. For a publish or join event, this is null.
    #   This is assigned by IVS.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   If the event is an error event, the error code is provided to give
    #   insight into the specific error that occurred. If the event is not
    #   an error event, this field is null.
    #
    #   * `B_FRAME_PRESENT` — The participant's stream includes B-frames.
    #     For details, see [ IVS RTMP Publishing][1].
    #
    #   * `BITRATE_EXCEEDED` — The participant exceeded the maximum
    #     supported bitrate. For details, see [ Service Quotas][2].
    #
    #   * `INSUFFICIENT_CAPABILITIES` — The participant tried to take an
    #     action that the participant’s token is not allowed to do. For
    #     details on participant capabilities, see the `capabilities` field
    #     in CreateParticipantToken.
    #
    #   * `INTERNAL_SERVER_EXCEPTION` — The participant failed to publish to
    #     the stage due to an internal server error.
    #
    #   * `INVALID_AUDIO_CODEC` — The participant is using an invalid audio
    #     codec. For details, see [ Stream Ingest][3].
    #
    #   * `INVALID_INPUT` — The participant is using an invalid input
    #     stream.
    #
    #   * `INVALID_PROTOCOL` — The participant's IngestConfiguration
    #     resource is configured for RTMPS but they tried streaming with
    #     RTMP. For details, see [ IVS RTMP Publishing][1].
    #
    #   * `INVALID_STREAM_KEY` — The participant is using an invalid stream
    #     key. For details, see [ IVS RTMP Publishing][1].
    #
    #   * `INVALID_VIDEO_CODEC` — The participant is using an invalid video
    #     codec. For details, see [ Stream Ingest][3].
    #
    #   * `PUBLISHER_NOT_FOUND` — The participant tried to subscribe to a
    #     publisher that doesn’t exist.
    #
    #   * `QUOTA_EXCEEDED` — The number of participants who want to
    #     publish/subscribe to a stage exceeds the quota. For details, see [
    #     Service Quotas][2].
    #
    #   * `RESOLUTION_EXCEEDED` — The participant exceeded the maximum
    #     supported resolution. For details, see [ Service Quotas][2].
    #
    #   * `REUSE_OF_STREAM_KEY` — The participant tried to use a stream key
    #     that is associated with another active stage session.
    #
    #   * `STREAM_DURATION_EXCEEDED` — The participant exceeded the maximum
    #     allowed stream duration. For details, see [ Service Quotas][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/rt-rtmp-publishing.html
    #   [2]: https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/service-quotas.html
    #   [3]: https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/rt-stream-ingest.html
    #   @return [String]
    #
    # @!attribute [rw] destination_stage_arn
    #   ARN of the stage where the participant is replicated. Applicable
    #   only if the event name is `REPLICATION_STARTED` or
    #   `REPLICATION_STOPPED`.
    #   @return [String]
    #
    # @!attribute [rw] destination_session_id
    #   ID of the session within the destination stage. Applicable only if
    #   the event name is `REPLICATION_STARTED` or `REPLICATION_STOPPED`.
    #   @return [String]
    #
    # @!attribute [rw] replica
    #   If true, this indicates the `participantId` is a replicated
    #   participant. If this is a subscribe event, then this flag refers to
    #   `remoteParticipantId`. Default: `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/Event AWS API Documentation
    #
    class Event < Struct.new(
      :name,
      :participant_id,
      :event_time,
      :remote_participant_id,
      :error_code,
      :destination_stage_arn,
      :destination_session_id,
      :replica)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   ARN of the Composition resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/GetCompositionRequest AWS API Documentation
    #
    class GetCompositionRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] composition
    #   The Composition that was returned.
    #   @return [Types::Composition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/GetCompositionResponse AWS API Documentation
    #
    class GetCompositionResponse < Struct.new(
      :composition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   ARN of the EncoderConfiguration resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/GetEncoderConfigurationRequest AWS API Documentation
    #
    class GetEncoderConfigurationRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] encoder_configuration
    #   The EncoderConfiguration that was returned.
    #   @return [Types::EncoderConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/GetEncoderConfigurationResponse AWS API Documentation
    #
    class GetEncoderConfigurationResponse < Struct.new(
      :encoder_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   ARN of the ingest for which the information is to be retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/GetIngestConfigurationRequest AWS API Documentation
    #
    class GetIngestConfigurationRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ingest_configuration
    #   The IngestConfiguration that was returned.
    #   @return [Types::IngestConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/GetIngestConfigurationResponse AWS API Documentation
    #
    class GetIngestConfigurationResponse < Struct.new(
      :ingest_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stage_arn
    #   Stage ARN.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   ID of a session within the stage.
    #   @return [String]
    #
    # @!attribute [rw] participant_id
    #   Unique identifier for the participant. This is assigned by IVS and
    #   returned by CreateParticipantToken.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/GetParticipantRequest AWS API Documentation
    #
    class GetParticipantRequest < Struct.new(
      :stage_arn,
      :session_id,
      :participant_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] participant
    #   The participant that is returned.
    #   @return [Types::Participant]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/GetParticipantResponse AWS API Documentation
    #
    class GetParticipantResponse < Struct.new(
      :participant)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   ARN of the public key for which the information is to be retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/GetPublicKeyRequest AWS API Documentation
    #
    class GetPublicKeyRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] public_key
    #   The public key that is returned.
    #   @return [Types::PublicKey]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/GetPublicKeyResponse AWS API Documentation
    #
    class GetPublicKeyResponse < Struct.new(
      :public_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   ARN of the stage for which the information is to be retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/GetStageRequest AWS API Documentation
    #
    class GetStageRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stage
    #   The stage that is returned.
    #   @return [Types::Stage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/GetStageResponse AWS API Documentation
    #
    class GetStageResponse < Struct.new(
      :stage)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stage_arn
    #   ARN of the stage for which the information is to be retrieved.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   ID of a session within the stage.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/GetStageSessionRequest AWS API Documentation
    #
    class GetStageSessionRequest < Struct.new(
      :stage_arn,
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stage_session
    #   The stage session that is returned.
    #   @return [Types::StageSession]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/GetStageSessionResponse AWS API Documentation
    #
    class GetStageSessionResponse < Struct.new(
      :stage_session)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   ARN of the storage configuration to be retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/GetStorageConfigurationRequest AWS API Documentation
    #
    class GetStorageConfigurationRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] storage_configuration
    #   The StorageConfiguration that was returned.
    #   @return [Types::StorageConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/GetStorageConfigurationResponse AWS API Documentation
    #
    class GetStorageConfigurationResponse < Struct.new(
      :storage_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information specific to Grid layout, for server-side
    # composition. See "Layouts" in [Server-Side Composition][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/server-side-composition.html
    #
    # @!attribute [rw] featured_participant_attribute
    #   This attribute name identifies the featured slot. A participant with
    #   this attribute set to `"true"` (as a string value) in
    #   ParticipantTokenConfiguration is placed in the featured slot.
    #   Default: `""` (no featured participant).
    #   @return [String]
    #
    # @!attribute [rw] omit_stopped_video
    #   Determines whether to omit participants with stopped video in the
    #   composition. Default: `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] video_aspect_ratio
    #   Sets the non-featured participant display mode, to control the
    #   aspect ratio of video tiles. `VIDEO` is 16:9, `SQUARE` is 1:1, and
    #   `PORTRAIT` is 3:4. Default: `VIDEO`.
    #   @return [String]
    #
    # @!attribute [rw] video_fill_mode
    #   Defines how video content fits within the participant tile: `FILL`
    #   (stretched), `COVER` (cropped), or `CONTAIN` (letterboxed). When not
    #   set, `videoFillMode` defaults to `COVER` fill mode for participants
    #   in the grid and to `CONTAIN` fill mode for featured participants.
    #   @return [String]
    #
    # @!attribute [rw] grid_gap
    #   Specifies the spacing between participant tiles in pixels. Default:
    #   `2`.
    #   @return [Integer]
    #
    # @!attribute [rw] participant_order_attribute
    #   Attribute name in ParticipantTokenConfiguration identifying the
    #   participant ordering key. Participants with
    #   `participantOrderAttribute` set to `""` or not specified are ordered
    #   based on their arrival time into the stage.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/GridConfiguration AWS API Documentation
    #
    class GridConfiguration < Struct.new(
      :featured_participant_attribute,
      :omit_stopped_video,
      :video_aspect_ratio,
      :video_fill_mode,
      :grid_gap,
      :participant_order_attribute)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] public_key_material
    #   The content of the public key to be imported.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the public key to be imported.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags attached to the resource. Array of maps, each of the form
    #   `string:string (key:value)`. See [Best practices and strategies][1]
    #   in *Tagging AWS Resources and Tag Editor* for details, including
    #   restrictions that apply to tags and "Tag naming limits and
    #   requirements"; Amazon IVS has no constraints on tags beyond what is
    #   documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ImportPublicKeyRequest AWS API Documentation
    #
    class ImportPublicKeyRequest < Struct.new(
      :public_key_material,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] public_key
    #   The public key that was imported.
    #   @return [Types::PublicKey]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ImportPublicKeyResponse AWS API Documentation
    #
    class ImportPublicKeyResponse < Struct.new(
      :public_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object specifying an ingest configuration.
    #
    # @!attribute [rw] name
    #   Ingest name
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   Ingest configuration ARN.
    #   @return [String]
    #
    # @!attribute [rw] ingest_protocol
    #   Type of ingest protocol that the user employs for broadcasting.
    #   @return [String]
    #
    # @!attribute [rw] stream_key
    #   Ingest-key value for the RTMP(S) protocol.
    #   @return [String]
    #
    # @!attribute [rw] stage_arn
    #   ARN of the stage with which the IngestConfiguration is associated.
    #   @return [String]
    #
    # @!attribute [rw] participant_id
    #   ID of the participant within the stage.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   State of the ingest configuration. It is `ACTIVE` if a publisher
    #   currently is publishing to the stage associated with the ingest
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   Customer-assigned name to help identify the participant using the
    #   IngestConfiguration; this can be used to link a participant to a
    #   user in the customer’s own systems. This can be any UTF-8 encoded
    #   text. *This field is exposed to all stage participants and should
    #   not be used for personally identifying, confidential, or sensitive
    #   information.*
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   Application-provided attributes to to store in the
    #   IngestConfiguration and attach to a stage. Map keys and values can
    #   contain UTF-8 encoded text. The maximum length of this field is 1 KB
    #   total. *This field is exposed to all stage participants and should
    #   not be used for personally identifying, confidential, or sensitive
    #   information.*
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   Tags attached to the resource. Array of maps, each of the form
    #   `string:string (key:value)`. See [Best practices and strategies][1]
    #   in *Tagging AWS Resources and Tag Editor* for details, including
    #   restrictions that apply to tags and "Tag naming limits and
    #   requirements"; Amazon IVS has no constraints on tags beyond what is
    #   documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/IngestConfiguration AWS API Documentation
    #
    class IngestConfiguration < Struct.new(
      :name,
      :arn,
      :ingest_protocol,
      :stream_key,
      :stage_arn,
      :participant_id,
      :state,
      :user_id,
      :attributes,
      :tags)
      SENSITIVE = [:stream_key]
      include Aws::Structure
    end

    # Summary information about an IngestConfiguration.
    #
    # @!attribute [rw] name
    #   Ingest name.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   Ingest configuration ARN.
    #   @return [String]
    #
    # @!attribute [rw] ingest_protocol
    #   Type of ingest protocol that the user employs for broadcasting.
    #   @return [String]
    #
    # @!attribute [rw] stage_arn
    #   ARN of the stage with which the IngestConfiguration is associated.
    #   @return [String]
    #
    # @!attribute [rw] participant_id
    #   ID of the participant within the stage.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   State of the ingest configuration. It is `ACTIVE` if a publisher
    #   currently is publishing to the stage associated with the ingest
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   Customer-assigned name to help identify the participant using the
    #   IngestConfiguration; this can be used to link a participant to a
    #   user in the customer’s own systems. This can be any UTF-8 encoded
    #   text. *This field is exposed to all stage participants and should
    #   not be used for personally identifying, confidential, or sensitive
    #   information.*
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/IngestConfigurationSummary AWS API Documentation
    #
    class IngestConfigurationSummary < Struct.new(
      :name,
      :arn,
      :ingest_protocol,
      :stage_arn,
      :participant_id,
      :state,
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_control_allow_origin
    #   @return [String]
    #
    # @!attribute [rw] access_control_expose_headers
    #   @return [String]
    #
    # @!attribute [rw] cache_control
    #   @return [String]
    #
    # @!attribute [rw] content_security_policy
    #   @return [String]
    #
    # @!attribute [rw] strict_transport_security
    #   @return [String]
    #
    # @!attribute [rw] x_content_type_options
    #   @return [String]
    #
    # @!attribute [rw] x_frame_options
    #   @return [String]
    #
    # @!attribute [rw] x_amzn_error_type
    #   @return [String]
    #
    # @!attribute [rw] exception_message
    #   Unexpected error during processing of request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :access_control_allow_origin,
      :access_control_expose_headers,
      :cache_control,
      :content_security_policy,
      :strict_transport_security,
      :x_content_type_options,
      :x_frame_options,
      :x_amzn_error_type,
      :exception_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information of supported layouts for server-side
    # composition.
    #
    # @!attribute [rw] grid
    #   Configuration related to grid layout. Default: Grid layout.
    #   @return [Types::GridConfiguration]
    #
    # @!attribute [rw] pip
    #   Configuration related to PiP layout.
    #   @return [Types::PipConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/LayoutConfiguration AWS API Documentation
    #
    class LayoutConfiguration < Struct.new(
      :grid,
      :pip)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter_by_stage_arn
    #   Filters the Composition list to match the specified Stage ARN.
    #   @return [String]
    #
    # @!attribute [rw] filter_by_encoder_configuration_arn
    #   Filters the Composition list to match the specified
    #   EncoderConfiguration attached to at least one of its output.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The first Composition to retrieve. This is used for pagination; see
    #   the `nextToken` response field.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return. Default: 100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListCompositionsRequest AWS API Documentation
    #
    class ListCompositionsRequest < Struct.new(
      :filter_by_stage_arn,
      :filter_by_encoder_configuration_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] compositions
    #   List of the matching Compositions (summary information only).
    #   @return [Array<Types::CompositionSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are more compositions than `maxResults`, use `nextToken` in
    #   the request to get the next set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListCompositionsResponse AWS API Documentation
    #
    class ListCompositionsResponse < Struct.new(
      :compositions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The first encoder configuration to retrieve. This is used for
    #   pagination; see the `nextToken` response field.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return. Default: 100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListEncoderConfigurationsRequest AWS API Documentation
    #
    class ListEncoderConfigurationsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] encoder_configurations
    #   List of the matching EncoderConfigurations (summary information
    #   only).
    #   @return [Array<Types::EncoderConfigurationSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are more encoder configurations than `maxResults`, use
    #   `nextToken` in the request to get the next set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListEncoderConfigurationsResponse AWS API Documentation
    #
    class ListEncoderConfigurationsResponse < Struct.new(
      :encoder_configurations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter_by_stage_arn
    #   Filters the response list to match the specified stage ARN. Only one
    #   filter (by stage ARN or by state) can be used at a time.
    #   @return [String]
    #
    # @!attribute [rw] filter_by_state
    #   Filters the response list to match the specified state. Only one
    #   filter (by stage ARN or by state) can be used at a time.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The first IngestConfiguration to retrieve. This is used for
    #   pagination; see the `nextToken` response field.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return. Default: 50.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListIngestConfigurationsRequest AWS API Documentation
    #
    class ListIngestConfigurationsRequest < Struct.new(
      :filter_by_stage_arn,
      :filter_by_state,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ingest_configurations
    #   List of the matching ingest configurations (summary information
    #   only).
    #   @return [Array<Types::IngestConfigurationSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are more IngestConfigurations than `maxResults`, use
    #   `nextToken` in the request to get the next set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListIngestConfigurationsResponse AWS API Documentation
    #
    class ListIngestConfigurationsResponse < Struct.new(
      :ingest_configurations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stage_arn
    #   Stage ARN.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   ID of a session within the stage.
    #   @return [String]
    #
    # @!attribute [rw] participant_id
    #   Unique identifier for this participant. This is assigned by IVS and
    #   returned by CreateParticipantToken.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The first participant event to retrieve. This is used for
    #   pagination; see the `nextToken` response field.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return. Default: 50.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListParticipantEventsRequest AWS API Documentation
    #
    class ListParticipantEventsRequest < Struct.new(
      :stage_arn,
      :session_id,
      :participant_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] events
    #   List of the matching events.
    #   @return [Array<Types::Event>]
    #
    # @!attribute [rw] next_token
    #   If there are more events than `maxResults`, use `nextToken` in the
    #   request to get the next set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListParticipantEventsResponse AWS API Documentation
    #
    class ListParticipantEventsResponse < Struct.new(
      :events,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_stage_arn
    #   ARN of the stage where the participant is publishing.
    #   @return [String]
    #
    # @!attribute [rw] participant_id
    #   Participant ID of the publisher that has been replicated. This is
    #   assigned by IVS and returned by CreateParticipantToken or the `jti`
    #   (JWT ID) used to [create a self signed token][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/getting-started-distribute-tokens.html#getting-started-distribute-tokens-self-signed
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The first participant to retrieve. This is used for pagination; see
    #   the `nextToken` response field.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return. Default: 50.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListParticipantReplicasRequest AWS API Documentation
    #
    class ListParticipantReplicasRequest < Struct.new(
      :source_stage_arn,
      :participant_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replicas
    #   List of all participant replicas.
    #   @return [Array<Types::ParticipantReplica>]
    #
    # @!attribute [rw] next_token
    #   If there are more participants than `maxResults`, use `nextToken` in
    #   the request to get the next set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListParticipantReplicasResponse AWS API Documentation
    #
    class ListParticipantReplicasResponse < Struct.new(
      :replicas,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stage_arn
    #   Stage ARN.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   ID of the session within the stage.
    #   @return [String]
    #
    # @!attribute [rw] filter_by_user_id
    #   Filters the response list to match the specified user ID. Only one
    #   of `filterByUserId`, `filterByPublished`, `filterByState`, or
    #   `filterByRecordingState` can be provided per request. A `userId` is
    #   a customer-assigned name to help identify the token; this can be
    #   used to link a participant to a user in the customer’s own systems.
    #   @return [String]
    #
    # @!attribute [rw] filter_by_published
    #   Filters the response list to only show participants who published
    #   during the stage session. Only one of `filterByUserId`,
    #   `filterByPublished`, `filterByState`, or `filterByRecordingState`
    #   can be provided per request.
    #   @return [Boolean]
    #
    # @!attribute [rw] filter_by_state
    #   Filters the response list to only show participants in the specified
    #   state. Only one of `filterByUserId`, `filterByPublished`,
    #   `filterByState`, or `filterByRecordingState` can be provided per
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The first participant to retrieve. This is used for pagination; see
    #   the `nextToken` response field.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return. Default: 50.
    #   @return [Integer]
    #
    # @!attribute [rw] filter_by_recording_state
    #   Filters the response list to only show participants with the
    #   specified recording state. Only one of `filterByUserId`,
    #   `filterByPublished`, `filterByState`, or `filterByRecordingState`
    #   can be provided per request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListParticipantsRequest AWS API Documentation
    #
    class ListParticipantsRequest < Struct.new(
      :stage_arn,
      :session_id,
      :filter_by_user_id,
      :filter_by_published,
      :filter_by_state,
      :next_token,
      :max_results,
      :filter_by_recording_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] participants
    #   List of the matching participants (summary information only).
    #   @return [Array<Types::ParticipantSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are more participants than `maxResults`, use `nextToken` in
    #   the request to get the next set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListParticipantsResponse AWS API Documentation
    #
    class ListParticipantsResponse < Struct.new(
      :participants,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The first public key to retrieve. This is used for pagination; see
    #   the `nextToken` response field.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return. Default: 50.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListPublicKeysRequest AWS API Documentation
    #
    class ListPublicKeysRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] public_keys
    #   List of the matching public keys (summary information only).
    #   @return [Array<Types::PublicKeySummary>]
    #
    # @!attribute [rw] next_token
    #   If there are more public keys than `maxResults`, use `nextToken` in
    #   the request to get the next set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListPublicKeysResponse AWS API Documentation
    #
    class ListPublicKeysResponse < Struct.new(
      :public_keys,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stage_arn
    #   Stage ARN.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The first stage session to retrieve. This is used for pagination;
    #   see the `nextToken` response field.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return. Default: 50.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListStageSessionsRequest AWS API Documentation
    #
    class ListStageSessionsRequest < Struct.new(
      :stage_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stage_sessions
    #   List of matching stage sessions.
    #   @return [Array<Types::StageSessionSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are more stage sessions than `maxResults`, use `nextToken`
    #   in the request to get the next set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListStageSessionsResponse AWS API Documentation
    #
    class ListStageSessionsResponse < Struct.new(
      :stage_sessions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The first stage to retrieve. This is used for pagination; see the
    #   `nextToken` response field.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return. Default: 50.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListStagesRequest AWS API Documentation
    #
    class ListStagesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stages
    #   List of the matching stages (summary information only).
    #   @return [Array<Types::StageSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are more stages than `maxResults`, use `nextToken` in the
    #   request to get the next set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListStagesResponse AWS API Documentation
    #
    class ListStagesResponse < Struct.new(
      :stages,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The first storage configuration to retrieve. This is used for
    #   pagination; see the `nextToken` response field.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of storage configurations to return. Default: your
    #   service quota or 100, whichever is smaller.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListStorageConfigurationsRequest AWS API Documentation
    #
    class ListStorageConfigurationsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] storage_configurations
    #   List of the matching storage configurations.
    #   @return [Array<Types::StorageConfigurationSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are more storage configurations than `maxResults`, use
    #   `nextToken` in the request to get the next set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListStorageConfigurationsResponse AWS API Documentation
    #
    class ListStorageConfigurationsResponse < Struct.new(
      :storage_configurations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to be retrieved. The ARN must be
    #   URL-encoded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Tags attached to the resource. Array of maps, each of the form
    #   `string:string (key:value)`.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object describing a participant that has joined a stage.
    #
    # @!attribute [rw] participant_id
    #   Unique identifier for this participant, assigned by IVS.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   Customer-assigned name to help identify the token; this can be used
    #   to link a participant to a user in the customer’s own systems. This
    #   can be any UTF-8 encoded text. *This field is exposed to all stage
    #   participants and should not be used for personally identifying,
    #   confidential, or sensitive information*.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Whether the participant is connected to or disconnected from the
    #   stage.
    #   @return [String]
    #
    # @!attribute [rw] first_join_time
    #   ISO 8601 timestamp (returned as a string) when the participant first
    #   joined the stage session.
    #   @return [Time]
    #
    # @!attribute [rw] attributes
    #   Application-provided attributes to encode into the token and attach
    #   to a stage. Map keys and values can contain UTF-8 encoded text. The
    #   maximum length of this field is 1 KB total. *This field is exposed
    #   to all stage participants and should not be used for personally
    #   identifying, confidential, or sensitive information*.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] published
    #   Whether the participant ever published to the stage session.
    #   @return [Boolean]
    #
    # @!attribute [rw] isp_name
    #   The participant’s Internet Service Provider.
    #   @return [String]
    #
    # @!attribute [rw] os_name
    #   The participant’s operating system.
    #   @return [String]
    #
    # @!attribute [rw] os_version
    #   The participant’s operating system version.
    #   @return [String]
    #
    # @!attribute [rw] browser_name
    #   The participant’s browser.
    #   @return [String]
    #
    # @!attribute [rw] browser_version
    #   The participant’s browser version.
    #   @return [String]
    #
    # @!attribute [rw] sdk_version
    #   The participant’s SDK version.
    #   @return [String]
    #
    # @!attribute [rw] recording_s3_bucket_name
    #   Name of the S3 bucket to where the participant is being recorded, if
    #   individual participant recording is enabled, or `""` (empty string),
    #   if recording is not enabled.
    #   @return [String]
    #
    # @!attribute [rw] recording_s3_prefix
    #   S3 prefix of the S3 bucket where the participant is being recorded,
    #   if individual participant recording is enabled, or `""` (empty
    #   string), if recording is not enabled. If individual participant
    #   recording merge is enabled, and if a stage publisher disconnects
    #   from a stage and then reconnects, IVS tries to record to the same S3
    #   prefix as the previous session. See [ Merge Fragmented Individual
    #   Participant
    #   Recordings](/ivs/latest/RealTimeUserGuide/rt-individual-participant-recording.html#ind-part-rec-merge-frag).
    #   @return [String]
    #
    # @!attribute [rw] recording_state
    #   The participant’s recording state.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   Type of ingest protocol that the participant employs for
    #   broadcasting.
    #   @return [String]
    #
    # @!attribute [rw] replication_type
    #   Indicates if the participant has been replicated to another stage or
    #   is a replica from another stage. Default: `NONE`.
    #   @return [String]
    #
    # @!attribute [rw] replication_state
    #   The participant's replication state.
    #   @return [String]
    #
    # @!attribute [rw] source_stage_arn
    #   Source stage ARN from which this participant is replicated, if
    #   `replicationType` is `REPLICA`.
    #   @return [String]
    #
    # @!attribute [rw] source_session_id
    #   ID of the session within the source stage, if `replicationType` is
    #   `REPLICA`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/Participant AWS API Documentation
    #
    class Participant < Struct.new(
      :participant_id,
      :user_id,
      :state,
      :first_join_time,
      :attributes,
      :published,
      :isp_name,
      :os_name,
      :os_version,
      :browser_name,
      :browser_version,
      :sdk_version,
      :recording_s3_bucket_name,
      :recording_s3_prefix,
      :recording_state,
      :protocol,
      :replication_type,
      :replication_state,
      :source_stage_arn,
      :source_session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing a configuration of participant HLS recordings
    # for individual participant recording.
    #
    # @!attribute [rw] target_segment_duration_seconds
    #   Defines the target duration for recorded segments generated when
    #   recording a stage participant. Segments may have durations longer
    #   than the specified value when needed to ensure each segment begins
    #   with a keyframe. Default: 6.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ParticipantRecordingHlsConfiguration AWS API Documentation
    #
    class ParticipantRecordingHlsConfiguration < Struct.new(
      :target_segment_duration_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the replicated destination stage for a participant.
    #
    # @!attribute [rw] source_stage_arn
    #   ARN of the stage from which this participant is replicated.
    #   @return [String]
    #
    # @!attribute [rw] participant_id
    #   Participant ID of the publisher that will be replicated. This is
    #   assigned by IVS and returned by CreateParticipantToken or the `jti`
    #   (JWT ID) used to [ create a self signed token][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/getting-started-distribute-tokens.html#getting-started-distribute-tokens-self-signed
    #   @return [String]
    #
    # @!attribute [rw] source_session_id
    #   ID of the session within the source stage.
    #   @return [String]
    #
    # @!attribute [rw] destination_stage_arn
    #   ARN of the stage where the participant is replicated.
    #   @return [String]
    #
    # @!attribute [rw] destination_session_id
    #   ID of the session within the destination stage.
    #   @return [String]
    #
    # @!attribute [rw] replication_state
    #   Replica’s current replication state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ParticipantReplica AWS API Documentation
    #
    class ParticipantReplica < Struct.new(
      :source_stage_arn,
      :participant_id,
      :source_session_id,
      :destination_stage_arn,
      :destination_session_id,
      :replication_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary object describing a participant that has joined a stage.
    #
    # @!attribute [rw] participant_id
    #   Unique identifier for this participant, assigned by IVS.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   Customer-assigned name to help identify the token; this can be used
    #   to link a participant to a user in the customer’s own systems. This
    #   can be any UTF-8 encoded text. *This field is exposed to all stage
    #   participants and should not be used for personally identifying,
    #   confidential, or sensitive information*.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Whether the participant is connected to or disconnected from the
    #   stage.
    #   @return [String]
    #
    # @!attribute [rw] first_join_time
    #   ISO 8601 timestamp (returned as a string) when the participant first
    #   joined the stage session.
    #   @return [Time]
    #
    # @!attribute [rw] published
    #   Whether the participant ever published to the stage session.
    #   @return [Boolean]
    #
    # @!attribute [rw] recording_state
    #   The participant’s recording state.
    #   @return [String]
    #
    # @!attribute [rw] replication_type
    #   Indicates if the participant has been replicated to another stage or
    #   is a replica from another stage. Default: `NONE`.
    #   @return [String]
    #
    # @!attribute [rw] replication_state
    #   The participant's replication state.
    #   @return [String]
    #
    # @!attribute [rw] source_stage_arn
    #   Source stage ARN from which this participant is replicated, if
    #   `replicationType` is `REPLICA`.
    #   @return [String]
    #
    # @!attribute [rw] source_session_id
    #   ID of the session within the source stage, if `replicationType` is
    #   `REPLICA`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ParticipantSummary AWS API Documentation
    #
    class ParticipantSummary < Struct.new(
      :participant_id,
      :user_id,
      :state,
      :first_join_time,
      :published,
      :recording_state,
      :replication_type,
      :replication_state,
      :source_stage_arn,
      :source_session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing a configuration of thumbnails for recorded
    # video from an individual participant.
    #
    # @!attribute [rw] target_interval_seconds
    #   The targeted thumbnail-generation interval in seconds. This is
    #   configurable only if `recordingMode` is `INTERVAL`. Default: 60.
    #   @return [Integer]
    #
    # @!attribute [rw] storage
    #   Indicates the format in which thumbnails are recorded. `SEQUENTIAL`
    #   records all generated thumbnails in a serial manner, to the
    #   media/thumbnails/high directory. `LATEST` saves the latest thumbnail
    #   in media/latest\_thumbnail/high/thumb.jpg and overwrites it at the
    #   interval specified by `targetIntervalSeconds`. You can enable both
    #   `SEQUENTIAL` and `LATEST`. Default: `SEQUENTIAL`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] recording_mode
    #   Thumbnail recording mode. Default: `DISABLED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ParticipantThumbnailConfiguration AWS API Documentation
    #
    class ParticipantThumbnailConfiguration < Struct.new(
      :target_interval_seconds,
      :storage,
      :recording_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object specifying a participant token in a stage.
    #
    # **Important**: Treat tokens as opaque; i.e., do not build
    # functionality based on token contents. The format of tokens could
    # change in the future.
    #
    # @!attribute [rw] participant_id
    #   Unique identifier for this participant token, assigned by IVS.
    #   @return [String]
    #
    # @!attribute [rw] token
    #   The issued client token, encrypted.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   Customer-assigned name to help identify the token; this can be used
    #   to link a participant to a user in the customer’s own systems. This
    #   can be any UTF-8 encoded text. *This field is exposed to all stage
    #   participants and should not be used for personally identifying,
    #   confidential, or sensitive information.*
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   Application-provided attributes to encode into the token and attach
    #   to a stage. *This field is exposed to all stage participants and
    #   should not be used for personally identifying, confidential, or
    #   sensitive information.*
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] duration
    #   Duration (in minutes), after which the participant token expires.
    #   Default: 720 (12 hours).
    #   @return [Integer]
    #
    # @!attribute [rw] capabilities
    #   Set of capabilities that the user is allowed to perform in the
    #   stage.
    #   @return [Array<String>]
    #
    # @!attribute [rw] expiration_time
    #   ISO 8601 timestamp (returned as a string) for when this token
    #   expires.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ParticipantToken AWS API Documentation
    #
    class ParticipantToken < Struct.new(
      :participant_id,
      :token,
      :user_id,
      :attributes,
      :duration,
      :capabilities,
      :expiration_time)
      SENSITIVE = [:token]
      include Aws::Structure
    end

    # Object specifying a participant token configuration in a stage.
    #
    # @!attribute [rw] duration
    #   Duration (in minutes), after which the corresponding participant
    #   token expires. Default: 720 (12 hours).
    #   @return [Integer]
    #
    # @!attribute [rw] user_id
    #   Customer-assigned name to help identify the token; this can be used
    #   to link a participant to a user in the customer’s own systems. This
    #   can be any UTF-8 encoded text. *This field is exposed to all stage
    #   participants and should not be used for personally identifying,
    #   confidential, or sensitive information.*
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   Application-provided attributes to encode into the corresponding
    #   participant token and attach to a stage. Map keys and values can
    #   contain UTF-8 encoded text. The maximum length of this field is 1 KB
    #   total. *This field is exposed to all stage participants and should
    #   not be used for personally identifying, confidential, or sensitive
    #   information.*
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] capabilities
    #   Set of capabilities that the user is allowed to perform in the
    #   stage.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ParticipantTokenConfiguration AWS API Documentation
    #
    class ParticipantTokenConfiguration < Struct.new(
      :duration,
      :user_id,
      :attributes,
      :capabilities)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_control_allow_origin
    #   @return [String]
    #
    # @!attribute [rw] access_control_expose_headers
    #   @return [String]
    #
    # @!attribute [rw] cache_control
    #   @return [String]
    #
    # @!attribute [rw] content_security_policy
    #   @return [String]
    #
    # @!attribute [rw] strict_transport_security
    #   @return [String]
    #
    # @!attribute [rw] x_content_type_options
    #   @return [String]
    #
    # @!attribute [rw] x_frame_options
    #   @return [String]
    #
    # @!attribute [rw] x_amzn_error_type
    #   @return [String]
    #
    # @!attribute [rw] exception_message
    #   Your account is pending verification.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/PendingVerification AWS API Documentation
    #
    class PendingVerification < Struct.new(
      :access_control_allow_origin,
      :access_control_expose_headers,
      :cache_control,
      :content_security_policy,
      :strict_transport_security,
      :x_content_type_options,
      :x_frame_options,
      :x_amzn_error_type,
      :exception_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information specific to Picture-in-Picture (PiP) layout,
    # for [server-side composition][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/server-side-composition.html
    #
    # @!attribute [rw] featured_participant_attribute
    #   This attribute name identifies the featured slot. A participant with
    #   this attribute set to `"true"` (as a string value) in
    #   ParticipantTokenConfiguration is placed in the featured slot.
    #   Default: `""` (no featured participant).
    #   @return [String]
    #
    # @!attribute [rw] omit_stopped_video
    #   Determines whether to omit participants with stopped video in the
    #   composition. Default: `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] video_fill_mode
    #   Defines how video content fits within the participant tile: `FILL`
    #   (stretched), `COVER` (cropped), or `CONTAIN` (letterboxed). Default:
    #   `COVER`.
    #   @return [String]
    #
    # @!attribute [rw] grid_gap
    #   Specifies the spacing between participant tiles in pixels. Default:
    #   `0`.
    #   @return [Integer]
    #
    # @!attribute [rw] pip_participant_attribute
    #   Specifies the participant for the PiP window. A participant with
    #   this attribute set to `"true"` (as a string value) in
    #   ParticipantTokenConfiguration is placed in the PiP slot. Default:
    #   `""` (no PiP participant).
    #   @return [String]
    #
    # @!attribute [rw] pip_behavior
    #   Defines PiP behavior when all participants have left: `STATIC`
    #   (maintains original position/size) or `DYNAMIC` (expands to full
    #   composition). Default: `STATIC`.
    #   @return [String]
    #
    # @!attribute [rw] pip_offset
    #   Sets the PiP window’s offset position in pixels from the closest
    #   edges determined by `PipPosition`. Default: `0`.
    #   @return [Integer]
    #
    # @!attribute [rw] pip_position
    #   Determines the corner position of the PiP window. Default:
    #   `BOTTOM_RIGHT`.
    #   @return [String]
    #
    # @!attribute [rw] pip_width
    #   Specifies the width of the PiP window in pixels. When this is not
    #   set explicitly, `pipWidth`’s value will be based on the size of the
    #   composition and the aspect ratio of the participant’s video.
    #   @return [Integer]
    #
    # @!attribute [rw] pip_height
    #   Specifies the height of the PiP window in pixels. When this is not
    #   set explicitly, `pipHeight`’s value will be based on the size of the
    #   composition and the aspect ratio of the participant’s video.
    #   @return [Integer]
    #
    # @!attribute [rw] participant_order_attribute
    #   Attribute name in ParticipantTokenConfiguration identifying the
    #   participant ordering key. Participants with
    #   `participantOrderAttribute` set to `""` or not specified are ordered
    #   based on their arrival time into the stage.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/PipConfiguration AWS API Documentation
    #
    class PipConfiguration < Struct.new(
      :featured_participant_attribute,
      :omit_stopped_video,
      :video_fill_mode,
      :grid_gap,
      :pip_participant_attribute,
      :pip_behavior,
      :pip_offset,
      :pip_position,
      :pip_width,
      :pip_height,
      :participant_order_attribute)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object specifying a public key used to sign stage participant tokens.
    #
    # @!attribute [rw] arn
    #   Public key ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Public key name.
    #   @return [String]
    #
    # @!attribute [rw] public_key_material
    #   Public key material.
    #   @return [String]
    #
    # @!attribute [rw] fingerprint
    #   The public key fingerprint, a short string used to identify or
    #   verify the full public key.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags attached to the resource. Array of maps, each of the form
    #   `string:string (key:value)`. See [Best practices and strategies][1]
    #   in *Tagging AWS Resources and Tag Editor* for details, including
    #   restrictions that apply to tags and "Tag naming limits and
    #   requirements"; Amazon IVS has no constraints on tags beyond what is
    #   documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/PublicKey AWS API Documentation
    #
    class PublicKey < Struct.new(
      :arn,
      :name,
      :public_key_material,
      :fingerprint,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a public key.
    #
    # @!attribute [rw] arn
    #   Public key ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Public key name.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags attached to the resource. Array of maps, each of the form
    #   `string:string (key:value)`. See [Best practices and strategies][1]
    #   in *Tagging AWS Resources and Tag Editor* for details, including
    #   restrictions that apply to tags and "Tag naming limits and
    #   requirements"; Amazon IVS has no constraints on tags beyond what is
    #   documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/PublicKeySummary AWS API Documentation
    #
    class PublicKeySummary < Struct.new(
      :arn,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing a configuration to record a stage stream.
    #
    # @!attribute [rw] hls_configuration
    #   An HLS configuration object to return information about how the
    #   recording will be configured.
    #   @return [Types::CompositionRecordingHlsConfiguration]
    #
    # @!attribute [rw] format
    #   The recording format for storing a recording in Amazon S3.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/RecordingConfiguration AWS API Documentation
    #
    class RecordingConfiguration < Struct.new(
      :hls_configuration,
      :format)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_control_allow_origin
    #   @return [String]
    #
    # @!attribute [rw] access_control_expose_headers
    #   @return [String]
    #
    # @!attribute [rw] cache_control
    #   @return [String]
    #
    # @!attribute [rw] content_security_policy
    #   @return [String]
    #
    # @!attribute [rw] strict_transport_security
    #   @return [String]
    #
    # @!attribute [rw] x_content_type_options
    #   @return [String]
    #
    # @!attribute [rw] x_frame_options
    #   @return [String]
    #
    # @!attribute [rw] x_amzn_error_type
    #   @return [String]
    #
    # @!attribute [rw] exception_message
    #   Request references a resource which does not exist.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :access_control_allow_origin,
      :access_control_expose_headers,
      :cache_control,
      :content_security_policy,
      :strict_transport_security,
      :x_content_type_options,
      :x_frame_options,
      :x_amzn_error_type,
      :exception_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that describes an S3 location where recorded videos
    # will be stored.
    #
    # @!attribute [rw] storage_configuration_arn
    #   ARN of the StorageConfiguration where recorded videos will be
    #   stored.
    #   @return [String]
    #
    # @!attribute [rw] encoder_configuration_arns
    #   ARNs of the EncoderConfiguration resource. The encoder configuration
    #   and stage resources must be in the same AWS account and region.
    #   @return [Array<String>]
    #
    # @!attribute [rw] recording_configuration
    #   Array of maps, each of the form `string:string (key:value)`. This is
    #   an optional customer specification, currently used only to specify
    #   the recording format for storing a recording in Amazon S3.
    #   @return [Types::RecordingConfiguration]
    #
    # @!attribute [rw] thumbnail_configurations
    #   A complex type that allows you to enable/disable the recording of
    #   thumbnails for a Composition and modify the interval at which
    #   thumbnails are generated for the live session.
    #   @return [Array<Types::CompositionThumbnailConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/S3DestinationConfiguration AWS API Documentation
    #
    class S3DestinationConfiguration < Struct.new(
      :storage_configuration_arn,
      :encoder_configuration_arns,
      :recording_configuration,
      :thumbnail_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Complex data type that defines S3Detail objects.
    #
    # @!attribute [rw] recording_prefix
    #   The S3 bucket prefix under which the recording is stored.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/S3Detail AWS API Documentation
    #
    class S3Detail < Struct.new(
      :recording_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that describes an S3 location where recorded videos
    # will be stored.
    #
    # @!attribute [rw] bucket_name
    #   Location (S3 bucket name) where recorded videos will be stored. Note
    #   that the StorageConfiguration and S3 bucket must be in the same
    #   region as the Composition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/S3StorageConfiguration AWS API Documentation
    #
    class S3StorageConfiguration < Struct.new(
      :bucket_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_control_allow_origin
    #   @return [String]
    #
    # @!attribute [rw] access_control_expose_headers
    #   @return [String]
    #
    # @!attribute [rw] cache_control
    #   @return [String]
    #
    # @!attribute [rw] content_security_policy
    #   @return [String]
    #
    # @!attribute [rw] strict_transport_security
    #   @return [String]
    #
    # @!attribute [rw] x_content_type_options
    #   @return [String]
    #
    # @!attribute [rw] x_frame_options
    #   @return [String]
    #
    # @!attribute [rw] x_amzn_error_type
    #   @return [String]
    #
    # @!attribute [rw] exception_message
    #   Request would cause a service quota to be exceeded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :access_control_allow_origin,
      :access_control_expose_headers,
      :cache_control,
      :content_security_policy,
      :strict_transport_security,
      :x_content_type_options,
      :x_frame_options,
      :x_amzn_error_type,
      :exception_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object specifying a stage.
    #
    # @!attribute [rw] arn
    #   Stage ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Stage name.
    #   @return [String]
    #
    # @!attribute [rw] active_session_id
    #   ID of the active session within the stage.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags attached to the resource. Array of maps, each of the form
    #   `string:string (key:value)`. See [Best practices and strategies][1]
    #   in *Tagging AWS Resources and Tag Editor* for details, including
    #   restrictions that apply to tags and "Tag naming limits and
    #   requirements"; Amazon IVS has no constraints on tags beyond what is
    #   documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] auto_participant_recording_configuration
    #   Configuration object for individual participant recording, attached
    #   to the stage.
    #   @return [Types::AutoParticipantRecordingConfiguration]
    #
    # @!attribute [rw] endpoints
    #   Summary information about various endpoints for a stage.
    #   @return [Types::StageEndpoints]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/Stage AWS API Documentation
    #
    class Stage < Struct.new(
      :arn,
      :name,
      :active_session_id,
      :tags,
      :auto_participant_recording_configuration,
      :endpoints)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about various endpoints for a stage. We recommend
    # that you cache these values at stage creation; the values can be
    # cached for up to 14 days.
    #
    # @!attribute [rw] events
    #   Events endpoint.
    #   @return [String]
    #
    # @!attribute [rw] whip
    #   The endpoint to be used for IVS real-time streaming using the WHIP
    #   protocol.
    #   @return [String]
    #
    # @!attribute [rw] rtmp
    #   The endpoint to be used for IVS real-time streaming using the RTMP
    #   protocol.
    #   @return [String]
    #
    # @!attribute [rw] rtmps
    #   The endpoint to be used for IVS real-time streaming using the RTMPS
    #   protocol.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/StageEndpoints AWS API Documentation
    #
    class StageEndpoints < Struct.new(
      :events,
      :whip,
      :rtmp,
      :rtmps)
      SENSITIVE = []
      include Aws::Structure
    end

    # A stage session begins when the first participant joins a stage and
    # ends after the last participant leaves the stage. A stage session
    # helps with debugging stages by grouping events and participants into
    # shorter periods of time (i.e., a session), which is helpful when
    # stages are used over long periods of time.
    #
    # @!attribute [rw] session_id
    #   ID of the session within the stage.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   ISO 8601 timestamp (returned as a string) when this stage session
    #   began.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   ISO 8601 timestamp (returned as a string) when the stage session
    #   ended. This is null if the stage is active.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/StageSession AWS API Documentation
    #
    class StageSession < Struct.new(
      :session_id,
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a stage session.
    #
    # @!attribute [rw] session_id
    #   ID of the session within the stage.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   ISO 8601 timestamp (returned as a string) when this stage session
    #   began.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   ISO 8601 timestamp (returned as a string) when the stage session
    #   ended. This is null if the stage is active.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/StageSessionSummary AWS API Documentation
    #
    class StageSessionSummary < Struct.new(
      :session_id,
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a stage.
    #
    # @!attribute [rw] arn
    #   Stage ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Stage name.
    #   @return [String]
    #
    # @!attribute [rw] active_session_id
    #   ID of the active session within the stage.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags attached to the resource. Array of maps, each of the form
    #   `string:string (key:value)`. See [Best practices and strategies][1]
    #   in *Tagging AWS Resources and Tag Editor* for details, including
    #   restrictions that apply to tags and "Tag naming limits and
    #   requirements"; Amazon IVS has no constraints on tags beyond what is
    #   documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/StageSummary AWS API Documentation
    #
    class StageSummary < Struct.new(
      :arn,
      :name,
      :active_session_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stage_arn
    #   ARN of the stage to be used for compositing.
    #   @return [String]
    #
    # @!attribute [rw] idempotency_token
    #   Idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] layout
    #   Layout object to configure composition parameters.
    #   @return [Types::LayoutConfiguration]
    #
    # @!attribute [rw] destinations
    #   Array of destination configuration.
    #   @return [Array<Types::DestinationConfiguration>]
    #
    # @!attribute [rw] tags
    #   Tags attached to the resource. Array of maps, each of the form
    #   `string:string (key:value)`. See [Best practices and strategies][1]
    #   in *Tagging AWS Resources and Tag Editor* for details, including
    #   restrictions that apply to tags and "Tag naming limits and
    #   requirements"; Amazon IVS has no constraints on tags beyond what is
    #   documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/StartCompositionRequest AWS API Documentation
    #
    class StartCompositionRequest < Struct.new(
      :stage_arn,
      :idempotency_token,
      :layout,
      :destinations,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] composition
    #   The Composition that was created.
    #   @return [Types::Composition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/StartCompositionResponse AWS API Documentation
    #
    class StartCompositionResponse < Struct.new(
      :composition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_stage_arn
    #   ARN of the stage where the participant is publishing.
    #   @return [String]
    #
    # @!attribute [rw] destination_stage_arn
    #   ARN of the stage to which the participant will be replicated.
    #   @return [String]
    #
    # @!attribute [rw] participant_id
    #   Participant ID of the publisher that will be replicated. This is
    #   assigned by IVS and returned by CreateParticipantToken or the `jti`
    #   (JWT ID) used to [create a self signed token][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/getting-started-distribute-tokens.html#getting-started-distribute-tokens-self-signed
    #   @return [String]
    #
    # @!attribute [rw] reconnect_window_seconds
    #   If the participant disconnects and then reconnects within the
    #   specified interval, replication will continue to be `ACTIVE`.
    #   Default: 0.
    #   @return [Integer]
    #
    # @!attribute [rw] attributes
    #   Application-provided attributes to set on the replicated participant
    #   in the destination stage. Map keys and values can contain UTF-8
    #   encoded text. The maximum length of this field is 1 KB total. *This
    #   field is exposed to all stage participants and should not be used
    #   for personally identifying, confidential, or sensitive information.*
    #
    #   These attributes are merged with any attributes set for this
    #   participant when creating the token. If there is overlap in keys,
    #   the values in these attributes are replaced.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/StartParticipantReplicationRequest AWS API Documentation
    #
    class StartParticipantReplicationRequest < Struct.new(
      :source_stage_arn,
      :destination_stage_arn,
      :participant_id,
      :reconnect_window_seconds,
      :attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_control_allow_origin
    #   @return [String]
    #
    # @!attribute [rw] access_control_expose_headers
    #   @return [String]
    #
    # @!attribute [rw] cache_control
    #   @return [String]
    #
    # @!attribute [rw] content_security_policy
    #   @return [String]
    #
    # @!attribute [rw] strict_transport_security
    #   @return [String]
    #
    # @!attribute [rw] x_content_type_options
    #   @return [String]
    #
    # @!attribute [rw] x_frame_options
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/StartParticipantReplicationResponse AWS API Documentation
    #
    class StartParticipantReplicationResponse < Struct.new(
      :access_control_allow_origin,
      :access_control_expose_headers,
      :cache_control,
      :content_security_policy,
      :strict_transport_security,
      :x_content_type_options,
      :x_frame_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   ARN of the Composition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/StopCompositionRequest AWS API Documentation
    #
    class StopCompositionRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/StopCompositionResponse AWS API Documentation
    #
    class StopCompositionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] source_stage_arn
    #   ARN of the stage where the participant is publishing.
    #   @return [String]
    #
    # @!attribute [rw] destination_stage_arn
    #   ARN of the stage where the participant has been replicated.
    #   @return [String]
    #
    # @!attribute [rw] participant_id
    #   Participant ID of the publisher that has been replicated. This is
    #   assigned by IVS and returned by CreateParticipantToken or the `jti`
    #   (JWT ID) used to [ create a self signed token][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/getting-started-distribute-tokens.html#getting-started-distribute-tokens-self-signed
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/StopParticipantReplicationRequest AWS API Documentation
    #
    class StopParticipantReplicationRequest < Struct.new(
      :source_stage_arn,
      :destination_stage_arn,
      :participant_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_control_allow_origin
    #   @return [String]
    #
    # @!attribute [rw] access_control_expose_headers
    #   @return [String]
    #
    # @!attribute [rw] cache_control
    #   @return [String]
    #
    # @!attribute [rw] content_security_policy
    #   @return [String]
    #
    # @!attribute [rw] strict_transport_security
    #   @return [String]
    #
    # @!attribute [rw] x_content_type_options
    #   @return [String]
    #
    # @!attribute [rw] x_frame_options
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/StopParticipantReplicationResponse AWS API Documentation
    #
    class StopParticipantReplicationResponse < Struct.new(
      :access_control_allow_origin,
      :access_control_expose_headers,
      :cache_control,
      :content_security_policy,
      :strict_transport_security,
      :x_content_type_options,
      :x_frame_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that describes a location where recorded videos will be
    # stored.
    #
    # @!attribute [rw] arn
    #   ARN of the storage configuration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the storage configuration.
    #   @return [String]
    #
    # @!attribute [rw] s3
    #   An S3 destination configuration where recorded videos will be
    #   stored.
    #   @return [Types::S3StorageConfiguration]
    #
    # @!attribute [rw] tags
    #   Tags attached to the resource. Array of maps, each of the form
    #   `string:string (key:value)`. See [Best practices and strategies][1]
    #   in *Tagging AWS Resources and Tag Editor* for details, including
    #   restrictions that apply to tags and "Tag naming limits and
    #   requirements"; Amazon IVS has no constraints on tags beyond what is
    #   documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/StorageConfiguration AWS API Documentation
    #
    class StorageConfiguration < Struct.new(
      :arn,
      :name,
      :s3,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a storage configuration.
    #
    # @!attribute [rw] arn
    #   ARN of the storage configuration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the storage configuration.
    #   @return [String]
    #
    # @!attribute [rw] s3
    #   An S3 destination configuration where recorded videos will be
    #   stored.
    #   @return [Types::S3StorageConfiguration]
    #
    # @!attribute [rw] tags
    #   Tags attached to the resource. Array of maps, each of the form
    #   `string:string (key:value)`. See [Best practices and strategies][1]
    #   in *Tagging AWS Resources and Tag Editor* for details, including
    #   restrictions that apply to tags and "Tag naming limits and
    #   requirements"; Amazon IVS has no constraints on tags beyond what is
    #   documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/StorageConfigurationSummary AWS API Documentation
    #
    class StorageConfigurationSummary < Struct.new(
      :arn,
      :name,
      :s3,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to be tagged. The ARN must be URL-encoded.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Array of tags to be added or updated. Array of maps, each of the
    #   form `string:string (key:value)`. See [Best practices and
    #   strategies][1] in *Tagging AWS Resources and Tag Editor* for
    #   details, including restrictions that apply to tags and "Tag naming
    #   limits and requirements"; Amazon IVS has no constraints on tags
    #   beyond what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to be untagged. The ARN must be URL-encoded.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Array of tag keys (strings) for the tags to be removed. See [Best
    #   practices and strategies][1] in *Tagging AWS Resources and Tag
    #   Editor* for details, including restrictions that apply to tags and
    #   "Tag naming limits and requirements"; Amazon IVS has no
    #   constraints on tags beyond what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] arn
    #   ARN of the IngestConfiguration, for which the related stage ARN
    #   needs to be updated.
    #   @return [String]
    #
    # @!attribute [rw] stage_arn
    #   Stage ARN that needs to be updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/UpdateIngestConfigurationRequest AWS API Documentation
    #
    class UpdateIngestConfigurationRequest < Struct.new(
      :arn,
      :stage_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ingest_configuration
    #   The updated IngestConfiguration.
    #   @return [Types::IngestConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/UpdateIngestConfigurationResponse AWS API Documentation
    #
    class UpdateIngestConfigurationResponse < Struct.new(
      :ingest_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   ARN of the stage to be updated.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the stage to be updated.
    #   @return [String]
    #
    # @!attribute [rw] auto_participant_recording_configuration
    #   Configuration object for individual participant recording, to attach
    #   to the stage. Note that this cannot be updated while recording is
    #   active.
    #   @return [Types::AutoParticipantRecordingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/UpdateStageRequest AWS API Documentation
    #
    class UpdateStageRequest < Struct.new(
      :arn,
      :name,
      :auto_participant_recording_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stage
    #   The updated stage.
    #   @return [Types::Stage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/UpdateStageResponse AWS API Documentation
    #
    class UpdateStageResponse < Struct.new(
      :stage)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_control_allow_origin
    #   @return [String]
    #
    # @!attribute [rw] access_control_expose_headers
    #   @return [String]
    #
    # @!attribute [rw] cache_control
    #   @return [String]
    #
    # @!attribute [rw] content_security_policy
    #   @return [String]
    #
    # @!attribute [rw] strict_transport_security
    #   @return [String]
    #
    # @!attribute [rw] x_content_type_options
    #   @return [String]
    #
    # @!attribute [rw] x_frame_options
    #   @return [String]
    #
    # @!attribute [rw] x_amzn_error_type
    #   @return [String]
    #
    # @!attribute [rw] exception_message
    #   The input fails to satisfy the constraints specified by an Amazon
    #   Web Services service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :access_control_allow_origin,
      :access_control_expose_headers,
      :cache_control,
      :content_security_policy,
      :strict_transport_security,
      :x_content_type_options,
      :x_frame_options,
      :x_amzn_error_type,
      :exception_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for video.
    #
    # @!attribute [rw] width
    #   Video-resolution width. This must be an even number. Note that the
    #   maximum value is determined by `width` times `height`, such that the
    #   maximum total pixels is 2073600 (1920x1080 or 1080x1920). Default:
    #   1280.
    #   @return [Integer]
    #
    # @!attribute [rw] height
    #   Video-resolution height. This must be an even number. Note that the
    #   maximum value is determined by `width` times `height`, such that the
    #   maximum total pixels is 2073600 (1920x1080 or 1080x1920). Default:
    #   720.
    #   @return [Integer]
    #
    # @!attribute [rw] framerate
    #   Video frame rate, in fps. Default: 30.
    #   @return [Float]
    #
    # @!attribute [rw] bitrate
    #   Bitrate for generated output, in bps. Default: 2500000.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/Video AWS API Documentation
    #
    class Video < Struct.new(
      :width,
      :height,
      :framerate,
      :bitrate)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

