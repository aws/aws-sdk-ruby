# frozen_string_literal: true

# This is generated code!

module Aws::Inspector
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Inspector::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Inspector::Errors::ServiceError
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
    extend Smithy::Client::DynamicErrors

    # <p>You do not have required permissions to access the requested resource.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Inspector::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Details of the exception error.</p>
      def message
        @data[:message]
      end

      # <p>Code that indicates the type of error that is generated.</p>
      def error_code
        @data[:error_code]
      end

      # <p>You can immediately retry your request.</p>
      def can_retry
        @data[:can_retry]
      end
    end

    # <p>You started an assessment run, but one of the instances is already participating in
    #          another assessment run.</p>
    class AgentsAlreadyRunningAssessmentException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Inspector::Types::AgentsAlreadyRunningAssessmentException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Details of the exception error.</p>
      def message
        @data[:message]
      end

      # <p></p>
      def agents
        @data[:agents]
      end

      # <p></p>
      def agents_truncated
        @data[:agents_truncated]
      end

      # <p>You can immediately retry your request.</p>
      def can_retry
        @data[:can_retry]
      end
    end

    # <p>You cannot perform a specified action if an assessment run is currently in
    #          progress.</p>
    class AssessmentRunInProgressException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Inspector::Types::AssessmentRunInProgressException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Details of the exception error.</p>
      def message
        @data[:message]
      end

      # <p>The ARNs of the assessment runs that are currently in progress.</p>
      def assessment_run_arns
        @data[:assessment_run_arns]
      end

      # <p>Boolean value that indicates whether the ARN list of the assessment runs is
      #          truncated.</p>
      def assessment_run_arns_truncated
        @data[:assessment_run_arns_truncated]
      end

      # <p>You can immediately retry your request.</p>
      def can_retry
        @data[:can_retry]
      end
    end

    # <p>Internal server error.</p>
    class InternalException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Inspector::Types::InternalException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Details of the exception error.</p>
      def message
        @data[:message]
      end

      # <p>You can immediately retry your request.</p>
      def can_retry
        @data[:can_retry]
      end
    end

    # <p>Amazon Inspector cannot assume the cross-account role that it needs to list your EC2
    #          instances during the assessment run.</p>
    class InvalidCrossAccountRoleException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Inspector::Types::InvalidCrossAccountRoleException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Details of the exception error.</p>
      def message
        @data[:message]
      end

      # <p>Code that indicates the type of error that is generated.</p>
      def error_code
        @data[:error_code]
      end

      # <p>You can immediately retry your request.</p>
      def can_retry
        @data[:can_retry]
      end
    end

    # <p>The request was rejected because an invalid or out-of-range value was supplied for an
    #          input parameter.</p>
    class InvalidInputException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Inspector::Types::InvalidInputException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Details of the exception error.</p>
      def message
        @data[:message]
      end

      # <p>Code that indicates the type of error that is generated.</p>
      def error_code
        @data[:error_code]
      end

      # <p>You can immediately retry your request.</p>
      def can_retry
        @data[:can_retry]
      end
    end

    # <p>The request was rejected because it attempted to create resources beyond the current
    #          AWS account limits. The error code describes the limit exceeded.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Inspector::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Details of the exception error.</p>
      def message
        @data[:message]
      end

      # <p>Code that indicates the type of error that is generated.</p>
      def error_code
        @data[:error_code]
      end

      # <p>You can immediately retry your request.</p>
      def can_retry
        @data[:can_retry]
      end
    end

    # <p>The request was rejected because it referenced an entity that does not exist. The
    #          error code describes the entity.</p>
    class NoSuchEntityException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Inspector::Types::NoSuchEntityException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Details of the exception error.</p>
      def message
        @data[:message]
      end

      # <p>Code that indicates the type of error that is generated.</p>
      def error_code
        @data[:error_code]
      end

      # <p>You can immediately retry your request.</p>
      def can_retry
        @data[:can_retry]
      end
    end

    # <p>The request is rejected. The specified assessment template is currently generating an
    #          exclusions preview.</p>
    class PreviewGenerationInProgressException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Inspector::Types::PreviewGenerationInProgressException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The serice is temporary unavailable.</p>
    class ServiceTemporarilyUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Inspector::Types::ServiceTemporarilyUnavailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Details of the exception error.</p>
      def message
        @data[:message]
      end

      # <p>You can wait and then retry your request.</p>
      def can_retry
        @data[:can_retry]
      end
    end

    # <p>Used by the <a>GetAssessmentReport</a> API. The request was rejected
    #          because you tried to generate a report for an assessment run that existed before reporting
    #          was supported in Amazon Inspector. You can only generate reports for assessment runs that
    #          took place or will take place after generating reports in Amazon Inspector became
    #          available.</p>
    class UnsupportedFeatureException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Inspector::Types::UnsupportedFeatureException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def can_retry
        @data[:can_retry]
      end
    end
  end
end
