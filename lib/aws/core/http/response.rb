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
  module Core
    module Http
  
      # Represents the http response from a service request.
      #
      # Responses have:
      #
      # * status (200, 404, 500, etc)
      # * headers (hash of response headers)
      # * body (the response body)
      class Response
  
        # @return [Integer] (200) response http status code 
        attr_accessor :status
  
        # @return [Hash] ({}) response http headers
        attr_accessor :headers
  
        # @return [String] ('') response http body
        attr_accessor :body
  
        # @return [Boolean] (false) set to true if the client gives up
        #   before getting a response from the service.
        attr_accessor :timeout

        alias_method :timeout?, :timeout
  
        # @param [Hash] options
        # @option options [Integer] :status (200) HTTP status code
        # @option options [Hash] :headers ({}) HTTP response headers
        # @option options [String] :body ('') HTTP response body
        def initialize options = {}, &block
          @status = options[:status] || 200
          @headers = options[:headers] || {}
          @body = options[:body] || ''
          yield(self) if block_given?
          self
        end
  
        # Returns the header value with the given name.
        #
        # The value is matched case-insensitively so if the headers hash
        # contains a key like 'Date' and you request the value for
        # 'date' the 'Date' value will be returned.
        #
        # @param [String,Symbol] name The name of the header to fetch a value for.
        # @return [String,nil] The value of the given header
        def header name
          headers.each_pair do |header_name, header_value|
            if header_name.downcase == name.to_s.downcase
              return header_value.is_a?(Array) ? header_value.first : header_value
            end
          end
          nil
        end
  
      end
    end
  end
end
