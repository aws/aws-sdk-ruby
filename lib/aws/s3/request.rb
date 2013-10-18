# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

    # @api private
    class Request < Core::Http::Request

      include Core::UriEscape

      # @return [bucket] S3 bucket name
      attr_accessor :bucket

      # @return [String] S3 object key
      attr_accessor :key

      # @api private
      attr_accessor :force_path_style

      def metadata= metadata
        Array(metadata).each do |name, value|
          headers["x-amz-meta-#{name}"] = value
        end
      end

      def storage_class= storage_class
        if storage_class.kind_of?(Symbol)
          headers["x-amz-storage-class"] = storage_class.to_s.upcase
        elsif storage_class
          headers["x-amz-storage-class"] = storage_class
        end
      end

      def server_side_encryption= sse
        if sse.is_a?(Symbol)
          headers['x-amz-server-side-encryption'] = sse.to_s.upcase
        elsif sse
          headers['x-amz-server-side-encryption'] = sse
        end
      end

      def host
        path_style? ? @host : "#{bucket}.#{@host}"
      end

      def path_style?
        if force_path_style
          true
        else
          Client.path_style_bucket_name?(bucket)
        end
      end

      def uri

        parts = []
        parts << bucket if bucket and path_style?
        parts << escape_path(key) if key

        path = '/' + parts.join('/')
        querystring = url_encoded_params

        uri = ''
        uri << path
        uri << "?#{querystring}" if querystring
        uri

      end

      # From the S3 developer guide:
      #
      #     StringToSign =
      #       HTTP-Verb ` "\n" `
      #       content-md5 ` "\n" `
      #       content-type ` "\n" `
      #       date ` "\n" `
      #       CanonicalizedAmzHeaders + CanonicalizedResource;
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
          headers['date'] ||= Time.now.httpdate
        end
      end

      # From the S3 developer guide
      #
      #     CanonicalizedResource =
      #       [ "/" ` Bucket ] `
      #       <HTTP-Request-URI, from the protocol name up to the querystring> +
      #       [ sub-resource, if present. e.g. "?acl", "?location",
      #       "?logging", or "?torrent"];
      #
      def canonicalized_resource

        parts = []

        # virtual hosted-style requests require the hostname to appear
        # in the canonicalized resource prefixed by a forward slash.
        if Client.dns_compatible_bucket_name?(bucket) and !path_style?
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
        x_amz = x_amz.collect{|name, value| "#{name}:#{value.to_s.strip}" }.join("\n")
        x_amz == '' ? nil : x_amz
      end

      def sub_resource_params
        params.select{|p| self.class.sub_resources.include?(p.name) }
      end

      def query_parameters_for_signature
        params.select { |p| self.class.query_parameters.include?(p.name) }
      end

      def add_authorization! credentials
        if token = credentials.session_token
          headers["x-amz-security-token"] = token
        end

        secret = credentials.secret_access_key
        signature = Core::Signer.sign(secret, string_to_sign, 'sha1')
        signature = URI.escape(signature)
        headers["authorization"] = "AWS #{credentials.access_key_id}:#{signature}"
      end

      class << self

        def sub_resources
          %w(acl location logging notification partNumber policy
             requestPayment torrent uploadId uploads versionId
             versioning versions restore delete lifecycle tagging cors
             website
            )
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
