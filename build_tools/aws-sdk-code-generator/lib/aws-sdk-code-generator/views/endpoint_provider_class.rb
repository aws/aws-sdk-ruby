# frozen_string_literal: true

module AwsSdkCodeGenerator
  module Views
    class EndpointProviderClass < View

      # @option options [required, Service] :service
      # @option options [required, Hash] :endpoint_rules
      def initialize(options)
        @service = options.fetch(:service)
        @endpoint_rules = @service.endpoint_rules

        version = @endpoint_rules['version']
        return if version&.match(/^\d+\.\d+$/) # && version == '1.0'

        raise 'Endpoint Rules version must be 1.0'
      end

      # @return [String|nil]
      def generated_src_warning
        return if @service.protocol == 'api-gateway'
        GENERATED_SRC_WARNING
      end

      def module_name
        @service.module_name
      end

      def endpoint_rules_encoded
        Base64.encode64(JSON.dump(@endpoint_rules))
      end
    end
  end
end
