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
          arguments = @input_shape["members"].filter_map { |member_name, member_ref|
            next if @skip_params.include?(member_name)
            required = @input_shape.fetch("required", []).include?(member_name)
            include_required = true if required
            type = RBS.to_type(member_ref, @api)
            "#{required ? "" : "?"}#{Underscore.underscore(member_name)}: #{type}"
          }.join(", ")
        end

        MethodSignature.new(
          method_name:,
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
