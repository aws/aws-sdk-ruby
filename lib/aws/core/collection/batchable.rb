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
    module Collection
      
      module Batchable

        include Collection

        def each_batch options = {}, &block

          raise NotImplementedError

          each_opts  = options.dup

          limit = each_opts.delete(:limit)

          next_token, skip = each_opts.delete(:next_token)

          total = 0  # count of items yeileded across all batches

          begin

            batch = []

            next_token = _each_item(next_token, each_opts.dup) do |item|
              total += 1
              batch << item

              if limit and total == limit
                yield(batch)
              end

            end

          end until next_token.nil? or (limit and limit = total)









          options = options.dup

          limit = options.delete(:limit)
          batch_size = options.delete(:batch_size)
          options.delete(:next_token) if [nil, ''].include?(options[:next_token])

          total = 0  # count of items yeileded across all batches

          _each_response(options, limit, batch_size) do |response|

            batch = []
            each_item(response) do |item|
              batch << item
              if limit and (total += 1) == limit
                yield(batch)
                return
              end
            end

            yield(batch)

            batch.size

          end

        end

        # @note +limit+ is ignored because Batchable colections do not
        #   accept a +:limit+ option at the service level.
        # @note +batch_size+ is ignored because Batchable collections do not
        #   accept a +:batch_size+ option at the service level.
        protected
        def _each_response options, limit, batch_size, &block
  
          next_token = nil
  
          begin
    
            page_opts = {}
            page_opts[next_token_key] = next_token if next_token
    
            response = client.send(request_method, options.merge(page_opts))
    
            yield(response)
    
            next_token = _next_token_for(response)
    
          end until next_token.nil?
          
          nil
    
        end
    
        # Override this method in collections that have an alternate method
        # for finding the next token.  
        protected
        def _next_token_for response
          method = _next_token_key
          response.respond_to?(method) ? response.send(method) : nil
        end

        protected
        def _next_token_key
          :next_token
        end

        protected
        def _each_item next_token, options = {}, &block
          raise NotImplementedError
        end

      end

    end
  end
end
