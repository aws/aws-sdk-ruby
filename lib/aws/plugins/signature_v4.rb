module Aws
  module Plugins
    class SignatureV4 < Seahorse::Client::Plugin

      option(:signing_name) do |config|
        config.api.metadata['signing_name'] ||
          config.endpoint.split(/[.-]/)[0]
      end

      option(:signing_region) do |config|
        config.api.endpoint.match(/%s/) ? config.region : 'us-east-1'
      end

      handle(:Handler, step: :sign) do |context|
        Signers::V4.new(
          context.config.credentials,
          context.config.signing_name,
          context.config.signing_region
        ).sign(context.http_request)
        @handler.call(context)
      end

    end
  end
end
