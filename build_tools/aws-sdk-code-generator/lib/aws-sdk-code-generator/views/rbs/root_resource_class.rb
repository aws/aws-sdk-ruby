# frozen_string_literal: true

module AwsSdkCodeGenerator
  module Views
    module RBS
      class RootResourceClass < View
        attr_reader :actions
        attr_reader :associations

        def initialize(client_class:)
          @client_class = client_class
          @service = service = client_class.shape_dictionary.service
          resource = @service&.resources&.[]("service") || {}
          @actions = AwsSdkCodeGenerator::RBS::ResourceAction.build_method_signature_list(resource:, shape_dictionary: client_class.shape_dictionary)
          @associations = AwsSdkCodeGenerator::RBS::ResourceAssociation.build_method_signature_list(resource:, shape_dictionary: client_class.shape_dictionary)
        end

        # @return [String|nil]
        def generated_src_warning
          GENERATED_SRC_WARNING
        end

        def service_name
          @service.name
        end

        def client_option
          @client_class.client_option
        end
      end
    end
  end
end
