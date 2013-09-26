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
  module Client
    class Response

      # @option options [RequestContext] :context (nil)
      # @option options [Integer] :status_code (nil)
      # @option options [Http::Headers] :headers (Http::Headers.new)
      # @option options [String] :body ('')
      def initialize(options = {})
        @context = options[:context] || RequestContext.new
        @data = options[:data] || {}
        @http_request = @context.http_request
        @http_response = @context.http_response
        @complete_mutex = Mutex.new
        @callbacks = []
        @complete = false
      end

      # @return [RequestContext]
      attr_reader :context

      # @return [Http::Request]
      attr_reader :http_request

      # @return [Http::Response]
      attr_reader :http_response

      # @todo This will eventually return a structure like object, not a hash.
      # @return [Hash] the hash of data returned from the service
      attr_accessor :data

      # @param [Range<Integer>] status_code_range (nil) When present, the
      #   `callback` will be triggered only for responses 
      # @return [Response] Returns self.
      def on_complete(status_code_range = nil, &callback)
        @complete_mutex.synchronize do
          @callbacks << [status_code_range, Proc.new]
          trigger_callback(*@callbacks.last) if @complete
        end
        self
      end

      def on_success(&callback)
        on_complete(200..299, &callback)
      end

      def on_redirect(&callback)
        on_complete(300..399, &callback)
      end

      def on_error(&callback)
        on_complete(400..599, &callback)
      end

      # This method should only be called by the HTTP handler that generates
      # this {Response}.  This triggers all {#on_complete} callbacks.
      # @return [Request] Returns `self`.
      def signal_complete
        @complete_mutex.synchronize do
          @complete = true
          trigger_callbacks
          self
        end
      end

      # @return [Boolean] Returns `true` if the full response has been received.
      def complete?
        @complete_mutex.synchronize { @complete }
      end

      def trigger_callbacks
        @callbacks.each do |range, callback|
          trigger_callback(range, callback)
        end
      end

      def trigger_callback(range, callback)
        if range.nil? || range.include?(@http_response.status_code)
          callback.call(self)
        end
      end

    end
  end
end
