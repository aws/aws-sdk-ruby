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

module AWS
  module Core

    # There are 3 collection modules:
    #
    # AWS::Collections::Basic 
    #   - single request returns all items
    #   - (sqs, ec2, ses)
    #
    # AWS::Collections::Paged
    #   - responses may be truncated
    #   - truncated responses return a "next token"
    #   - (sns, sdb)
    #
    # AWS::Collections::PagedWithLimits
    #   - requests accept a "max items"
    #   - responses may be "truncated" 
    #   - truncated responses return a "next token"
    #   - (s3, iam)
    #
    # @private
    module Collections
    
      # @private
      module Basic
    
        include Model
        include Enumerable
  
        def enumerator options = {}
          Enumerator.new(self, :each, options) 
        end
    
        def each options = {}, &block
          each_batch(options) do |batch|
            batch.each(&block)
          end
          nil
        end
  
        def each_batch options = {}, &block
  
          options = options.dup
  
          limit = options.delete(:limit)
          batch_size = options.delete(:batch_size)
  
          total = 0  # count of items yeileded across all batches
  
          each_response(options, limit, batch_size) do |response|
  
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
  
          nil
  
        end
  
        def in_groups_of size, options = {}, &block
  
          group = []
  
          each_batch(options) do |batch|
            batch.each do |item|
              group << item
              if group.size == size
                yield(group)
                group = []
              end
            end
          end
  
          yield(group) unless group.empty?
  
          nil
  
        end
  
        # @note +limit+ has no effect, simply ignored
        # @note +batch_size+ has no effect, simply ignored
        # @private
        protected
        def each_response options, limit, batch_size, &block
          response = client.send(request_method, options)
          yield(response)
        end
  
        # @note Define this method in classes including this module.
        # @private
        protected
        def request_method
          raise NotImplementedError
        end
  
        # @note Define this method in classes including this module.
        # @private
        protected
        def each_item response
          raise NotImplementedError
        end
    
      end
    
      # @private
      module Paged
    
        include Basic
  
        # @note +limit+ has no effect, simply ignored
        # @note +batch_size+ has no effect, simply ignored
        protected
        def each_response options, limit, batch_size, &block
  
          next_token = nil
  
          begin
    
            page_opts = {}
            page_opts[next_token_key] = next_token if next_token
    
            response = client.send(request_method, options.merge(page_opts))
    
            yield(response)
    
            next_token = next_token_for(response)
    
          end until next_token.nil?
    
        end
    
        # Override this methid in collections that use a different name
        # for the param that offsets the find (e.g. :marker, :next_key, etc).
        # @private
        protected
        def next_token_key
          raise NotImplementedError
        end
    
        # Override this method in collections that have an alternate method
        # for finding the next token.  
        # @private
        protected
        def next_token_for response
          method = next_token_key
          response.respond_to?(method) ? response.send(method) : nil
        end
    
      end
    
      # @private
      module PagedWithLimits
    
        include Paged
  
        # A custom first method makes getting exactly one item much more 
        # efficient.  Without the :limit => 1, an entire page of items 
        # is received and then only one is grabbed.
        # @private
        def first
          enumerator(:limit => 1).first  
        end
  
        # @private
        protected
        def each_response options, limit, batch_size, &block
    
          total = 0
          next_token = nil
  
          begin
    
            page_opts = {}
  
            page_opts[next_token_key] = next_token if next_token
  
            if limit or batch_size
              max_items = []
              max_items << (limit - total) if limit
              max_items << batch_size if batch_size
              page_opts[limit_key] = max_items.min
            end
    
            response = client.send(request_method, options.merge(page_opts))
    
            total += yield(response)
    
            next_token = next_token_for(response)
    
          end until next_token.nil? or (limit and limit == total)
    
        end
  
        # Override this methid in collections that use a different name
        # for the param that offsets the find (e.g. :marker, :next_key, etc).
        # @private
        protected
        def limit_key
          raise NotImplementedError
        end
    
      end
  
    end
  end
end
