require 'openssl'

module Aws
  module S3
    module Plugins
      class Md5s < Seahorse::Client::Plugin

        # Amazon S3 requires these operations to have an MD5 checksum
        REQUIRED_OPERATIONS = [
          :delete_objects,
          :put_bucket_cors,
          :put_bucket_lifecycle,
          :put_bucket_policy,
          :put_bucket_tagging,
          :put_object_legal_hold,
          :put_object_lock_configuration,
          :put_object_retention
        ]

        # @api private
        class Handler < Seahorse::Client::Handler

          CHUNK_SIZE = 1 * 1024 * 1024 # one MB

          def call(context)
            body = context.http_request.body
            if body.size > 0
              context.http_request.headers['Content-Md5'] ||= md5(body)
            end
            @handler.call(context)
          end

          private

          # @param [File, Tempfile, IO#read, String] value
          # @return [String<MD5>]
          def md5(value)
            if (File === value || Tempfile === value) && !value.path.nil? && File.exist?(value.path)
              OpenSSL::Digest::MD5.file(value).base64digest
            elsif value.respond_to?(:read)
              md5 = OpenSSL::Digest::MD5.new
              update_in_chunks(md5, value)
              md5.base64digest
            else
              OpenSSL::Digest::MD5.digest(value).base64digest
            end
          end

          def update_in_chunks(digest, io)
            while chunk = io.read(CHUNK_SIZE, buffer ||= "")
              digest.update(chunk)
            end
            io.rewind
          end

        end

        option(:compute_checksums,
          default: true,
          doc_type: 'Boolean',
          docstring: <<-DOCS)
When `true` a MD5 checksum will be computed for every request that
sends a body.  When `false`, MD5 checksums will only be computed
for operations that require them.  Checksum errors returned by Amazon
S3 are automatically retried up to `:retry_limit` times.
          DOCS

        def add_handlers(handlers, config)
          # priority set low to ensure md5 is computed AFTER the request is
          # built but before it is signed
          handlers.add(Handler, {
            priority: 10,
            step: :build,
            operations: config.compute_checksums ? nil : REQUIRED_OPERATIONS,
          })
        end

      end
    end
  end
end
