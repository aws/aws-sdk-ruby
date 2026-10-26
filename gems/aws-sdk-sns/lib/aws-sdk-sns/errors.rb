# frozen_string_literal: true

# This is generated code!

module Aws::SNS
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::SNS::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::SNS::Errors::ServiceError
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
  # * {AuthorizationErrorException}
  # * {BatchEntryIdsNotDistinctException}
  # * {BatchRequestTooLongException}
  # * {ConcurrentAccessException}
  # * {EmptyBatchRequestException}
  # * {EndpointDisabledException}
  # * {FilterPolicyLimitExceededException}
  # * {InternalErrorException}
  # * {InvalidBatchEntryIdException}
  # * {InvalidParameterException}
  # * {InvalidParameterValueException}
  # * {InvalidSecurityException}
  # * {InvalidStateException}
  # * {KMSAccessDeniedException}
  # * {KMSDisabledException}
  # * {KMSInvalidStateException}
  # * {KMSNotFoundException}
  # * {KMSOptInRequired}
  # * {KMSThrottlingException}
  # * {NotFoundException}
  # * {OptedOutException}
  # * {PlatformApplicationDisabledException}
  # * {ReplayLimitExceededException}
  # * {ResourceNotFoundException}
  # * {StaleTagException}
  # * {SubscriptionLimitExceededException}
  # * {TagLimitExceededException}
  # * {TagPolicyException}
  # * {ThrottledException}
  # * {TooManyEntriesInBatchRequestException}
  # * {TopicLimitExceededException}
  # * {UserErrorException}
  # * {ValidationException}
  # * {VerificationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Indicates that the user has been denied access to the requested resource.</p>
    class AuthorizationErrorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SNS::Types::AuthorizationErrorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Two or more batch entries in the request have the same <code>Id</code>.</p>
    class BatchEntryIdsNotDistinctException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SNS::Types::BatchEntryIdsNotDistinctException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The length of all the batch messages put together is more than the limit.</p>
    class BatchRequestTooLongException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SNS::Types::BatchRequestTooLongException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Can't perform multiple operations on a tag simultaneously. Perform the operations
    #             sequentially.</p>
    class ConcurrentAccessException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SNS::Types::ConcurrentAccessException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The batch request doesn't contain any entries.</p>
    class EmptyBatchRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SNS::Types::EmptyBatchRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Exception error indicating endpoint disabled.</p>
    class EndpointDisabledException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SNS::Types::EndpointDisabledException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Message for endpoint disabled.</p>
      def message
        @data[:message]
      end
    end

    # <p>Indicates that the number of filter polices in your Amazon Web Services account exceeds the limit. To
    #             add more filter polices, submit an Amazon SNS Limit Increase case in the Amazon Web Services Support
    #             Center.</p>
    class FilterPolicyLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SNS::Types::FilterPolicyLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates an internal service error.</p>
    class InternalErrorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SNS::Types::InternalErrorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The <code>Id</code> of a batch entry in a batch request doesn't abide by the specification. </p>
    class InvalidBatchEntryIdException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SNS::Types::InvalidBatchEntryIdException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that a request parameter does not comply with the associated
    #             constraints.</p>
    class InvalidParameterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SNS::Types::InvalidParameterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that a request parameter does not comply with the associated constraints.</p>
    class InvalidParameterValueException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SNS::Types::InvalidParameterValueException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The parameter of an entry in a request doesn't abide by the specification. </p>
      def message
        @data[:message]
      end
    end

    # <p>The credential signature isn't valid. You must use an HTTPS endpoint and sign your
    #             request using Signature Version 4.</p>
    class InvalidSecurityException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SNS::Types::InvalidSecurityException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that the specified state is not a valid state for an event source.</p>
    class InvalidStateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SNS::Types::InvalidStateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The ciphertext references a key that doesn't exist or that you don't have access
    #             to.</p>
    class KMSAccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SNS::Types::KMSAccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the specified Amazon Web Services KMS key isn't
    #             enabled.</p>
    class KMSDisabledException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SNS::Types::KMSDisabledException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the state of the specified resource isn't valid for
    #             this request. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of Amazon Web Services KMS keys</a> in the <i>Key Management Service Developer
    #                 Guide</i>.</p>
    class KMSInvalidStateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SNS::Types::KMSInvalidStateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the specified entity or resource can't be
    #             found.</p>
    class KMSNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SNS::Types::KMSNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The Amazon Web Services access key ID needs a subscription for the service.</p>
    class KMSOptInRequired < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SNS::Types::KMSOptInRequired] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was denied due to request throttling. For more information about
    #             throttling, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/limits.html#requests-per-second">Limits</a> in
    #             the <i>Key Management Service Developer Guide.</i>
    #          </p>
    class KMSThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SNS::Types::KMSThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that the requested resource does not exist.</p>
    class NotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SNS::Types::NotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that the specified phone number opted out of receiving SMS messages from
    #             your Amazon Web Services account. You can't send SMS messages to phone numbers that opt out.</p>
    class OptedOutException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SNS::Types::OptedOutException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Exception error indicating platform application disabled.</p>
    class PlatformApplicationDisabledException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SNS::Types::PlatformApplicationDisabledException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Message for platform application disabled.</p>
      def message
        @data[:message]
      end
    end

    # <p>Indicates that the request parameter has exceeded the maximum number of concurrent message replays.</p>
    class ReplayLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SNS::Types::ReplayLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Can’t perform the action on the specified resource. Make sure that the resource
    #             exists.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SNS::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A tag has been added to a resource with the same ARN as a deleted resource. Wait a
    #             short while and then retry the operation.</p>
    class StaleTagException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SNS::Types::StaleTagException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that the customer already owns the maximum allowed number of
    #             subscriptions.</p>
    class SubscriptionLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SNS::Types::SubscriptionLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Can't add more than 50 tags to a topic.</p>
    class TagLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SNS::Types::TagLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request doesn't comply with the IAM tag policy. Correct your request and then
    #             retry it.</p>
    class TagPolicyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SNS::Types::TagPolicyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that the rate at which requests have been submitted for this action exceeds the limit for your Amazon Web Services account.</p>
    class ThrottledException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SNS::Types::ThrottledException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Throttled request.</p>
      def message
        @data[:message]
      end
    end

    # <p> The batch request contains more entries than permissible (more than 10).</p>
    class TooManyEntriesInBatchRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SNS::Types::TooManyEntriesInBatchRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that the customer already owns the maximum allowed number of topics.</p>
    class TopicLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SNS::Types::TopicLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that a request parameter does not comply with the associated
    #             constraints.</p>
    class UserErrorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SNS::Types::UserErrorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that a parameter in the request is invalid.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SNS::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that the one-time password (OTP) used for verification is invalid.</p>
    class VerificationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SNS::Types::VerificationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The status of the verification error.</p>
      def status
        @data[:status]
      end
    end
  end
end
