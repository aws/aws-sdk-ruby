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
    module Collection
      
      # AWS::Core::Collection::Limitable is used by collections that
      # may truncate responses but that also accept a upper limit of
      # results to return in a single request.
      #
      # See {AWS::Core::Collection} for documentation on the available
      # methods.
      module Limitable

        include Model
        include Collection
        include Enumerable

        def each_batch options = {}, &block

          each_opts  = options.dup

          ## limit and batch size should accept string values like '10'

          limit = each_opts.delete(:limit) || _limit
          limit = limit.to_i if limit

          batch_size = each_opts.delete(:batch_size)
          batch_size = batch_size.to_i if batch_size

          next_token = each_opts.delete(:next_token)

          total = 0  # count of items yeilded across all batches

          begin

            max = nil
            if limit or batch_size
              max = []
              max << (limit - total) if limit
              max << batch_size if batch_size
              max = max.min
            end

            batch = []
            next_token = _each_item(next_token, max, each_opts.dup) do |item|

              total += 1
              batch << item

            end

            yield(batch)

          end until next_token.nil? or (limit and limit == total)

          next_token

        end

        protected
        def _each_item next_token, limit, options = {}, &block
          raise NotImplementedError
        end

        # This method should be overriden in collection classes
        # when there is another method to provide a "limit" besides
        # as an option to the enumerable methods.
        #
        # SimpleDB::ItemCollection (for example) allows setting the limit
        # in a method chain, e.g.
        #
        #   collection.limit(10).each {|item| ... }
        #
        # These collection classes can simply override #_limit and return
        # their prefered limit.  This is only called in the abscense of
        # the +:limit+ option.
        #
        # @private
        protected
        def _limit
          nil
        end

      end
    end
  end
end
