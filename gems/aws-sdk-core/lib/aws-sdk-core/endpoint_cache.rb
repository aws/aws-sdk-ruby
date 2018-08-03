module Aws
  # @api private
  # a LRU cache caching endpoints data
  class EndpointCache

    # default cache entries limit
    MAX_ENTRIES = 1000

    def initialize(options = {})
      @entries = Hash.new
      @max_entries = options[:max_entries] || MAX_ENTRIES
    end

    attr_reader :max_entries

    # fetching an exsiting endpoint
    # delete it and then append it
    def [](key)
      endpoint = @entries[key]
      @entries.delete(key)
      @entries[key] = endpoint 
      endpoint.address
    end

    # checking whether an unexpired endpoint key exists in cache
    def key?(key)
      @entries.delete(key) if @entries.key?(key) && @entries[key].expired?
      @entries.key?(key)
    end

    def auto_refresh!
      pid = fork do
        @entries.each {|k, e| @entries.delete(k) if e.expired?}
        # TODO sleep for a while then restart?
      end
      Process.detach(pid)
    end

    # update cache with requests (using service endpoint operation)
    # to fetch endpoint list (with identifiers when available)
    def update(ctx, key)
      if resp = _request_endpoint(ctx)
        _update_cache(key, resp.endpoints)
      end
    end

    private

    def _update_cache(key, list)
      list.each do |data|
        unless @entries.size < @max_entries
          # delete the least used node when cache is full
          @entries.shift
        end
        @entries[key] = Endpoint.new(data.to_h)
      end
    end

    def _request_endpoint(ctx)
      # build identifier params when available
      params = ctx.operation.input.shape.members.inject({}) do |p, (name, ref)|
        if ref.endpointdiscoveryid
          p[:identifiers] ||= {}
          p[:identifiers][name] = ctx.params[name]
        end
        p
      end
      params[:operation] = ctx.operation_name unless params.empty?

      begin
        ctx.client.send(ctx.endpoint_operation_name.to_sym, params)
      rescue Aws::Errors::ServiceError
        nil 
      end
    end

    class Endpoint
    
      # default endpoint cache time, 1 minute
      CACHE_PERIOD = 1

      def initialize(options)
        @address = options.fetch(:address)
        @cache_period = options[:cache_period] || CACHE_PERIOD
        @created_time = Time.now
      end

      # [String] valid URI address (with path) 
      attr_reader :address

      def expired?
        Time.now - @created_time > @cached_period * 60
      end

    end

  end
end
