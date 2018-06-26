require 'openssl'
require 'base64'

module Aws
  module S3
    module Plugins
      class GetChecksum < Seahorse::Client::Plugin
        OPERATIONS = [:get_object]

        # @api private
        class Handler < Seahorse::Client::Handler
          def call(context)
            context.http_request.headers['x-amz-te'] = "append-md5"
            attach_http_event_listeners(context)
            @handler.call(context)
          end

          private
          def body_md5_present?(context)
            context.http_response.headers["x-amz-transfer-encoding"] == "append-md5"
          end

          def check_body_checksum(body_with_checksum)
            size = body_with_checksum.size
            if body_with_checksum.size >= 16
              body = body_with_checksum[0..-17]
              checksum = Base64.encode64(body_with_checksum[-16..-1])
              digest = Base64.encode64(OpenSSL::Digest::MD5.new.digest(body))
              if digest == checksum
                StringIO.new(body)
              else
                raise Errors::ChecksumError.new(
                  context,
                  "Checksum mismatch."
                )
              end
            else
              raise Errors::ChecksumError.new(
                context,
                "Body size #{size} too short."
              )
            end
          end

          def attach_http_event_listeners(context)

            context.http_response.on_headers(200) do
              if body_md5_present?(context)
                context.http_response.body = ChecksumIO.new(
                  context,
                  context.http_response.body,
                  context.http_response.headers["Content-Length"].to_i
                )
              end
            end

            context.http_response.on_success(200) do
              if body_md5_present?(context)
                checksum_io = context.http_response.body
                checksum_io.io.rewind if checksum_io.io.respond_to?(:rewind)
                context.http_response.body = checksum_io.io
              end
            end

            context.http_response.on_error do
              if context.http_response.body.respond_to?(:io)
                context.http_response.body = context.http_response.body.io
              end
            end

          end
        end

        option(:use_get_checksum,
          default: true,
          doc_type: 'Boolean',
          docstring: <<-DOCS)
When `true` a header will be added to `:get_object` requests that will append an
MD5 checksum to the response body, which will be compared to the response body.
When there is a mismatch, `Aws::S3::Errors::DownloadChecksumMismatch` will be
raised.
          DOCS

        class ChecksumIO
          def initialize(context, io, content_length)
            @context = context
            @io = io
            @content_length = content_length
            @body_length = content_length - 16
            @body = StringIO.new
            @checksum = StringIO.new
            @processed_bytes = 0
          end

          attr_reader :io

          def write(chunk)
            size = chunk.size
            if @processed_bytes + size > @body_length
              to_body = @body_length - @processed_bytes # first X bytes
              to_checksum = size - to_body # last Y bytes
              @processed_bytes += size
              body_bytes = chunk[0...to_body]
              checksum_bytes = chunk[to_body...size]
              @body.write(body_bytes)
              @checksum.write(checksum_bytes)
              if @processed_bytes == @content_length
                _perform_body_checksum_check
              end
              @io.write(body_bytes)
            else
              @processed_bytes += size
              @body.write(chunk)
              @io.write(chunk)
            end
          end

          def finalize
            nil
          end

          private
          def _perform_body_checksum_check
            @body.rewind
            @checksum.rewind
            body = @body.read
            checksum = Base64.encode64(@checksum.read)
            digest = Base64.encode64(OpenSSL::Digest::MD5.new.digest(body))
            unless checksum == digest
              raise Errors::ChecksumError.new(
                @context,
                "Checksum mismatch."
              )
            end
          end
        end

        def add_handlers(handlers, config)
          if config.use_get_checksum
            handlers.add(Handler, {
              priority: 89, # Before the Seahorse Response Target Plugin
              step: :initialize,
              operations: OPERATIONS
            })
          end
        end
      end
    end
  end
end
