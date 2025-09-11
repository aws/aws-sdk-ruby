# frozen_string_literal: true

# This is generated code!

module Aws::TranscribeStreaming
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::TranscribeStreaming::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::TranscribeStreaming::Errors::ServiceError
  #       # rescues all API errors
  #     end
  #
  # ## Request Context
  #
  # ServiceError objects have a {Smithy::Client::ServiceError#context #context} method
  # that returns information about the request that generated the error.
  # See {Smithy::Client::HandlerContext} for more information.
  #
  # ## Error Classes
  #
  # * {BadRequestException}
  # * {ConflictException}
  # * {InternalFailureException}
  # * {LimitExceededException}
  # * {ResourceNotFoundException}
  # * {ServiceUnavailableException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>One or more arguments to the <code>StartStreamTranscription</code>, 
    #       <code>StartMedicalStreamTranscription</code>, or <code>StartCallAnalyticsStreamTranscription</code> 
    #       operation was not valid. For example, <code>MediaEncoding</code> or <code>LanguageCode</code> 
    #       used unsupported values. Check the specified parameters and try your request again.</p>
    class BadRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::TranscribeStreaming::Types::BadRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A new stream started with the same session ID. The current stream has been terminated.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::TranscribeStreaming::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A problem occurred while processing the audio. Amazon Transcribe terminated 
    #       processing.</p>
    class InternalFailureException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::TranscribeStreaming::Types::InternalFailureException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Your client has exceeded one of the Amazon Transcribe limits. This is typically the audio length
    #       limit. Break your audio stream into smaller chunks and try your request again.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::TranscribeStreaming::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request references a resource which doesn't exist.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::TranscribeStreaming::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The service is currently unavailable. Try your request later.</p>
    class ServiceUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::TranscribeStreaming::Types::ServiceUnavailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
