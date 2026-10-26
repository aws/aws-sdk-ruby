# frozen_string_literal: true

# This is generated code!

module Aws::Kafka
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Kafka::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Kafka::Errors::ServiceError
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
  # * {ClusterConnectivityException}
  # * {ConflictException}
  # * {ControllerMovedException}
  # * {ForbiddenException}
  # * {GroupSubscribedToTopicException}
  # * {InternalServerErrorException}
  # * {KafkaRequestException}
  # * {KafkaTimeoutException}
  # * {NotControllerException}
  # * {NotFoundException}
  # * {ReassignmentInProgressException}
  # * {ServiceUnavailableException}
  # * {TooManyRequestsException}
  # * {TopicExistsException}
  # * {UnauthorizedException}
  # * {UnknownTopicOrPartitionException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Returns information about an error.</p>
    class BadRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Kafka::Types::BadRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The parameter that caused the error.</p>
      def invalid_parameter
        @data[:invalid_parameter]
      end

      # <p>The description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>Returns information about an error.</p>
    class ClusterConnectivityException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Kafka::Types::ClusterConnectivityException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The parameter that caused the error.</p>
      def invalid_parameter
        @data[:invalid_parameter]
      end

      # <p>The description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>Returns information about an error.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Kafka::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The parameter that caused the error.</p>
      def invalid_parameter
        @data[:invalid_parameter]
      end

      # <p>The description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>Returns information about an error.</p>
    class ControllerMovedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Kafka::Types::ControllerMovedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The parameter that caused the error.</p>
      def invalid_parameter
        @data[:invalid_parameter]
      end

      # <p>The description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>Returns information about an error.</p>
    class ForbiddenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Kafka::Types::ForbiddenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The parameter that caused the error.</p>
      def invalid_parameter
        @data[:invalid_parameter]
      end

      # <p>The description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>Returns information about an error.</p>
    class GroupSubscribedToTopicException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Kafka::Types::GroupSubscribedToTopicException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The parameter that caused the error.</p>
      def invalid_parameter
        @data[:invalid_parameter]
      end

      # <p>The description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>Returns information about an error.</p>
    class InternalServerErrorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Kafka::Types::InternalServerErrorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The parameter that caused the error.</p>
      def invalid_parameter
        @data[:invalid_parameter]
      end

      # <p>The description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>Returns information about an error.</p>
    class KafkaRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Kafka::Types::KafkaRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The parameter that caused the error.</p>
      def invalid_parameter
        @data[:invalid_parameter]
      end

      # <p>The description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>Returns information about an error.</p>
    class KafkaTimeoutException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Kafka::Types::KafkaTimeoutException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The parameter that caused the error.</p>
      def invalid_parameter
        @data[:invalid_parameter]
      end

      # <p>The description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>Returns information about an error.</p>
    class NotControllerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Kafka::Types::NotControllerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The parameter that caused the error.</p>
      def invalid_parameter
        @data[:invalid_parameter]
      end

      # <p>The description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>Returns information about an error.</p>
    class NotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Kafka::Types::NotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The parameter that caused the error.</p>
      def invalid_parameter
        @data[:invalid_parameter]
      end

      # <p>The description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>Returns information about an error.</p>
    class ReassignmentInProgressException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Kafka::Types::ReassignmentInProgressException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The parameter that caused the error.</p>
      def invalid_parameter
        @data[:invalid_parameter]
      end

      # <p>The description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>Returns information about an error.</p>
    class ServiceUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Kafka::Types::ServiceUnavailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The parameter that caused the error.</p>
      def invalid_parameter
        @data[:invalid_parameter]
      end

      # <p>The description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>Returns information about an error.</p>
    class TooManyRequestsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Kafka::Types::TooManyRequestsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The parameter that caused the error.</p>
      def invalid_parameter
        @data[:invalid_parameter]
      end

      # <p>The description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>Returns information about an error.</p>
    class TopicExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Kafka::Types::TopicExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The parameter that caused the error.</p>
      def invalid_parameter
        @data[:invalid_parameter]
      end

      # <p>The description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>Returns information about an error.</p>
    class UnauthorizedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Kafka::Types::UnauthorizedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The parameter that caused the error.</p>
      def invalid_parameter
        @data[:invalid_parameter]
      end

      # <p>The description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>Returns information about an error.</p>
    class UnknownTopicOrPartitionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Kafka::Types::UnknownTopicOrPartitionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The parameter that caused the error.</p>
      def invalid_parameter
        @data[:invalid_parameter]
      end

      # <p>The description of the error.</p>
      def message
        @data[:message]
      end
    end
  end
end
