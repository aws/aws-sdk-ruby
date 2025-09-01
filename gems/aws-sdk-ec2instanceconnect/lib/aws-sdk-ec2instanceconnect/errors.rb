# frozen_string_literal: true

# This is generated code!

module Aws::EC2InstanceConnect
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::EC2InstanceConnect::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::EC2InstanceConnect::Errors::ServiceError
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
  # * {AuthException}
  # * {EC2InstanceNotFoundException}
  # * {EC2InstanceStateInvalidException}
  # * {EC2InstanceTypeInvalidException}
  # * {EC2InstanceUnavailableException}
  # * {InvalidArgsException}
  # * {SerialConsoleAccessDisabledException}
  # * {SerialConsoleSessionLimitExceededException}
  # * {SerialConsoleSessionUnavailableException}
  # * {SerialConsoleSessionUnsupportedException}
  # * {ServiceException}
  # * {ThrottlingException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Either your AWS credentials are not valid or you do not have access to the EC2 instance.</p>
    class AuthException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EC2InstanceConnect::Types::AuthException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified instance was not found.</p>
    class EC2InstanceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EC2InstanceConnect::Types::EC2InstanceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Unable to connect because the instance is not in a valid state. 
    #             Connecting to a stopped or terminated instance is not supported. If the instance is stopped, 
    #             start your instance, and try to connect again.</p>
    class EC2InstanceStateInvalidException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EC2InstanceConnect::Types::EC2InstanceStateInvalidException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The instance type is not supported for connecting via the serial console. Only Nitro
    #             instance types are currently supported.</p>
    class EC2InstanceTypeInvalidException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EC2InstanceConnect::Types::EC2InstanceTypeInvalidException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The instance is currently unavailable. Wait a few minutes and try again.</p>
    class EC2InstanceUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EC2InstanceConnect::Types::EC2InstanceUnavailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>One of the parameters is not valid.</p>
    class InvalidArgsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EC2InstanceConnect::Types::InvalidArgsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Your account is not authorized to use the EC2 Serial Console. To authorize your
    #             account, run the EnableSerialConsoleAccess API. For more information, see
    #             <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EnableSerialConsoleAccess.html">EnableSerialConsoleAccess</a> in the <i>Amazon EC2 API Reference</i>.</p>
    class SerialConsoleAccessDisabledException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EC2InstanceConnect::Types::SerialConsoleAccessDisabledException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The instance currently has 1 active serial console session. Only 1 session is supported at a time.</p>
    class SerialConsoleSessionLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EC2InstanceConnect::Types::SerialConsoleSessionLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Unable to start a serial console session. Please try again.</p>
    class SerialConsoleSessionUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EC2InstanceConnect::Types::SerialConsoleSessionUnavailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Your instance's BIOS version is unsupported for serial console connection. Reboot your instance to update its BIOS, and then try again to connect.</p>
    class SerialConsoleSessionUnsupportedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EC2InstanceConnect::Types::SerialConsoleSessionUnsupportedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The service encountered an error. Follow the instructions in the error message and try again.</p>
    class ServiceException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EC2InstanceConnect::Types::ServiceException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The requests were made too frequently and have been throttled. Wait a while and try again. 
    #             To increase the limit on your request frequency, contact AWS Support.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EC2InstanceConnect::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end
  end
end
