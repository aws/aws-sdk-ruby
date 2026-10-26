# frozen_string_literal: true

# This is generated code!

module Aws::IVSRealTime
  # This module contains the types returned by client operations.
  module Types

    # <p>User does not have sufficient access to perform this action.</p>
    # @!attribute access_control_allow_origin
    #   <p/>
    #   @return [String]
    # @!attribute access_control_expose_headers
    #   <p/>
    #   @return [String]
    # @!attribute cache_control
    #   <p/>
    #   @return [String]
    # @!attribute content_security_policy
    #   <p/>
    #   @return [String]
    # @!attribute strict_transport_security
    #   <p/>
    #   @return [String]
    # @!attribute x_content_type_options
    #   <p/>
    #   @return [String]
    # @!attribute x_frame_options
    #   <p/>
    #   @return [String]
    # @!attribute x_amzn_error_type
    #   <p/>
    #   @return [String]
    # @!attribute exception_message
    #   <p>User does not have sufficient access to perform this action.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :access_control_allow_origin,
      :access_control_expose_headers,
      :cache_control,
      :content_security_policy,
      :strict_transport_security,
      :x_content_type_options,
      :x_frame_options,
      :x_amzn_error_type,
      :exception_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object specifying a configuration for individual participant recording.</p>
    # @!attribute storage_configuration_arn
    #   <p>ARN of the <a>StorageConfiguration</a> resource to use for individual participant recording. Default: <code>""</code> (empty string, no storage configuration is specified). Individual participant recording cannot be started unless a storage configuration is specified, when a <a>Stage</a> is created or updated. To disable individual participant recording, set this to <code>""</code>; other fields in this object will get reset to their defaults when sending <code>""</code>. </p>
    #   @return [String]
    # @!attribute media_types
    #   <p>Types of media to be recorded. Default: <code>AUDIO_VIDEO</code>.</p>
    #   @return [Array<String>]
    # @!attribute thumbnail_configuration
    #   <p>A complex type that allows you to enable/disable the recording of thumbnails for individual participant recording and modify the interval at which thumbnails are generated for the live session.</p>
    #   @return [Types::ParticipantThumbnailConfiguration]
    # @!attribute recording_reconnect_window_seconds
    #   <p>If a stage publisher disconnects and then reconnects within the specified interval, the multiple recordings will be considered a single recording and merged together.</p> <p>The default value is 0, which disables merging.</p>
    #   @return [Integer]
    # @!attribute hls_configuration
    #   <p>HLS configuration object for individual participant recording.</p>
    #   @return [Types::ParticipantRecordingHlsConfiguration]
    # @!attribute record_participant_replicas
    #   <p>Optional field to disable replica participant recording. If this is set to <code>false</code> when a participant is a replica, replica participants are not recorded. Default: <code>true</code>.</p>
    #   @return [Boolean]
    class AutoParticipantRecordingConfiguration < Struct.new(
      nil,
      :storage_configuration_arn,
      :media_types,
      :thumbnail_configuration,
      :recording_reconnect_window_seconds,
      :hls_configuration,
      :record_participant_replicas,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:recording_reconnect_window_seconds] = 0 unless options.key?(:recording_reconnect_window_seconds)
        options[:record_participant_replicas] = false unless options.key?(:record_participant_replicas)
        super
      end
    end

    # <p>Object specifying a channel as a destination.</p>
    # @!attribute channel_arn
    #   <p>ARN of the channel to use for broadcasting. The channel and stage resources must be in the same AWS account and region. The channel must be offline (not broadcasting).</p>
    #   @return [String]
    # @!attribute encoder_configuration_arn
    #   <p>ARN of the <a>EncoderConfiguration</a> resource. The encoder configuration and stage resources must be in the same AWS account and region.</p>
    #   @return [String]
    class ChannelDestinationConfiguration < Struct.new(
      nil,
      :channel_arn,
      :encoder_configuration_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object specifying a Composition resource.</p>
    # @!attribute arn
    #   <p>ARN of the Composition resource.</p>
    #   @return [String]
    # @!attribute stage_arn
    #   <p>ARN of the stage used as input</p>
    #   @return [String]
    # @!attribute state
    #   <p>State of the Composition.</p>
    #   @return [String]
    # @!attribute layout
    #   <p>Layout object to configure composition parameters.</p>
    #   @return [Types::LayoutConfiguration]
    # @!attribute destinations
    #   <p>Array of Destination objects. A Composition can contain either one destination (<code>channel</code> or <code>s3</code>) or two (one <code>channel</code> and one <code>s3</code>).</p>
    #   @return [Array<Types::Destination>]
    # @!attribute tags
    #   <p>Tags attached to the resource. Array of maps, each of the form <code>string:string (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging AWS Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no constraints on tags beyond what is documented there.</p>
    #   @return [Hash<String, String>]
    # @!attribute start_time
    #   <p>UTC time of the Composition start. This is an ISO 8601 timestamp; <i>note that this is returned as a string</i>.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>UTC time of the Composition end. This is an ISO 8601 timestamp; <i>note that this is returned as a string</i>.</p>
    #   @return [Time]
    class Composition < Struct.new(
      nil,
      :arn,
      :stage_arn,
      :state,
      :layout,
      :destinations,
      :tags,
      :start_time,
      :end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing a configuration of HLS recordings for server-side composition.</p>
    # @!attribute target_segment_duration_seconds
    #   <p>Defines the target duration for recorded segments generated when using composite recording. Default: 2.</p>
    #   @return [Integer]
    class CompositionRecordingHlsConfiguration < Struct.new(
      nil,
      :target_segment_duration_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:target_segment_duration_seconds] = nil unless options.key?(:target_segment_duration_seconds)
        super
      end
    end

    # <p>Summary information about a Composition.</p>
    # @!attribute arn
    #   <p>ARN of the Composition resource.</p>
    #   @return [String]
    # @!attribute stage_arn
    #   <p>ARN of the attached stage.</p>
    #   @return [String]
    # @!attribute destinations
    #   <p>Array of Destination objects.</p>
    #   @return [Array<Types::DestinationSummary>]
    # @!attribute state
    #   <p>State of the Composition resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags attached to the resource. Array of maps, each of the form <code>string:string (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging AWS Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no constraints on tags beyond what is documented there.</p>
    #   @return [Hash<String, String>]
    # @!attribute start_time
    #   <p>UTC time of the Composition start. This is an ISO 8601 timestamp; <i>note that this is returned as a string</i>.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>UTC time of the Composition end. This is an ISO 8601 timestamp; <i>note that this is returned as a string</i>.</p>
    #   @return [Time]
    class CompositionSummary < Struct.new(
      nil,
      :arn,
      :stage_arn,
      :destinations,
      :state,
      :tags,
      :start_time,
      :end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing a configuration of thumbnails for recorded video for a <a>Composition</a>.</p>
    # @!attribute target_interval_seconds
    #   <p>The targeted thumbnail-generation interval in seconds. Default: 60.</p>
    #   @return [Integer]
    # @!attribute storage
    #   <p>Indicates the format in which thumbnails are recorded. <code>SEQUENTIAL</code> records all generated thumbnails in a serial manner, to the media/thumbnails/(width)x(height) directory, where (width) and (height) are the width and height of the thumbnail. <code>LATEST</code> saves the latest thumbnail in media/latest_thumbnail/(width)x(height)/thumb.jpg and overwrites it at the interval specified by <code>targetIntervalSeconds</code>. You can enable both <code>SEQUENTIAL</code> and <code>LATEST</code>. Default: <code>SEQUENTIAL</code>.</p>
    #   @return [Array<String>]
    class CompositionThumbnailConfiguration < Struct.new(
      nil,
      :target_interval_seconds,
      :storage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Updating or deleting a resource can cause an inconsistent state.</p>
    # @!attribute access_control_allow_origin
    #   <p/>
    #   @return [String]
    # @!attribute access_control_expose_headers
    #   <p/>
    #   @return [String]
    # @!attribute cache_control
    #   <p/>
    #   @return [String]
    # @!attribute content_security_policy
    #   <p/>
    #   @return [String]
    # @!attribute strict_transport_security
    #   <p/>
    #   @return [String]
    # @!attribute x_content_type_options
    #   <p/>
    #   @return [String]
    # @!attribute x_frame_options
    #   <p/>
    #   @return [String]
    # @!attribute x_amzn_error_type
    #   <p/>
    #   @return [String]
    # @!attribute exception_message
    #   <p>Updating or deleting a resource can cause an inconsistent state.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :access_control_allow_origin,
      :access_control_expose_headers,
      :cache_control,
      :content_security_policy,
      :strict_transport_security,
      :x_content_type_options,
      :x_frame_options,
      :x_amzn_error_type,
      :exception_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Optional name to identify the resource.</p>
    #   @return [String]
    # @!attribute video
    #   <p>Video configuration. Default: video resolution 1280x720, bitrate 2500 kbps, 30 fps.</p>
    #   @return [Types::Video]
    # @!attribute tags
    #   <p>Tags attached to the resource. Array of maps, each of the form <code>string:string (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging AWS Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no constraints on tags beyond what is documented there.</p>
    #   @return [Hash<String, String>]
    class CreateEncoderConfigurationRequest < Struct.new(
      nil,
      :name,
      :video,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute encoder_configuration
    #   <p>The EncoderConfiguration that was created.</p>
    #   @return [Types::EncoderConfiguration]
    class CreateEncoderConfigurationResponse < Struct.new(
      nil,
      :encoder_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Optional name that can be specified for the IngestConfiguration being created.</p>
    #   @return [String]
    # @!attribute stage_arn
    #   <p>ARN of the stage with which the IngestConfiguration is associated.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>Customer-assigned name to help identify the participant using the IngestConfiguration; this can be used to link a participant to a user in the customer’s own systems. This can be any UTF-8 encoded text. <i>This field is exposed to all stage participants and should not be used for personally identifying, confidential, or sensitive information.</i> </p>
    #   @return [String]
    # @!attribute attributes
    #   <p>Application-provided attributes to store in the IngestConfiguration and attach to a stage. Map keys and values can contain UTF-8 encoded text. The maximum length of this field is 1 KB total. <i>This field is exposed to all stage participants and should not be used for personally identifying, confidential, or sensitive information.</i> </p>
    #   @return [Hash<String, String>]
    # @!attribute ingest_protocol
    #   <p>Type of ingest protocol that the user employs to broadcast. If this is set to <code>RTMP</code>, <code>insecureIngest</code> must be set to <code>true</code>.</p>
    #   @return [String]
    # @!attribute insecure_ingest
    #   <p>Whether the stage allows insecure RTMP ingest. This must be set to <code>true</code>, if <code>ingestProtocol</code> is set to <code>RTMP</code>. Default: <code>false</code>. </p>
    #   @return [Boolean]
    # @!attribute redundant_ingest
    #   <p>Indicates whether redundant ingest is enabled for the ingest configuration. Default: <code>false</code>. </p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>Tags attached to the resource. Array of maps, each of the form <code>string:string (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging AWS Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no constraints on tags beyond what is documented there.</p>
    #   @return [Hash<String, String>]
    class CreateIngestConfigurationRequest < Struct.new(
      nil,
      :name,
      :stage_arn,
      :user_id,
      :attributes,
      :ingest_protocol,
      :insecure_ingest,
      :redundant_ingest,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_control_allow_origin
    #   <p>See <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/Access-Control-Allow-Origin">Access-Control-Allow-Origin</a> in the MDN Web Docs.</p>
    #   @return [String]
    # @!attribute access_control_expose_headers
    #   <p>See <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/Access-Control-Expose-Headers">Access-Control-Expose-Headers</a> in the MDN Web Docs.</p>
    #   @return [String]
    # @!attribute cache_control
    #   <p>See <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/Cache-Control">Cache-Control</a> in the MDN Web Docs.</p>
    #   @return [String]
    # @!attribute content_security_policy
    #   <p>See <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/Content-Security-Policy">Content-Security-Policy</a> in the MDN Web Docs.</p>
    #   @return [String]
    # @!attribute strict_transport_security
    #   <p>See <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/Strict-Transport-Security">Strict-Transport-Security</a> in the MDN Web Docs.</p>
    #   @return [String]
    # @!attribute x_content_type_options
    #   <p>See <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/X-Content-Type-Options">X-Content-Type-Options</a> in the MDN Web Docs.</p>
    #   @return [String]
    # @!attribute x_frame_options
    #   <p>See <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/X-Frame-Options">X-Frame-Options</a> in the MDN Web Docs.</p>
    #   @return [String]
    # @!attribute ingest_configuration
    #   <p>The IngestConfiguration that was created.</p>
    #   @return [Types::IngestConfiguration]
    class CreateIngestConfigurationResponse < Struct.new(
      nil,
      :access_control_allow_origin,
      :access_control_expose_headers,
      :cache_control,
      :content_security_policy,
      :strict_transport_security,
      :x_content_type_options,
      :x_frame_options,
      :ingest_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stage_arn
    #   <p>ARN of the stage to which this token is scoped.</p>
    #   @return [String]
    # @!attribute duration
    #   <p>Duration (in minutes), after which the token expires. Default: 720 (12 hours).</p>
    #   @return [Integer]
    # @!attribute user_id
    #   <p>Name that can be specified to help identify the token. This can be any UTF-8 encoded text. <i>This field is exposed to all stage participants and should not be used for personally identifying, confidential, or sensitive information.</i> </p>
    #   @return [String]
    # @!attribute attributes
    #   <p>Application-provided attributes to encode into the token and attach to a stage. Map keys and values can contain UTF-8 encoded text. The maximum length of this field is 1 KB total. <i>This field is exposed to all stage participants and should not be used for personally identifying, confidential, or sensitive information.</i> </p>
    #   @return [Hash<String, String>]
    # @!attribute capabilities
    #   <p>Set of capabilities that the user is allowed to perform in the stage. Default: <code>PUBLISH, SUBSCRIBE</code>.</p>
    #   @return [Array<String>]
    class CreateParticipantTokenInput < Struct.new(
      nil,
      :stage_arn,
      :duration,
      :user_id,
      :attributes,
      :capabilities,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute participant_token
    #   <p>The participant token that was created.</p>
    #   @return [Types::ParticipantToken]
    class CreateParticipantTokenOutput < Struct.new(
      nil,
      :participant_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Optional name that can be specified for the stage being created.</p>
    #   @return [String]
    # @!attribute participant_token_configurations
    #   <p>Array of participant token configuration objects to attach to the new stage.</p>
    #   @return [Array<Types::ParticipantTokenConfiguration>]
    # @!attribute tags
    #   <p>Tags attached to the resource. Array of maps, each of the form <code>string:string (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging AWS Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no constraints on tags beyond what is documented there. </p>
    #   @return [Hash<String, String>]
    # @!attribute auto_participant_recording_configuration
    #   <p>Configuration object for individual participant recording, to attach to the new stage.</p>
    #   @return [Types::AutoParticipantRecordingConfiguration]
    class CreateStageInput < Struct.new(
      nil,
      :name,
      :participant_token_configurations,
      :tags,
      :auto_participant_recording_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stage
    #   <p>The stage that was created.</p>
    #   @return [Types::Stage]
    # @!attribute participant_tokens
    #   <p>Participant tokens attached to the stage. These correspond to the <code>participants</code> in the request.</p>
    #   @return [Array<Types::ParticipantToken>]
    class CreateStageOutput < Struct.new(
      nil,
      :stage,
      :participant_tokens,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Storage configuration name. The value does not need to be unique.</p>
    #   @return [String]
    # @!attribute s3
    #   <p>A complex type that contains a storage configuration for where recorded video will be stored.</p>
    #   @return [Types::S3StorageConfiguration]
    # @!attribute tags
    #   <p>Tags attached to the resource. Array of maps, each of the form <code>string:string (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging AWS Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no constraints on tags beyond what is documented there.</p>
    #   @return [Hash<String, String>]
    class CreateStorageConfigurationRequest < Struct.new(
      nil,
      :name,
      :s3,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute storage_configuration
    #   <p>The StorageConfiguration that was created.</p>
    #   @return [Types::StorageConfiguration]
    class CreateStorageConfigurationResponse < Struct.new(
      nil,
      :storage_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>ARN of the EncoderConfiguration.</p>
    #   @return [String]
    class DeleteEncoderConfigurationRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteEncoderConfigurationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>ARN of the IngestConfiguration.</p>
    #   @return [String]
    # @!attribute force
    #   <p>Optional field to force deletion of the IngestConfiguration. If this is set to <code>true</code> when a participant is actively publishing, the participant is disconnected from the stage, followed by deletion of the IngestConfiguration. Default: <code>false</code>.</p>
    #   @return [Boolean]
    class DeleteIngestConfigurationRequest < Struct.new(
      nil,
      :arn,
      :force,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteIngestConfigurationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>ARN of the public key to be deleted.</p>
    #   @return [String]
    class DeletePublicKeyRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeletePublicKeyResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>ARN of the stage to be deleted.</p>
    #   @return [String]
    class DeleteStageInput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteStageOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>ARN of the storage configuration to be deleted.</p>
    #   @return [String]
    class DeleteStorageConfigurationRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteStorageConfigurationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object specifying the status of a Destination.</p>
    # @!attribute id
    #   <p>Unique identifier for this destination, assigned by IVS.</p>
    #   @return [String]
    # @!attribute state
    #   <p>State of the Composition Destination.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>UTC time of the destination start. This is an ISO 8601 timestamp; <i>note that this is returned as a string</i>.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>UTC time of the destination end. This is an ISO 8601 timestamp; <i>note that this is returned as a string</i>.</p>
    #   @return [Time]
    # @!attribute configuration
    #   <p>Configuration used to create this destination.</p>
    #   @return [Types::DestinationConfiguration]
    # @!attribute detail
    #   <p>Optional details regarding the status of the destination.</p>
    #   @return [Types::DestinationDetail]
    class Destination < Struct.new(
      nil,
      :id,
      :state,
      :start_time,
      :end_time,
      :configuration,
      :detail,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Complex data type that defines destination-configuration objects.</p>
    # @!attribute name
    #   <p>Name that can be specified to help identify the destination.</p>
    #   @return [String]
    # @!attribute channel
    #   <p>An IVS channel to be used for broadcasting, for server-side composition. Either a <code>channel</code> or an <code>s3</code> must be specified. </p>
    #   @return [Types::ChannelDestinationConfiguration]
    # @!attribute s3
    #   <p>An S3 storage configuration to be used for recording video data. Either a <code>channel</code> or an <code>s3</code> must be specified.</p>
    #   @return [Types::S3DestinationConfiguration]
    class DestinationConfiguration < Struct.new(
      nil,
      :name,
      :channel,
      :s3,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Complex data type that defines destination-detail objects.</p>
    # @!attribute s3
    #   <p>An S3 detail object to return information about the S3 destination.</p>
    #   @return [Types::S3Detail]
    class DestinationDetail < Struct.new(
      nil,
      :s3,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a Destination.</p>
    # @!attribute id
    #   <p>Unique identifier for this destination, assigned by IVS.</p>
    #   @return [String]
    # @!attribute state
    #   <p>State of the Composition Destination.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>UTC time of the destination start. This is an ISO 8601 timestamp; <i>note that this is returned as a string</i>.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>UTC time of the destination end. This is an ISO 8601 timestamp; <i>note that this is returned as a string</i>.</p>
    #   @return [Time]
    class DestinationSummary < Struct.new(
      nil,
      :id,
      :state,
      :start_time,
      :end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stage_arn
    #   <p>ARN of the stage to which the participant is attached.</p>
    #   @return [String]
    # @!attribute participant_id
    #   <p>Identifier of the participant to be disconnected. IVS assigns this; it is returned by <a>CreateParticipantToken</a> (for streams using WebRTC ingest) or <a>CreateIngestConfiguration</a> (for streams using RTMP ingest).</p>
    #   @return [String]
    # @!attribute reason
    #   <p>Description of why this participant is being disconnected.</p>
    #   @return [String]
    class DisconnectParticipantInput < Struct.new(
      nil,
      :stage_arn,
      :participant_id,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DisconnectParticipantOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Settings for transcoding.</p>
    # @!attribute arn
    #   <p>ARN of the EncoderConfiguration resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Optional name to identify the resource.</p>
    #   @return [String]
    # @!attribute video
    #   <p>Video configuration. Default: video resolution 1280x720, bitrate 2500 kbps, 30 fps</p>
    #   @return [Types::Video]
    # @!attribute tags
    #   <p>Tags attached to the resource. Array of maps, each of the form <code>string:string (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging AWS Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no constraints on tags beyond what is documented there.</p>
    #   @return [Hash<String, String>]
    class EncoderConfiguration < Struct.new(
      nil,
      :arn,
      :name,
      :video,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about an EncoderConfiguration.</p>
    # @!attribute arn
    #   <p>ARN of the EncoderConfiguration resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Optional name to identify the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags attached to the resource. Array of maps, each of the form <code>string:string (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging AWS Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no constraints on tags beyond what is documented there.</p>
    #   @return [Hash<String, String>]
    class EncoderConfigurationSummary < Struct.new(
      nil,
      :arn,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An occurrence during a stage session.</p>
    # @!attribute name
    #   <p>The name of the event.</p>
    #   @return [String]
    # @!attribute participant_id
    #   <p>Unique identifier for the participant who triggered the event. This is assigned by IVS.</p>
    #   @return [String]
    # @!attribute event_time
    #   <p>ISO 8601 timestamp (returned as a string) for when the event occurred.</p>
    #   @return [Time]
    # @!attribute remote_participant_id
    #   <p>Unique identifier for the remote participant. For a subscribe event, this is the publisher. For a publish or join event, this is null. This is assigned by IVS.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>If the event is an error event, the error code is provided to give insight into the specific error that occurred. If the event is not an error event, this field is null.</p> <ul> <li> <p> <code>B_FRAME_PRESENT</code> — The participant's stream includes B-frames. For details, see <a href="https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/rt-rtmp-publishing.html"> IVS RTMP Publishing</a>.</p> </li> <li> <p> <code>BITRATE_EXCEEDED</code> — The participant exceeded the maximum supported bitrate. For details, see <a href="https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/service-quotas.html"> Service Quotas</a>.</p> </li> <li> <p> <code>INSUFFICIENT_CAPABILITIES</code> — The participant tried to take an action that the participant’s token is not allowed to do. For details on participant capabilities, see the <code>capabilities</code> field in <a>CreateParticipantToken</a>.</p> </li> <li> <p> <code>INTERNAL_SERVER_EXCEPTION</code> — The participant failed to publish to the stage due to an internal server error.</p> </li> <li> <p> <code>INVALID_AUDIO_CODEC</code> — The participant is using an invalid audio codec. For details, see <a href="https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/rt-stream-ingest.html"> Stream Ingest</a>.</p> </li> <li> <p> <code>INVALID_INPUT</code> — The participant is using an invalid input stream.</p> </li> <li> <p> <code>INVALID_PROTOCOL</code> — The participant's IngestConfiguration resource is configured for RTMPS but they tried streaming with RTMP. For details, see <a href="https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/rt-rtmp-publishing.html"> IVS RTMP Publishing</a>.</p> </li> <li> <p> <code>INVALID_STREAM_KEY</code> — The participant is using an invalid stream key. For details, see <a href="https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/rt-rtmp-publishing.html"> IVS RTMP Publishing</a>.</p> </li> <li> <p> <code>INVALID_VIDEO_CODEC</code> — The participant is using an invalid video codec. For details, see <a href="https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/rt-stream-ingest.html"> Stream Ingest</a>.</p> </li> <li> <p> <code>PUBLISHER_NOT_FOUND</code> — The participant tried to subscribe to a publisher that doesn’t exist.</p> </li> <li> <p> <code>QUOTA_EXCEEDED</code> — The number of participants who want to publish/subscribe to a stage exceeds the quota. For details, see <a href="https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/service-quotas.html"> Service Quotas</a>.</p> </li> <li> <p> <code>RESOLUTION_EXCEEDED</code> — The participant exceeded the maximum supported resolution. For details, see <a href="https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/service-quotas.html"> Service Quotas</a>.</p> </li> <li> <p> <code>REUSE_OF_STREAM_KEY</code> — The participant tried to use a stream key that is associated with another active stage session.</p> </li> <li> <p> <code>STREAM_DURATION_EXCEEDED</code> — The participant exceeded the maximum allowed stream duration. For details, see <a href="https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/service-quotas.html"> Service Quotas</a>.</p> </li> </ul>
    #   @return [String]
    # @!attribute destination_stage_arn
    #   <p>ARN of the stage where the participant is replicated. Applicable only if the event name is <code>REPLICATION_STARTED</code> or <code>REPLICATION_STOPPED</code>.</p>
    #   @return [String]
    # @!attribute destination_session_id
    #   <p>ID of the session within the destination stage. Applicable only if the event name is <code>REPLICATION_STARTED</code> or <code>REPLICATION_STOPPED</code>.</p>
    #   @return [String]
    # @!attribute replica
    #   <p>If true, this indicates the <code>participantId</code> is a replicated participant. If this is a subscribe event, then this flag refers to <code>remoteParticipantId</code>. Default: <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute previous_token
    #   <p>Source participant token for <code>TOKEN_EXCHANGED</code> event.</p>
    #   @return [Types::ExchangedParticipantToken]
    # @!attribute new_token
    #   <p>Participant token created during <code>TOKEN_EXCHANGED</code> event.</p>
    #   @return [Types::ExchangedParticipantToken]
    class Event < Struct.new(
      nil,
      :name,
      :participant_id,
      :event_time,
      :remote_participant_id,
      :error_code,
      :destination_stage_arn,
      :destination_session_id,
      :replica,
      :previous_token,
      :new_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:replica] = false unless options.key?(:replica)
        super
      end
    end

    # <p>Object specifying an exchanged participant token in a stage, created when an original participant token is updated.</p> <p> <b>Important</b>: Treat tokens as opaque; i.e., do not build functionality based on token contents. The format of tokens could change in the future.</p>
    # @!attribute capabilities
    #   <p>Set of capabilities that the user is allowed to perform in the stage.</p>
    #   @return [Array<String>]
    # @!attribute attributes
    #   <p>Application-provided attributes to encode into the token and attach to a stage. Map keys and values can contain UTF-8 encoded text. The maximum length of this field is 1 KB total. <i>This field is exposed to all stage participants and should not be used for personally identifying, confidential, or sensitive information.</i> </p>
    #   @return [Hash<String, String>]
    # @!attribute user_id
    #   <p>Customer-assigned name to help identify the token; this can be used to link a participant to a user in the customer’s own systems. This can be any UTF-8 encoded text. <i>This field is exposed to all stage participants and should not be used for personally identifying, confidential, or sensitive information.</i> </p>
    #   @return [String]
    # @!attribute expiration_time
    #   <p>ISO 8601 timestamp (returned as a string) for when this token expires.</p>
    #   @return [Time]
    class ExchangedParticipantToken < Struct.new(
      nil,
      :capabilities,
      :attributes,
      :user_id,
      :expiration_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>ARN of the Composition resource.</p>
    #   @return [String]
    class GetCompositionRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute composition
    #   <p>The Composition that was returned.</p>
    #   @return [Types::Composition]
    class GetCompositionResponse < Struct.new(
      nil,
      :composition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>ARN of the EncoderConfiguration resource.</p>
    #   @return [String]
    class GetEncoderConfigurationRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute encoder_configuration
    #   <p>The EncoderConfiguration that was returned.</p>
    #   @return [Types::EncoderConfiguration]
    class GetEncoderConfigurationResponse < Struct.new(
      nil,
      :encoder_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>ARN of the ingest for which the information is to be retrieved.</p>
    #   @return [String]
    class GetIngestConfigurationRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ingest_configuration
    #   <p>The IngestConfiguration that was returned.</p>
    #   @return [Types::IngestConfiguration]
    class GetIngestConfigurationResponse < Struct.new(
      nil,
      :ingest_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stage_arn
    #   <p>Stage ARN.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>ID of a session within the stage.</p>
    #   @return [String]
    # @!attribute participant_id
    #   <p>Unique identifier for the participant. This is assigned by IVS and returned by <a>CreateParticipantToken</a>.</p>
    #   @return [String]
    class GetParticipantRequest < Struct.new(
      nil,
      :stage_arn,
      :session_id,
      :participant_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute participant
    #   <p>The participant that is returned.</p>
    #   @return [Types::Participant]
    class GetParticipantResponse < Struct.new(
      nil,
      :participant,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>ARN of the public key for which the information is to be retrieved.</p>
    #   @return [String]
    class GetPublicKeyRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute public_key
    #   <p>The public key that is returned.</p>
    #   @return [Types::PublicKey]
    class GetPublicKeyResponse < Struct.new(
      nil,
      :public_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>ARN of the stage for which the information is to be retrieved.</p>
    #   @return [String]
    class GetStageInput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stage
    #   <p>The stage that is returned.</p>
    #   @return [Types::Stage]
    class GetStageOutput < Struct.new(
      nil,
      :stage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stage_arn
    #   <p>ARN of the stage for which the information is to be retrieved.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>ID of a session within the stage.</p>
    #   @return [String]
    class GetStageSessionRequest < Struct.new(
      nil,
      :stage_arn,
      :session_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stage_session
    #   <p>The stage session that is returned.</p>
    #   @return [Types::StageSession]
    class GetStageSessionResponse < Struct.new(
      nil,
      :stage_session,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>ARN of the storage configuration to be retrieved.</p>
    #   @return [String]
    class GetStorageConfigurationRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute storage_configuration
    #   <p>The StorageConfiguration that was returned.</p>
    #   @return [Types::StorageConfiguration]
    class GetStorageConfigurationResponse < Struct.new(
      nil,
      :storage_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration information specific to Grid layout, for server-side composition. See "Layouts" in <a href="https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/server-side-composition.html">Server-Side Composition</a>.</p>
    # @!attribute featured_participant_attribute
    #   <p>This attribute name identifies the featured slot. A participant with this attribute set to <code>"true"</code> (as a string value) in <a>ParticipantTokenConfiguration</a> is placed in the featured slot. Default: <code>""</code> (no featured participant).</p>
    #   @return [String]
    # @!attribute omit_stopped_video
    #   <p>Determines whether to omit participants with stopped video in the composition. Default: <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute video_aspect_ratio
    #   <p>Sets the non-featured participant display mode, to control the aspect ratio of video tiles. <code>VIDEO</code> is 16:9, <code>SQUARE</code> is 1:1, and <code>PORTRAIT</code> is 3:4. Default: <code>VIDEO</code>.</p>
    #   @return [String]
    # @!attribute video_fill_mode
    #   <p>Defines how video content fits within the participant tile: <code>FILL</code> (stretched), <code>COVER</code> (cropped), or <code>CONTAIN</code> (letterboxed). When not set, <code>videoFillMode</code> defaults to <code>COVER</code> fill mode for participants in the grid and to <code>CONTAIN</code> fill mode for featured participants.</p>
    #   @return [String]
    # @!attribute grid_gap
    #   <p>Specifies the spacing between participant tiles in pixels. Default: <code>2</code>.</p>
    #   @return [Integer]
    # @!attribute participant_order_attribute
    #   <p>Attribute name in <a>ParticipantTokenConfiguration</a> identifying the participant ordering key. Participants with <code>participantOrderAttribute</code> set to <code>""</code> or not specified are ordered based on their arrival time into the stage.</p>
    #   @return [String]
    class GridConfiguration < Struct.new(
      nil,
      :featured_participant_attribute,
      :omit_stopped_video,
      :video_aspect_ratio,
      :video_fill_mode,
      :grid_gap,
      :participant_order_attribute,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:omit_stopped_video] = false unless options.key?(:omit_stopped_video)
        options[:grid_gap] = 0 unless options.key?(:grid_gap)
        super
      end
    end

    # @!attribute public_key_material
    #   <p>The content of the public key to be imported.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the public key to be imported.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags attached to the resource. Array of maps, each of the form <code>string:string (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging AWS Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no constraints on tags beyond what is documented there.</p>
    #   @return [Hash<String, String>]
    class ImportPublicKeyRequest < Struct.new(
      nil,
      :public_key_material,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute public_key
    #   <p>The public key that was imported.</p>
    #   @return [Types::PublicKey]
    class ImportPublicKeyResponse < Struct.new(
      nil,
      :public_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object specifying an ingest configuration.</p>
    # @!attribute name
    #   <p>Ingest name</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Ingest configuration ARN.</p>
    #   @return [String]
    # @!attribute ingest_protocol
    #   <p>Type of ingest protocol that the user employs for broadcasting.</p>
    #   @return [String]
    # @!attribute stream_key
    #   <p>Ingest-key value for the RTMP(S) protocol.</p>
    #   @return [String]
    # @!attribute stage_arn
    #   <p>ARN of the stage with which the IngestConfiguration is associated.</p>
    #   @return [String]
    # @!attribute participant_id
    #   <p>ID of the participant within the stage.</p>
    #   @return [String]
    # @!attribute state
    #   <p>State of the ingest configuration. It is <code>ACTIVE</code> if a publisher currently is publishing to the stage associated with the ingest configuration.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>Customer-assigned name to help identify the participant using the IngestConfiguration; this can be used to link a participant to a user in the customer’s own systems. This can be any UTF-8 encoded text. <i>This field is exposed to all stage participants and should not be used for personally identifying, confidential, or sensitive information.</i> </p>
    #   @return [String]
    # @!attribute redundant_ingest
    #   <p>Indicates whether redundant ingest is enabled for the ingest configuration.</p>
    #   @return [Boolean]
    # @!attribute redundant_ingest_credentials
    #   <p>A list of redundant ingest credentials, present only when <code>redundantIngest</code> is set to <code>true</code>. See <a href="https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/rt-rtmp-publishing.html#redundant-ingest">Redundant Ingest</a> in <i>IVS RTMP Publishing</i> for details.</p>
    #   @return [Array<Types::RedundantIngestCredential>]
    # @!attribute attributes
    #   <p>Application-provided attributes to to store in the IngestConfiguration and attach to a stage. Map keys and values can contain UTF-8 encoded text. The maximum length of this field is 1 KB total. <i>This field is exposed to all stage participants and should not be used for personally identifying, confidential, or sensitive information.</i> </p>
    #   @return [Hash<String, String>]
    # @!attribute tags
    #   <p>Tags attached to the resource. Array of maps, each of the form <code>string:string (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging AWS Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no constraints on tags beyond what is documented there.</p>
    #   @return [Hash<String, String>]
    class IngestConfiguration < Struct.new(
      nil,
      :name,
      :arn,
      :ingest_protocol,
      :stream_key,
      :stage_arn,
      :participant_id,
      :state,
      :user_id,
      :redundant_ingest,
      :redundant_ingest_credentials,
      :attributes,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:redundant_ingest] = false unless options.key?(:redundant_ingest)
        super
      end
    end

    # <p>Summary information about an IngestConfiguration.</p>
    # @!attribute name
    #   <p>Ingest name.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Ingest configuration ARN.</p>
    #   @return [String]
    # @!attribute ingest_protocol
    #   <p>Type of ingest protocol that the user employs for broadcasting.</p>
    #   @return [String]
    # @!attribute stage_arn
    #   <p>ARN of the stage with which the IngestConfiguration is associated.</p>
    #   @return [String]
    # @!attribute participant_id
    #   <p>ID of the participant within the stage.</p>
    #   @return [String]
    # @!attribute state
    #   <p>State of the ingest configuration. It is <code>ACTIVE</code> if a publisher currently is publishing to the stage associated with the ingest configuration.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>Customer-assigned name to help identify the participant using the IngestConfiguration; this can be used to link a participant to a user in the customer’s own systems. This can be any UTF-8 encoded text. <i>This field is exposed to all stage participants and should not be used for personally identifying, confidential, or sensitive information.</i> </p>
    #   @return [String]
    # @!attribute redundant_ingest
    #   <p>Indicates whether redundant ingest is enabled for the ingest configuration.</p>
    #   @return [Boolean]
    class IngestConfigurationSummary < Struct.new(
      nil,
      :name,
      :arn,
      :ingest_protocol,
      :stage_arn,
      :participant_id,
      :state,
      :user_id,
      :redundant_ingest,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:redundant_ingest] = false unless options.key?(:redundant_ingest)
        super
      end
    end

    # <p>Unexpected error during processing of request.</p>
    # @!attribute access_control_allow_origin
    #   <p/>
    #   @return [String]
    # @!attribute access_control_expose_headers
    #   <p/>
    #   @return [String]
    # @!attribute cache_control
    #   <p/>
    #   @return [String]
    # @!attribute content_security_policy
    #   <p/>
    #   @return [String]
    # @!attribute strict_transport_security
    #   <p/>
    #   @return [String]
    # @!attribute x_content_type_options
    #   <p/>
    #   @return [String]
    # @!attribute x_frame_options
    #   <p/>
    #   @return [String]
    # @!attribute x_amzn_error_type
    #   <p/>
    #   @return [String]
    # @!attribute exception_message
    #   <p>Unexpected error during processing of request.</p>
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :access_control_allow_origin,
      :access_control_expose_headers,
      :cache_control,
      :content_security_policy,
      :strict_transport_security,
      :x_content_type_options,
      :x_frame_options,
      :x_amzn_error_type,
      :exception_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration information of supported layouts for server-side composition.</p>
    # @!attribute grid
    #   <p>Configuration related to grid layout. Default: Grid layout.</p>
    #   @return [Types::GridConfiguration]
    # @!attribute pip
    #   <p>Configuration related to PiP layout.</p>
    #   @return [Types::PipConfiguration]
    class LayoutConfiguration < Struct.new(
      nil,
      :grid,
      :pip,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filter_by_stage_arn
    #   <p>Filters the Composition list to match the specified Stage ARN.</p>
    #   @return [String]
    # @!attribute filter_by_encoder_configuration_arn
    #   <p>Filters the Composition list to match the specified EncoderConfiguration attached to at least one of its output.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The first Composition to retrieve. This is used for pagination; see the <code>nextToken</code> response field.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to return. Default: 100.</p>
    #   @return [Integer]
    class ListCompositionsRequest < Struct.new(
      nil,
      :filter_by_stage_arn,
      :filter_by_encoder_configuration_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute compositions
    #   <p>List of the matching Compositions (summary information only).</p>
    #   @return [Array<Types::CompositionSummary>]
    # @!attribute next_token
    #   <p>If there are more compositions than <code>maxResults</code>, use <code>nextToken</code> in the request to get the next set.</p>
    #   @return [String]
    class ListCompositionsResponse < Struct.new(
      nil,
      :compositions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The first encoder configuration to retrieve. This is used for pagination; see the <code>nextToken</code> response field.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to return. Default: 100.</p>
    #   @return [Integer]
    class ListEncoderConfigurationsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute encoder_configurations
    #   <p>List of the matching EncoderConfigurations (summary information only).</p>
    #   @return [Array<Types::EncoderConfigurationSummary>]
    # @!attribute next_token
    #   <p>If there are more encoder configurations than <code>maxResults</code>, use <code>nextToken</code> in the request to get the next set.</p>
    #   @return [String]
    class ListEncoderConfigurationsResponse < Struct.new(
      nil,
      :encoder_configurations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filter_by_stage_arn
    #   <p>Filters the response list to match the specified stage ARN. Only one filter (by stage ARN or by state) can be used at a time.</p>
    #   @return [String]
    # @!attribute filter_by_state
    #   <p>Filters the response list to match the specified state. Only one filter (by stage ARN or by state) can be used at a time.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The first IngestConfiguration to retrieve. This is used for pagination; see the <code>nextToken</code> response field.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to return. Default: 50.</p>
    #   @return [Integer]
    class ListIngestConfigurationsRequest < Struct.new(
      nil,
      :filter_by_stage_arn,
      :filter_by_state,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ingest_configurations
    #   <p>List of the matching ingest configurations (summary information only).</p>
    #   @return [Array<Types::IngestConfigurationSummary>]
    # @!attribute next_token
    #   <p>If there are more IngestConfigurations than <code>maxResults</code>, use <code>nextToken</code> in the request to get the next set.</p>
    #   @return [String]
    class ListIngestConfigurationsResponse < Struct.new(
      nil,
      :ingest_configurations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stage_arn
    #   <p>Stage ARN.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>ID of a session within the stage.</p>
    #   @return [String]
    # @!attribute participant_id
    #   <p>Unique identifier for this participant. This is assigned by IVS and returned by <a>CreateParticipantToken</a>.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The first participant event to retrieve. This is used for pagination; see the <code>nextToken</code> response field.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to return. Default: 50.</p>
    #   @return [Integer]
    class ListParticipantEventsRequest < Struct.new(
      nil,
      :stage_arn,
      :session_id,
      :participant_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute events
    #   <p>List of the matching events.</p>
    #   @return [Array<Types::Event>]
    # @!attribute next_token
    #   <p>If there are more events than <code>maxResults</code>, use <code>nextToken</code> in the request to get the next set. </p>
    #   @return [String]
    class ListParticipantEventsResponse < Struct.new(
      nil,
      :events,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_stage_arn
    #   <p>ARN of the stage where the participant is publishing.</p>
    #   @return [String]
    # @!attribute participant_id
    #   <p>Participant ID of the publisher that has been replicated. This is assigned by IVS and returned by <a>CreateParticipantToken</a> or the <code>jti</code> (JWT ID) used to <a href="https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/getting-started-distribute-tokens.html#getting-started-distribute-tokens-self-signed">create a self signed token</a>.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The first participant to retrieve. This is used for pagination; see the <code>nextToken</code> response field.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to return. Default: 50.</p>
    #   @return [Integer]
    class ListParticipantReplicasRequest < Struct.new(
      nil,
      :source_stage_arn,
      :participant_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute replicas
    #   <p>List of all participant replicas.</p>
    #   @return [Array<Types::ParticipantReplica>]
    # @!attribute next_token
    #   <p>If there are more participants than <code>maxResults</code>, use <code>nextToken</code> in the request to get the next set.</p>
    #   @return [String]
    class ListParticipantReplicasResponse < Struct.new(
      nil,
      :replicas,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stage_arn
    #   <p>Stage ARN.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>ID of the session within the stage.</p>
    #   @return [String]
    # @!attribute filter_by_user_id
    #   <p>Filters the response list to match the specified user ID. Only one of <code>filterByUserId</code>, <code>filterByPublished</code>, <code>filterByState</code>, or <code>filterByRecordingState</code> can be provided per request. A <code>userId</code> is a customer-assigned name to help identify the token; this can be used to link a participant to a user in the customer’s own systems.</p>
    #   @return [String]
    # @!attribute filter_by_published
    #   <p>Filters the response list to only show participants who published during the stage session. Only one of <code>filterByUserId</code>, <code>filterByPublished</code>, <code>filterByState</code>, or <code>filterByRecordingState</code> can be provided per request.</p>
    #   @return [Boolean]
    # @!attribute filter_by_state
    #   <p>Filters the response list to only show participants in the specified state. Only one of <code>filterByUserId</code>, <code>filterByPublished</code>, <code>filterByState</code>, or <code>filterByRecordingState</code> can be provided per request.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The first participant to retrieve. This is used for pagination; see the <code>nextToken</code> response field.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to return. Default: 50.</p>
    #   @return [Integer]
    # @!attribute filter_by_recording_state
    #   <p>Filters the response list to only show participants with the specified recording state. Only one of <code>filterByUserId</code>, <code>filterByPublished</code>, <code>filterByState</code>, or <code>filterByRecordingState</code> can be provided per request.</p>
    #   @return [String]
    class ListParticipantsRequest < Struct.new(
      nil,
      :stage_arn,
      :session_id,
      :filter_by_user_id,
      :filter_by_published,
      :filter_by_state,
      :next_token,
      :max_results,
      :filter_by_recording_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute participants
    #   <p>List of the matching participants (summary information only).</p>
    #   @return [Array<Types::ParticipantSummary>]
    # @!attribute next_token
    #   <p>If there are more participants than <code>maxResults</code>, use <code>nextToken</code> in the request to get the next set.</p>
    #   @return [String]
    class ListParticipantsResponse < Struct.new(
      nil,
      :participants,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The first public key to retrieve. This is used for pagination; see the <code>nextToken</code> response field.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to return. Default: 50.</p>
    #   @return [Integer]
    class ListPublicKeysRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute public_keys
    #   <p>List of the matching public keys (summary information only).</p>
    #   @return [Array<Types::PublicKeySummary>]
    # @!attribute next_token
    #   <p>If there are more public keys than <code>maxResults</code>, use <code>nextToken</code> in the request to get the next set.</p>
    #   @return [String]
    class ListPublicKeysResponse < Struct.new(
      nil,
      :public_keys,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stage_arn
    #   <p>Stage ARN.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The first stage session to retrieve. This is used for pagination; see the <code>nextToken</code> response field.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to return. Default: 50.</p>
    #   @return [Integer]
    class ListStageSessionsRequest < Struct.new(
      nil,
      :stage_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stage_sessions
    #   <p>List of matching stage sessions.</p>
    #   @return [Array<Types::StageSessionSummary>]
    # @!attribute next_token
    #   <p>If there are more stage sessions than <code>maxResults</code>, use <code>nextToken</code> in the request to get the next set.</p>
    #   @return [String]
    class ListStageSessionsResponse < Struct.new(
      nil,
      :stage_sessions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The first stage to retrieve. This is used for pagination; see the <code>nextToken</code> response field.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to return. Default: 50.</p>
    #   @return [Integer]
    class ListStagesInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stages
    #   <p>List of the matching stages (summary information only).</p>
    #   @return [Array<Types::StageSummary>]
    # @!attribute next_token
    #   <p>If there are more stages than <code>maxResults</code>, use <code>nextToken</code> in the request to get the next set.</p>
    #   @return [String]
    class ListStagesOutput < Struct.new(
      nil,
      :stages,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The first storage configuration to retrieve. This is used for pagination; see the <code>nextToken</code> response field.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of storage configurations to return. Default: your service quota or 100, whichever is smaller.</p>
    #   @return [Integer]
    class ListStorageConfigurationsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute storage_configurations
    #   <p>List of the matching storage configurations.</p>
    #   @return [Array<Types::StorageConfigurationSummary>]
    # @!attribute next_token
    #   <p>If there are more storage configurations than <code>maxResults</code>, use <code>nextToken</code> in the request to get the next set.</p>
    #   @return [String]
    class ListStorageConfigurationsResponse < Struct.new(
      nil,
      :storage_configurations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource to be retrieved. The ARN must be URL-encoded.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>Tags attached to the resource. Array of maps, each of the form <code>string:string (key:value)</code>.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object describing a participant that has joined a stage.</p>
    # @!attribute participant_id
    #   <p>Unique identifier for this participant, assigned by IVS.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>Customer-assigned name to help identify the token; this can be used to link a participant to a user in the customer’s own systems. This can be any UTF-8 encoded text. <i>This field is exposed to all stage participants and should not be used for personally identifying, confidential, or sensitive information</i>.</p>
    #   @return [String]
    # @!attribute state
    #   <p>Whether the participant is connected to or disconnected from the stage.</p>
    #   @return [String]
    # @!attribute first_join_time
    #   <p>ISO 8601 timestamp (returned as a string) when the participant first joined the stage session.</p>
    #   @return [Time]
    # @!attribute attributes
    #   <p>Application-provided attributes to encode into the token and attach to a stage. Map keys and values can contain UTF-8 encoded text. The maximum length of this field is 1 KB total. <i>This field is exposed to all stage participants and should not be used for personally identifying, confidential, or sensitive information</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute published
    #   <p>Whether the participant ever published to the stage session.</p>
    #   @return [Boolean]
    # @!attribute isp_name
    #   <p>The participant’s Internet Service Provider.</p>
    #   @return [String]
    # @!attribute os_name
    #   <p>The participant’s operating system.</p>
    #   @return [String]
    # @!attribute os_version
    #   <p>The participant’s operating system version.</p>
    #   @return [String]
    # @!attribute browser_name
    #   <p>The participant’s browser.</p>
    #   @return [String]
    # @!attribute browser_version
    #   <p>The participant’s browser version.</p>
    #   @return [String]
    # @!attribute sdk_version
    #   <p>The participant’s SDK version.</p>
    #   @return [String]
    # @!attribute recording_s3_bucket_name
    #   <p>Name of the S3 bucket to where the participant is being recorded, if individual participant recording is enabled, or <code>""</code> (empty string), if recording is not enabled.</p>
    #   @return [String]
    # @!attribute recording_s3_prefix
    #   <p>S3 prefix of the S3 bucket where the participant is being recorded, if individual participant recording is enabled, or <code>""</code> (empty string), if recording is not enabled. If individual participant recording merge is enabled, and if a stage publisher disconnects from a stage and then reconnects, IVS tries to record to the same S3 prefix as the previous session. See <a href="/ivs/latest/RealTimeUserGuide/rt-individual-participant-recording.html#ind-part-rec-merge-frag"> Merge Fragmented Individual Participant Recordings</a>.</p>
    #   @return [String]
    # @!attribute recording_state
    #   <p>The participant’s recording state.</p>
    #   @return [String]
    # @!attribute protocol
    #   <p>Type of ingest protocol that the participant employs for broadcasting.</p>
    #   @return [String]
    # @!attribute replication_type
    #   <p>Indicates if the participant has been replicated to another stage or is a replica from another stage. Default: <code>NONE</code>. </p>
    #   @return [String]
    # @!attribute replication_state
    #   <p>The participant's replication state.</p>
    #   @return [String]
    # @!attribute source_stage_arn
    #   <p>Source stage ARN from which this participant is replicated, if <code>replicationType</code> is <code>REPLICA</code>. </p>
    #   @return [String]
    # @!attribute source_session_id
    #   <p>ID of the session within the source stage, if <code>replicationType</code> is <code>REPLICA</code>.</p>
    #   @return [String]
    # @!attribute redundant_ingest
    #   <p>Indicates whether redundant ingest is enabled for the participant.</p>
    #   @return [Boolean]
    # @!attribute ingest_configuration_arn
    #   <p>The participant’s ingest configuration.</p>
    #   @return [String]
    class Participant < Struct.new(
      nil,
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
      :source_session_id,
      :redundant_ingest,
      :ingest_configuration_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:published] = false unless options.key?(:published)
        options[:redundant_ingest] = false unless options.key?(:redundant_ingest)
        super
      end
    end

    # <p>An object representing a configuration of participant HLS recordings for individual participant recording.</p>
    # @!attribute target_segment_duration_seconds
    #   <p>Defines the target duration for recorded segments generated when recording a stage participant. Segments may have durations longer than the specified value when needed to ensure each segment begins with a keyframe. Default: 6.</p>
    #   @return [Integer]
    class ParticipantRecordingHlsConfiguration < Struct.new(
      nil,
      :target_segment_duration_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:target_segment_duration_seconds] = nil unless options.key?(:target_segment_duration_seconds)
        super
      end
    end

    # <p>Information about the replicated destination stage for a participant.</p>
    # @!attribute source_stage_arn
    #   <p>ARN of the stage from which this participant is replicated.</p>
    #   @return [String]
    # @!attribute participant_id
    #   <p>Participant ID of the publisher that will be replicated. This is assigned by IVS and returned by <a>CreateParticipantToken</a> or the <code>jti</code> (JWT ID) used to <a href="https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/getting-started-distribute-tokens.html#getting-started-distribute-tokens-self-signed"> create a self signed token</a>.</p>
    #   @return [String]
    # @!attribute source_session_id
    #   <p>ID of the session within the source stage.</p>
    #   @return [String]
    # @!attribute destination_stage_arn
    #   <p>ARN of the stage where the participant is replicated.</p>
    #   @return [String]
    # @!attribute destination_session_id
    #   <p>ID of the session within the destination stage.</p>
    #   @return [String]
    # @!attribute replication_state
    #   <p>Replica’s current replication state.</p>
    #   @return [String]
    class ParticipantReplica < Struct.new(
      nil,
      :source_stage_arn,
      :participant_id,
      :source_session_id,
      :destination_stage_arn,
      :destination_session_id,
      :replication_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary object describing a participant that has joined a stage.</p>
    # @!attribute participant_id
    #   <p>Unique identifier for this participant, assigned by IVS.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>Customer-assigned name to help identify the token; this can be used to link a participant to a user in the customer’s own systems. This can be any UTF-8 encoded text. <i>This field is exposed to all stage participants and should not be used for personally identifying, confidential, or sensitive information</i>.</p>
    #   @return [String]
    # @!attribute state
    #   <p>Whether the participant is connected to or disconnected from the stage.</p>
    #   @return [String]
    # @!attribute first_join_time
    #   <p>ISO 8601 timestamp (returned as a string) when the participant first joined the stage session.</p>
    #   @return [Time]
    # @!attribute published
    #   <p>Whether the participant ever published to the stage session.</p>
    #   @return [Boolean]
    # @!attribute recording_state
    #   <p>The participant’s recording state.</p>
    #   @return [String]
    # @!attribute replication_type
    #   <p>Indicates if the participant has been replicated to another stage or is a replica from another stage. Default: <code>NONE</code>. </p>
    #   @return [String]
    # @!attribute replication_state
    #   <p>The participant's replication state.</p>
    #   @return [String]
    # @!attribute source_stage_arn
    #   <p>Source stage ARN from which this participant is replicated, if <code>replicationType</code> is <code>REPLICA</code>.</p>
    #   @return [String]
    # @!attribute source_session_id
    #   <p>ID of the session within the source stage, if <code>replicationType</code> is <code>REPLICA</code>.</p>
    #   @return [String]
    # @!attribute redundant_ingest
    #   <p>Indicates whether redundant ingest is enabled for the participant.</p>
    #   @return [Boolean]
    # @!attribute ingest_configuration_arn
    #   <p>The participant’s ingest configuration.</p>
    #   @return [String]
    class ParticipantSummary < Struct.new(
      nil,
      :participant_id,
      :user_id,
      :state,
      :first_join_time,
      :published,
      :recording_state,
      :replication_type,
      :replication_state,
      :source_stage_arn,
      :source_session_id,
      :redundant_ingest,
      :ingest_configuration_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:published] = false unless options.key?(:published)
        options[:redundant_ingest] = false unless options.key?(:redundant_ingest)
        super
      end
    end

    # <p>An object representing a configuration of thumbnails for recorded video from an individual participant.</p>
    # @!attribute target_interval_seconds
    #   <p>The targeted thumbnail-generation interval in seconds. This is configurable only if <code>recordingMode</code> is <code>INTERVAL</code>. Default: 60.</p>
    #   @return [Integer]
    # @!attribute storage
    #   <p>Indicates the format in which thumbnails are recorded. <code>SEQUENTIAL</code> records all generated thumbnails in a serial manner, to the media/thumbnails/high directory. <code>LATEST</code> saves the latest thumbnail in media/latest_thumbnail/high/thumb.jpg and overwrites it at the interval specified by <code>targetIntervalSeconds</code>. You can enable both <code>SEQUENTIAL</code> and <code>LATEST</code>. Default: <code>SEQUENTIAL</code>.</p>
    #   @return [Array<String>]
    # @!attribute recording_mode
    #   <p>Thumbnail recording mode. Default: <code>DISABLED</code>.</p>
    #   @return [String]
    class ParticipantThumbnailConfiguration < Struct.new(
      nil,
      :target_interval_seconds,
      :storage,
      :recording_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object specifying a participant token in a stage.</p> <p> <b>Important</b>: Treat tokens as opaque; i.e., do not build functionality based on token contents. The format of tokens could change in the future.</p>
    # @!attribute participant_id
    #   <p>Unique identifier for this participant token, assigned by IVS.</p>
    #   @return [String]
    # @!attribute token
    #   <p>The issued client token, encrypted.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>Customer-assigned name to help identify the token; this can be used to link a participant to a user in the customer’s own systems. This can be any UTF-8 encoded text. <i>This field is exposed to all stage participants and should not be used for personally identifying, confidential, or sensitive information.</i> </p>
    #   @return [String]
    # @!attribute attributes
    #   <p>Application-provided attributes to encode into the token and attach to a stage. Map keys and values can contain UTF-8 encoded text. The maximum length of this field is 1 KB total. <i>This field is exposed to all stage participants and should not be used for personally identifying, confidential, or sensitive information.</i> </p>
    #   @return [Hash<String, String>]
    # @!attribute duration
    #   <p>Duration (in minutes), after which the participant token expires. Default: 720 (12 hours).</p>
    #   @return [Integer]
    # @!attribute capabilities
    #   <p>Set of capabilities that the user is allowed to perform in the stage.</p>
    #   @return [Array<String>]
    # @!attribute expiration_time
    #   <p>ISO 8601 timestamp (returned as a string) for when this token expires.</p>
    #   @return [Time]
    class ParticipantToken < Struct.new(
      nil,
      :participant_id,
      :token,
      :user_id,
      :attributes,
      :duration,
      :capabilities,
      :expiration_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object specifying a participant token configuration in a stage.</p>
    # @!attribute duration
    #   <p>Duration (in minutes), after which the corresponding participant token expires. Default: 720 (12 hours).</p>
    #   @return [Integer]
    # @!attribute user_id
    #   <p>Customer-assigned name to help identify the token; this can be used to link a participant to a user in the customer’s own systems. This can be any UTF-8 encoded text. <i>This field is exposed to all stage participants and should not be used for personally identifying, confidential, or sensitive information.</i> </p>
    #   @return [String]
    # @!attribute attributes
    #   <p>Application-provided attributes to encode into the corresponding participant token and attach to a stage. Map keys and values can contain UTF-8 encoded text. The maximum length of this field is 1 KB total. <i>This field is exposed to all stage participants and should not be used for personally identifying, confidential, or sensitive information.</i> </p>
    #   @return [Hash<String, String>]
    # @!attribute capabilities
    #   <p>Set of capabilities that the user is allowed to perform in the stage.</p>
    #   @return [Array<String>]
    class ParticipantTokenConfiguration < Struct.new(
      nil,
      :duration,
      :user_id,
      :attributes,
      :capabilities,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Your account is pending verification.</p>
    # @!attribute access_control_allow_origin
    #   <p/>
    #   @return [String]
    # @!attribute access_control_expose_headers
    #   <p/>
    #   @return [String]
    # @!attribute cache_control
    #   <p/>
    #   @return [String]
    # @!attribute content_security_policy
    #   <p/>
    #   @return [String]
    # @!attribute strict_transport_security
    #   <p/>
    #   @return [String]
    # @!attribute x_content_type_options
    #   <p/>
    #   @return [String]
    # @!attribute x_frame_options
    #   <p/>
    #   @return [String]
    # @!attribute x_amzn_error_type
    #   <p/>
    #   @return [String]
    # @!attribute exception_message
    #   <p> Your account is pending verification. </p>
    #   @return [String]
    class PendingVerification < Struct.new(
      nil,
      :access_control_allow_origin,
      :access_control_expose_headers,
      :cache_control,
      :content_security_policy,
      :strict_transport_security,
      :x_content_type_options,
      :x_frame_options,
      :x_amzn_error_type,
      :exception_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration information specific to Picture-in-Picture (PiP) layout, for <a href="https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/server-side-composition.html">server-side composition</a>. </p>
    # @!attribute featured_participant_attribute
    #   <p>This attribute name identifies the featured slot. A participant with this attribute set to <code>"true"</code> (as a string value) in <a>ParticipantTokenConfiguration</a> is placed in the featured slot. Default: <code>""</code> (no featured participant).</p>
    #   @return [String]
    # @!attribute omit_stopped_video
    #   <p>Determines whether to omit participants with stopped video in the composition. Default: <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute video_fill_mode
    #   <p>Defines how video content fits within the participant tile: <code>FILL</code> (stretched), <code>COVER</code> (cropped), or <code>CONTAIN</code> (letterboxed). Default: <code>COVER</code>.</p>
    #   @return [String]
    # @!attribute grid_gap
    #   <p>Specifies the spacing between participant tiles in pixels. Default: <code>0</code>.</p>
    #   @return [Integer]
    # @!attribute pip_participant_attribute
    #   <p>Specifies the participant for the PiP window. A participant with this attribute set to <code>"true"</code> (as a string value) in <a>ParticipantTokenConfiguration</a> is placed in the PiP slot. Default: <code>""</code> (no PiP participant).</p>
    #   @return [String]
    # @!attribute pip_behavior
    #   <p>Defines PiP behavior when all participants have left: <code>STATIC</code> (maintains original position/size) or <code>DYNAMIC</code> (expands to full composition). Default: <code>STATIC</code>.</p>
    #   @return [String]
    # @!attribute pip_offset
    #   <p>Sets the PiP window’s offset position in pixels from the closest edges determined by <code>PipPosition</code>. Default: <code>0</code>.</p>
    #   @return [Integer]
    # @!attribute pip_position
    #   <p>Determines the corner position of the PiP window. Default: <code>BOTTOM_RIGHT</code>.</p>
    #   @return [String]
    # @!attribute pip_width
    #   <p>Specifies the width of the PiP window in pixels. When this is not set explicitly, <code>pipWidth</code>’s value will be based on the size of the composition and the aspect ratio of the participant’s video.</p>
    #   @return [Integer]
    # @!attribute pip_height
    #   <p>Specifies the height of the PiP window in pixels. When this is not set explicitly, <code>pipHeight</code>’s value will be based on the size of the composition and the aspect ratio of the participant’s video.</p>
    #   @return [Integer]
    # @!attribute participant_order_attribute
    #   <p>Attribute name in <a>ParticipantTokenConfiguration</a> identifying the participant ordering key. Participants with <code>participantOrderAttribute</code> set to <code>""</code> or not specified are ordered based on their arrival time into the stage.</p>
    #   @return [String]
    class PipConfiguration < Struct.new(
      nil,
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
      :participant_order_attribute,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:omit_stopped_video] = false unless options.key?(:omit_stopped_video)
        options[:grid_gap] = 0 unless options.key?(:grid_gap)
        options[:pip_offset] = 0 unless options.key?(:pip_offset)
        super
      end
    end

    # <p>Object specifying a public key used to sign stage participant tokens.</p>
    # @!attribute arn
    #   <p>Public key ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Public key name.</p>
    #   @return [String]
    # @!attribute public_key_material
    #   <p>Public key material.</p>
    #   @return [String]
    # @!attribute fingerprint
    #   <p>The public key fingerprint, a short string used to identify or verify the full public key.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags attached to the resource. Array of maps, each of the form <code>string:string (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging AWS Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no constraints on tags beyond what is documented there.</p>
    #   @return [Hash<String, String>]
    class PublicKey < Struct.new(
      nil,
      :arn,
      :name,
      :public_key_material,
      :fingerprint,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a public key.</p>
    # @!attribute arn
    #   <p>Public key ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Public key name.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags attached to the resource. Array of maps, each of the form <code>string:string (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging AWS Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no constraints on tags beyond what is documented there.</p>
    #   @return [Hash<String, String>]
    class PublicKeySummary < Struct.new(
      nil,
      :arn,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing a configuration to record a stage stream.</p>
    # @!attribute hls_configuration
    #   <p>An HLS configuration object to return information about how the recording will be configured.</p>
    #   @return [Types::CompositionRecordingHlsConfiguration]
    # @!attribute format
    #   <p>The recording format for storing a recording in Amazon S3.</p>
    #   @return [String]
    class RecordingConfiguration < Struct.new(
      nil,
      :hls_configuration,
      :format,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing a redundant ingest credential.</p>
    # @!attribute participant_id
    #   <p>ID of the participant within the stage.</p>
    #   @return [String]
    # @!attribute stream_key
    #   <p>Ingest-key value.</p>
    #   @return [String]
    class RedundantIngestCredential < Struct.new(
      nil,
      :participant_id,
      :stream_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request references a resource which does not exist.</p>
    # @!attribute access_control_allow_origin
    #   <p/>
    #   @return [String]
    # @!attribute access_control_expose_headers
    #   <p/>
    #   @return [String]
    # @!attribute cache_control
    #   <p/>
    #   @return [String]
    # @!attribute content_security_policy
    #   <p/>
    #   @return [String]
    # @!attribute strict_transport_security
    #   <p/>
    #   @return [String]
    # @!attribute x_content_type_options
    #   <p/>
    #   @return [String]
    # @!attribute x_frame_options
    #   <p/>
    #   @return [String]
    # @!attribute x_amzn_error_type
    #   <p/>
    #   @return [String]
    # @!attribute exception_message
    #   <p>Request references a resource which does not exist.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :access_control_allow_origin,
      :access_control_expose_headers,
      :cache_control,
      :content_security_policy,
      :strict_transport_security,
      :x_content_type_options,
      :x_frame_options,
      :x_amzn_error_type,
      :exception_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that describes an S3 location where recorded videos will be stored.</p>
    # @!attribute storage_configuration_arn
    #   <p>ARN of the <a>StorageConfiguration</a> where recorded videos will be stored.</p>
    #   @return [String]
    # @!attribute encoder_configuration_arns
    #   <p>ARNs of the <a>EncoderConfiguration</a> resource. The encoder configuration and stage resources must be in the same AWS account and region. </p>
    #   @return [Array<String>]
    # @!attribute recording_configuration
    #   <p>Array of maps, each of the form <code>string:string (key:value)</code>. This is an optional customer specification, currently used only to specify the recording format for storing a recording in Amazon S3.</p>
    #   @return [Types::RecordingConfiguration]
    # @!attribute thumbnail_configurations
    #   <p>A complex type that allows you to enable/disable the recording of thumbnails for a <a>Composition</a> and modify the interval at which thumbnails are generated for the live session.</p>
    #   @return [Array<Types::CompositionThumbnailConfiguration>]
    class S3DestinationConfiguration < Struct.new(
      nil,
      :storage_configuration_arn,
      :encoder_configuration_arns,
      :recording_configuration,
      :thumbnail_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Complex data type that defines S3Detail objects.</p>
    # @!attribute recording_prefix
    #   <p>The S3 bucket prefix under which the recording is stored.</p>
    #   @return [String]
    class S3Detail < Struct.new(
      nil,
      :recording_prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that describes an S3 location where recorded videos will be stored.</p>
    # @!attribute bucket_name
    #   <p>Location (S3 bucket name) where recorded videos will be stored. Note that the StorageConfiguration and S3 bucket must be in the same region as the Composition.</p>
    #   @return [String]
    class S3StorageConfiguration < Struct.new(
      nil,
      :bucket_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request would cause a service quota to be exceeded.</p>
    # @!attribute access_control_allow_origin
    #   <p/>
    #   @return [String]
    # @!attribute access_control_expose_headers
    #   <p/>
    #   @return [String]
    # @!attribute cache_control
    #   <p/>
    #   @return [String]
    # @!attribute content_security_policy
    #   <p/>
    #   @return [String]
    # @!attribute strict_transport_security
    #   <p/>
    #   @return [String]
    # @!attribute x_content_type_options
    #   <p/>
    #   @return [String]
    # @!attribute x_frame_options
    #   <p/>
    #   @return [String]
    # @!attribute x_amzn_error_type
    #   <p/>
    #   @return [String]
    # @!attribute exception_message
    #   <p>Request would cause a service quota to be exceeded.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :access_control_allow_origin,
      :access_control_expose_headers,
      :cache_control,
      :content_security_policy,
      :strict_transport_security,
      :x_content_type_options,
      :x_frame_options,
      :x_amzn_error_type,
      :exception_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object specifying a stage.</p>
    # @!attribute arn
    #   <p>Stage ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Stage name.</p>
    #   @return [String]
    # @!attribute active_session_id
    #   <p>ID of the active session within the stage.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags attached to the resource. Array of maps, each of the form <code>string:string (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging AWS Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no constraints on tags beyond what is documented there.</p>
    #   @return [Hash<String, String>]
    # @!attribute auto_participant_recording_configuration
    #   <p>Configuration object for individual participant recording, attached to the stage.</p>
    #   @return [Types::AutoParticipantRecordingConfiguration]
    # @!attribute endpoints
    #   <p>Summary information about various endpoints for a stage.</p>
    #   @return [Types::StageEndpoints]
    class Stage < Struct.new(
      nil,
      :arn,
      :name,
      :active_session_id,
      :tags,
      :auto_participant_recording_configuration,
      :endpoints,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about various endpoints for a stage. We recommend that you cache these values at stage creation; the values can be cached for up to 14 days.</p>
    # @!attribute events
    #   <p>Events endpoint.</p>
    #   @return [String]
    # @!attribute whip
    #   <p>The endpoint to be used for IVS real-time streaming using the WHIP protocol.</p>
    #   @return [String]
    # @!attribute rtmp
    #   <p>The endpoint to be used for IVS real-time streaming using the RTMP protocol.</p>
    #   @return [String]
    # @!attribute rtmps
    #   <p>The endpoint to be used for IVS real-time streaming using the RTMPS protocol.</p>
    #   @return [String]
    class StageEndpoints < Struct.new(
      nil,
      :events,
      :whip,
      :rtmp,
      :rtmps,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A stage session begins when the first participant joins a stage and ends after the last participant leaves the stage. A stage session helps with debugging stages by grouping events and participants into shorter periods of time (i.e., a session), which is helpful when stages are used over long periods of time.</p>
    # @!attribute session_id
    #   <p>ID of the session within the stage.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p> ISO 8601 timestamp (returned as a string) when this stage session began.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>ISO 8601 timestamp (returned as a string) when the stage session ended. This is null if the stage is active.</p>
    #   @return [Time]
    class StageSession < Struct.new(
      nil,
      :session_id,
      :start_time,
      :end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a stage session.</p>
    # @!attribute session_id
    #   <p>ID of the session within the stage.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p> ISO 8601 timestamp (returned as a string) when this stage session began.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>ISO 8601 timestamp (returned as a string) when the stage session ended. This is null if the stage is active.</p>
    #   @return [Time]
    class StageSessionSummary < Struct.new(
      nil,
      :session_id,
      :start_time,
      :end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a stage.</p>
    # @!attribute arn
    #   <p>Stage ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Stage name.</p>
    #   @return [String]
    # @!attribute active_session_id
    #   <p>ID of the active session within the stage.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags attached to the resource. Array of maps, each of the form <code>string:string (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging AWS Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no constraints on tags beyond what is documented there.</p>
    #   @return [Hash<String, String>]
    class StageSummary < Struct.new(
      nil,
      :arn,
      :name,
      :active_session_id,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stage_arn
    #   <p>ARN of the stage to be used for compositing.</p>
    #   @return [String]
    # @!attribute idempotency_token
    #   <p>Idempotency token.</p>
    #   @return [String]
    # @!attribute layout
    #   <p>Layout object to configure composition parameters.</p>
    #   @return [Types::LayoutConfiguration]
    # @!attribute destinations
    #   <p>Array of destination configuration.</p>
    #   @return [Array<Types::DestinationConfiguration>]
    # @!attribute tags
    #   <p>Tags attached to the resource. Array of maps, each of the form <code>string:string (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging AWS Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no constraints on tags beyond what is documented there.</p>
    #   @return [Hash<String, String>]
    class StartCompositionRequest < Struct.new(
      nil,
      :stage_arn,
      :idempotency_token,
      :layout,
      :destinations,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute composition
    #   <p>The Composition that was created.</p>
    #   @return [Types::Composition]
    class StartCompositionResponse < Struct.new(
      nil,
      :composition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_stage_arn
    #   <p>ARN of the stage where the participant is publishing.</p>
    #   @return [String]
    # @!attribute destination_stage_arn
    #   <p>ARN of the stage to which the participant will be replicated.</p>
    #   @return [String]
    # @!attribute participant_id
    #   <p>Participant ID of the publisher that will be replicated. This is assigned by IVS and returned by <a>CreateParticipantToken</a> or the <code>jti</code> (JWT ID) used to <a href="https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/getting-started-distribute-tokens.html#getting-started-distribute-tokens-self-signed">create a self signed token</a>. </p>
    #   @return [String]
    # @!attribute reconnect_window_seconds
    #   <p>If the participant disconnects and then reconnects within the specified interval, replication will continue to be <code>ACTIVE</code>. Default: 0.</p>
    #   @return [Integer]
    # @!attribute attributes
    #   <p>Application-provided attributes to set on the replicated participant in the destination stage. Map keys and values can contain UTF-8 encoded text. The maximum length of this field is 1 KB total. <i>This field is exposed to all stage participants and should not be used for personally identifying, confidential, or sensitive information.</i> </p> <p>These attributes are merged with any attributes set for this participant when creating the token. If there is overlap in keys, the values in these attributes are replaced.</p>
    #   @return [Hash<String, String>]
    class StartParticipantReplicationRequest < Struct.new(
      nil,
      :source_stage_arn,
      :destination_stage_arn,
      :participant_id,
      :reconnect_window_seconds,
      :attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_control_allow_origin
    #   <p>See <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/Access-Control-Allow-Origin">Access-Control-Allow-Origin</a> in the MDN Web Docs.</p>
    #   @return [String]
    # @!attribute access_control_expose_headers
    #   <p>See <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/Access-Control-Expose-Headers">Access-Control-Expose-Headers</a> in the MDN Web Docs.</p>
    #   @return [String]
    # @!attribute cache_control
    #   <p>See <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/Cache-Control">Cache-Control</a> in the MDN Web Docs.</p>
    #   @return [String]
    # @!attribute content_security_policy
    #   <p>See <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/Content-Security-Policy">Content-Security-Policy</a> in the MDN Web Docs.</p>
    #   @return [String]
    # @!attribute strict_transport_security
    #   <p>See <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/Strict-Transport-Security">Strict-Transport-Security</a> in the MDN Web Docs.</p>
    #   @return [String]
    # @!attribute x_content_type_options
    #   <p>See <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/X-Content-Type-Options">X-Content-Type-Options</a> in the MDN Web Docs.</p>
    #   @return [String]
    # @!attribute x_frame_options
    #   <p>See <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/X-Frame-Options">X-Frame-Options</a> in the MDN Web Docs.</p>
    #   @return [String]
    class StartParticipantReplicationResponse < Struct.new(
      nil,
      :access_control_allow_origin,
      :access_control_expose_headers,
      :cache_control,
      :content_security_policy,
      :strict_transport_security,
      :x_content_type_options,
      :x_frame_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>ARN of the Composition.</p>
    #   @return [String]
    class StopCompositionRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StopCompositionResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_stage_arn
    #   <p>ARN of the stage where the participant is publishing.</p>
    #   @return [String]
    # @!attribute destination_stage_arn
    #   <p>ARN of the stage where the participant has been replicated.</p>
    #   @return [String]
    # @!attribute participant_id
    #   <p>Participant ID of the publisher that has been replicated. This is assigned by IVS and returned by <a>CreateParticipantToken</a> or the <code>jti</code> (JWT ID) used to <a href="https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/getting-started-distribute-tokens.html#getting-started-distribute-tokens-self-signed"> create a self signed token</a>.</p>
    #   @return [String]
    class StopParticipantReplicationRequest < Struct.new(
      nil,
      :source_stage_arn,
      :destination_stage_arn,
      :participant_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_control_allow_origin
    #   <p>See <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/Access-Control-Allow-Origin">Access-Control-Allow-Origin</a> in the MDN Web Docs.</p>
    #   @return [String]
    # @!attribute access_control_expose_headers
    #   <p>See <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/Access-Control-Expose-Headers">Access-Control-Expose-Headers</a> in the MDN Web Docs.</p>
    #   @return [String]
    # @!attribute cache_control
    #   <p>See <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/Cache-Control">Cache-Control</a> in the MDN Web Docs.</p>
    #   @return [String]
    # @!attribute content_security_policy
    #   <p>See <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/Content-Security-Policy">Content-Security-Policy</a> in the MDN Web Docs.</p>
    #   @return [String]
    # @!attribute strict_transport_security
    #   <p>See <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/Strict-Transport-Security">Strict-Transport-Security</a> in the MDN Web Docs.</p>
    #   @return [String]
    # @!attribute x_content_type_options
    #   <p>See <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/X-Content-Type-Options">X-Content-Type-Options</a> in the MDN Web Docs.</p>
    #   @return [String]
    # @!attribute x_frame_options
    #   <p>See <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/X-Frame-Options">X-Frame-Options</a> in the MDN Web Docs.</p>
    #   @return [String]
    class StopParticipantReplicationResponse < Struct.new(
      nil,
      :access_control_allow_origin,
      :access_control_expose_headers,
      :cache_control,
      :content_security_policy,
      :strict_transport_security,
      :x_content_type_options,
      :x_frame_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that describes a location where recorded videos will be stored.</p>
    # @!attribute arn
    #   <p>ARN of the storage configuration.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the storage configuration.</p>
    #   @return [String]
    # @!attribute s3
    #   <p>An S3 destination configuration where recorded videos will be stored.</p>
    #   @return [Types::S3StorageConfiguration]
    # @!attribute tags
    #   <p>Tags attached to the resource. Array of maps, each of the form <code>string:string (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging AWS Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no constraints on tags beyond what is documented there.</p>
    #   @return [Hash<String, String>]
    class StorageConfiguration < Struct.new(
      nil,
      :arn,
      :name,
      :s3,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a storage configuration.</p>
    # @!attribute arn
    #   <p>ARN of the storage configuration.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the storage configuration.</p>
    #   @return [String]
    # @!attribute s3
    #   <p>An S3 destination configuration where recorded videos will be stored.</p>
    #   @return [Types::S3StorageConfiguration]
    # @!attribute tags
    #   <p>Tags attached to the resource. Array of maps, each of the form <code>string:string (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging AWS Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no constraints on tags beyond what is documented there.</p>
    #   @return [Hash<String, String>]
    class StorageConfigurationSummary < Struct.new(
      nil,
      :arn,
      :name,
      :s3,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource to be tagged. The ARN must be URL-encoded.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Array of tags to be added or updated. Array of maps, each of the form <code>string:string (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging AWS Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no constraints on tags beyond what is documented there.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource to be untagged. The ARN must be URL-encoded.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>Array of tag keys (strings) for the tags to be removed. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging AWS Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no constraints on tags beyond what is documented there.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>ARN of the IngestConfiguration, for which the related stage ARN needs to be updated.</p>
    #   @return [String]
    # @!attribute stage_arn
    #   <p>Stage ARN that needs to be updated.</p>
    #   @return [String]
    # @!attribute redundant_ingest
    #   <p>Indicates whether redundant ingest is enabled for the ingest configuration. Default: <code>false</code>. </p>
    #   @return [Boolean]
    class UpdateIngestConfigurationRequest < Struct.new(
      nil,
      :arn,
      :stage_arn,
      :redundant_ingest,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_control_allow_origin
    #   <p>See <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/Access-Control-Allow-Origin">Access-Control-Allow-Origin</a> in the MDN Web Docs.</p>
    #   @return [String]
    # @!attribute access_control_expose_headers
    #   <p>See <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/Access-Control-Expose-Headers">Access-Control-Expose-Headers</a> in the MDN Web Docs.</p>
    #   @return [String]
    # @!attribute cache_control
    #   <p>See <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/Cache-Control">Cache-Control</a> in the MDN Web Docs.</p>
    #   @return [String]
    # @!attribute content_security_policy
    #   <p>See <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/Content-Security-Policy">Content-Security-Policy</a> in the MDN Web Docs.</p>
    #   @return [String]
    # @!attribute strict_transport_security
    #   <p>See <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/Strict-Transport-Security">Strict-Transport-Security</a> in the MDN Web Docs.</p>
    #   @return [String]
    # @!attribute x_content_type_options
    #   <p>See <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/X-Content-Type-Options">X-Content-Type-Options</a> in the MDN Web Docs.</p>
    #   @return [String]
    # @!attribute x_frame_options
    #   <p>See <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/X-Frame-Options">X-Frame-Options</a> in the MDN Web Docs.</p>
    #   @return [String]
    # @!attribute ingest_configuration
    #   <p>The updated IngestConfiguration.</p>
    #   @return [Types::IngestConfiguration]
    class UpdateIngestConfigurationResponse < Struct.new(
      nil,
      :access_control_allow_origin,
      :access_control_expose_headers,
      :cache_control,
      :content_security_policy,
      :strict_transport_security,
      :x_content_type_options,
      :x_frame_options,
      :ingest_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>ARN of the stage to be updated.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the stage to be updated.</p>
    #   @return [String]
    # @!attribute auto_participant_recording_configuration
    #   <p>Configuration object for individual participant recording, to attach to the stage. Note that this cannot be updated while recording is active.</p>
    #   @return [Types::AutoParticipantRecordingConfiguration]
    class UpdateStageInput < Struct.new(
      nil,
      :arn,
      :name,
      :auto_participant_recording_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stage
    #   <p>The updated stage.</p>
    #   @return [Types::Stage]
    class UpdateStageOutput < Struct.new(
      nil,
      :stage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by an Amazon Web Services service.</p>
    # @!attribute access_control_allow_origin
    #   <p/>
    #   @return [String]
    # @!attribute access_control_expose_headers
    #   <p/>
    #   @return [String]
    # @!attribute cache_control
    #   <p/>
    #   @return [String]
    # @!attribute content_security_policy
    #   <p/>
    #   @return [String]
    # @!attribute strict_transport_security
    #   <p/>
    #   @return [String]
    # @!attribute x_content_type_options
    #   <p/>
    #   @return [String]
    # @!attribute x_frame_options
    #   <p/>
    #   @return [String]
    # @!attribute x_amzn_error_type
    #   <p/>
    #   @return [String]
    # @!attribute exception_message
    #   <p>The input fails to satisfy the constraints specified by an Amazon Web Services service.</p>
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :access_control_allow_origin,
      :access_control_expose_headers,
      :cache_control,
      :content_security_policy,
      :strict_transport_security,
      :x_content_type_options,
      :x_frame_options,
      :x_amzn_error_type,
      :exception_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Settings for video.</p>
    # @!attribute width
    #   <p>Video-resolution width. This must be an even number. Note that the maximum value is determined by <code>width</code> times <code>height</code>, such that the maximum total pixels is 2073600 (1920x1080 or 1080x1920). Default: 1280.</p>
    #   @return [Integer]
    # @!attribute height
    #   <p>Video-resolution height. This must be an even number. Note that the maximum value is determined by <code>width</code> times <code>height</code>, such that the maximum total pixels is 2073600 (1920x1080 or 1080x1920). Default: 720.</p>
    #   @return [Integer]
    # @!attribute framerate
    #   <p>Video frame rate, in fps. Default: 30.</p>
    #   @return [Float]
    # @!attribute bitrate
    #   <p>Bitrate for generated output, in bps. Default: 2500000.</p>
    #   @return [Integer]
    class Video < Struct.new(
      nil,
      :width,
      :height,
      :framerate,
      :bitrate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
