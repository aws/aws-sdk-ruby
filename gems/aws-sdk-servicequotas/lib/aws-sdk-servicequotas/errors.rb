# frozen_string_literal: true

# This is generated code!

module Aws::ServiceQuotas
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::ServiceQuotas::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ServiceQuotas::Errors::ServiceError
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
  # * {AWSServiceAccessNotEnabledException}
  # * {AccessDeniedException}
  # * {DependencyAccessDeniedException}
  # * {IllegalArgumentException}
  # * {InvalidPaginationTokenException}
  # * {InvalidResourceStateException}
  # * {NoAvailableOrganizationException}
  # * {NoSuchResourceException}
  # * {OrganizationNotInAllFeaturesModeException}
  # * {QuotaExceededException}
  # * {ResourceAlreadyExistsException}
  # * {ServiceException}
  # * {ServiceQuotaTemplateNotInUseException}
  # * {TagPolicyViolationException}
  # * {TemplatesNotAvailableInRegionException}
  # * {TooManyRequestsException}
  # * {TooManyTagsException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The action you attempted is not allowed unless Service Access with Service Quotas is enabled in
    #             your organization.</p>
    class AWSServiceAccessNotEnabledException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceQuotas::Types::AWSServiceAccessNotEnabledException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You do not have sufficient permission to perform this action.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceQuotas::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You can't perform this action because a dependency does not have access.</p>
    class DependencyAccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceQuotas::Types::DependencyAccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Invalid input was provided.</p>
    class IllegalArgumentException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceQuotas::Types::IllegalArgumentException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Invalid input was provided.</p>
    class InvalidPaginationTokenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceQuotas::Types::InvalidPaginationTokenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The resource is in an invalid state.</p>
    class InvalidResourceStateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceQuotas::Types::InvalidResourceStateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The Amazon Web Services account making this call is not a member of an organization.</p>
    class NoAvailableOrganizationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceQuotas::Types::NoAvailableOrganizationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified resource does not exist.</p>
    class NoSuchResourceException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceQuotas::Types::NoSuchResourceException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The organization that your Amazon Web Services account belongs to is not in All Features
    #             mode.</p>
    class OrganizationNotInAllFeaturesModeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceQuotas::Types::OrganizationNotInAllFeaturesModeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You have exceeded your service quota. To perform the requested action, remove some of
    #             the relevant resources, or use Service Quotas to request a service quota increase.</p>
    class QuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceQuotas::Types::QuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified resource already exists.</p>
    class ResourceAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceQuotas::Types::ResourceAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Something went wrong.</p>
    class ServiceException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceQuotas::Types::ServiceException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The quota request template is not associated with your organization.</p>
    class ServiceQuotaTemplateNotInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceQuotas::Types::ServiceQuotaTemplateNotInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified tag is a reserved word and cannot be used.</p>
    class TagPolicyViolationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceQuotas::Types::TagPolicyViolationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The Service Quotas template is not available in this Amazon Web Services Region.</p>
    class TemplatesNotAvailableInRegionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceQuotas::Types::TemplatesNotAvailableInRegionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Due to throttling, the request was denied. Slow down the rate of request calls, or
    #             request an increase for this quota.</p>
    class TooManyRequestsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceQuotas::Types::TooManyRequestsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You've exceeded the number of tags allowed for a resource. For more information, see
    #                 <a href="https://docs.aws.amazon.com/servicequotas/latest/userguide/sq-tagging.html#sq-tagging-restrictions">Tag
    #                 restrictions</a> in the <i>Service Quotas User Guide</i>.</p>
    class TooManyTagsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceQuotas::Types::TooManyTagsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end
  end
end
