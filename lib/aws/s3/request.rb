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

require 'uri'
require 'time'

module AWS
  class S3

    # @private
    class Request < Core::Http::Request

      include Core::UriEscape

      # @param [bucket] S3 bucket name
      attr_accessor :bucket

      # @param [String] S3 object key
      attr_accessor :key

      attr_accessor :body_stream

      def metadata= metadata
        Array(metadata).each do |name, value|
          headers["x-amz-meta-#{name}"] = value
        end
      end

      def canned_acl= acl
        if acl.kind_of?(Symbol)
          headers["x-amz-acl"] = acl.to_s.gsub("_", "-")
        elsif acl
          headers["x-amz-acl"] = acl
        end
      end

      def storage_class= storage_class
        if storage_class.kind_of?(Symbol)
          headers["x-amz-storage-class"] = storage_class.to_s.upcase
        elsif storage_class
          headers["x-amz-storage-class"] = storage_class
        end
      end

      def host
        Client.path_style_bucket_name?(bucket) ? @host : "#{bucket}.#{@host}"
      end

      def path
        parts = []
        parts << bucket if bucket and Client.path_style_bucket_name?(bucket)
        parts << escape_path(key) if key
        "/#{parts.join('/')}"
      end

      def querystring
        url_encoded_params
      end

      # @param [String, IO] The http request body.  This can be a string or
      #   any object that responds to #read and #eof? (like an IO object).
      def body= body
        @body_stream = StringIO.new(body)
      end

      # @return [String, nil] The http request body.
      def body
        if @body_stream
          string = @body_stream.read
          @body_stream.rewind
          string
        else
          nil
        end
      end

      # From the S3 developer guide:
      #
      # StringToSign = 
      #   HTTP-Verb + "\n" + 
      #   content-md5 + "\n" + 
      #   content-type + "\n" + 
      #   date + "\n" + 
      #   CanonicalizedAmzHeaders + CanonicalizedResource;
      #
      def string_to_sign
        [
          http_method,
          headers.values_at('content-md5', 'content-type').join("\n"),
          signing_string_date,
          canonicalized_headers,
          canonicalized_resource,
        ].flatten.compact.join("\n")
      end

      def signing_string_date
        # if a date is provided via x-amz-date then we should omit the
        # Date header from the signing string (should appear as a blank line)
        if headers.detect{|k,v| k.to_s =~ /^x-amz-date$/i }
          ''
        else
          headers['date'] ||= Time.now.rfc822
        end
      end

      # From the S3 developer guide
      #
      #   CanonicalizedResource = 
      #     [ "/" + Bucket ] + 
      #     <HTTP-Request-URI, from the protocol name up to the querystring> +
      #     [ sub-resource, if present. e.g. "?acl", "?location", 
      #     "?logging", or "?torrent"]; 
      #
      def canonicalized_resource

        parts = []

        # virtual hosted-style requests require the hostname to appear
        # in the canonicalized resource prefixed by a forward slash.
        if 
          Client.dns_compatible_bucket_name?(bucket) and
          !Client.path_style_bucket_name?(bucket)
        then
          parts << "/#{bucket}"
        end
  
        # all requests require the portion of the un-decoded uri up to
        # but not including the query string
        parts << path
 
        # lastly any sub resource querystring params need to be appened
        # in lexigraphical ordered joined by '&' and prefixed by '?'
        params = (sub_resource_params + query_parameters_for_signature)
        unless params.empty?
          parts << '?'
          parts << params.sort.collect{|p| p.to_s }.join('&')
        end

        parts.join
      end

      # CanonicalizedAmzHeaders
      #
      # See the developer guide for more information on how this element
      # is generated.
      #
      def canonicalized_headers
        x_amz = headers.select{|name, value| name.to_s =~ /^x-amz-/i }
        x_amz = x_amz.collect{|name, value| [name.downcase, value] }
        x_amz = x_amz.sort_by{|name, value| name }
        x_amz = x_amz.collect{|name, value| "#{name}:#{value}" }.join("\n")
        x_amz == '' ? nil : x_amz
      end

      def sub_resource_params
        params.select{|p| self.class.sub_resources.include?(p.name) }
      end

      def query_parameters_for_signature
        params.select { |p| self.class.query_parameters.include?(p.name) }
      end

      def add_authorization!(signer)
        if signer.respond_to?(:session_token) and
            token = signer.session_token
          headers["x-amz-security-token"] = token
        end
        signature = URI.escape(signer.sign(string_to_sign, 'sha1'))
        headers["authorization"] = "AWS #{signer.access_key_id}:#{signature}"
      end

      class << self

        def sub_resources
          %w(acl location logging notification partNumber policy 
             requestPayment torrent uploadId uploads versionId 
             versioning versions delete lifecycle)
        end

        def query_parameters
          %w(response-content-type response-content-language
             response-expires response-cache-control
             response-content-disposition response-content-encoding)
        end

      end

    end
  end
end
