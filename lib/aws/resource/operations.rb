require 'aws/resource/options'

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

        # @option options [required, Resource] :resource
        # @option options [Hash] :params ({})
        # @return [Enumerator]
        def call(options)
          expect_hash(:params, options)
          enum_for(:each_value, options)
        end

        private

        def each_value(options, &block)
          @request.call(options).each do |response|
            extract(response).each(&block)
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
          limit = options[:limit] || extract_limit_param(options)
          if limit
            enum_for(:limited_batches, limit, options, &block)
          else
            enum_for(:all_batches, options, &block)
          end
        end

        private

        def all_batches(options, &block)
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

        def extract_limit_param(options)
          if key = limit_param_key(options)
            params = options[:params] || {}
            params[key]
          end
        end

        # The client api metadata has a paging provider.  The paging
        # provider will specify if there is a 
        def limit_param_key(options)
          client = option(:client, options)
          api = client.config.api
          paging = api.metadata('paging')
          pager = paging.pager(api.operation(@request.method_name).name)
          pager.limit_key
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
    end
  end
end
