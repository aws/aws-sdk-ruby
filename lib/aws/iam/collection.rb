# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

require 'aws/collections'
require 'aws/inflection'

module AWS
  class IAM
    module Collection

      include Collections::PagedWithLimits

      # Common methods for collection classes that can be filtered by
      # a path prefix.
      module WithPrefix

        include Collection

        # @return [String] The path prefix by which the collection is
        #   filtered.
        attr_reader :prefix

        # @private
        def initialize(options = {})
          @prefix = options[:prefix]
          super
        end

        def each options = {}, &block
          options = {
            :path_prefix => prefix
          }.merge(options) if prefix
          options[:path_prefix] = options.delete(:prefix) if
            options.key?(:prefix)
          if prefix = options[:path_prefix]
            options[:path_prefix] = "/#{prefix}".sub(%r{^//}, "/")
          end
          super(options, &block)
        end

        # Returns a collection object including only those groups whose
        # paths begin with the supplied prefix.
        #
        # @param [String] prefix The path prefix for filtering the
        #   results.
        #
        # @return [GroupCollection]
        def with_prefix(prefix)
          prefix = "/#{prefix}".sub(%r{^//}, "/")
          self.class.new(:prefix => prefix,
                         :config => config)
        end

      end

      # @private
      protected
      def request_method
        name = Inflection.ruby_name(self.class.name).sub(/_collection$/, '')
        "list_#{name}s"
      end

      # @private
      protected
      def next_token_key
        :marker
      end

      # @private
      protected
      def limit_key
        :max_items
      end

    end

  end
end
