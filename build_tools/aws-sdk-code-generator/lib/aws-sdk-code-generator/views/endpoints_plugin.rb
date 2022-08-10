# frozen_string_literal: true

module AwsSdkCodeGenerator
  module Views
    class EndpointsPlugin < View

      # @option options [required, Service] :service
      def initialize(options)
        @service = options.fetch(:service)
        @operations = @service.api['operations'].each.with_object({}) do
          |(op, _api), hash|
          hash[Underscore.underscore(op).to_sym] = op
        end
      end

      # @return [String|nil]
      def generated_src_warning
        return if @service.protocol == 'api-gateway'
        GENERATED_SRC_WARNING
      end

      def module_name
        @service.module_name
      end

      def endpoint_parameters_switch_case
        statement = '          case operation'
        @operations.each do |sym, str|
          statement += "\n          when :#{sym}"
          statement += "\n            #{module_name}::Endpoints::#{str}"
        end
        statement += "\n          end"
        statement
      end

    end
  end
end
