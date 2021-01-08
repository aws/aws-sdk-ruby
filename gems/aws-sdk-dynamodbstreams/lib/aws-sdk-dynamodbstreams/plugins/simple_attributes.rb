# frozen_string_literal: true

module Aws
  module DynamoDBStreams
    module Plugins
      # Simplifies working with Amazon DynamoDBStreams attribute values.
      # Translates attribute values from responses to sensible Ruby natives.
      #
      # This plugin is disabled by default for all {DynamoDBStreams::Client}
      # objects. You can enable this plugin by passing
      # `simple_attributes: false` to the client constructor:
      #
      #     ddb = Aws::DynamoDBStreams::Client.new(simple_attributes: true)
      #
      # ## Output Examples
      #
      # With this plugin **enabled**, `simple_attributes: true`:
      #
      #     resp = dynamodbstreams.get_records(shard_iterator: iterator)
      #     resp.records.first.dynamodb.new_image
      #     {
      #       id: 'uuid',
      #       enabled: true,
      #       tags: #<Set: {"attributes", "simple"}>,
      #       data: #<StringIO:0x00007fe4061e6bc0>,
      #       scores: [0.1e1, 0.2e1, 0.3e1, nil],
      #       name: {
      #         first: 'John',
      #         last: 'Doe',
      #       }
      #     }
      #
      # With this plugin **disabled**, `simple_attributes: false`:
      #
      #     resp = dynamodbstreams.get_records(shard_iterator: iterator)
      #     resp.records.first.dynamodb.new_image
      #     {
      #       "id"=> <struct s='uuid', n=nil, b=nil, ss=nil, ns=nil, bs=nil, m=nil, l=nil, null=nil, bool=nil>
      #       "enabled"=> <struct s=nil, n=nil, b=nil, ss=nil, ns=nil, bs=nil, m=nil, l=nil, null=nil, bool=true>
      #       ...
      #     }
      #
      class SimpleAttributes < Seahorse::Client::Plugin

        option(:simple_attributes,
          default: false,
          doc_type: 'Boolean',
          docstring: <<-DOCS
When enabled, returns DynamoDBStream attribute values using
hashes, arrays, sets, integers, floats, booleans, and nil.
        DOCS
        )

        def add_handlers(handlers, config)
          if config.simple_attributes
            handlers.add(Handler, step: :initialize, operations: [:get_records])
          end
        end

        class Handler < Seahorse::Client::Handler

          def call(context)
            @handler.call(context).on(200) do |response|
              response.data = translate_output(response)
            end
          end

          private

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

          include Seahorse::Model::Shapes

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

          def structure(ref, values)
            shape = ref.shape
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

          def list(ref, values)
            return values unless values.is_a?(Array)
            member_ref = ref.shape.member
            values.inject([]) do |list, value|
              list << translate(member_ref, value)
            end
          end

          def map(ref, values)
            return values unless values.is_a?(Hash)
            value_ref = ref.shape.value
            values.each.with_object({}) do |(key, value), hash|
              hash[key] = translate(value_ref, value)
            end
          end

          def translate(ref, value)
            if ClientApi::AttributeValue === ref.shape
              AttributeValue.new.send(@mode, value)
            else
              translate_complex(ref, value)
            end
          end

          def translate_complex(ref, value)
            case ref.shape
            when StructureShape then structure(ref, value)
            when ListShape then list(ref, value)
            when MapShape then map(ref, value)
            else value
            end
          end

        end
      end
    end
  end
end
