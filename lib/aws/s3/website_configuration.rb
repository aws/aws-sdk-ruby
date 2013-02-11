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
require 'base64'

module AWS
  class S3
    class WebsiteConfiguration

      # @option (see S3::Client#put_bucket_website)
      def initialize options = {}
        @options = deep_copy(options)
        if @options.empty?
          @options[:index_document] = { :suffix => 'index.html' }
          @options[:error_document] = { :key => 'error.html' }
        end
      end

      # @return [Hash]
      attr_reader :options

      alias_method :to_hash, :options

      # This method exists for backwards compatability.
      # @return [String,nil]
      # @private
      def index_document_suffix
        (@options[:index_document] || {})[:suffix]
      end

      # This method exists for backwards compatability.
      # @private
      def index_document_suffix= suffix
        @options.delete(:redirect_all_requests_to)
        @options[:index_document] ||= {}
        @options[:index_document][:suffix] = suffix
      end

      # This method exists for backwards compatability.
      # @return [String,nil]
      # @private
      def error_document_key
        (@options[:error_document] || {})[:key]
      end

      # This method exists for backwards compatability.
      # @private
      def error_document_key= key
        @options.delete(:redirect_all_requests_to)
        @options[:error_document] ||= {}
        @options[:error_document][:key] = key
      end

      private

      def deep_copy hash
        Marshal.load(Marshal.dump(hash))
      end

    end
  end
end
