module Aws
  module Plugins
    # @api private
    class EndpointDiscovery < Seahorse::Client::Plugin

      option(:endpoint_discovery,
        default: false,
        doc_type: 'Boolean',
        docstring: <<-DOCS) do |cfg|
        DOCS
        resolve_endpoint_discovery(cfg)
      end

      option(:endpoint_cache_max_entries,
        default: 1000,
        doc_type: Integer,
        docstring: <<-DOCS
        DOCS
      )

      option(:endpoint_cache_poll_interval,
        default: 60,
        doc_type: Integer,
        docstring: <<-DOCS
        DOCS
      )

      option(:endpoint_cache) do |cfg|
        Aws::EndpointCache.new(
          max_entries: cfg.endpoint_cache_max_entries
        )
      end

      option(:active_endpoint_cache,
        default: false,
        doc_type: 'Boolean',
        docstring: <<-DOCS
        DOCS
      )

      def add_handlers(handlers, config)
        # TODO consider which step what priority should this live? after param valid?
        # # need to > 50
        handlers.add(Handler, priority: 90) if config.regional_endpoint
      end

      class Handler < Seahorse::Client::Handler

        def call(context)
          if context.operation.endpoint_operation
            context.http_request.headers['x-amz-api-version'] = context.config.api.version
            _apply_endpoint_discovery_user_agent(context)
          elsif discovery_cfg = context.operation.endpoint_discovery
            endpoint = _discover_endpoint(context, discovery_cfg["required"])
            context.http_request.endpoint = URI.parse("https://" + endpoint.address) if endpoint
            if endpoint || context.config.endpoint_discovery
              _apply_endpoint_discovery_user_agent(context)
            end
          end
          @handler.call(context)
        end

        private

        def _apply_endpoint_discovery_user_agent(ctx)
          if ctx.config.user_agent_suffix.nil?
            ctx.config.user_agent_suffix = "endpoint-discovery"
          elsif !ctx.config.user_agent_suffix.include? "endpoint-discovery"
            ctx.config.user_agent_suffix += "endpoint-discovery"
          end
        end

        def _discover_endpoint(ctx, required)
          cache = ctx.config.endpoint_cache 
          key = cache_key(ctx)

          if required
            # required for the operation
            unless cache.key?(key)
              cache.update(key, ctx)
            end
            endpoint = cache[key]
            # hard fail if endpoint is not discovered
            raise Aws::Errors::EndpointDiscoveryError.new unless endpoint
            endpoint
          elsif ctx.config.endpoint_discovery
            # not required for the operation
            # but enabled
            if cache.key?(key)
              cache[key]
            elsif ctx.config.active_endpoint_cache
              # enabled active cache pull
              # start a thread for polling endpoints
              interval = ctx.config.endpoint_cache_poll_interval
              # kill the previous polling thread by key
              # because ctx might be changed
              cache.delete_polling_thread(key)
              thread = Thread.new do
                # TODO set a limit to those attempts?
                while !cache.key?(key) do
                  cache.update(key, ctx)
                  sleep(interval)
                end
              end
              cache.update_polling_pool(key, thread)
              cache[key]
            else
              # disabled active cache pull
              # attempt, buit fail soft
              cache.update(key, ctx)
              cache[key]
            end
          end
        end

        def cache_key(ctx)
          parts = []
          parts << ctx.config.credentials.access_key_id
          ctx.operation.input.shape.members.inject(parts) do |p, (name, ref)|
            p << ctx.params[name] if ref["endpointdiscoveryid"]
            p
          end
          parts.insert(1, ctx.operation_name) if parts.size > 1
          parts.join('_')
        end
      end

      private

      def self.resolve_endpoint_discovery(cfg)
        env = ENV['AWS_ENABLE_ENDPOINT_DISCOVERY']
        shared_cfg = Aws.shared_config.endpoint_discovery(profile: cfg.profile)
        str_2_bool(env) || str_2_bool(shared_cfg)
      end

      def self.str_2_bool(str)
        case str.to_s
        when "true" then true
        when "false" then false
        else
          nil
        end
      end

    end
  end
end
