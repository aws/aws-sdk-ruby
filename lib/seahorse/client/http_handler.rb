# Copyright 2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

module Seahorse
  class Client
    class HttpHandler < Handler

      # @param [RequestContext] context
      # @return [Response]
      def call(context)
        response = Response.new(context: context)
        add_http_event_listeners(response, context)
        transmit(context.http_request)
        response
      end

      # Handlers extending {HttpHandler} should define a `#transmit` method
      # that receives a {HttpRequest} and emits the following three
      # events:
      #
      # * `:http_headers`
      # * `:http_data`
      # * `:http_done`
      #
      # @param [HttpRequest] context
      # @return [void]
      def transmit(request)
        raise NotImplementedError, 'must be defined in subclass'
      end

      protected

      def add_http_event_listeners(response, context)
        context.events.on(:http_headers) do |status_code, headers|
          response.status_code = status_code.to_i
          response.headers.update(headers)
        end
        context.events.on(:http_data) { |chunk| response.body << chunk }
      end

    end
  end
end
