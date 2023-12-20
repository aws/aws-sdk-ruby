# frozen_string_literal: true

module AwsSdkCodeGenerator
  module Views
    module RBS
      class ResourceClass < View
        attr_reader :service_name
        attr_reader :class_name
        attr_reader :identifiers
        attr_reader :data_attributes
        attr_reader :shape
        attr_reader :exists_waiters
        attr_reader :waiters
        attr_reader :actions
        attr_reader :associations
        attr_reader :batch_actions

        def initialize(service_name:, class_name:, resource:, api:, paginators:)
          @class_name = class_name
          @resource = resource
          @service_name = service_name
          @identifiers = ResourceIdentifier.build_list(resource)
          @data_attributes = if @resource["shape"]
            data_attribute_names = AwsSdkCodeGenerator::ResourceAttribute.send(:data_attribute_names, @resource, api)
            data_attribute_names.map do |member_name, member_ref|
              AwsSdkCodeGenerator::RBS::MethodSignature.new(
                method_name: Underscore.underscore(member_name),
                overloads: ["() -> #{AwsSdkCodeGenerator::RBS.to_type(member_ref, api)}"]
              )
            end
          else
            []
          end
          @shape = @resource["shape"]
          @exists_waiters = @resource.fetch("waiters", []).any? { |name, _| name == "Exists" }
          @waiters = @resource.fetch("waiters", []).map do |waiter_name, waiter_body|
            AwsSdkCodeGenerator::RBS::MethodSignature.new(
              method_name: "wait_until_#{Underscore.underscore(waiter_name)}",
              overloads: [
                "(?max_attempts: Integer, ?delay: Numeric, ?before_attempt: (^(Integer attempts) -> void), ?before_wait: (^(Integer attempts, untyped response) -> void)) ?{ (untyped waiter) -> void } -> #{class_name}",
                "(?Hash[Symbol, untyped]) ?{ (untyped waiter) -> void } -> #{class_name}",
              ],
            )
          end
          @actions = AwsSdkCodeGenerator::RBS::ResourceAction.build_method_signature_list(resource: @resource, api: api)
          @associations = AwsSdkCodeGenerator::RBS::ResourceAssociation.build_method_signature_list(resource: @resource, api: api, paginators: paginators)
          @batch_actions = AwsSdkCodeGenerator::RBS::ResourceBatchAction.build_method_signature_list(resource: @resource, api: api)
        end

        # @return [String|nil]
        def generated_src_warning
          GENERATED_SRC_WARNING
        end

        def initialize_signature
          po = @identifiers.map { |id| "#{id.type} #{id.name}" }.join(', ')
          kw = @identifiers.map { |id| "#{id.name}: #{id.type}" }.join(', ')
          initialize_overloads = [
            "(#{po}, Hash[Symbol, untyped] options) -> void",
            "(#{kw}, ?client: Client) -> void",
            "(Hash[Symbol, untyped]) -> void"
          ]
          "def initialize: #{initialize_overloads.join("\n                    | ")}"
        end

        def load?
          @resource["load"]
        end

        def load_or_shape?
          load? or !!shape
        end
      end
    end
  end
end
