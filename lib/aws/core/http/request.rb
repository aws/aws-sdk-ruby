# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
  
      # Base class for all service reqeusts.
      class Request
  
        # Returns a new empty http request object.
        def initialize
          @host = nil
          @http_method = 'POST'
          @path = '/'
          @headers = CaseInsensitiveHash.new
          @params = []
          @use_ssl = true
        end
  
        # @return [String] hostname of the request
        attr_accessor :host
  
        # @return [CaseInsensitiveHash] request headers
        attr_reader :headers
  
        # @return [Array] An array of request params, each param responds to
        #   #name and #value.
        attr_reader :params
  
        # @return [String] GET, PUT POST, HEAD or DELETE, defaults to POST
        attr_accessor :http_method
  
        # @return [String] path of the request URI, defaults to /
        attr_reader :path
  
        # @return [String] the AWS access key ID used to authorize the
        #   request
        attr_accessor :access_key_id
  
        # @return [nil, URI] The URI to the proxy server requests are 
        #   sent through if configured.  Returns nil if there is no proxy.
        attr_accessor :proxy_uri
  
        # @param [Boolean] ssl If the request should be sent over ssl or not.
        def use_ssl= use_ssl
          @use_ssl = use_ssl
        end
  
        # @return [Boolean] If this request should be sent over ssl or not.
        def use_ssl?
          @use_ssl
        end
  
        # @param [Boolean] verify_peer If the client should verify the
        #   peer certificate or not.
        def ssl_verify_peer=(verify_peer)
          @ssl_verify_peer = verify_peer
        end
  
        # @return [Boolean] If the client should verify the peer
        #   certificate or not.
        def ssl_verify_peer?
          @ssl_verify_peer
        end
  
        # @param [String] ca_file Path to a bundle of CA certs in PEM
        #   format; the HTTP handler should use this to verify all HTTPS
        #   requests if {#ssl_verify_peer?} is true.
        def ssl_ca_file=(ca_file)
          @ssl_ca_file = ca_file
        end
  
        # @return [String] Path to a bundle of CA certs in PEM format;
        #   the HTTP handler should use this to verify all HTTPS
        #   requests if {#ssl_verify_peer?} is true.
        def ssl_ca_file
          @ssl_ca_file
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
        def add_param name_or_param, value = nil
          if name_or_param.kind_of?(Param)
            @params << name_or_param
          else
            @params << Param.new(name_or_param, value)
          end
        end
  
        # @private
        def get_param param_name
          @params.detect{|p| p.name == param_name } ||
            raise("undefined param #{param_name}")
        end
  
        # @return [String] the request uri
        def uri
          querystring ? "#{path}?#{querystring}" : path
        end
  
        # @return [String] Returns the request params url encoded, or nil if 
        #   this request has no params.
        def url_encoded_params
          if @params.empty?
            nil
          else
            @params.sort.collect{|p| p.encoded }.join('&')
          end
        end
  
        # @return [String, nil] Returns the requesty querystring.
        def querystring
          nil
        end
  
        # @return [String, nil] Returns the request body.
        def body
          url_encoded_params
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
            @name <=> other.name
          end
  
          def to_s
            if value
              "#{name}=#{value}"
            else
              name
            end
          end
  
          def ==(other)
            other.kind_of?(Param) &&
              to_s == other.to_s
          end
  
          def encoded
            if value
              "#{escape(name)}=#{escape(value)}"
            else
              escape(name)
            end
          end
  
        end
  
      end
    end
  end
end
