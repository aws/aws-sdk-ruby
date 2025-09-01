# frozen_string_literal: true

# This is generated code!

module Aws::Lightsail
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Lightsail::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Lightsail::Errors::ServiceError
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
  # * {AccountSetupInProgressException}
  # * {InvalidInputException}
  # * {NotFoundException}
  # * {OperationFailureException}
  # * {RegionSetupInProgressException}
  # * {ServiceException}
  # * {UnauthenticatedException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Lightsail throws this exception when the user cannot be authenticated or uses invalid
    #       credentials to access a resource.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lightsail::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def code
        @data[:code]
      end

      def docs
        @data[:docs]
      end

      def message
        @data[:message]
      end

      def tip
        @data[:tip]
      end
    end

    # <p>Lightsail throws this exception when an account is still in the setup in progress
    #       state.</p>
    class AccountSetupInProgressException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lightsail::Types::AccountSetupInProgressException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def code
        @data[:code]
      end

      def docs
        @data[:docs]
      end

      def message
        @data[:message]
      end

      def tip
        @data[:tip]
      end
    end

    # <p>Lightsail throws this exception when user input does not conform to the validation rules
    #       of an input field.</p>
    #          <note>
    #             <p>Domain and distribution APIs are only available in the N. Virginia
    #           (<code>us-east-1</code>) Amazon Web Services Region. Please set your Amazon Web Services
    #         Region configuration to <code>us-east-1</code> to create, view, or edit these
    #         resources.</p>
    #          </note>
    class InvalidInputException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lightsail::Types::InvalidInputException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def code
        @data[:code]
      end

      def docs
        @data[:docs]
      end

      def message
        @data[:message]
      end

      def tip
        @data[:tip]
      end
    end

    # <p>Lightsail throws this exception when it cannot find a resource.</p>
    class NotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lightsail::Types::NotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def code
        @data[:code]
      end

      def docs
        @data[:docs]
      end

      def message
        @data[:message]
      end

      def tip
        @data[:tip]
      end
    end

    # <p>Lightsail throws this exception when an operation fails to execute.</p>
    class OperationFailureException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lightsail::Types::OperationFailureException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def code
        @data[:code]
      end

      def docs
        @data[:docs]
      end

      def message
        @data[:message]
      end

      def tip
        @data[:tip]
      end
    end

    # <p>Lightsail throws this exception when an operation is performed on resources in an opt-in
    #       Region that is currently being set up.</p>
    class RegionSetupInProgressException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lightsail::Types::RegionSetupInProgressException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def code
        @data[:code]
      end

      # <p>
      #             <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/understanding-regions-and-availability-zones-in-amazon-lightsail.html">Regions
      #       and Availability Zones for Lightsail</a>
      #          </p>
      def docs
        @data[:docs]
      end

      def message
        @data[:message]
      end

      # <p>Opt-in Regions typically take a few minutes to finish setting up before you can work with them. Wait a few minutes and try again.</p>
      def tip
        @data[:tip]
      end
    end

    # <p>A general service exception.</p>
    class ServiceException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lightsail::Types::ServiceException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def code
        @data[:code]
      end

      def docs
        @data[:docs]
      end

      def message
        @data[:message]
      end

      def tip
        @data[:tip]
      end
    end

    # <p>Lightsail throws this exception when the user has not been authenticated.</p>
    class UnauthenticatedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lightsail::Types::UnauthenticatedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def code
        @data[:code]
      end

      def docs
        @data[:docs]
      end

      def message
        @data[:message]
      end

      def tip
        @data[:tip]
      end
    end
  end
end
