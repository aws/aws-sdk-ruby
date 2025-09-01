# frozen_string_literal: true

# This is generated code!

module Aws::VoiceID
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::VoiceID::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::VoiceID::Errors::ServiceError
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
  # * {ConflictException}
  # * {InternalServerException}
  # * {ResourceNotFoundException}
  # * {ServiceQuotaExceededException}
  # * {ThrottlingException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>You do not have sufficient permissions to perform this action. Check the error message
    #             and try again.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::VoiceID::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The request failed due to a conflict. Check the <code>ConflictType</code> and error
    #             message for more details.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::VoiceID::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The type of conflict which caused a ConflictException. Possible types and the
      #             corresponding error messages are as follows:</p>
      #          <ul>
      #             <li>
      #                <p>
      #                   <code>DOMAIN_NOT_ACTIVE</code>: The domain is not active.</p>
      #             </li>
      #             <li>
      #                <p>
      #                   <code>CANNOT_CHANGE_SPEAKER_AFTER_ENROLLMENT</code>: You cannot change the
      #                     speaker ID after an enrollment has been requested.</p>
      #             </li>
      #             <li>
      #                <p>
      #                   <code>ENROLLMENT_ALREADY_EXISTS</code>: There is already an enrollment for
      #                     this session.</p>
      #             </li>
      #             <li>
      #                <p>
      #                   <code>SPEAKER_NOT_SET</code>: You must set the speaker ID before requesting an
      #                     enrollment.</p>
      #             </li>
      #             <li>
      #                <p>
      #                   <code>SPEAKER_OPTED_OUT</code>: You cannot request an enrollment for an opted
      #                     out speaker.</p>
      #             </li>
      #             <li>
      #                <p>
      #                   <code>CONCURRENT_CHANGES</code>: The request could not be processed as the
      #                     resource was modified by another request during execution.</p>
      #             </li>
      #          </ul>
      def conflict_type
        @data[:conflict_type]
      end
    end

    # <p>The request failed due to an unknown error on the server side.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::VoiceID::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified resource cannot be found. Check the <code>ResourceType</code> and error
    #             message for more details.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::VoiceID::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The type of resource which cannot not be found. Possible types are
      #                 <code>BATCH_JOB</code>, <code>COMPLIANCE_CONSENT</code>, <code>DOMAIN</code>,
      #                 <code>FRAUDSTER</code>, <code>SESSION</code> and <code>SPEAKER</code>.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>The request exceeded the service quota. Refer to <a href="https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#voiceid-quotas">Voice ID Service Quotas</a> and try your request again.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::VoiceID::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was denied due to request throttling. Please slow down your request rate.
    #             Refer to <a href="https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html##voiceid-api-quotas">
    #                 Amazon Connect Voice ID Service API throttling quotas </a> and try your
    #             request again.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::VoiceID::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The request failed one or more validations; check the error message for more
    #             details.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::VoiceID::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end
  end
end
