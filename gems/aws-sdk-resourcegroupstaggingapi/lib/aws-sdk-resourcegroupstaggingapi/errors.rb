# frozen_string_literal: true

# This is generated code!

module Aws::ResourceGroupsTaggingAPI
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::ResourceGroupsTaggingAPI::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ResourceGroupsTaggingAPI::Errors::ServiceError
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
  # * {ConcurrentModificationException}
  # * {ConstraintViolationException}
  # * {InternalServiceException}
  # * {InvalidParameterException}
  # * {PaginationTokenExpiredException}
  # * {ThrottledException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The request failed because the target of the operation is currently being modified by
    #             a different request. Try again later.</p>
    class ConcurrentModificationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ResourceGroupsTaggingAPI::Types::ConcurrentModificationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request failed because performing the operation would violate a constraint.</p>
    #          <p>Some of the reasons in the following list might not apply to this specific
    #             operation.</p>
    #          <ul>
    #             <li>
    #                <p>You must meet the prerequisites for using tag policies. For information, see
    #                         <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tag-policies-orgs.html#tag-policies-prereqs">Prerequisites and permissions</a> in the <i>Tagging Amazon Web Services resources and Tag Editor</i> user guide. </p>
    #             </li>
    #             <li>
    #                <p>You must enable the tag policies service principal
    #                         (<code>tagpolicies.tag.amazonaws.com</code>) to integrate with Organizations For
    #                     information, see <a href="https://docs.aws.amazon.com/organizations/latest/APIReference/API_EnableAWSServiceAccess.html">EnableAWSServiceAccess</a>.</p>
    #             </li>
    #             <li>
    #                <p>You must have a tag policy attached to the organization root, an OU, or an
    #                     account.</p>
    #             </li>
    #          </ul>
    class ConstraintViolationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ResourceGroupsTaggingAPI::Types::ConstraintViolationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request processing failed because of an unknown error, exception, or failure. You
    #             can retry the request.</p>
    class InternalServiceException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ResourceGroupsTaggingAPI::Types::InternalServiceException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request failed because of one of the following reasons:</p>
    #          <ul>
    #             <li>
    #                <p>A required parameter is missing.</p>
    #             </li>
    #             <li>
    #                <p>A provided string parameter is malformed.</p>
    #             </li>
    #             <li>
    #                <p>An provided parameter value is out of range.</p>
    #             </li>
    #             <li>
    #                <p>The target ID is invalid, unsupported, or doesn't exist.</p>
    #             </li>
    #             <li>
    #                <p>You can't access the Amazon S3 bucket for report storage. For more information, see
    #                         <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tag-policies-orgs.html#bucket-policy">Amazon S3 bucket policy for report storage</a> in the <i>Tagging Amazon Web Services resources and Tag Editor</i> user guide. </p>
    #             </li>
    #             <li>
    #                <p>The partition specified in an ARN parameter in the request doesn't match the
    #                     partition where you invoked the operation. The partition is specified by the
    #                     second field of the ARN.</p>
    #             </li>
    #          </ul>
    class InvalidParameterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ResourceGroupsTaggingAPI::Types::InvalidParameterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request failed because the specified <code>PaginationToken</code> has expired. A
    #                 <code>PaginationToken</code> is valid for a maximum of 15 minutes.</p>
    class PaginationTokenExpiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ResourceGroupsTaggingAPI::Types::PaginationTokenExpiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request failed because it exceeded the allowed frequency of submitted
    #             requests.</p>
    class ThrottledException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ResourceGroupsTaggingAPI::Types::ThrottledException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
