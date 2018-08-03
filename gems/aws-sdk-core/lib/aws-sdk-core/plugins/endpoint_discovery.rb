module Aws
  module Plugins
    # @api private
    class EndpointDiscovery < Seahorse::Client::Plugin

      option(:endpoint_discovery,
        default: false,
        doc_type: 'Boolean',
        docstring: <<-DOCS
        DOCS
      )

      option(:endpoint_cache_max_entries,
        default: 1000,
        doc_type: Integer,
        docstring: <<-DOCS) do |config|
        DOCS
        config.endpoint_cache = Aws::EndpointCache.new(
          max_entries: config.endpoint_cache_max_entries
        )
      end

      option(:endpoint_cache_auto_refresh,
        default: false,
        doc_type: 'Boolean',
        docstring: <<-DOCS) do |config|
        DOCS
        config.endpoint_cache.auto_refresh! if config.endpoint_cache_auto_refresh
      end
        

      option(:active_endpoint_cache,
        default: false,
        doc_type: 'Boolean',
        docstring: <<-DOCS
        DOCS
      )

      def add_handlers(handlers, config)
        # TODO consider which step what priority should this live? after param valid?
        # do nothing if endpoint is provided
        handlers.add(Handler, priority: 0) unless config.endpoint
      end

      class Handler < Client::Handler

        def call(context)
          if context.operation.endpoint_operation
            context.http_request.headers['x-amz-api-version'] = context.client.api.metadata['apiVersion']
          elsif discovery_cfg = context.operation.endpoint_discovery
            endpoint = _discover_endpoint(context, discovery_cfg.required)
            context.http_request.endpoint = URI.parse(endpoint.address) if endpoint 
          end
          @handler.call(context)
        end

        private

        def _discover_endpoint(ctx, required)
          cache = ctx.config.endpoint_cache 
          key = cache_key(ctx)
          
          if required
            # required for the operation
            unless cache.key?(key)
              cache.update(key, context)
            end
            endpoint = cache[key]
            # hard fail if endpoint is not discovered
            raise Aws::EndpointDiscoverError.new unless endpoint
            endpoint
          elsif ctx.config.endpoint_discovery
            # not required for the operation
            # but enabled
            if cache.key?(key)
              cache[key]
            elsif ctx.config.active_endpoint_cache
              # enabled active cache pull
              # start a detached child process
              pid = fork do
                # TODO set a limit to those attempts?
                while !cache.key?(key) do
                  sleep(60)
                  cache.update(key, context)
                end
              end
              Process.detach(pid)
            else
              # disabled active cache pull
              # attempt, buit fail soft
              cache.update(key, context)
              cache[key]
            end
          end
        end

        def cache_key(ctx)
          parts = []
          parts << ctx.config.access_key_id
          ctx.operation.input.shape.members.inject(parts) do |p, (name, ref)|
            p << ctx.params[name] if ref.endpointdiscoveryid
            p
          end
          parts.insert(1, ctx.operation_name) if parts.size > 1
          parts.join('_')
        end
      end

    end
  end
end
