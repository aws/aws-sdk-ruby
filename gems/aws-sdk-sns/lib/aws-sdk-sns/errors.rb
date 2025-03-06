# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SNS

  # When SNS returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::SNS::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all SNS errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::SNS::Errors::ServiceError
  #       # rescues all SNS API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
  # * {AuthorizationErrorException}
  #    * This error class is not used. `AuthorizationError` is used during parsing instead.
  # * {BatchEntryIdsNotDistinctException}
  #    * This error class is not used. `BatchEntryIdsNotDistinct` is used during parsing instead.
  # * {BatchRequestTooLongException}
  #    * This error class is not used. `BatchRequestTooLong` is used during parsing instead.
  # * {ConcurrentAccessException}
  #    * This error class is not used. `ConcurrentAccess` is used during parsing instead.
  # * {EmptyBatchRequestException}
  #    * This error class is not used. `EmptyBatchRequest` is used during parsing instead.
  # * {EndpointDisabledException}
  #    * This error class is not used. `EndpointDisabled` is used during parsing instead.
  # * {FilterPolicyLimitExceededException}
  #    * This error class is not used. `FilterPolicyLimitExceeded` is used during parsing instead.
  # * {InternalErrorException}
  #    * This error class is not used. `InternalError` is used during parsing instead.
  # * {InvalidBatchEntryIdException}
  #    * This error class is not used. `InvalidBatchEntryId` is used during parsing instead.
  # * {InvalidParameterException}
  #    * This error class is not used. `InvalidParameter` is used during parsing instead.
  # * {InvalidParameterValueException}
  #    * This error class is not used. `ParameterValueInvalid` is used during parsing instead.
  # * {InvalidSecurityException}
  #    * This error class is not used. `InvalidSecurity` is used during parsing instead.
  # * {InvalidStateException}
  #    * This error class is not used. `InvalidState` is used during parsing instead.
  # * {KMSAccessDeniedException}
  #    * This error class is not used. `KMSAccessDenied` is used during parsing instead.
  # * {KMSDisabledException}
  #    * This error class is not used. `KMSDisabled` is used during parsing instead.
  # * {KMSInvalidStateException}
  #    * This error class is not used. `KMSInvalidState` is used during parsing instead.
  # * {KMSNotFoundException}
  #    * This error class is not used. `KMSNotFound` is used during parsing instead.
  # * {KMSOptInRequired}
  # * {KMSThrottlingException}
  #    * This error class is not used. `KMSThrottling` is used during parsing instead.
  # * {NotFoundException}
  #    * This error class is not used. `NotFound` is used during parsing instead.
  # * {OptedOutException}
  #    * This error class is not used. `OptedOut` is used during parsing instead.
  # * {PlatformApplicationDisabledException}
  #    * This error class is not used. `PlatformApplicationDisabled` is used during parsing instead.
  # * {ReplayLimitExceededException}
  #    * This error class is not used. `ReplayLimitExceeded` is used during parsing instead.
  # * {ResourceNotFoundException}
  #    * This error class is not used. `ResourceNotFound` is used during parsing instead.
  # * {StaleTagException}
  #    * This error class is not used. `StaleTag` is used during parsing instead.
  # * {SubscriptionLimitExceededException}
  #    * This error class is not used. `SubscriptionLimitExceeded` is used during parsing instead.
  # * {TagLimitExceededException}
  #    * This error class is not used. `TagLimitExceeded` is used during parsing instead.
  # * {TagPolicyException}
  #    * This error class is not used. `TagPolicy` is used during parsing instead.
  # * {ThrottledException}
  #    * This error class is not used. `Throttled` is used during parsing instead.
  # * {TooManyEntriesInBatchRequestException}
  #    * This error class is not used. `TooManyEntriesInBatchRequest` is used during parsing instead.
  # * {TopicLimitExceededException}
  #    * This error class is not used. `TopicLimitExceeded` is used during parsing instead.
  # * {UserErrorException}
  #    * This error class is not used. `UserError` is used during parsing instead.
  # * {ValidationException}
  # * {VerificationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  # Some existing error classes may use a different class name than the one documented.
  module Errors

    extend Aws::Errors::DynamicErrors

    # @deprecated This error class is not used during parsing.
    #   Please use `AuthorizationError` instead.
    class AuthorizationErrorException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SNS::Types::AuthorizationErrorException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `BatchEntryIdsNotDistinct` instead.
    class BatchEntryIdsNotDistinctException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SNS::Types::BatchEntryIdsNotDistinctException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `BatchRequestTooLong` instead.
    class BatchRequestTooLongException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SNS::Types::BatchRequestTooLongException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ConcurrentAccess` instead.
    class ConcurrentAccessException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SNS::Types::ConcurrentAccessException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `EmptyBatchRequest` instead.
    class EmptyBatchRequestException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SNS::Types::EmptyBatchRequestException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `EndpointDisabled` instead.
    class EndpointDisabledException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SNS::Types::EndpointDisabledException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `FilterPolicyLimitExceeded` instead.
    class FilterPolicyLimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SNS::Types::FilterPolicyLimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InternalError` instead.
    class InternalErrorException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SNS::Types::InternalErrorException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidBatchEntryId` instead.
    class InvalidBatchEntryIdException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SNS::Types::InvalidBatchEntryIdException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidParameter` instead.
    class InvalidParameterException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SNS::Types::InvalidParameterException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ParameterValueInvalid` instead.
    class InvalidParameterValueException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SNS::Types::InvalidParameterValueException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidSecurity` instead.
    class InvalidSecurityException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SNS::Types::InvalidSecurityException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidState` instead.
    class InvalidStateException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SNS::Types::InvalidStateException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `KMSAccessDenied` instead.
    class KMSAccessDeniedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SNS::Types::KMSAccessDeniedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `KMSDisabled` instead.
    class KMSDisabledException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SNS::Types::KMSDisabledException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `KMSInvalidState` instead.
    class KMSInvalidStateException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SNS::Types::KMSInvalidStateException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `KMSNotFound` instead.
    class KMSNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SNS::Types::KMSNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class KMSOptInRequired < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SNS::Types::KMSOptInRequired] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `KMSThrottling` instead.
    class KMSThrottlingException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SNS::Types::KMSThrottlingException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `NotFound` instead.
    class NotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SNS::Types::NotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `OptedOut` instead.
    class OptedOutException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SNS::Types::OptedOutException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `PlatformApplicationDisabled` instead.
    class PlatformApplicationDisabledException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SNS::Types::PlatformApplicationDisabledException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ReplayLimitExceeded` instead.
    class ReplayLimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SNS::Types::ReplayLimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ResourceNotFound` instead.
    class ResourceNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SNS::Types::ResourceNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `StaleTag` instead.
    class StaleTagException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SNS::Types::StaleTagException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `SubscriptionLimitExceeded` instead.
    class SubscriptionLimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SNS::Types::SubscriptionLimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `TagLimitExceeded` instead.
    class TagLimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SNS::Types::TagLimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `TagPolicy` instead.
    class TagPolicyException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SNS::Types::TagPolicyException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `Throttled` instead.
    class ThrottledException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SNS::Types::ThrottledException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `TooManyEntriesInBatchRequest` instead.
    class TooManyEntriesInBatchRequestException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SNS::Types::TooManyEntriesInBatchRequestException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `TopicLimitExceeded` instead.
    class TopicLimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SNS::Types::TopicLimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `UserError` instead.
    class UserErrorException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SNS::Types::UserErrorException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ValidationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SNS::Types::ValidationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class VerificationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SNS::Types::VerificationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def status
        @data[:status]
      end
    end

  end
end
