module Seahorse
  module Client
    module Plugins
      class ParamValidation < Plugin

        option(:validate_params, true)

        def add_handlers(handlers, config)
          if config.validate_params
            handlers.add(Handler, step: :validate, priority: 50)
          end
        end

        class Handler < Client::Handler

          def call(context)
            ParamValidator.validate!(context.operation.input, context.params)
            @handler.call(context)
          end

        end

      end
    end
  end
end
