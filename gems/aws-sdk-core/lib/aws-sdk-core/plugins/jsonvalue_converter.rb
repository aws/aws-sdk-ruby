# frozen_string_literal: true

module Aws
  module Plugins

    # Converts input value to JSON Syntax for members with jsonvalue trait
    class JsonvalueConverter < Seahorse::Client::Plugin

      # @api private
      class Handler < Seahorse::Client::Handler

        def call(context)
          context.operation.input.shape.members.each do |m, ref|
            convert_jsonvalue(m, ref, context.params)
          end
          @handler.call(context)
        end

        def convert_jsonvalue(m, ref, params)
          return if params.nil? || params[m].nil?

          if ref['jsonvalue']
            param_value = params[m]
            unless param_value.respond_to?(:to_json)
              raise ArgumentError, "The value of params[#{m}] is not JSON serializable."
            end
            params[m] = param_value.to_json
          elsif ref.shape.is_a?(Seahorse::Model::Shapes::StructureShape)
            ref.shape.members.each do |member_m, ref|
              convert_jsonvalue(member_m, ref, params[m])
            end
          elsif ref.shape.is_a?(Seahorse::Model::Shapes::ListShape)
            if ref.shape.member['jsonvalue']
              params[m] = params[m].map do |v|
                v.to_json
              end
            end
          end
        end

      end

      handler(Handler, step: :initialize)
    end

  end
end
