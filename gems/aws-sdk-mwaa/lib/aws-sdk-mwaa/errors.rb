# frozen_string_literal: true

# This is generated code!

module Aws::MWAA
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::MWAA::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::MWAA::Errors::ServiceError
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
  # * {InternalServerException}
  # * {ResourceNotFoundException}
  # * {RestApiClientException}
  # * {RestApiServerException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Access to the Apache Airflow Web UI or CLI has been denied due to insufficient permissions. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/access-policies.html">Accessing an Amazon MWAA environment</a>.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MWAA::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>InternalServerException: An internal error has occurred.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MWAA::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>ResourceNotFoundException: The resource is not available.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MWAA::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>An exception indicating that a client-side error occurred during the Apache Airflow
    #             REST API call.</p>
    class RestApiClientException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MWAA::Types::RestApiClientException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The HTTP status code returned by the Apache Airflow REST API call.</p>
      def rest_api_status_code
        @data[:rest_api_status_code]
      end

      # <p>The error response data from the Apache Airflow REST API call, provided as a JSON
      #             object.</p>
      def rest_api_response
        @data[:rest_api_response]
      end
    end

    # <p>An exception indicating that a server-side error occurred during the Apache Airflow
    #             REST API call.</p>
    class RestApiServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MWAA::Types::RestApiServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The HTTP status code returned by the Apache Airflow REST API call.</p>
      def rest_api_status_code
        @data[:rest_api_status_code]
      end

      # <p>The error response data from the Apache Airflow REST API call, provided as a JSON
      #             object.</p>
      def rest_api_response
        @data[:rest_api_response]
      end
    end

    # <p>ValidationException: The provided input is not valid.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MWAA::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
