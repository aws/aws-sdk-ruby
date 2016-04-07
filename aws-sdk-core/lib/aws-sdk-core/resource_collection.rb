module Aws
  module ResourceCollection

    def self.included(base)
      base.send(:include, Enumerable)
    end

    # @api private
    # @param [Enumerator<Array>] batches
    # @option options [Integer] :limit
    # @option options [Integer] :size
    def initialize(batches, options = {})
      @batches = batches
      @limit = options[:limit]
      @size = [@limit, options[:size]].compact.min
    end

    # @return [Integer,nil]
    #   Returns the size of this collection if known, returns `nil` when
    #   an API call is necessary to enumerate items in this collection.
    def size
      @size
    end
    alias :length :size

    # @return [Enumerator<Band>]
    def each(&block)
      Enumerator.new(@limit) do |y|
        batches.each do |batch|
          batch.each do |band|
            y.yield(band)
          end
        end
      end
    end

    # Returns a new collection that will enumerate a limited number of items.
    #
    #     collection.limit(10).each do |band|
    #       # yields at most 10 times
    #     end
    #
    # @return [Collection]
    # @param [Integer] limit
    def limit(limit)
      Collection.new(@batches, limit: limit)
    end

    private

    def batches
      case @limit
      when 0 then []
      when nil then @batches
      else limited_batches
      end
    end

    def limited_batches
      Enumerator.new do |y|
        yielded = 0
        @batches.each do |batch|
          batch = batch.take(@limit - yielded)
          if batch.size > 0
            y.yield(batch)
            yielded += batch.size
          end
          break if remaining == 0
        end
      end
    end

  end
end
