require 'aws/resource/options'
require 'jamespath'

module Aws
  module Resource
    module Operations

      # Base class for operations.
      class Base

        include Options

        def initialize(options = {})
          @source = options[:source]
        end

        # @return [Source, nil]
        attr_reader :source

        def call(options = {})
          raise NotImplementedError
        end

      end

      # Makes an API request using the resource client, returning the client
      # response.  Most operation classes extend this basic operation.
      class Operation < Base

        # @option options [required, Request] :request
        def initialize(options = {})
          @request = option(:request, options)
          super
        end

        # @return [Request]
        attr_reader :request

        # @option options [required, Resource] :resource
        # @option options [Hash] :params ({})
        # @return [Seahorse::Client::Response]
        def call(options)
          expect_hash(:params, options)
          @request.call(options)
        end

      end

      class DataOperation < Operation

        # @option options [required, Request] :request
        # @option options [required, String<JMESPath>] :path
        def initialize(options = {})
          @path = option(:path, options)
          super
        end

        # @return [String<JMESPath>]
        attr_reader :path

        # @option options [required, Resource] :resource
        # @option options [Hash] :params ({})
        # @return [Object] Returns the value resolved to by {#path}.
        def call(options)
          extract(super)
        end

        private

        def extract(resp)
          @path == '$' ? resp.data : Jamespath.search(@path, resp.data)
        end

      end

      class EnumerateDataOperation < DataOperation

        # @option options [required, Request] :request
        # @option options [required, String<JMESPath>] :path
        # @option options [Symbol] :limit_key
        def initialize(options = {})
          @limit_key = options[:limit_key]
          super
        end

        # @option options [required, Resource] :resource
        # @option options [Hash] :params ({})
        # @return [Enumerator]
        def call(options)
          expect_hash(:params, options)
          if options[:limit]
            enum_for(:limited_each, options[:limit], options)
          else
            enum_for(:each, options)
          end
        end

        private

        def each(options, &block)
          @request.call(options).each do |response|
            extract(response).each(&block)
          end
        end

        def limited_each(limit, options, &block)
          yielded = 0
          each(options) do |value|
            yield(value)
            yielded += 1
            break if yielded == limit
          end
        end

        def extract_limit(options)
          if options[:limit]
            options[:limit]
          else
            (options[:params] || {})[@limit_key]
          end
        end

      end

      class ResourceOperation < Operation

        # @option options [required, Request] :request
        # @option options [required, Builder] :builder
        def initialize(options = {})
          @builder = option(:builder, options)
          super
        end

        # @return [Builder]
        attr_reader :builder

        # @option options [required, Resource] :resource
        # @option options [Hash] :params ({})
        # @return [Resource, Array<Resource>]
        def call(options)
          expect_hash(:params, options)
          @builder.build(options.merge(response:super))
        end

      end

      class EnumerateResourceOperation < ResourceOperation

        # @option options [required, Request] :request
        # @option options [required, Builder] :builder
        # @option options [Symbol] :limit_key
        def initialize(options)
          @limit_key = options[:limit_key]
          super
        end

        # @return [Builder]
        attr_reader :builder

        # @return [Symbol, nil]
        attr_reader :limit_key

        # @option options [required, Resource] :resource
        # @option options [Hash] :params ({})
        # @return [Collection]
        def call(options)
          expect_hash(:params, options)
          Collection.new(self, options)
        end

        # @api private
        # @return [Enumerator<Batch>]
        def batches(options, &block)
          if options[:limit]
            enum_for(:limited_batches, options[:limit], options, &block)
          else
            enum_for(:all_batches, options, &block)
          end
        end

        private

        def all_batches(options, &block)
          options = apply_batch_size(options)
          @request.call(options).each do |response|
            yield(@builder.build(options.merge(response:response)))
          end
        end

        def limited_batches(limit, options, &block)
          remaining = limit
          all_batches(options) do |batch|
            if batch.size < remaining
              yield(batch)
              remaining -= batch.size
            else
              yield(batch.first(remaining))
              break
            end
          end
        end

        def apply_batch_size(options)
          if batch_size = options[:batch_size]
            params = (options[:params] || {}).merge(limit_key => batch_size)
            options.merge(params: params)
          else
            options
          end
        end

      end

      class ReferenceOperation < Base

        # @option options [required, Builder] :builder
        def initialize(options = {})
          @builder = option(:builder, options)
          super
        end

        # @return [Builder]
        attr_reader :builder

        # @option options [required, Resource] :resource
        # @option options [required, String] :argument
        # @return [Resource]
        def call(options)
          @builder.build(options)
        end

        # @return [Boolean] Returns `true` if this builder requires user
        #   input to specify an identifier
        def requires_argument?
          @builder.requires_argument?
        end

      end

      class BatchOperation < Base

        def initialize(options = {})
          @operation = option(:operation, options)
          super
        end

        # @option options [required, Resource::Enumerator] :resources
        # @option options [Hash] :params
        # @return [void]
        def call(options)
          expect_hash(:params, options)
          @operation.call(options.merge(resources: option(:resources, options)))
        end

      end

      class WaiterOperation < Base

        include Options

        def initialize(options = {})
          @waiter_name = option(:waiter_name, options)
          @params = option(:params, options)
          @path = options[:path]
          super
        end

        # @return [Symbol]
        attr_reader :waiter_name

        # @return [Array<RequestParams::Base>]
        attr_reader :params

        # @return [String<JMESPathExpression>, nil]
        attr_reader :path

        def call(options = {}, &block)
          client = option(:client, options)
          params_hash = {}
          @params.each do |param|
            param.apply(params_hash, options)
          end

          user_params = options[:params] || {}
          params = deep_merge(user_params, params_hash)
          resp = client.wait_until(@waiter_name, params)

          resource = options[:resource]
          resource_opts = resource.identifiers.dup
          resource_opts[:data] = Jamespath.search(@path, resp.data) if @path
          resource_opts[:client] = resource.client
          resource.class.new(resource_opts)
        end

        def deep_merge(obj1, obj2)
          case obj1
          when Hash then obj1.merge(obj2) { |key, v1, v2| deep_merge(v1, v2) }
          when Array then obj2 + obj1
          else obj2
          end
        end

      end

    end
  end
end
