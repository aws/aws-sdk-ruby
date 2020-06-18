# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Inspector

  # When Inspector returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::Inspector::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all Inspector errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Inspector::Errors::ServiceError
  #       # rescues all Inspector API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
  # * {AccessDeniedException}
  # * {AgentsAlreadyRunningAssessmentException}
  # * {AssessmentRunInProgressException}
  # * {InternalException}
  # * {InvalidCrossAccountRoleException}
  # * {InvalidInputException}
  # * {LimitExceededException}
  # * {NoSuchEntityException}
  # * {PreviewGenerationInProgressException}
  # * {ServiceTemporarilyUnavailableException}
  # * {UnsupportedFeatureException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors

    extend Aws::Errors::DynamicErrors

    class AccessDeniedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Inspector::Types::AccessDeniedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def error_code
        @data[:error_code]
      end

      # @return [String]
      def can_retry
        @data[:can_retry]
      end
    end

    class AgentsAlreadyRunningAssessmentException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Inspector::Types::AgentsAlreadyRunningAssessmentException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def agents
        @data[:agents]
      end

      # @return [String]
      def agents_truncated
        @data[:agents_truncated]
      end

      # @return [String]
      def can_retry
        @data[:can_retry]
      end
    end

    class AssessmentRunInProgressException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Inspector::Types::AssessmentRunInProgressException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def assessment_run_arns
        @data[:assessment_run_arns]
      end

      # @return [String]
      def assessment_run_arns_truncated
        @data[:assessment_run_arns_truncated]
      end

      # @return [String]
      def can_retry
        @data[:can_retry]
      end
    end

    class InternalException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Inspector::Types::InternalException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def can_retry
        @data[:can_retry]
      end
    end

    class InvalidCrossAccountRoleException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Inspector::Types::InvalidCrossAccountRoleException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def error_code
        @data[:error_code]
      end

      # @return [String]
      def can_retry
        @data[:can_retry]
      end
    end

    class InvalidInputException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Inspector::Types::InvalidInputException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def error_code
        @data[:error_code]
      end

      # @return [String]
      def can_retry
        @data[:can_retry]
      end
    end

    class LimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Inspector::Types::LimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def error_code
        @data[:error_code]
      end

      # @return [String]
      def can_retry
        @data[:can_retry]
      end
    end

    class NoSuchEntityException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Inspector::Types::NoSuchEntityException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def error_code
        @data[:error_code]
      end

      # @return [String]
      def can_retry
        @data[:can_retry]
      end
    end

    class PreviewGenerationInProgressException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Inspector::Types::PreviewGenerationInProgressException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ServiceTemporarilyUnavailableException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Inspector::Types::ServiceTemporarilyUnavailableException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def can_retry
        @data[:can_retry]
      end
    end

    class UnsupportedFeatureException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Inspector::Types::UnsupportedFeatureException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def can_retry
        @data[:can_retry]
      end
    end

  end
end
