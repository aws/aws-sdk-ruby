require 'openssl'
require 'base64'

module Aws
  module Plugins
    class S3SseCpk < Seahorse::Client::Plugin

      class Handler < Seahorse::Client::Handler

        def call(context)
          compute_key_md5(context.params)
          @handler.call(context)
        end

        private

        def compute_key_md5(params)
          if key = params[:sse_customer_key]
            params[:sse_customer_key] = base64(key)
            params[:sse_customer_key_md5] = base64(md5(key))
          end
          if key = params[:copy_source_sse_customer_key]
            params[:copy_source_sse_customer_key] = base64(key)
            params[:copy_source_sse_customer_key_md5] = base64(md5(key))
          end
        end

        def md5(str)
          OpenSSL::Digest::MD5.digest(str)
        end

        def base64(str)
          Base64.encode64(str).strip
        end

      end

      handler(Handler, step: :initialize)

    end
  end
end
