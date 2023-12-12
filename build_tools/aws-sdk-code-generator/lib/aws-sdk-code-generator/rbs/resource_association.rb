# frozen_string_literal: true

module AwsSdkCodeGenerator
  module RBS
    class ResourceAssociation
      class << self
        def build_method_signature_list(resource:, shape_dictionary:)
          associations = []
          associations += has_associations(resource:)
          associations += has_many_associations(resource:, shape_dictionary:)
          associations.sort_by(&:method_name)
        end

        private

        def has_associations(resource:)
          resource.fetch("has", {}).map do |name, assoc|
            method_name = Underscore.underscore(name)
            arguments = AwsSdkCodeGenerator::ResourceHasAssociation.send(:compute_params, assoc).map { |param|
              "#{param[:type]} #{Underscore.underscore(param[:name])}"
            }.join(', ')
            returns = AwsSdkCodeGenerator::ResourceHasAssociation.send(:return_type, assoc).sub(/, nil$/, "?")
            MethodSignature.new(
              method_name:,
              overloads: ["(#{arguments}) -> #{returns}"]
            )
          end
        end

        def has_many_associations(resource:, shape_dictionary:)
          resource.fetch("hasMany", {}).map do |name, assoc|
            ResourceClientRequest.new(
              method_name: Underscore.underscore(name),
              shape_dictionary:,
              request: assoc["request"],
              returns: "#{assoc["resource"]["type"]}::Collection",
              skip: AwsSdkCodeGenerator::ResourceHasManyAssociation.send(:paging_options, { assoc:, paginators: shape_dictionary.service.paginators }),
            ).build_method_signature
          end
        end
      end
    end
  end
end
