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

      # @private
      def initialize options = {}
        @index_document_suffix = index_suffix(options)
        @error_document_key = error_key(options)
      end

      # @return [String]
      attr_accessor :index_document_suffix

      # @return [String]
      attr_accessor :error_document_key

      # @return [Hash]
      def to_hash
        {
          :index_document => { :suffix => index_document_suffix },
          :error_document => { :key => error_document_key },
        }
      end

      # @return [Boolean] Returns +true+ if the other configuration is
      #   the same.
      def eql? other
        other.is_a?(WebsiteConfiguration) and other.to_hash == self.to_hash
      end
      alias_method :==, :eql?

      private

      def index_suffix options
        (options[:index_document] || {})[:suffix] || 'index.html'
      end

      def error_key options
        (options[:error_document] || {})[:key] || 'error.html'
      end

    end
  end
end
