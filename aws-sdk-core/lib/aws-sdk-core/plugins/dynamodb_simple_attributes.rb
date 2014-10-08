module Aws
  module Plugins

    # Simplifies working with Amazon DynamoDB attribute values.
    # Translates attribute values for requests and responses to sensible
    # Ruby natives.
    #
    # This plugin is enabled by default for all {DynamoDB::Client}
    # objects. You can disable this plugin by passing
    # `simple_attributes: false` to the client constructor:
    #
    #     ddb = Aws::DynamoDB::Client.new(simple_attributes: false)
    #
    # ## Input Examples
    #
    # With this plugin **enabled**, `simple_attributes: true`:
    #
    #     dynamodb.put_item(
    #       table_name: 'aws-sdk',
    #       item: {
    #         id: 'uuid',
    #         age: 35,
    #         tags: Set.new(%w(simple attributes)),
    #         data: StringIO.new('data'),
    #         scores: [5, 4.5, 4.9, nil],
    #         name: {
    #           first: 'John',
    #           last: 'Doe',
    #         }
    #       }
    #     )
    #
    # With this plugin **disabled**, `simple_attributes: false`:
    #
    #     # note that all types are prefixed in a hash and that
    #     # numeric types must be serialized as strings
    #     dynamodb.put_item(
    #       table_name: 'aws-sdk',
    #       item: {
    #         'id' => { s: 'uuid' },
    #         'age' => { n: '35' },
    #         'tags' => { ss: ['simple', 'attributes'] },
    #         'data' => { b: 'data' },
    #         'scores' => {
    #           l: [
    #             { n: '5' },
    #             { n: '4.5' },
    #             { n: '4.9' },
    #             { null: true },
    #           ]
    #         },
    #         'name' => {
    #           m: {
    #             'first' => { s: 'John' },
    #             'last' => { s: 'Doe' },
    #           }
    #         }
    #       }
    #     )
    #
    # ## Output Examples
    #
    # With this plugin **enabled**, `simple_attributes: true`:
    #
    #     resp = dynamodb.get(table_name: 'aws-sdk', key: { id: 'uuid' })
    #     resp.item
    #     {
    #       id: 'uuid',
    #       age: 35,
    #       tags: Set.new(%w(simple attributes)),
    #       data: StringIO.new('data'),
    #       scores: [5, 4.5, 4.9, nil],
    #       name: {
    #         first: 'John',
    #         last: 'Doe',
    #       }
    #     }
    #
    # With this plugin **disabled**, `simple_attributes: false`:
    #
    #     # note that the request `:key` had to be type prefixed
    #     resp = dynamodb.get(table_name: 'aws-sdk', key: { 'id' => { s: 'uuid' }})
    #     resp.item
    #     # {
    #     #   "id"=> <struct s='uuid', n=nil, b=nil, ss=nil, ns=nil, bs=nil, m=nil, l=nil, null=nil, bool=nil>
    #     #   "age"=> <struct s=nil, n="35", b=nil, ss=nil, ns=nil, bs=nil, m=nil, l=nil, null=nil, bool=nil>
    #     #   ...
    #     # }
    #
    # @seahorse.client.option [Boolean] :simple_attributes (true)
    #   Enables working with DynamoDB attribute values using
    #   hashes, arrays, sets, integers, floats, booleans, and nil.
    #
    #   Disabling this option requires that all attribute values have
    #   their types specified, e.g. `{ s: 'abc' }` instead of simply
    #   `'abc'`.
    #
    class DynamoDBSimpleAttributes < Seahorse::Client::Plugin

      option(:simple_attributes) { |config| !config.simple_json }

      def add_handlers(handlers, config)
        if config.simple_attributes
          handlers.add(Handler, step: :initialize)
        end
      end

      class Handler < Seahorse::Client::Handler

        def call(context)
          context.params = translate_input(context)
          @handler.call(context).on(200) do |response|
            response.data = translate_output(response)
          end
        end

        private

        def translate_input(context)
          if shape = context.operation.input
            ValueTranslator.new(shape, :marshal).apply(context.params)
          else
            context.params
          end
        end

        def translate_output(response)
          if shape = response.context.operation.output
            ValueTranslator.new(shape, :unmarshal).apply(response.data)
          else
            response.data
          end
        end

      end

      # @api private
      class ValueTranslator

        # @param [Seahorse::Model::Shapes::Shape] shape
        # @param [Symbol<:marshal,:unmarshal>] mode
        def initialize(shape, mode)
          @shape = shape
          @mode = mode
        end

        def apply(values)
          structure(@shape, values) if @shape
        end

        private

        def structure(shape, values)
          if values.is_a?(Struct)
            values.members.each do |key|
              values[key] = translate(shape.member(key), values[key])
            end
            values
          elsif values.is_a?(Hash)
            values.each.with_object({}) do |(key, value), hash|
              hash[key] = translate(shape.member(key), value)
            end
          else
            values
          end
        end

        def list(shape, values)
          return values unless values.is_a?(Array)
          values.inject([]) do |list, value|
            list << translate(shape.member, value)
          end
        end

        def map(shape, values)
          return values unless values.is_a?(Hash)
          values.each.with_object({}) do |(key, value), hash|
            hash[key] = translate(shape.value, value)
          end
        end

        def translate(shape, value)
          if shape.name == 'AttributeValue'
            DynamoDB::AttributeValue.new.send(@mode, value)
          else
            translate_complex(shape, value)
          end
        end

        def translate_complex(shape, value)
          case shape
          when Seahorse::Model::Shapes::Structure then structure(shape, value)
          when Seahorse::Model::Shapes::List then list(shape, value)
          when Seahorse::Model::Shapes::Map then map(shape, value)
          else value
          end
        end

      end
    end
  end
end
