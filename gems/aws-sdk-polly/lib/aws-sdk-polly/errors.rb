# frozen_string_literal: true

# This is generated code!

module Aws::Polly
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Polly::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Polly::Errors::ServiceError
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
  # * {EngineNotSupportedException}
  # * {InvalidLexiconException}
  # * {InvalidNextTokenException}
  # * {InvalidS3BucketException}
  # * {InvalidS3KeyException}
  # * {InvalidSampleRateException}
  # * {InvalidSnsTopicArnException}
  # * {InvalidSsmlException}
  # * {InvalidTaskIdException}
  # * {LanguageNotSupportedException}
  # * {LexiconNotFoundException}
  # * {LexiconSizeExceededException}
  # * {MarksNotSupportedForFormatException}
  # * {MaxLexemeLengthExceededException}
  # * {MaxLexiconsNumberExceededException}
  # * {ServiceFailureException}
  # * {SsmlMarksNotSupportedForTextTypeException}
  # * {SynthesisTaskNotFoundException}
  # * {TextLengthExceededException}
  # * {UnsupportedPlsAlphabetException}
  # * {UnsupportedPlsLanguageException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>This engine is not compatible with the voice that you have designated.
    #       Choose a new voice that is compatible with the engine or change the engine
    #       and restart the operation.</p>
    class EngineNotSupportedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Polly::Types::EngineNotSupportedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Amazon Polly can't find the specified lexicon. Verify that the lexicon's
    #       name is spelled correctly, and then try again.</p>
    class InvalidLexiconException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Polly::Types::InvalidLexiconException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The NextToken is invalid. Verify that it's spelled correctly, and
    #       then try again.</p>
    class InvalidNextTokenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Polly::Types::InvalidNextTokenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The provided Amazon S3 bucket name is invalid. Please check your input
    #       with S3 bucket naming requirements and try again.</p>
    class InvalidS3BucketException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Polly::Types::InvalidS3BucketException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The provided Amazon S3 key prefix is invalid. Please provide a valid
    #       S3 object key name.</p>
    class InvalidS3KeyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Polly::Types::InvalidS3KeyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified sample rate is not valid.</p>
    class InvalidSampleRateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Polly::Types::InvalidSampleRateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The provided SNS topic ARN is invalid. Please provide a valid SNS
    #       topic ARN and try again.</p>
    class InvalidSnsTopicArnException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Polly::Types::InvalidSnsTopicArnException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The SSML you provided is invalid. Verify the SSML syntax, spelling
    #       of tags and values, and then try again.</p>
    class InvalidSsmlException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Polly::Types::InvalidSsmlException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The provided Task ID is not valid. Please provide a valid Task ID and
    #       try again.</p>
    class InvalidTaskIdException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Polly::Types::InvalidTaskIdException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The language specified is not currently supported by Amazon Polly in this
    #       capacity.</p>
    class LanguageNotSupportedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Polly::Types::LanguageNotSupportedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Amazon Polly can't find the specified lexicon. This could be caused by a
    #       lexicon that is missing, its name is misspelled or specifying a lexicon
    #       that is in a different region.</p>
    #          <p>Verify that the lexicon exists, is in the region (see <a>ListLexicons</a>) and that you spelled its name is spelled
    #       correctly. Then try again.</p>
    class LexiconNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Polly::Types::LexiconNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The maximum size of the specified lexicon would be exceeded by this
    #       operation.</p>
    class LexiconSizeExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Polly::Types::LexiconSizeExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Speech marks are not supported for the <code>OutputFormat</code>
    #       selected. Speech marks are only available for content in <code>json</code>
    #       format.</p>
    class MarksNotSupportedForFormatException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Polly::Types::MarksNotSupportedForFormatException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The maximum size of the lexeme would be exceeded by this
    #       operation.</p>
    class MaxLexemeLengthExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Polly::Types::MaxLexemeLengthExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The maximum number of lexicons would be exceeded by this
    #       operation.</p>
    class MaxLexiconsNumberExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Polly::Types::MaxLexiconsNumberExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>An unknown condition has caused a service failure.</p>
    class ServiceFailureException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Polly::Types::ServiceFailureException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>SSML speech marks are not supported for plain text-type
    #       input.</p>
    class SsmlMarksNotSupportedForTextTypeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Polly::Types::SsmlMarksNotSupportedForTextTypeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The Speech Synthesis task with requested Task ID cannot be
    #       found.</p>
    class SynthesisTaskNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Polly::Types::SynthesisTaskNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The value of the "Text" parameter is longer than the accepted
    #       limits. For the <code>SynthesizeSpeech</code> API, the limit for input
    #       text is a maximum of 6000 characters total, of which no more than 3000 can
    #       be billed characters. For the <code>StartSpeechSynthesisTask</code> API,
    #       the maximum is 200,000 characters, of which no more than 100,000 can be
    #       billed characters. SSML tags are not counted as billed
    #       characters.</p>
    class TextLengthExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Polly::Types::TextLengthExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The alphabet specified by the lexicon is not a supported alphabet.
    #       Valid values are <code>x-sampa</code> and <code>ipa</code>.</p>
    class UnsupportedPlsAlphabetException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Polly::Types::UnsupportedPlsAlphabetException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The language specified in the lexicon is unsupported. For a list of
    #       supported languages, see <a href="https://docs.aws.amazon.com/polly/latest/dg/API_LexiconAttributes.html">Lexicon Attributes</a>.</p>
    class UnsupportedPlsLanguageException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Polly::Types::UnsupportedPlsLanguageException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
