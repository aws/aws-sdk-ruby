# frozen_string_literal: true

module Aws::Translate
  module Plugins
    class TranslateDocumentEncoding < Seahorse::Client::Plugin
      class Handler < Seahorse::Client::Handler
        def call(context)
          # detect encoding
          document = context.params[:document]
          encoding =
            if document[:content_type].start_with?('text/') && document[:content].is_a?(String)
              document[:content].encoding
            end
          resp = @handler.call(context)
          if encoding
            resp.translated_document.content = resp.translated_document.content.force_encoding(encoding)
          end
          resp
        end
      end
      def add_handlers(handlers, _config)
        # Handler is early in the call stack
        handlers.add(Handler, step: :initialize, operations: [:translate_document])
      end
    end
  end
end
