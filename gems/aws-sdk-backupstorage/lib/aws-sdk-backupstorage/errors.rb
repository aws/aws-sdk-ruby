# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::BackupStorage

  # When BackupStorage returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::BackupStorage::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all BackupStorage errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::BackupStorage::Errors::ServiceError
  #       # rescues all BackupStorage API errors
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
  # * {DataAlreadyExistsException}
  # * {IllegalArgumentException}
  # * {KMSInvalidKeyUsageException}
  # * {NotReadableInputStreamException}
  # * {ResourceNotFoundException}
  # * {RetryableException}
  # * {ServiceInternalException}
  # * {ServiceUnavailableException}
  # * {ThrottlingException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors

    extend Aws::Errors::DynamicErrors

    class AccessDeniedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::BackupStorage::Types::AccessDeniedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class DataAlreadyExistsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::BackupStorage::Types::DataAlreadyExistsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def checksum
        @data[:checksum]
      end

      # @return [String]
      def checksum_algorithm
        @data[:checksum_algorithm]
      end
    end

    class IllegalArgumentException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::BackupStorage::Types::IllegalArgumentException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class KMSInvalidKeyUsageException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::BackupStorage::Types::KMSInvalidKeyUsageException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class NotReadableInputStreamException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::BackupStorage::Types::NotReadableInputStreamException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ResourceNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::BackupStorage::Types::ResourceNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class RetryableException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::BackupStorage::Types::RetryableException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ServiceInternalException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::BackupStorage::Types::ServiceInternalException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ServiceUnavailableException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::BackupStorage::Types::ServiceUnavailableException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ThrottlingException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::BackupStorage::Types::ThrottlingException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

  end
end
