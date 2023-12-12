# frozen_string_literal: true

module AwsSdkCodeGenerator
  module RBS
    class ResourceBatchAction
      class << self
        def build_method_signature_list(resource:, shape_dictionary:)
          resource.fetch("batchActions", {}).map do |name, action|
            new(shape_dictionary:, name:, action:).build_method_signature
          end
        end
      end

      def initialize(shape_dictionary:, name:, action:)
        @shape_dictionary = shape_dictionary
        @name = name
        @action = action
        @batch_action_documentation = AwsSdkCodeGenerator::ResourceBatchActionDocumentation.new(
          var_name: nil,
          method_name:,
          action:,
          api: shape_dictionary.service.api,
        )
        @skip_params = @batch_action_documentation.send(:skip_params)
        @input_ref = @batch_action_documentation.send(:input_ref)
        @input_shape = AwsSdkCodeGenerator::Api.shape(@input_ref, shape_dictionary.service.api)
      end

      def build_method_signature
        arguments = nil
        include_required = false

        if @input_shape
          arguments = @input_shape["members"].filter_map { |member_name, member_ref|
            next if @skip_params.include?(member_name)
            required = @input_shape.fetch("required", []).include?(member_name)
            include_required = true if required
            type = @shape_dictionary[member_ref.fetch("shape")].find(&:input?).rbs_input_name
            "#{required ? "" : "?"}#{Underscore.underscore(member_name)}: Types::#{type}"
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
