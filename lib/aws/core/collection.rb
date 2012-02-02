# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

    # = Different Collection Types in AWS
    #
    # The Collection module acts as a namespace and base implementation for
    # the primary collection types in AWS:
    #
    # * {AWS::Core::Collection::Simple}
    # * {AWS::Core::Collection::Limitable}
    #
    # Each AWS service allows provides a method to enumerate resources.
    #
    # * Services that return all results in a single response use
    #   {AWS::Core::Collection::Simple}.
    #
    # * Services that truncate large results sets *AND* allow you to provide
    #   a perfered maximum number of results use 
    #   {AWS::Core::Collection::Limitable}.
    #
    module Collection

      AWS.register_autoloads(self) do
        autoload :Simple,    'simple'
        autoload :Limitable, 'limitable'
      end

      include Enumerable
  
      # Yields once for every item in this collection.
      #
      #   collection.each {|item| ... }
      #
      # @note If you want fewer than all items, it is generally better 
      #   to call {#page} than {#each} with a +:limit+.
      #
      # @param [Hash] options
      #
      # @option options [Integer] :limit (nil) The maximum number of
      #   items to enumerate from this collection.
      #
      # @option options [next_token] :next_token (nil) 
      #   Acts as an offset.  +:next_token+ may be returned by {#each} and
      #   {#each_batch} when a +:limit+ is provided.
      #
      # @return [nil_or_next_token] Returns nil if all items were enumerated.
      #   If some items were excluded because of a +:limit+ option then
      #   a +next_token+ is returned.  Calling an enumerable method on 
      #   the same collection with the +next_token+ acts like an offset.
      #
      def each options = {}, &block
        each_batch(options) do |batch|
          batch.each(&block)
        end
      end

      # Yields items from this collection in batches.
      #
      #   collection.each_batch do |batch|
      #     batch.each do |item|
      #       # ...
      #     end
      #   end
      #
      # == Variable Batch Sizes
      #
      # Each AWS service has its own rules on how it returns results.
      # Because of this batch size may very based on:
      #
      # * Service limits (e.g. S3 limits keys to 1000 per response)
      #
      # * The size of response objects (SimpleDB limits responses to 1MB)
      #
      # * Time to process the request
      #
      # Because of these variables, batch sizes may not be consistent for
      # a single collection.  Each batch represents all of the items returned
      # in a single resopnse.
      #
      # @note If you require fixed size batches, see {#in_groups_of}.
      #
      # @param (see #each)
      #
      # @option (see #each)
      #
      # @return (see #each)
      #
      def each_batch options = {}, &block
        raise NotImplementedError
      end

      # Use this method when you want to call a method provided by 
      # Enumerable, but you need to pass options:
      #
      #   # raises an error because collect does not accept arguments
      #   collection.collect(:limit => 10) {|i| i.name }
      #
      #   # not an issue with the enum method
      #   collection.enum(:limit => 10).collect(&:name)
      #
      # @param (see #each)
      #
      # @option (see #each)
      #
      # @return [Enumerable::Enumerator] Returns an enumerator for this
      #   collection.
      #
      def enum options = {}
        Enumerator.new(self, :each, options) 
      end
      alias_method :enumerator, :enum

      # Returns the first item from this collection.
      #
      # @return [item_or_nil] Returns the first item from this collection or
      #   nil if the collection is empty.
      #
      def first options = {}
        enum(options.merge(:limit => 1)).first
      end

      # Yields items from this collection in groups of an exact
      # size (except for perhaps the last group). 
      #
      #   collection.in_groups_of (10, :limit => 30) do |group|
      #
      #     # each group should be exactly 10 items unless
      #     # fewer than 30 items are returned by the service
      #     group.each do |item|
      #       #...
      #     end
      #
      #   end
      #   
      # @param [Integer] size Size each each group of objects
      #   should be yielded in.
      # @param [Hash] options
      # @option (see #each)
      # @return (see #each)
      def in_groups_of size, options = {}, &block

        group = []

        nil_or_next_token = each_batch(options) do |batch|
          batch.each do |item|
            group << item
            if group.size == size
              yield(group)
              group = []
            end
          end
        end

        yield(group) unless group.empty?

        nil_or_next_token

      end

      # Returns a single page of results in a kind-of array ({PageResult}).
      #
      #   items = collection.page(:per_page => 10) # defaults to 10 items
      #   items.is_a?(Array) # => true
      #   items.size         # => 8
      #   items.per_page     # => 10
      #   items.last_page?   # => true
      #
      # If you need to display a "next page" link in a web view you can
      # use the #more? method.  Just make sure the generated link
      # contains the +next_token+.
      #
      #   <% if items.more? %>
      #     <%= link_to('Next Page', params.merge(:next_token => items.next_token) %>
      #   <% end %>
      #
      # Then in your controller you can find the next page of results:
      #
      #   items = collection.page(:next_token => params[:next_token])
      #
      # Given a {PageResult} you can also get more results directly:
      #
      #   more_items = items.next_page
      #
      # @note This method does not accept a +:page+ option, which means you
      #   can only start at the begining of the collection and request
      #   the next page of results.  You can not choose an offset
      #   or know how many pages of results there will be.
      #
      # @param [Hash] options A hash of options that modifies the
      #   items returned in the page of results.
      #
      # @option options [Integer] :per_page (10) The number of results
      #   to return for each page.
      #
      # @option options [String] :next_token (nil) A token that indicates
      #   an offset to use when paging items.  Next tokens are returned
      #   by {PageResult#next_token}.  
      #
      #   Next tokens should only be consumed by the same collection that
      #   created them.
      #
      def page options = {}
        
        each_opts = options.dup

        per_page = each_opts.delete(:per_page)
        per_page = [nil,''].include?(per_page) ? 10 : per_page.to_i

        each_opts[:limit] = per_page

        items = []
        next_token = each(each_opts) do |item|
          items << item
        end

        Core::PageResult.new(self, items, per_page, next_token)

      end
  
    end
  end
end
