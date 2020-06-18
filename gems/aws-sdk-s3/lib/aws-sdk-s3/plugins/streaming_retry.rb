# frozen_string_literal: true

module Aws
  module S3
    module Plugins

      class RetryableBlockIO < Seahorse::Client::BlockIO
        def truncate(integer)
          puts "RetryableBlockIO: truncate: #{integer}"
        end
      end

      # TODO: docs
      class StreamingRetry < Seahorse::Client::Plugin

        class Handler < Seahorse::Client::Handler

          def call(context)
            if context.params.is_a?(Hash) && context.params[:response_target]
              target = context.params.delete(:response_target)
            else
              target = context[:response_target]
            end
            add_event_listeners(context, target) if target && target.is_a?(Proc)
            @handler.call(context)
          end

          private

          def add_event_listeners(context, target)
            handler = self
            puts "S3: adding event handlers"
            context.http_response.on_headers(200..299) do
              puts "S3:  on_headers"
              if context.http_response.body.is_a? Seahorse::Client::BlockIO
                puts "S3: Replacing body"
                context.http_response.body = RetryableBlockIO.new(&target)
              end
            end

            context.http_response.on_success(200..299) do
              puts "S3: on_sucess"
            end

            context.http_response.on_error do
              puts "S3: on_error"
              puts "#context.params[:range]"
              # Check the body type and the range parameter
              # Maybe push the range into the blockIO?
            end
          end

        end

        handler(Handler,
                step: :initialize, # TODO: what step??
                operations: [:get_object]
        )
      end
    end
  end
end
