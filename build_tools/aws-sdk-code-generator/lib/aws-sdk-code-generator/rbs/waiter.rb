# frozen_string_literal: true

module AwsSdkCodeGenerator
  module RBS
    class Waiter < Struct.new(
      :name,
      :class_name,
      :client_overlod_keyword_argument,
      :client_overlod_positional_argument,
      :waiter_overload_keyword_argument,
      :waiter_overload_positional_argument,
    )
      class << self
        def build_list(shape_dictionary:)
          operations = shape_dictionary.service.api.fetch("operations")
          waiters =
            if shape_dictionary.service.waiters&.first
              shape_dictionary.service.waiters["waiters"]
            else
              {}
            end
          waiters.map do |waiter_name, waiter|
            operation = waiter.fetch("operation")
            operation_ref = operations[operation]
            input_shape = operation_ref.dig("input", "shape")
            include_required = shape_dictionary.service.api["shapes"][input_shape]&.[]("required")&.empty?&.!

            name = ":#{Underscore.underscore(waiter_name)}"
            params = shape_dictionary[input_shape].find(&:input?).as_keyword_arguments(from: :waiters)
            returns = operation_ref.dig("output", "shape")&.then { "Types::#{_1}" } || "Aws::EmptyStructure"
            prefix = include_required ? "" : "?"
            new.tap do |w|
              w.name = name
              w.class_name = waiter_name
              w.client_overlod_keyword_argument = "(#{name} waiter_name, #{params}) -> #{returns}"
              w.client_overlod_positional_argument = "(#{name} waiter_name, #{prefix}Hash[Symbol, untyped] params, ?Hash[Symbol, untyped] options) -> #{returns}"
              w.waiter_overload_keyword_argument = "(#{params}) -> #{returns}"
              w.waiter_overload_positional_argument = "(#{prefix}Hash[Symbol, untyped]) -> #{returns}"
            end
          end.sort_by(&:name)
        end
      end
    end
  end
end
