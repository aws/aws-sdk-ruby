module Seahorse
  module Client
    module Plugins

      # @seahorse_client_option [Boolean] :convert_params (true)
      #   When `true`, an attempt is made to coerce request parameters
      #   into the required types.
      class ParamConversion < Plugin

        option(:convert_params, true)

        def add_handlers(handlers, config)
          handlers.add(Handler, step: :initialize) if config.convert_params
        end

        class Handler < Client::Handler

          def call(context)
            context.params = ParamConverter.convert(
              context.operation.input,
              context.params)
            @handler.call(context)
          end

        end
      end
    end
  end
end
