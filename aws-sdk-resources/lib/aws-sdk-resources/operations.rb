require 'jmespath'

module Aws
  module Resources
    module Operations

      # Base class for operations. An operation is any object that responds
      # to {#call} receiving a hash of options including:
      #
      # * `:resource` - The resource object the operation is invoked against.
      # * `:args` - An array of arguments given by the caller
      # * `:block` - An optional block argument
      #
      class Base

        include Options

        def initialize(options = {})
          @source = options[:source]
        end

        # @return [Source, nil]
        attr_reader :source

        # @option options[required,Resource] :resource
        # @option options[required,Array<Mixed>] :args
        # @option options[Proc] :block
        # @return [Mixed]
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

        # @option (see Base#call)
        # @return [Seahorse::Client::Response]
        def call(options)
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

        # @option (see Base#call)
        # @return [Object] Returns the value resolved to by {#path}.
        def call(options)
          extract(super)
        end

        private

        def extract(resp)
          @path == '$' ? resp.data : JMESPath.search(@path, resp.data)
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

        # @option (see Base#call)
        # @option options [Integer] :limit (nil)
        # @return [Enumerator]
        def call(options)
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

        # @option (see Base#call)
        # @return [Resource, Array<Resource>]
        def call(options)
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

        # @option (see Base#call)
        # @return [Collection]
        def call(options)
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
              return
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

        # @option (see Base#call)
        # @return [Resource]
        def call(options)
          if argc(options) == arity
            @builder.build(options)
          else
            msg = "wrong number of arguments (#{argc(options)} for #{arity})"
            raise ArgumentError, msg
          end
        end

        def arity
          @builder.sources.count { |s| BuilderSources::Argument === s }
        end

        private

        def argc(options)
          (options[:args] || []).count
        end

      end

      class WaiterOperation < Base

        include Options

        def initialize(options = {})
          @waiter_name = option(:waiter_name, options)
          @waiter_params = option(:waiter_params, options)
          @path = options[:path]
          super
        end

        # @return [Symbol]
        attr_reader :waiter_name

        # @return [Array<RequestParams::Base>]
        attr_reader :waiter_params

        # @return [String<JMESPathExpression>, nil]
        attr_reader :path

        # @option options [required,Resource] :resource
        # @option options [required,Array<Mixed>] :args
        def call(options, &block)

          resource = options[:resource]

          params_hash = {}
          @waiter_params.each do |param|
            param.apply(params_hash, options)
          end

          user_params = options[:params] || {}
          params = deep_merge(user_params, params_hash)
          resp = resource.client.wait_until(@waiter_name, params)

          resource_opts = resource.identifiers.dup
          resource_opts[:data] = JMESPath.search(@path, resp.data) if @path
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
