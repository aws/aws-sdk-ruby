# frozen_string_literal: true

module AwsSdkCodeGenerator
  module RBS
    class Waiter < Struct.new(
      :name,
      :class_name,
      :client_overload_keyword_argument,
      :client_overload_positional_argument,
      :waiter_overload_keyword_argument,
      :waiter_overload_positional_argument,
      keyword_init: true
    )
      class << self
        def build_list(api:, waiters:)
          operations = api.fetch("operations")
          waiters =
            if waiters&.first
              waiters["waiters"]
            else
              {}
            end
          waiters.map do |waiter_name, waiter|
            operation = waiter.fetch("operation")
            operation_ref = operations[operation]
            input_shape = operation_ref.dig("input", "shape")
            include_required = api["shapes"][input_shape]&.[]("required")&.empty?&.!

            name = ":#{Underscore.underscore(waiter_name)}"
            shapes = api.fetch("shapes")
            input_shape_ref = shapes[input_shape]
            params = AwsSdkCodeGenerator::RBS::KeywordArgumentBuilder.new(
              api: api,
              shape: input_shape_ref,
              newline: true,
            ).format(indent: ' ' * 18)
            returns = operation_ref.dig("output", "shape") ? "Client::_#{operation}ResponseSuccess" : "::Seahorse::Client::_ResponseSuccess[::Aws::EmptyStructure]"
            prefix = include_required ? "" : "?"

            new.tap do |w|
              w.name = name
              w.class_name = waiter_name
              w.client_overload_keyword_argument = "(#{name} waiter_name, #{params}) -> #{returns}"
              w.client_overload_positional_argument = "(#{name} waiter_name, #{prefix}Hash[Symbol, untyped] params, ?Hash[Symbol, untyped] options) -> #{returns}"
              w.waiter_overload_keyword_argument = "(#{params}) -> #{returns}"
              w.waiter_overload_positional_argument = "(#{prefix}Hash[Symbol, untyped]) -> #{returns}"
            end
          end.sort_by(&:name)
        end
      end
    end
  end
end
