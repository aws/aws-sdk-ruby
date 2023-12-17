# frozen_string_literal: true

module AwsSdkCodeGenerator
  module RBS
    class ResourceAction
      class << self
        def build_method_signature_list(resource:, api:)
          (resource["actions"] || []).map do |action_name, action|
            new(action_name:, action:, api:).build_method_signature
          end
        end
      end

      def initialize(action_name:, action:, api:)
        request = action["request"]
        operation = api["operations"][request["operation"]]
        returns = if action["resource"]
          resource = action["resource"]
          AwsSdkCodeGenerator::Api.plural?(resource) ? "#{resource["type"]}::Collection" : resource["type"]
        elsif operation[:output]
          "Types::#{operation["output"]["shape"]}"
        else
          "::Aws::EmptyStructure"
        end

        @client_request = ResourceClientRequest.new(
          method_name: Underscore.underscore(action_name),
          api: api,
          request: request,
          returns: returns,
        )
      end

      def build_method_signature
        @client_request.build_method_signature
      end
    end
  end
end
