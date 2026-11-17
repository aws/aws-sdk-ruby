# frozen_string_literal: true

require 'openssl'

module Aws
  module Core
    module Plugins
      # Legacy Content-MD5 support for operations modeled with
      # smithy.api#httpChecksumRequired.
      # @api private
      class HttpChecksum < Smithy::Client::Plugin
        def add_handlers(handlers, _config)
          handlers.add(Handler, step: :build, priority: 10)
        end

        # @api private
        class Handler < Smithy::Client::Handler
          CHUNK_SIZE = 1 * 1024 * 1024

          def call(context)
            checksum_context = context[:http_checksum] || {}
            if SCHEMA_EXTENSION.checksum_required?(context.operation) &&
               !checksum_context[:request_algorithm]
              context.http_request.headers['Content-Md5'] ||= md5(context.http_request.body)
            end
            @handler.call(context)
          end

          private

          def md5(body)
            digest = OpenSSL::Digest.new('MD5')
            body.rewind
            loop do
              chunk = body.read(CHUNK_SIZE)
              break unless chunk

              digest.update(chunk)
            end
            digest.base64digest
          ensure
            body.rewind
          end
        end
      end
    end
  end
end
