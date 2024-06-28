# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IVSRealTime
  module Types

    # @!attribute [rw] exception_message
    #   User does not have sufficient access to perform this action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
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
    #   is created or updated.
    #   @return [String]
    #
    # @!attribute [rw] media_types
    #   Types of media to be recorded. Default: `AUDIO_VIDEO`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/AutoParticipantRecordingConfiguration AWS API Documentation
    #
    class AutoParticipantRecordingConfiguration < Struct.new(
      :storage_configuration_arn,
      :media_types)
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
    #   `string:string (key:value)`. See [Tagging AWS Resources][1] for
    #   details, including restrictions that apply to tags and "Tag naming
    #   limits and requirements"; Amazon IVS has no constraints on tags
    #   beyond what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
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
    #   `string:string (key:value)`. See [Tagging AWS Resources][1] for
    #   details, including restrictions that apply to tags and "Tag naming
    #   limits and requirements"; Amazon IVS has no constraints on tags
    #   beyond what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
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

    # @!attribute [rw] exception_message
    #   Updating or deleting a resource can cause an inconsistent state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
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
    #   `string:string (key:value)`. See [Tagging AWS Resources][1] for
    #   details, including restrictions that apply to tags and "Tag naming
    #   limits and requirements"; Amazon IVS has no constraints on tags
    #   beyond what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
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
    #   `string:string (key:value)`. See [Tagging AWS Resources][1] for
    #   details, including restrictions that apply to tags and "Tag naming
    #   limits and requirements"; Amazon IVS has no constraints on tags
    #   beyond what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
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
    #   `string:string (key:value)`. See [Tagging AWS Resources][1] for
    #   details, including restrictions that apply to tags and "Tag naming
    #   limits and requirements"; Amazon IVS has no constraints on tags
    #   beyond what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
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
    #   Identifier of the participant to be disconnected. This is assigned
    #   by IVS and returned by CreateParticipantToken.
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
    #   `string:string (key:value)`. See [Tagging AWS Resources][1] for
    #   details, including restrictions that apply to tags and "Tag naming
    #   limits and requirements"; Amazon IVS has no constraints on tags
    #   beyond what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
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
    #   `string:string (key:value)`. See [Tagging AWS Resources][1] for
    #   details, including restrictions that apply to tags and "Tag naming
    #   limits and requirements"; Amazon IVS has no constraints on tags
    #   beyond what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
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
    #   an error event, this field is null. `INSUFFICIENT_CAPABILITIES`
    #   indicates that the participant tried to take an action that the
    #   participant’s token is not allowed to do. For more information about
    #   participant capabilities, see the `capabilities` field in
    #   CreateParticipantToken. `QUOTA_EXCEEDED` indicates that the number
    #   of participants who want to publish/subscribe to a stage exceeds the
    #   quota; for more information, see [Service Quotas][1].
    #   `PUBLISHER_NOT_FOUND` indicates that the participant tried to
    #   subscribe to a publisher that doesn’t exist.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/service-quotas.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/Event AWS API Documentation
    #
    class Event < Struct.new(
      :name,
      :participant_id,
      :event_time,
      :remote_participant_id,
      :error_code)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/GridConfiguration AWS API Documentation
    #
    class GridConfiguration < Struct.new(
      :featured_participant_attribute,
      :omit_stopped_video,
      :video_aspect_ratio,
      :video_fill_mode,
      :grid_gap)
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
    #   `string:string (key:value)`. See [Tagging AWS Resources][1] for
    #   details, including restrictions that apply to tags and "Tag naming
    #   limits and requirements"; Amazon IVS has no constraints on tags
    #   beyond what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
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

    # @!attribute [rw] exception_message
    #   Unexpected error during processing of request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
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
    #   string), if recording is not enabled.
    #   @return [String]
    #
    # @!attribute [rw] recording_state
    #   The participant’s recording state.
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
      :recording_state)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ParticipantSummary AWS API Documentation
    #
    class ParticipantSummary < Struct.new(
      :participant_id,
      :user_id,
      :state,
      :first_join_time,
      :published,
      :recording_state)
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

    # @!attribute [rw] exception_message
    #   Your account is pending verification.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/PendingVerification AWS API Documentation
    #
    class PendingVerification < Struct.new(
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
      :pip_height)
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
    #   `string:string (key:value)`. See [Tagging AWS Resources][1] for
    #   details, including restrictions that apply to tags and "Tag naming
    #   limits and requirements"; Amazon IVS has no constraints on tags
    #   beyond what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
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
    #   `string:string (key:value)`. See [Tagging AWS Resources][1] for
    #   details, including restrictions that apply to tags and "Tag naming
    #   limits and requirements"; Amazon IVS has no constraints on tags
    #   beyond what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
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
    # @!attribute [rw] format
    #   The recording format for storing a recording in Amazon S3.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/RecordingConfiguration AWS API Documentation
    #
    class RecordingConfiguration < Struct.new(
      :format)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] exception_message
    #   Request references a resource which does not exist.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/S3DestinationConfiguration AWS API Documentation
    #
    class S3DestinationConfiguration < Struct.new(
      :storage_configuration_arn,
      :encoder_configuration_arns,
      :recording_configuration)
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

    # @!attribute [rw] exception_message
    #   Request would cause a service quota to be exceeded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
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
    #   `string:string (key:value)`. See [Tagging AWS Resources][1] for
    #   details, including restrictions that apply to tags and "Tag naming
    #   limits and requirements"; Amazon IVS has no constraints on tags
    #   beyond what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
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

    # Summary information about various endpoints for a stage.
    #
    # @!attribute [rw] events
    #   Events endpoint.
    #   @return [String]
    #
    # @!attribute [rw] whip
    #   WHIP endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/StageEndpoints AWS API Documentation
    #
    class StageEndpoints < Struct.new(
      :events,
      :whip)
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
    #   `string:string (key:value)`. See [Tagging AWS Resources][1] for
    #   details, including restrictions that apply to tags and "Tag naming
    #   limits and requirements"; Amazon IVS has no constraints on tags
    #   beyond what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
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
    #   `string:string (key:value)`. See [Tagging AWS Resources][1] for
    #   details, including restrictions that apply to tags and "Tag naming
    #   limits and requirements"; Amazon IVS has no constraints on tags
    #   beyond what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
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
    #   `string:string (key:value)`. See [Tagging AWS Resources][1] for
    #   details, including restrictions that apply to tags and "Tag naming
    #   limits and requirements"; Amazon IVS has no constraints on tags
    #   beyond what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
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
    #   `string:string (key:value)`. See [Tagging AWS Resources][1] for
    #   details, including restrictions that apply to tags and "Tag naming
    #   limits and requirements"; Amazon IVS has no constraints on tags
    #   beyond what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
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
    #   form `string:string (key:value)`. See [Tagging AWS Resources][1] for
    #   details, including restrictions that apply to tags and "Tag naming
    #   limits and requirements"; Amazon IVS has no constraints beyond what
    #   is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
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
    #   Array of tags to be removed. Array of maps, each of the form
    #   `string:string (key:value)`. See [Tagging AWS Resources][1] for
    #   details, including restrictions that apply to tags and "Tag naming
    #   limits and requirements"; Amazon IVS has no constraints beyond what
    #   is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
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

    # @!attribute [rw] exception_message
    #   The input fails to satisfy the constraints specified by an Amazon
    #   Web Services service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :exception_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for video.
    #
    # @!attribute [rw] width
    #   Video-resolution width. Note that the maximum value is determined by
    #   `width` times `height`, such that the maximum total pixels is
    #   2073600 (1920x1080 or 1080x1920). Default: 1280.
    #   @return [Integer]
    #
    # @!attribute [rw] height
    #   Video-resolution height. Note that the maximum value is determined
    #   by `width` times `height`, such that the maximum total pixels is
    #   2073600 (1920x1080 or 1080x1920). Default: 720.
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
