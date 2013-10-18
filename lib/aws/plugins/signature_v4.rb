module Aws
  module Plugins

    # @seahorse_client_option [String] :sigv4_name
    #   Override the default service name used for signing sigv4 requests.
    # @seahorse_client_option [String] :sigv4_region
    #   Override the default region name used for signing sigv4 requests.
    class SignatureV4 < Seahorse::Client::Plugin

      option(:sigv4_name) do |config|
        config.api.metadata['signing_name'] ||
          config.endpoint.split(/[.-]/)[0]
      end

      option(:sigv4_region) do |config|
        config.api.endpoint.match(/%s/) ? config.region : 'us-east-1'
      end

      handler(Signers::Handler.new(Signers::V4), step: :sign)

    end
  end
end
