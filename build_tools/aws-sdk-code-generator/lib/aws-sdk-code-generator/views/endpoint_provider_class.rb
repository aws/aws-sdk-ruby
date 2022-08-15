# frozen_string_literal: true

module AwsSdkCodeGenerator
  module Views
    class EndpointProviderClass < View

      # @option options [required, Service] :service
      # @option options [required, Hash] :endpoint_rules
      # @option options [Boolean] :in_memory (false)
      def initialize(options)
        @service = options.fetch(:service)
        @endpoint_rules = options.fetch(:endpoint_rules)
        @in_memory = options.fetch(:in_memory, false)
      end

      # @return [String|nil]
      def generated_src_warning
        return if @service.protocol == 'api-gateway'
        GENERATED_SRC_WARNING
      end

      def module_name
        @service.module_name
      end

      def in_memory
        @in_memory
      end

      def endpoint_rules_encoded
        Base64.encode64(JSON.dump(@endpoint_rules))
      end
    end
  end
end
