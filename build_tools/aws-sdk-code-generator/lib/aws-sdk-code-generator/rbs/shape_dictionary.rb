# frozen_string_literal: true

module AwsSdkCodeGenerator
  module RBS
    class ShapeDictionary
      include Enumerable

      attr_reader :service, :table, :printed

      def initialize(service:)
        @service = service
        @table = {}
        @printed = {}
        build_dictionary
      end

      def build_dictionary
        @service.api.fetch("operations").each do |_key, body|
          input = body["input"]
          if input && input["shape"]
            deep_add_shape(kind: :input, name: input["shape"], ref: input).tap do |root_shape|
              root_shape.request = true
            end
          end
          output = body["output"]
          if output && output["shape"]
            deep_add_shape(kind: :output, name: output["shape"], ref: output)
          end
        end
        @service.api.fetch("shapes").each do |key, body|
          if body.fetch("type") == "structure" && !!!body['event'] && (body['error'] || body['exception'])
            add_shape(kind: :exception, name: key, ref: body)
            add_shape_members(kind: :output, name: key)
          end
        end
      end

      def [](shape_name)
        @table[shape_name]
      end

      def each
        @service.api.fetch("shapes").each do |key, _body|
          yield [key, self[key]]
        end
      end

      def service_id
        @service.api.fetch("metadata").fetch("serviceId").tr(' ', '')
      end

      def identifier
        service_id.downcase
      end

      def deep_add_shape(kind:, name:, ref: nil)
        root_shape = add_shape(kind:, name:, ref:)
        return unless root_shape
        add_shape_members(kind:, name:)
        root_shape
      end

      def add_shape_members(kind:, name:)
        body = shape_body(name)
        case body.fetch("type")
        when "structure"
          body.fetch("members").each do |_member_name, member_body|
            deep_add_shape(kind:, name: member_body.fetch("shape"), ref: member_body)
          end
        when "list"
          member = body.fetch("member")
          deep_add_shape(kind:, name: member.fetch("shape"), ref: member)
        when "map"
          key = body.fetch("key")
          value = body.fetch("value")
          deep_add_shape(kind:, name: key.fetch("shape"), ref: key)
          deep_add_shape(kind:, name: value.fetch("shape"), ref: value)
        end
      end

      def add_shape(kind:, name:, ref:)
        new_shape = Shape.new(
          name:,
          kind:,
          dictionary: self,
          request: nil,
          ref:,
        )
        if @table[name]
          if !@table[name].include?(new_shape)
            @table[name] << new_shape
          else
            return nil
          end
        else
          @table[name] = [new_shape]
        end
        new_shape
      end

      def shape_body(shape_name)
        @service.api.fetch("shapes").fetch(shape_name)
      end

      def inspect
        "#<#{self.class.name} @service=#{service.name}>"
      end
    end
  end
end
