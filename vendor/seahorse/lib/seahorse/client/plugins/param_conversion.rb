module Seahorse
  module Client
    module Plugins

      # @seahorse_client_option [Boolean] :convert_params (true)
      #   When `true`, an attempt is made to coerce request parameters
      #   into the required types.
      class ParamConversion < Plugin

        option(:convert_params, true)

        def add_handlers(handlers, config)
          if config.convert_params
            handlers.add(Handler, step: :validate, priority: 75)
          end
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
