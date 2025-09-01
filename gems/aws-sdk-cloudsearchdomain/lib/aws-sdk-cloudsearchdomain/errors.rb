# frozen_string_literal: true

# This is generated code!

module Aws::CloudSearchDomain
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::CloudSearchDomain::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::CloudSearchDomain::Errors::ServiceError
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
  # * {DocumentServiceException}
  # * {SearchException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Information about any problems encountered while processing an upload request.</p>
    class DocumentServiceException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudSearchDomain::Types::DocumentServiceException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The return status of a document upload request, <code>error</code> or <code>success</code>.</p>
      def status
        @data[:status]
      end

      # <p>The description of the errors returned by the document service.</p>
      def message
        @data[:message]
      end
    end

    # <p>Information about any problems encountered while processing a search request.</p>
    class SearchException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudSearchDomain::Types::SearchException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A description of the error returned by the search service.</p>
      def message
        @data[:message]
      end
    end
  end
end
