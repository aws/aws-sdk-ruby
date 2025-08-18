# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::TranscribeStreamingService
  module EventStreams
    class AudioStream

      def initialize
        @event_emitter = Aws::EventEmitter.new
      end

      # @option params [String, StringIO, File] :audio_chunk
      #   An audio blob containing the next segment of audio from your
      #   application, with a maximum duration of 1 second. The maximum size in
      #   bytes varies based on audio properties.
      #
      #   Find recommended size in [Transcribing streaming best practices][1].
      #
      #   Size calculation: `Duration (s) * Sample Rate (Hz) * Number of
      #   Channels * 2 (Bytes per Sample)`
      #
      #   For example, a 1-second chunk of 16 kHz, 2-channel, 16-bit audio would
      #   be `1 * 16000 * 2 * 2 = 64000 bytes`.
      #
      #   For 8 kHz, 1-channel, 16-bit audio, a 1-second chunk would be `1 *
      #   8000 * 1 * 2 = 16000 bytes`.
      #
      #
      #
      #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html#best-practices
      #
      def signal_audio_event_event(params = {})
        @event_emitter.emit(:audio_event, params)
      end

      # @option params [Array&lt;Types::ChannelDefinition&gt;] :channel_definitions
      #   Indicates which speaker is on which audio channel.
      #
      # @option params [Types::PostCallAnalyticsSettings] :post_call_analytics_settings
      #   Provides additional optional settings for your Call Analytics
      #   post-call request, including encryption and output locations for your
      #   redacted transcript.
      #
      #   `PostCallAnalyticsSettings` provides you with the same insights as a
      #   Call Analytics post-call transcription. Refer to [Post-call
      #   analytics][1] for more information on this feature.
      #
      #
      #
      #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/tca-post-call.html
      #
      def signal_configuration_event_event(params = {})
        @event_emitter.emit(:configuration_event, params)
      end

      def signal_end_stream
        @event_emitter.emit(:end_stream, {})
      end

      # @api private
      # @return Aws::EventEmitter
      attr_reader :event_emitter

    end

    class MedicalScribeInputStream

      def initialize
        @event_emitter = Aws::EventEmitter.new
      end

      # @option params [String, StringIO, File] :audio_chunk
      #   An audio blob containing the next segment of audio from your
      #   application, with a maximum duration of 1 second. The maximum size in
      #   bytes varies based on audio properties.
      #
      #   Find recommended size in [Transcribing streaming best practices][1].
      #
      #   Size calculation: `Duration (s) * Sample Rate (Hz) * Number of
      #   Channels * 2 (Bytes per Sample)`
      #
      #   For example, a 1-second chunk of 16 kHz, 2-channel, 16-bit audio would
      #   be `1 * 16000 * 2 * 2 = 64000 bytes`.
      #
      #   For 8 kHz, 1-channel, 16-bit audio, a 1-second chunk would be `1 *
      #   8000 * 1 * 2 = 16000 bytes`.
      #
      #
      #
      #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html#best-practices
      #
      def signal_audio_event_event(params = {})
        @event_emitter.emit(:audio_event, params)
      end

      # @option params [String] :type
      #   The type of `MedicalScribeSessionControlEvent`.
      #
      #   Possible Values:
      #
      #   * `END_OF_SESSION` - Indicates the audio streaming is complete. After
      #     you send an END\_OF\_SESSION event, Amazon Web Services HealthScribe
      #     starts the post-stream analytics. The session can&#39;t be resumed
      #     after this event is sent. After Amazon Web Services HealthScribe
      #     processes the event, the real-time `StreamStatus` is `COMPLETED`.
      #     You get the `StreamStatus` and other stream details with the
      #     [GetMedicalScribeStream][1] API operation. For more information
      #     about different streaming statuses, see the `StreamStatus`
      #     description in the [MedicalScribeStreamDetails][2].
      #
      #   ^
      #
      #
      #
      #   [1]: https://docs.aws.amazon.com/transcribe/latest/APIReference/API_streaming_GetMedicalScribeStream.html
      #   [2]: https://docs.aws.amazon.com/transcribe/latest/APIReference/API_streaming_MedicalScribeStreamDetails.html
      #
      def signal_session_control_event_event(params = {})
        @event_emitter.emit(:session_control_event, params)
      end

      # @option params [String] :vocabulary_name
      #   Specify the name of the custom vocabulary you want to use for your
      #   streaming session. Custom vocabulary names are case-sensitive.
      #
      # @option params [String] :vocabulary_filter_name
      #   Specify the name of the custom vocabulary filter you want to include
      #   in your streaming session. Custom vocabulary filter names are
      #   case-sensitive.
      #
      #   If you include `VocabularyFilterName` in the
      #   `MedicalScribeConfigurationEvent`, you must also include
      #   `VocabularyFilterMethod`.
      #
      # @option params [String] :vocabulary_filter_method
      #   Specify how you want your custom vocabulary filter applied to the
      #   streaming session.
      #
      #   To replace words with `***`, specify `mask`.
      #
      #   To delete words, specify `remove`.
      #
      #   To flag words without changing them, specify `tag`.
      #
      # @option params [String] :resource_access_role_arn
      #   The Amazon Resource Name (ARN) of an IAM role that has permissions to
      #   access the Amazon S3 output bucket you specified, and use your KMS key
      #   if supplied. If the role that you specify doesn’t have the appropriate
      #   permissions, your request fails.
      #
      #   IAM role ARNs have the format
      #   `arn:partition:iam::account:role/role-name-with-path`. For example:
      #   `arn:aws:iam::111122223333:role/Admin`.
      #
      #   For more information, see [Amazon Web Services HealthScribe][1].
      #
      #
      #
      #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/health-scribe-streaming.html
      #
      # @option params [Array&lt;Types::MedicalScribeChannelDefinition&gt;] :channel_definitions
      #   Specify which speaker is on which audio channel.
      #
      # @option params [Types::MedicalScribeEncryptionSettings] :encryption_settings
      #   Specify the encryption settings for your streaming session.
      #
      # @option params [Types::MedicalScribePostStreamAnalyticsSettings] :post_stream_analytics_settings
      #   Specify settings for post-stream analytics.
      #
      # @option params [Types::MedicalScribeContext] :medical_scribe_context
      #   The `MedicalScribeContext` object that contains contextual information
      #   used to generate customized clinical notes.
      #
      def signal_configuration_event_event(params = {})
        @event_emitter.emit(:configuration_event, params)
      end

      def signal_end_stream
        @event_emitter.emit(:end_stream, {})
      end

      # @api private
      # @return Aws::EventEmitter
      attr_reader :event_emitter

    end

    class AudioStream

      def initialize
        @event_emitter = Aws::EventEmitter.new
      end

      # @option params [String, StringIO, File] :audio_chunk
      #   An audio blob containing the next segment of audio from your
      #   application, with a maximum duration of 1 second. The maximum size in
      #   bytes varies based on audio properties.
      #
      #   Find recommended size in [Transcribing streaming best practices][1].
      #
      #   Size calculation: `Duration (s) * Sample Rate (Hz) * Number of
      #   Channels * 2 (Bytes per Sample)`
      #
      #   For example, a 1-second chunk of 16 kHz, 2-channel, 16-bit audio would
      #   be `1 * 16000 * 2 * 2 = 64000 bytes`.
      #
      #   For 8 kHz, 1-channel, 16-bit audio, a 1-second chunk would be `1 *
      #   8000 * 1 * 2 = 16000 bytes`.
      #
      #
      #
      #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html#best-practices
      #
      def signal_audio_event_event(params = {})
        @event_emitter.emit(:audio_event, params)
      end

      # @option params [Array&lt;Types::ChannelDefinition&gt;] :channel_definitions
      #   Indicates which speaker is on which audio channel.
      #
      # @option params [Types::PostCallAnalyticsSettings] :post_call_analytics_settings
      #   Provides additional optional settings for your Call Analytics
      #   post-call request, including encryption and output locations for your
      #   redacted transcript.
      #
      #   `PostCallAnalyticsSettings` provides you with the same insights as a
      #   Call Analytics post-call transcription. Refer to [Post-call
      #   analytics][1] for more information on this feature.
      #
      #
      #
      #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/tca-post-call.html
      #
      def signal_configuration_event_event(params = {})
        @event_emitter.emit(:configuration_event, params)
      end

      def signal_end_stream
        @event_emitter.emit(:end_stream, {})
      end

      # @api private
      # @return Aws::EventEmitter
      attr_reader :event_emitter

    end

    class AudioStream

      def initialize
        @event_emitter = Aws::EventEmitter.new
      end

      # @option params [String, StringIO, File] :audio_chunk
      #   An audio blob containing the next segment of audio from your
      #   application, with a maximum duration of 1 second. The maximum size in
      #   bytes varies based on audio properties.
      #
      #   Find recommended size in [Transcribing streaming best practices][1].
      #
      #   Size calculation: `Duration (s) * Sample Rate (Hz) * Number of
      #   Channels * 2 (Bytes per Sample)`
      #
      #   For example, a 1-second chunk of 16 kHz, 2-channel, 16-bit audio would
      #   be `1 * 16000 * 2 * 2 = 64000 bytes`.
      #
      #   For 8 kHz, 1-channel, 16-bit audio, a 1-second chunk would be `1 *
      #   8000 * 1 * 2 = 16000 bytes`.
      #
      #
      #
      #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html#best-practices
      #
      def signal_audio_event_event(params = {})
        @event_emitter.emit(:audio_event, params)
      end

      # @option params [Array&lt;Types::ChannelDefinition&gt;] :channel_definitions
      #   Indicates which speaker is on which audio channel.
      #
      # @option params [Types::PostCallAnalyticsSettings] :post_call_analytics_settings
      #   Provides additional optional settings for your Call Analytics
      #   post-call request, including encryption and output locations for your
      #   redacted transcript.
      #
      #   `PostCallAnalyticsSettings` provides you with the same insights as a
      #   Call Analytics post-call transcription. Refer to [Post-call
      #   analytics][1] for more information on this feature.
      #
      #
      #
      #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/tca-post-call.html
      #
      def signal_configuration_event_event(params = {})
        @event_emitter.emit(:configuration_event, params)
      end

      def signal_end_stream
        @event_emitter.emit(:end_stream, {})
      end

      # @api private
      # @return Aws::EventEmitter
      attr_reader :event_emitter

    end

    class CallAnalyticsTranscriptResultStream

      def initialize
        @event_emitter = Aws::EventEmitter.new
      end

      def on_utterance_event_event(&block)
        @event_emitter.on(:utterance_event, block) if block_given?
      end

      def on_category_event_event(&block)
        @event_emitter.on(:category_event, block) if block_given?
      end

      def on_bad_request_exception_event(&block)
        @event_emitter.on(:bad_request_exception, block) if block_given?
      end

      def on_limit_exceeded_exception_event(&block)
        @event_emitter.on(:limit_exceeded_exception, block) if block_given?
      end

      def on_internal_failure_exception_event(&block)
        @event_emitter.on(:internal_failure_exception, block) if block_given?
      end

      def on_conflict_exception_event(&block)
        @event_emitter.on(:conflict_exception, block) if block_given?
      end

      def on_service_unavailable_exception_event(&block)
        @event_emitter.on(:service_unavailable_exception, block) if block_given?
      end

      def on_error_event(&block)
        @event_emitter.on(:error, block) if block_given?
      end

      def on_initial_response_event(&block)
        @event_emitter.on(:initial_response, block) if block_given?
      end

      def on_unknown_event(&block)
        @event_emitter.on(:unknown_event, block) if block_given?
      end

      def on_event(&block)
        on_utterance_event_event(&block)
        on_category_event_event(&block)
        on_bad_request_exception_event(&block)
        on_limit_exceeded_exception_event(&block)
        on_internal_failure_exception_event(&block)
        on_conflict_exception_event(&block)
        on_service_unavailable_exception_event(&block)
        on_error_event(&block)
        on_initial_response_event(&block)
        on_unknown_event(&block)
      end

      # @api private
      # @return Aws::EventEmitter
      attr_reader :event_emitter

    end
    class MedicalScribeResultStream

      def initialize
        @event_emitter = Aws::EventEmitter.new
      end

      def on_transcript_event_event(&block)
        @event_emitter.on(:transcript_event, block) if block_given?
      end

      def on_bad_request_exception_event(&block)
        @event_emitter.on(:bad_request_exception, block) if block_given?
      end

      def on_limit_exceeded_exception_event(&block)
        @event_emitter.on(:limit_exceeded_exception, block) if block_given?
      end

      def on_internal_failure_exception_event(&block)
        @event_emitter.on(:internal_failure_exception, block) if block_given?
      end

      def on_conflict_exception_event(&block)
        @event_emitter.on(:conflict_exception, block) if block_given?
      end

      def on_service_unavailable_exception_event(&block)
        @event_emitter.on(:service_unavailable_exception, block) if block_given?
      end

      def on_error_event(&block)
        @event_emitter.on(:error, block) if block_given?
      end

      def on_initial_response_event(&block)
        @event_emitter.on(:initial_response, block) if block_given?
      end

      def on_unknown_event(&block)
        @event_emitter.on(:unknown_event, block) if block_given?
      end

      def on_event(&block)
        on_transcript_event_event(&block)
        on_bad_request_exception_event(&block)
        on_limit_exceeded_exception_event(&block)
        on_internal_failure_exception_event(&block)
        on_conflict_exception_event(&block)
        on_service_unavailable_exception_event(&block)
        on_error_event(&block)
        on_initial_response_event(&block)
        on_unknown_event(&block)
      end

      # @api private
      # @return Aws::EventEmitter
      attr_reader :event_emitter

    end
    class MedicalTranscriptResultStream

      def initialize
        @event_emitter = Aws::EventEmitter.new
      end

      def on_transcript_event_event(&block)
        @event_emitter.on(:transcript_event, block) if block_given?
      end

      def on_bad_request_exception_event(&block)
        @event_emitter.on(:bad_request_exception, block) if block_given?
      end

      def on_limit_exceeded_exception_event(&block)
        @event_emitter.on(:limit_exceeded_exception, block) if block_given?
      end

      def on_internal_failure_exception_event(&block)
        @event_emitter.on(:internal_failure_exception, block) if block_given?
      end

      def on_conflict_exception_event(&block)
        @event_emitter.on(:conflict_exception, block) if block_given?
      end

      def on_service_unavailable_exception_event(&block)
        @event_emitter.on(:service_unavailable_exception, block) if block_given?
      end

      def on_error_event(&block)
        @event_emitter.on(:error, block) if block_given?
      end

      def on_initial_response_event(&block)
        @event_emitter.on(:initial_response, block) if block_given?
      end

      def on_unknown_event(&block)
        @event_emitter.on(:unknown_event, block) if block_given?
      end

      def on_event(&block)
        on_transcript_event_event(&block)
        on_bad_request_exception_event(&block)
        on_limit_exceeded_exception_event(&block)
        on_internal_failure_exception_event(&block)
        on_conflict_exception_event(&block)
        on_service_unavailable_exception_event(&block)
        on_error_event(&block)
        on_initial_response_event(&block)
        on_unknown_event(&block)
      end

      # @api private
      # @return Aws::EventEmitter
      attr_reader :event_emitter

    end
    class TranscriptResultStream

      def initialize
        @event_emitter = Aws::EventEmitter.new
      end

      def on_transcript_event_event(&block)
        @event_emitter.on(:transcript_event, block) if block_given?
      end

      def on_bad_request_exception_event(&block)
        @event_emitter.on(:bad_request_exception, block) if block_given?
      end

      def on_limit_exceeded_exception_event(&block)
        @event_emitter.on(:limit_exceeded_exception, block) if block_given?
      end

      def on_internal_failure_exception_event(&block)
        @event_emitter.on(:internal_failure_exception, block) if block_given?
      end

      def on_conflict_exception_event(&block)
        @event_emitter.on(:conflict_exception, block) if block_given?
      end

      def on_service_unavailable_exception_event(&block)
        @event_emitter.on(:service_unavailable_exception, block) if block_given?
      end

      def on_error_event(&block)
        @event_emitter.on(:error, block) if block_given?
      end

      def on_initial_response_event(&block)
        @event_emitter.on(:initial_response, block) if block_given?
      end

      def on_unknown_event(&block)
        @event_emitter.on(:unknown_event, block) if block_given?
      end

      def on_event(&block)
        on_transcript_event_event(&block)
        on_bad_request_exception_event(&block)
        on_limit_exceeded_exception_event(&block)
        on_internal_failure_exception_event(&block)
        on_conflict_exception_event(&block)
        on_service_unavailable_exception_event(&block)
        on_error_event(&block)
        on_initial_response_event(&block)
        on_unknown_event(&block)
      end

      # @api private
      # @return Aws::EventEmitter
      attr_reader :event_emitter

    end

  end
end

