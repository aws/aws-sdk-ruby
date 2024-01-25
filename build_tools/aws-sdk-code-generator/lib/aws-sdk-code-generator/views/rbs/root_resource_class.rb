# frozen_string_literal: true

module AwsSdkCodeGenerator
  module Views
    module RBS
      class RootResourceClass < View
        attr_reader :actions
        attr_reader :associations
        attr_reader :service_name

        def initialize(client_class:, api:, resources:, service_name:, paginators:)
          @client_class = client_class
          @service_name = service_name
          resource = resources&.[]("service") || {}
          @actions = AwsSdkCodeGenerator::RBS::ResourceAction.build_method_signature_list(resource: resource, api: api)
          @associations = AwsSdkCodeGenerator::RBS::ResourceAssociation.build_method_signature_list(resource: resource, api: api, paginators: paginators)
        end

        # @return [String|nil]
        def generated_src_warning
          GENERATED_SRC_WARNING
        end

        def client_option
          @client_class.client_option(indent: ' ' * 22)
        end
      end
    end
  end
end
