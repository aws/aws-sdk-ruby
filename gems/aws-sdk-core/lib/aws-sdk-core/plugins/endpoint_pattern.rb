module Aws
  module Plugins
    # @api private
    class EndpointPattern < Seahorse::Client::Plugin

      def add_handlers(handlers, config)
        handlers.add(Handler, priority: 90)
      end

      class Handler < Seahorse::Client::Handler

        def call(context)
          endpoint_trait = context.operation.endpoint_pattern
          if endpoint_trait && !endpoint_trait.empty?
            _apply_endpoint_trait(context, endpoint_trait)
          end
          @handler.call(context)
        end

        private

        def _apply_endpoint_trait(context, trait)
          # currently only support host pattern
          ori_host = context.http_request.endpoint.host
          if pattern = trait.host
            context.http_request.endpoint.host = pattern.gsub(/\{.+?\}/) do |label|
              label = label.delete("{}")
              _replace_label_value(
                ori_host, label, context.operation.input, context.params)
            end
          end
        end

        def _replace_label_value(ori, label, input_ref, params)
          return ori if label == '@' # host identifier
          name, _ = input_ref.shape.member_by_location_name(label)
          if params[name].nil?
            raise Errors::MissingEndpointHostLabelValue.new(name)
          end
          params[name]
        end

      end

    end
  end
end
