# frozen_string_literal: true

module Aws::Translate
  module Plugins
    # @api private
    # The translated_documented returned by the translate_document api is modeled
    # as a blob, since it may contain binary data (eg: word doc).  However,
    # when the input document is text (eg: text/plain or text/html) the encoding
    # should be preserved.
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
        handlers.add(Handler, step: :initialize, operations: [:translate_document])
      end
    end
  end
end
