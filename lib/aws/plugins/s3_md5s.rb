require 'digest/md5'
require 'base64'

module Aws
  module Plugins

    # @seahorse.client.option [Boolean] :compute_checksums (true)
    #   When `true` a MD5 checksum will be computed for all requests that
    #   accept the optional `Content-MD5` header.  Checksum errors returned
    #   by Amazon S3 are automatically retried up to `:retry_limit` times.
    class S3Md5s < Seahorse::Client::Plugin

      # Amazon S3 requires these operations to have an MD5 checksum
      REQUIRED_OPERATIONS = [
        :delete_objects,
        :put_bucket_cors,
        :put_bucket_lifecycle,
        :put_bucket_policy,
        :put_bucket_tagging,
      ]

      # @api private
      class Handler < Seahorse::Client::Handler

        OneMB = 1024 * 1024

        def call(context)
          context.http_request.headers['Content-Md5'] = md5(context)
          @handler.call(context)
        end

        def md5(context)
          md5 = Digest::MD5.new
          body = context.http_request.body
          while chunk = body.read(OneMB)
            md5.update(chunk)
          end
          body.rewind
          Base64.encode64(md5.digest).strip
        end

      end

      option(:compute_checksums, true)

      def add_handlers(handlers, config)
        options = {
          priority: 10, # set intentially low so the md5 is computed after
          step: :build, # the request is built but before it is signed
        }

        if !config.compute_checksums
          options[:operations] = REQUIRED_OPERATIONS
        end

        handlers.add(Handler, options)
      end

    end
  end
end
