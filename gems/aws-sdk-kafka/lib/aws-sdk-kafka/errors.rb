# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Kafka

  # When Kafka returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::Kafka::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all Kafka errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Kafka::Errors::ServiceError
  #       # rescues all Kafka API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
  # * {BadRequestException}
  # * {ConflictException}
  # * {ForbiddenException}
  # * {InternalServerErrorException}
  # * {NotFoundException}
  # * {ServiceUnavailableException}
  # * {TooManyRequestsException}
  # * {UnauthorizedException}
  # * {TopicExistsException}
  # * {ClusterConnectivityException}
  # * {KafkaTimeoutException}
  # * {UnknownTopicOrPartitionException}
  # * {ControllerMovedException}
  # * {NotControllerException}
  # * {ReassignmentInProgressException}
  # * {GroupSubscribedToTopicException}
  # * {KafkaRequestException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors

    extend Aws::Errors::DynamicErrors

    class BadRequestException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Kafka::Types::BadRequestException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def invalid_parameter
        @data[:invalid_parameter]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ConflictException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Kafka::Types::ConflictException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def invalid_parameter
        @data[:invalid_parameter]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ForbiddenException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Kafka::Types::ForbiddenException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def invalid_parameter
        @data[:invalid_parameter]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class InternalServerErrorException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Kafka::Types::InternalServerErrorException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def invalid_parameter
        @data[:invalid_parameter]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class NotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Kafka::Types::NotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def invalid_parameter
        @data[:invalid_parameter]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ServiceUnavailableException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Kafka::Types::ServiceUnavailableException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def invalid_parameter
        @data[:invalid_parameter]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class TooManyRequestsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Kafka::Types::TooManyRequestsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def invalid_parameter
        @data[:invalid_parameter]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class UnauthorizedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Kafka::Types::UnauthorizedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def invalid_parameter
        @data[:invalid_parameter]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class TopicExistsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Kafka::Types::TopicExistsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def invalid_parameter
        @data[:invalid_parameter]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ClusterConnectivityException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Kafka::Types::ClusterConnectivityException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def invalid_parameter
        @data[:invalid_parameter]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class KafkaTimeoutException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Kafka::Types::KafkaTimeoutException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def invalid_parameter
        @data[:invalid_parameter]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class UnknownTopicOrPartitionException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Kafka::Types::UnknownTopicOrPartitionException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def invalid_parameter
        @data[:invalid_parameter]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ControllerMovedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Kafka::Types::ControllerMovedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def invalid_parameter
        @data[:invalid_parameter]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class NotControllerException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Kafka::Types::NotControllerException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def invalid_parameter
        @data[:invalid_parameter]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ReassignmentInProgressException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Kafka::Types::ReassignmentInProgressException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def invalid_parameter
        @data[:invalid_parameter]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class GroupSubscribedToTopicException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Kafka::Types::GroupSubscribedToTopicException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def invalid_parameter
        @data[:invalid_parameter]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class KafkaRequestException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Kafka::Types::KafkaRequestException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def invalid_parameter
        @data[:invalid_parameter]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

  end
end
