# frozen_string_literal: true

# This is generated code!

module Aws::KinesisAnalytics
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::KinesisAnalytics::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::KinesisAnalytics::Errors::ServiceError
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
  # * {CodeValidationException}
  # * {ConcurrentModificationException}
  # * {InvalidApplicationConfigurationException}
  # * {InvalidArgumentException}
  # * {LimitExceededException}
  # * {ResourceInUseException}
  # * {ResourceNotFoundException}
  # * {ResourceProvisionedThroughputExceededException}
  # * {ServiceUnavailableException}
  # * {TooManyTagsException}
  # * {UnableToDetectSchemaException}
  # * {UnsupportedOperationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>User-provided application code (query) is invalid. This can be a simple syntax error.</p>
    class CodeValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisAnalytics::Types::CodeValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Test</p>
      def message
        @data[:message]
      end
    end

    # <p>Exception thrown as a result of concurrent modification to an application. For example, two individuals attempting to edit the same application at the same time.</p>
    class ConcurrentModificationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisAnalytics::Types::ConcurrentModificationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>User-provided application configuration is not valid.</p>
    class InvalidApplicationConfigurationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisAnalytics::Types::InvalidApplicationConfigurationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>test</p>
      def message
        @data[:message]
      end
    end

    # <p>Specified input parameter value is invalid.</p>
    class InvalidArgumentException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisAnalytics::Types::InvalidArgumentException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>Exceeded the number of applications allowed.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisAnalytics::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>Application is not available for this operation.</p>
    class ResourceInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisAnalytics::Types::ResourceInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>Specified application can't be found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisAnalytics::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>Discovery failed to get a record from the 
    #             streaming source because of the Amazon Kinesis Streams  
    #             ProvisionedThroughputExceededException. For more information, 
    #             see <a href="https://docs.aws.amazon.com/kinesis/latest/APIReference/API_GetRecords.html">GetRecords</a> 
    #             in the Amazon Kinesis Streams API Reference.</p>
    class ResourceProvisionedThroughputExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisAnalytics::Types::ResourceProvisionedThroughputExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The service is unavailable. Back off and retry the operation. </p>
    class ServiceUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisAnalytics::Types::ServiceUnavailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Application created with too many tags, or too many tags added to an application. Note that the maximum number of application tags includes system tags. The maximum number of user-defined application tags is 50.</p>
    class TooManyTagsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisAnalytics::Types::TooManyTagsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Data format is not valid. Amazon Kinesis Analytics is not able to detect schema for
    #             the given streaming source.</p>
    class UnableToDetectSchemaException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisAnalytics::Types::UnableToDetectSchemaException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def raw_input_records
        @data[:raw_input_records]
      end

      def processed_input_records
        @data[:processed_input_records]
      end
    end

    # <p>The request was rejected because a specified parameter is not supported or a specified resource is not valid for this operation. </p>
    class UnsupportedOperationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::KinesisAnalytics::Types::UnsupportedOperationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end
  end
end
