# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

module AWS
  module Errors

    # Base class for the two service error classes:
    #
    # * {ClientError}
    # * {ServerError}
    #
    # When interacting with Amazon AWS services, you will sometimes 
    # receive a non-200 level response.  These http responses are treated
    # as errors.
    # 
    # == Client Errors
    #
    # Errors in the three and four hundreds are client errors ({ClientError}).
    # A client error should not be resent without changes.  The body of the
    # http response (the error #message) should give more information about
    # the nature of the problem.
    #
    # == Server Errors
    # 
    # A 500 level error typically indicates the service is having an issue.
    #
    # Requests that generate service errors are automatically retried with
    # an exponential backoff.  If the service still fails to respond with 
    # a 200 after 3 retries the error is raised.
    #
    class Base < StandardError

      # @return [Http::Request] The low level http request that caused the
      #   error to be raised.
      attr_reader :http_request

      # @return [Http::Response] The low level http response from the service
      #   that wrapped the service error.
      attr_reader :http_response

      def initialize http_request = nil, http_response = nil, message = nil
        message ||= http_response.body if http_response
        @http_request = http_request
        @http_response = http_response
        super(message)
      end

    end

    # @private
    module ExceptionMixinClassMethods
      def new(*args)
        e = Base.new(*args)
        e.extend(self)
        e
      end
    end

    # Raised when an error occurs as a result of bad client
    # behavior, most commonly when the parameters passed to a method
    # are somehow invalid.  Other common cases:
    #
    # * Throttling errors
    # * Bad credentials
    # * No permission to do the requested operation
    # * Limits exceeded (e.g. too many buckets)
    #
    module ClientError
      extend ExceptionMixinClassMethods
    end

    # Raised when an AWS service is unable to handle the request.  These
    # are automatically retired.  If after 3 retries the request is still
    # failing, then the error is raised.
    module ServerError
      extend ExceptionMixinClassMethods
    end

    # @private
    module ModeledError

      # @return [String] The error message given by the AWS service.
      attr_accessor :message

      # @return [Integer] The HTTP status code returned by the AWS service.
      attr_reader :code

      def initialize(req = nil, resp = nil)
        if req.kind_of?(String)
          # makes it easier to test handling of modeled exceptions
          super(nil, nil, req)
          @message = req
        elsif req and resp
          parse_body(resp.body)
          super(req, resp, self.message)
          include_error_type
        else
          super()
        end
      end

      def include_error_type
        if http_response.status >= 500
          extend ServerError
        else
          extend ClientError
        end
      end

      def parse_body(body)
        error_grammar.parse(body, :context => self)
      end

      def extract_message(body)
        error_grammar.parse(body).message
      end

      def error_grammar
        self.class::BASE_ERROR_GRAMMAR
      end

    end

  end
end
