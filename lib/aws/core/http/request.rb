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

      # Base class for all service reqeusts.  This class describes
      # a basic HTTP request, but will not make one.  It is consumed
      # by a HTTP handler class that sends the actual request
      # and parses the actual response.
      class Request

        # Returns a new empty http request object.
        def initialize
          @default_read_timeout = 60
          @http_method = 'POST'
          @use_ssl = true
          @headers = CaseInsensitiveHash.new
          @uri = '/'
          @params = []
        end

        # @return [Integer] The number of seconds the service has to respond
        #   before a timeout error is raised on the request.  Defaults to
        #   60 seconds.
        attr_accessor :default_read_timeout

        # @return [String] hostname of the request
        attr_accessor :host

        # @return [Integer] Returns the port number this request will be
        #   made via (usually 443 or 80).
        attr_accessor :port

        # @return [String] Returns the HTTP request method (e.g. 'GET', 'PUT',
        #   'POST', 'HEAD' or 'DELETE').  Defaults to 'POST'.
        attr_accessor :http_method

        # @return [CaseInsensitiveHash] request headers
        attr_accessor :headers

        # @return [String] Returns the request URI (path + querystring).
        attr_accessor :uri

        # @return [String] The region name this request is for.  Only needs
        #   to be populated for requests against signature v4 endpoints.
        attr_accessor :region

        # @return [String] Returns the AWS access key ID used to authorize the
        #   request.
        # @private
        attr_accessor :access_key_id

        # @return [Array<Param>] Returns an array of request params.  Requests
        #   that use signature version 2 add params to the request and then
        #   sign those before building the {#body}.  Normally the {#body}
        #   should be set directly with the HTTP payload.
        # @private
        attr_accessor :params

        # @return [String] The name of the service for Signature v4 signing.
        #   This does not always match the ruby name (e.g.
        #   simple_email_service and ses do not match).
        attr_accessor :service_ruby_name

        # @return [nil, URI] The URI to the proxy server requests are
        #   sent through if configured.  Returns nil if there is no proxy.
        attr_accessor :proxy_uri

        # @return [Integer] The number of seconds the service has to respond
        #   before a timeout error is raised on the request.  Defaults to
        #   60 seconds.
        attr_accessor :read_timeout

        # @return [Boolean] Returns +true+ if this request should be made
        #   with SSL enabled.
        attr_accessor :use_ssl

        alias_method :use_ssl?, :use_ssl

        # @return [Boolean] Returns +true+ if the client should verify
        #   the peer certificate.
        attr_accessor :ssl_verify_peer

        alias_method :ssl_verify_peer?, :ssl_verify_peer

        # @return [String] Returns the path to a bundle of CA certs in PEM
        #   format; the HTTP handler should use this to verify all HTTPS
        #   requests if {#ssl_verify_peer?} is true.
        attr_accessor :ssl_ca_file

        # @return [String] Returns the path to a directory of CA certs.
        #   The HTTP handler should use these to verify all HTTPS
        #   requests if {#ssl_verify_peer?} is true.
        attr_accessor :ssl_ca_path

        # @return [Integer] Returns the port the request will be made over.
        #   Defaults to 443 for SSL requests and 80 for non-SSL requests.
        def port
          @port || (use_ssl? ? 443 : 80)
        end

        # Some subclasses override this method to obseve requirements
        # set by the services (e.q. SimpleWorlfow and SQS have special
        # long-pulling requirements and require special read timeouts).
        # @private
        def read_timeout
          default_read_timeout
        end

        # @return [String] Returns the HTTP request path.
        def path
          uri.split(/\?/)[0]
        end

        # @return [String] Returns the HTTP request querystring.
        def querystring
          uri.split(/\?/)[1]
        end

        # Adds a request param.
        #
        # @overload add_param(param_name, param_value = nil)
        #   Add a param (name/value)
        #   @param [String] param_name
        #   @param [String] param_value Leave blank for sub resources
        #
        # @overload add_param(param_obj)
        #   Add a param (object)
        #   @param [Param] param_obj
        #
        # @private
        def add_param name_or_param, value = nil
          if name_or_param.kind_of?(Param)
            @params << name_or_param
          else
            @params << Param.new(name_or_param, value)
          end
        end

        # @private
        # @return [String,nil] Returns the url encoded request params.  If there
        #   are no params, then nil is returned.
        def url_encoded_params
          params.empty? ? nil : params.sort.collect(&:encoded).join('&')
        end

        # @param [String] body
        def body= body
          @body = body
          if body
            headers['content-length'] = body.bytesize if body
          else
            headers.delete('content-length')
          end
        end

        # @note Calling #body on a request with a #body_stream
        #   will cause the entire stream to be read into memory.
        # @return [String,nil] Returns the request body.
        def body
          if @body
            @body
          elsif @body_stream
            @body = @body_stream.read
            if @body_stream.respond_to?(:rewind)
              @body_stream.rewind
            else
              @body_stream = StringIO.new(@body)
            end
            @body
          else
            nil
          end
        end

        # Sets the request body as an IO object that will be streamed.
        # @note You must also set the #headers['content-length']
        # @param [IO] stream An object that responds to #read and #eof.
        def body_stream= stream
          @body_stream = stream
        end

        # @return [IO,nil]
        def body_stream
          if @body_stream
            @body_stream
          elsif @body
            StringIO.new(@body)
          else
            nil
          end
        end

        # @private
        class CaseInsensitiveHash < Hash

          def []= key, value
            super(key.to_s.downcase, value)
          end

          def [] key
            super(key.to_s.downcase)
          end

          def has_key?(key)
            super(key.to_s.downcase)
          end
          alias_method :key?, :has_key?
          alias_method :include?, :has_key?
          alias_method :member?, :has_key?

        end

        # Represents a single request paramater.  Some services accept this
        # in a form encoded body string, others as query parameters.
        # It is up to each service's Request class to determine how to
        # consume these params.
        # @private
        class Param

          include UriEscape

          attr_accessor :name, :value

          def initialize name, value = nil
            @name = name
            @value = value
          end

          def <=> other
            name <=> other.name
          end

          def to_s
            value ? "#{name}=#{value}" : name
          end

          def ==(other)
            other.kind_of?(Param) and to_s == other.to_s
          end

          def encoded
            value ? "#{escape(name)}=#{escape(value)}" : escape(name)
          end

        end

      end
    end
  end
end
