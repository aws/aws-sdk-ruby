# frozen_string_literal: true

module AwsSdkCodeGenerator
  module RBS
    class ResourceClientRequest
      include Helper

      attr_reader :method_name
      attr_reader :arguments
      attr_reader :returns
      attr_reader :include_required

      def initialize(method_name:, api:, request:, returns:, skip: [])
        @method_name = method_name
        @returns = returns
        @include_required = false

        operation = api["operations"][request["operation"]]
        shape_ref = operation["input"]
        input_shape = AwsSdkCodeGenerator::Api.shape(shape_ref, api)
        skip = Set.new(skip + AwsSdkCodeGenerator::ResourceSkipParams.compute(input_shape, request))
        @arguments = if input_shape
          shape = deep_copy(input_shape)
          shape["members"].select! { |member_name, _| !skip.include?(member_name) }
          KeywordArgumentBuilder.new(api: api, shape: shape, newline: false).format
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
