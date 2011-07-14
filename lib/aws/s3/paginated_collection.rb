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
  class S3

    # @private
    module PaginatedCollection

      def each(options = {}, &block)
        each_page(options) do |page|
          each_member_in_page(page, &block)
        end
        nil
      end

      protected
      def each_member_in_page(page, &block); end

      protected
      def each_page(options = {}, &block)
        opts = list_options(options)
        limit = options[:limit]
        batch_size = options[:batch_size] || 1000
        markers = {}
        received = 0

        loop do
          page_opts = opts.dup
          page_opts.merge!(markers)
          page_opts[limit_param] =
            limit ? [limit - received, batch_size].min : batch_size

          page = list_request(page_opts)
          markers = next_markers(page)
          received += page_size(page)

          yield(page)

          return unless page.truncated?
        end
      end

      protected
      def list_request(options)
        raise NotImplementedError
      end

      protected
      def list_options(options)
        opts = {}
        opts[:bucket_name] = bucket.name if respond_to?(:bucket)
        opts
      end

      protected
      def limit_param
        raise NotImplementedError
      end

      protected
      def pagination_markers
        [:key_marker]
      end

      protected
      def next_markers(page)
        pagination_markers.inject({}) do |markers, marker|
          markers[marker] = page.send("next_#{marker}")
          markers
        end
      end

      protected
      def page_size(resp)
        (resp.respond_to?(:common_prefixes) and
         prefixes = resp.common_prefixes and
         prefixes.size) or 0
      end

    end

  end
end
