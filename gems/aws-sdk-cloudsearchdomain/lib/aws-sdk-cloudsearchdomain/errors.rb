# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudSearchDomain

  # When CloudSearchDomain returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::CloudSearchDomain::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all CloudSearchDomain errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::CloudSearchDomain::Errors::ServiceError
  #       # rescues all CloudSearchDomain API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
  # * {DocumentServiceException}
  # * {SearchException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors

    extend Aws::Errors::DynamicErrors

    class DocumentServiceException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudSearchDomain::Types::DocumentServiceException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def status
        @data[:status]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class SearchException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudSearchDomain::Types::SearchException] data
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
