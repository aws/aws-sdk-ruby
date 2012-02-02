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

      # AWS::Core::Collection::Simple is used by collections that always 
      # recieve every matching items in a single response.
      #
      # This means:
      #
      # * Paging methods are simulated
      #
      # * Next tokens are artificial (guessable numeric offsets)
      #
      # AWS services generally return all items only for requests with a
      # small maximum number of results.  
      #
      # See {AWS::Core::Collection} for documentation on the available
      # collection methods.
      module Simple

        include Model
        include Enumerable
        include Collection

        # (see AWS::Core::Collection#each_batch)
        def each_batch options = {}, &block

          each_opts  = options.dup
          limit      = each_opts.delete(:limit)
          limit      = limit.to_i if limit
          next_token = each_opts.delete(:next_token)
          offset     = next_token ? next_token.to_i - 1 : 0
          total      = 0

          nil_or_next_token = nil

          batch = []
          _each_item(each_opts.dup) do |item|

            total += 1

            # skip until we reach our offset (derived from the "next token")
            next if total <= offset

            if limit

              if batch.size < limit
                batch << item
              else
                # allow _each_item to yield one more item than needed
                # so we can determine if we should return a "next token"
                nil_or_next_token = total
                break
              end

            else
              batch << item
            end

          end

          yield(batch)

          nil_or_next_token

        end

        protected
        def _each_item options = {}, &block
          raise NotImplementedError
        end

      end

    end
  end
end
