module AwsSdkCodeGenerator
  module Generators
    module Resource

      # TODO : build and return collection
      # TODO : filter @option tags related to pagination
      # TODO : don't filter @option tags that can be merged, e.g. EC2 Filters
      class HasManyAssociation < Dsl::Method

        def initialize(name:, has_many:, api:, paginators:)

          @has_many = has_many
          @paginators = paginators

          super(underscore(name))

          param('options', type:Hash, default:{})

          ClientRequestDocs.new(
            request: has_many['request'],
            api: api,
            skip: paging_options,
          ).apply(self)

          paginated? ? paginated_reqeust : non_paginated_request

          returns(collection_class)
        end

        private

        def paginated_reqeust
          code do |c1|
            c1 << 'batches = Enumerator.new do |y|'
            c1.indent do |c2|
              c2 << client_request(true)
              c2 << "resp.each_page do |page|"
              c2.indent do |c3|
                c3 << 'batch = []'
                c3 << BatchBuilder.new(resource: @has_many['resource'], resp_var_name:'page')
                c3 << 'y.yield(batch)'
              end
              c2 << 'end'
            end
            c1 << 'end'
            c1 << "#{collection_class}.new(batches)"
          end
        end

        def non_paginated_request
          code do |code|
            code << 'batches = Enumerator.new do |y|'
            code.indent do |c|
              c << 'batch = []'
              c << client_request(true)
              c << BatchBuilder.new(resource: @has_many['resource'])
              c << 'y.yield(batch)'
            end
            code << 'end'
            code << "#{collection_class}.new(batches)"
          end
        end

        def client_request(resp)
          ClientRequest.new(
            request: @has_many['request'],
            resp: resp
          )
        end

        def collection_class
          "#{@has_many['resource']['type']}::Collection"
        end

        def paginated?
          @paginators &&
          @paginators['pagination'][operation_name] &&
          @paginators['pagination'][operation_name]['input_token']
        end

        def paging_options
          if paginated?
            skip = []
            skip << @paginators['pagination'][operation_name]['input_token']
            skip << @paginators['pagination'][operation_name]['limit_key']
            skip.compact
          else
            []
          end
        end

        def operation_name
          @has_many['request']['operation']
        end

      end
    end
  end
end
