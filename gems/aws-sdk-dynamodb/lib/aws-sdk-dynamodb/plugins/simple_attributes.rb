# frozen_string_literal: true

module Aws
  module DynamoDB
    module Plugins
      # Simplifies working with Amazon DynamoDB attribute values.
      # Translates attribute values for requests and responses to sensible Ruby natives.
      #
      # This plugin is enabled by default for all {DynamoDB::Client} objects.
      # You can disable this plugin by passing `simple_attributes: false` to the client constructor:
      #
      #     ddb = Aws::DynamoDB::Client.new(simple_attributes: false)
      #
      # Members are marshalled using the following objects:
      #
      # * `Hash` or `#to_h` => `:m`
      # * `Array` => `:l`
      # * `String` or `Symbol` or `#to_str` => `:s`
      # * `Numeric` => `:n`
      # * `StringIO` or `IO` => `:b`
      # * `Set<Object>` => `:ss` or `:ns` or `:bs`
      # * `true` or `false` => `:bool`
      # * `nil` => `:null`
      #
      # Members are unmarshalled into the following objects:
      #
      # * `:m` => `Hash`
      # * `:l` => `Array`
      # * `:s` => `String`
      # * `:n` => `BigDecimal`
      # * `:b` => `StringIO`
      # * `:null` => `nil`
      # * `:bool` => `true` or `false`
      # * `:ss` => `Set<String>`
      # * `:ns` => `Set<BigDecimal>`
      # * `:bs` => `Set<StringIO>`
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
      #     resp = dynamodb.get_item(table_name: 'aws-sdk', key: { id: 'uuid' })
      #     resp.item
      #     #=> {
      #       'id' => 'uuid',
      #       'age' => BigDecimal('35'),
      #       'tags' => Set.new(%w(simple attributes)),
      #       'data' => StringIO.new('data'),
      #       'scores' => [BigDecimal('5'), BigDecimal('4.5'), BigDecimal('4.9'), nil],
      #       'name' => {
      #         'first' => 'John',
      #         'last' => 'Doe',
      #       }
      #     }
      #
      # With this plugin **disabled**, `simple_attributes: false`:
      #
      #     # note that the request `:key` had to be type prefixed
      #     resp = dynamodb.get_item(table_name: 'aws-sdk', key: { 'id' => { s: 'uuid' }})
      #     resp.item['id'].s #=> 'uuid'
      #     resp.item['age'].n #=> '35'
      #
      class SimpleAttributes < Smithy::Client::Plugin
        option(
          :simple_attributes,
          default: true,
          doc_type: 'Boolean',
          docstring: <<~DOCS
            Enables working with DynamoDB attribute values using Ruby primitives.
            Disabling this option requires that all request attribute values have their types specified,
            e.g. `{ s: 'abc' }` instead of simply `'abc'`.
            See {Aws::DynamoDB::Plugins::SimpleAttributes} for more information.
          DOCS
        )

        def add_handlers(handlers, config)
          return unless config.simple_attributes

          handlers.add(Handler, step: :initialize)
        end

        # @api private
        class Handler < Smithy::Client::Handler
          def call(context)
            context.params = translate_input(context)
            @handler.call(context).on_done(200) do |response|
              response.data = translate_output(response)
            end
          rescue Smithy::Client::ServiceError => e
            e.data = translate_error_data(context, e.data)
            raise e
          end

          private

          def translate_input(context)
            if (shape = context.operation.input)
              ValueTranslator.new(shape, :marshal).apply(context.params)
            else
              context.params
            end
          end

          def translate_output(response)
            if (shape = response.context.operation.output)
              ValueTranslator.new(shape, :unmarshal).apply(response.data)
            else
              response.data
            end
          end

          def translate_error_data(context, error_data)
            shape = context.operation.errors.find do |e|
              error_data.is_a?(e.type)
            end
            if shape
              ValueTranslator.new(shape, :unmarshal).apply(error_data)
            else
              error_data
            end
          end
        end

        # @api private
        class ValueTranslator
          include Smithy::Schema::Shapes

          def self.apply(rules, mode, data)
            new(rules, mode).apply(data)
          end

          def initialize(rules, mode)
            @rules = rules
            @mode = mode
          end

          def apply(values)
            structure(@rules, values) if @rules
          end

          private

          def list(ref, values)
            return values unless values.is_a?(Array)

            member_ref = ref.target.member
            values.inject([]) do |list, value|
              list << translate(member_ref, value)
            end
          end

          def map(ref, values)
            return values unless values.is_a?(Hash)

            value_ref = ref.target.value
            values.each.with_object({}) do |(key, value), hash|
              hash[key] = translate(value_ref, value)
            end
          end

          def structure(ref, values) # rubocop:disable Metrics/AbcSize
            shape = ref.target
            if values.is_a?(Struct)
              values.members.each.with_object(values.class.new) do |key, st|
                st[key] = translate(shape.member(key), values[key])
              end
            elsif values.is_a?(Hash)
              values.each.with_object({}) do |(key, value), hash|
                hash[key] = translate(shape.member(key), value)
              end
            else
              values
            end
          end

          def translate(ref, value)
            if ref.target == Schema::AttributeValue
              AttributeValue.new.send(@mode, value)
            else
              translate_complex(ref, value)
            end
          end

          def translate_complex(ref, value)
            case ref.target

            when ListShape then list(ref, value)
            when MapShape then map(ref, value)
            when StructureShape then structure(ref, value)
            else value
            end
          end
        end
      end
    end
  end
end
