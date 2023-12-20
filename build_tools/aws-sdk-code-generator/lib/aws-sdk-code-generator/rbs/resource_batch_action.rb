# frozen_string_literal: true

module AwsSdkCodeGenerator
  module RBS
    class ResourceBatchAction
      class << self
        def build_method_signature_list(resource:, api:)
          resource.fetch("batchActions", {}).map do |name, action|
            new(api:, name:, action:).build_method_signature
          end
        end
      end

      def initialize(api:, name:, action:)
        @api = api
        @name = name
        @action = action
        @batch_action_documentation = AwsSdkCodeGenerator::ResourceBatchActionDocumentation.new(
          var_name: nil,
          method_name:,
          action:,
          api: api,
        )
        @skip_params = @batch_action_documentation.send(:skip_params)
        @input_ref = @batch_action_documentation.send(:input_ref)
        @input_shape = AwsSdkCodeGenerator::Api.shape(@input_ref, api)
      end

      def build_method_signature
        arguments = nil
        include_required = false

        if @input_shape
          shape = Helper.deep_copy(@input_shape)
          shape.fetch("members").reject! { |member_name, _| @skip_params.include?(member_name) }
          arguments = KeywordArgumentBuilder.new(
            api: @api,
            shape: shape,
            newline: true
          ).format(indent: ' ' * (14 + method_name.length))
        end

        MethodSignature.new(
          method_name: method_name,
          overloads: [
            "(#{arguments}) -> void",
            "(#{include_required ? "" : "?"}Hash[Symbol, untyped]) -> void",
          ]
        )
      end

      private

      def method_name
        AwsSdkCodeGenerator::ResourceBatchAction.send(:build_method_name, @name, @action)
      end
    end
  end
end
