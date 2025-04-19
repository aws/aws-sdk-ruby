# frozen_string_literal: true

module Aws
  module Core
    module Plugins
      # @api private
      class HostPrefix < Smithy::Client::Plugin

        option(
          :disable_host_prefix_injection,
          default: false,
          doc_type: 'Boolean',
          docstring: 'When true, the SDK will not prepend the modeled host prefix to the endpoint.'
        )

        def add_handlers(handlers, config)
          handlers.add(Handler, priority: 25) unless config.disable_host_prefix_injection
        end

        # @api private
        class Handler < Smithy::Client::Handler
          def call(context)
            host_prefix = context.operation.traits.dig('smithy.api#endpoint', 'hostPrefix')
            apply_host_prefix(context, host_prefix) if host_prefix
            @handler.call(context)
          end

          private

          # TODO: optimize this to collect all labels in one pass
          def apply_host_prefix(context, host_prefix)
            input = context.operation.input
            prefix = host_prefix.gsub(/\{.+?}/) do |label|
              label_value(input, label.delete("{}"), context.params)
            end
            context.request.endpoint.host = prefix + context.request.endpoint.host
          end

          def label_value(input, label, params)
            name = nil
            input.members.each do |member_name, member_shape|
              next unless member_shape.traits.include?('smithy.api#hostLabel')
              next unless member_shape.name == label

              name = member_name
            end
            if params[name].nil? || params[name].empty?
              raise ArgumentError, "#{name} must not be nil or blank"
            end
            params[name]
          end
        end
      end
    end
  end
end
