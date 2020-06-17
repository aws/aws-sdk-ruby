# frozen_string_literal: true

module Aws
  module S3
    module Plugins

      # TODO: docs
      class StreamingRetry < Seahorse::Client::Plugin

        class Handler < Seahorse::Client::Handler

          def call(context)
            add_event_listeners(context, target) if target
            @handler.call(context)
          end

          private

          def add_event_listeners(context, target)
            handler = self
            context.http_response.on_headers(200..299) do
              # In a fresh response body will be a StringIO
              # However, when a request is retried we may have
              # an existing ManagedFile or BlockIO and those
              # should be reused.
              if context.http_response.body.is_a? StringIO
                context.http_response.body = handler.send(:io, target)
              end
            end

            context.http_response.on_success(200..299) do
              body = context.http_response.body
              if ManagedFile === body && body.open?
                body.close
              end
            end

            context.http_response.on_error do
              body = context.http_response.body

              # When using response_target of file we do not want to write
              # error messages to the file.  So set the body to a new StringIO
              if body.is_a? ManagedFile
                File.unlink(body)
                context.http_response.body = StringIO.new
              end

              # Aws::S3::Encryption::DecryptHandler (with lower priority)
              # has callbacks registered after ResponseTarget::Handler,
              # where http_response.body is an IODecrypter
              # and has error callbacks handling for it so no action is required here
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
