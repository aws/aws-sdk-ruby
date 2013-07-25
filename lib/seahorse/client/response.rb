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

require 'thread'

module Seahorse
  class Client
    class Response

      # @option options [RequestContext] :context (nil)
      # @option options [Integer] :status_code (nil)
      # @option options [Http::Headers] :headers (Http::Headers.new)
      # @option options [String] :body ('')
      def initialize(options = {})
        @context = options[:context] || RequestContext.new
        @http_request = @context.http_request
        @http_response = @context.http_response
        @complete_mutex = Mutex.new
        @complete_callbacks = []
        @completed = false
      end

      # @return [RequestContext]
      attr_reader :context

      # @return [Http::Request]
      attr_reader :http_request

      # @return [Http::Response]
      attr_reader :http_response

      # @return [Response] Returns self.
      def on_complete(&callback)
        @complete_mutex.synchronize do
          if @completed
            yield(self)
          else
            @complete_callbacks << Proc.new
          end
        end
        self
      end

      # This method should only be called by the HTTP handler that generates
      # this {Response}.  This triggers all {#on_complete} callbacks.
      # @return [Request] Returns `self`.
      def signal_complete
        @complete_mutex.synchronize do
          @completed = true
          @complete_callbacks.each { |callback| callback.call(self) }
          self
        end
      end

      # @return [Boolean] Returns `true` if the full response has been received.
      def complete?
        @complete_mutex.synchronize do
          @completed
        end
      end

    end
  end
end
