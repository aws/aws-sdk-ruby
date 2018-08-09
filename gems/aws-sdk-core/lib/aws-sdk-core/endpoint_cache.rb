module Aws
  # @api private
  # a LRU cache caching endpoints data
  class EndpointCache

    # default cache entries limit
    MAX_ENTRIES = 1000

    def initialize(options = {})
      @max_entries = options[:max_entries] || MAX_ENTRIES
      @entries = {} # store endpoints
      @pool = {} # store polling threads
    end

    # @return [Integer] Max size limit of cache
    attr_reader :max_entries

    # return [Hash] Polling threads pool
    attr_reader :pool

    # @param [String] key
    # @return [Endpoint]
    def [](key)
      # fetching an exsiting endpoint delete it and then append it
      endpoint = @entries[key]
      @entries.delete(key)
      @entries[key] = endpoint 
      endpoint
    end

    # @param [String] key
    # @param [Hash] value
    def []=(key, value)
      # delete old value if exists
      self.delete(key)
      # delete the least recent used endpoint when cache is full
      unless @entries.size < @max_entries
        old_key, _ = @entries.shift
        self.delete_polling_thread(old_key)
      end
      @entries[key] = Endpoint.new(value.to_h)
    end

    # checking whether an unexpired endpoint key exists in cache
    def key?(key)
      if @entries.key?(key) && (@entries[key].nil? || @entries[key].expired?)
        self.delete(key)
      end
      @entries.key?(key)
    end

    # remove entry only
    # # remove entry only
    def delete(key)
      @entries.delete(key)
    end

    # kill the old polling thread and remove it from pool
    def delete_polling_thread(key)
      Thread.kill(@pool[key]) if @pool.key?(key)
      @pool.delete(key)
    end

    # update cache with requests (using service endpoint operation)
    # to fetch endpoint list (with identifiers when available)
    def update(key, ctx)
      resp = _request_endpoint(ctx)
      if resp && resp.endpoints
        resp.endpoints.each { |e| self[key] = e }
      end
    end

    # update polling threads pool
    def update_polling_pool(key, thread)
      @pool[key] = thread
    end

    # kill all polling threads
    def stop_polling!
      @pool.each { |_, t| Thread.kill(t) }
      @pool = {}
    end

    private

    def _request_endpoint(ctx)
      # build identifier params when available
      params = ctx.operation.input.shape.members.inject({}) do |p, (name, ref)|
        if ref["endpointdiscoveryid"]
          p[:identifiers] ||= {}
          p[:identifiers][name] = ctx.params[name]
        end
        p
      end
      params[:operation] = ctx.operation_name unless params.empty?

      begin
        endpoint_operation_name = ctx.config.api.endpoint_operation
        ctx.client.send(endpoint_operation_name, params)
      rescue Aws::Errors::ServiceError
        nil 
      end
    end

    class Endpoint
    
      # default endpoint cache time, 1 minute
      CACHE_PERIOD = 1

      def initialize(options)
        @address = options.fetch(:address)
        @cache_period = options[:cache_period_in_minutes] || CACHE_PERIOD
        @created_time = Time.now
      end

      # [String] valid URI address (with path) 
      attr_reader :address

      def expired?
        Time.now - @created_time > @cache_period * 60
      end

    end

  end
end
