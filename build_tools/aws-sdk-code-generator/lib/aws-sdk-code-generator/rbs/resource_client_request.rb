# frozen_string_literal: true

module AwsSdkCodeGenerator
  module RBS
    class ResourceClientRequest
      attr_reader :method_name
      attr_reader :arguments
      attr_reader :returns
      attr_reader :include_required

      def initialize(method_name:, shape_dictionary:, request:, returns:, skip: [])
        @method_name = method_name
        @returns = returns
        @include_required = false

        operation = shape_dictionary.service.api["operations"][request["operation"]]
        shape_ref = operation["input"]
        input_shape = AwsSdkCodeGenerator::Api.shape(shape_ref, shape_dictionary.service.api)
        skip = Set.new(skip + AwsSdkCodeGenerator::ResourceSkipParams.compute(input_shape, request))
        @arguments = if input_shape
          input_shape["members"].filter_map { |member_name, member_ref|
            next if skip.include?(member_name)
            required = input_shape.fetch("required", []).include?(member_name)
            @include_required = true if required
            types_name = shape_dictionary[member_ref["shape"]].find(&:input?).rbs_input_name
            "#{required ? "" : "?"}#{Underscore.underscore(member_name)}: Types::#{types_name}"
          }.join(", ")
        end
      end

      def build_method_signature
        MethodSignature.new(
          method_name:,
          overloads: [
            "(#{arguments}) -> #{returns}",
            "(#{@include_required ? "" : "?"}Hash[Symbol, untyped]) -> #{returns}"
          ]
        )
      end
    end
  end
end
