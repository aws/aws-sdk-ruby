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

      handler(Signers::Handler.new(Signers::V4), step: :sign)

    end
  end
end
