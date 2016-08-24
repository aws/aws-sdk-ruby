module AwsSdkCodeGenerator
  module Generators
    module Resource
      class Action < Dsl::Method

        include Helper

        def initialize(name:, action:, api:)
          @api = api
          @request = action['request']
          @resource = action['resource']
          super(underscore(name))
          param('options', type:Hash, default:{})
          apply_client_request_docs
          apply_response
          apply_return_tag
        end

        private

        def apply_client_request_docs
          ClientRequestDocs.new(
            request: @request,
            api: @api
          ).apply(self)
        end

        def apply_response
          if @resource && batch?(@resource)
            code('batch = []')
            add(client_request)
            code(BatchBuilder.new(resource: @resource))
            code("#{resource_type}::Collection.new([batch], size: batch.size)")
          elsif @resource
            add(client_request)
            code(Builder.new(resource: @resource, request_made: true))
          else
            add(client_request)
            code('resp.data')
          end
        end

        def client_request
          ClientRequest.new(
            request: @request,
            resp: true
          )
        end

        def apply_return_tag
          if @resource && batch?(@resource)
            returns("#{resource_type}::Collection")
          elsif @resource
            returns(resource_type)
          else
            returns(request_return_type)
          end
        end

        def resource_type
          @resource['type']
        end

        def request_return_type
          operation = @api['operations'][@request['operation']]
          if operation['output']
            "Types::#{operation['output']['shape']}"
          else
            'EmptyStructure'
          end
        end

        def batch?(resource)
          paths = (@resource['identifiers'] || []).map {|i| i['path'] }
          paths << @resource['path']
          paths.compact.any? { |path| path.match(/\[/) }
        end
      end
    end
  end
end
