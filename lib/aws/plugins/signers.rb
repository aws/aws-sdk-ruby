module Aws
  module Plugins

    # @seahorse.client.option [String] :sigv4_name
    #   Override the default service name used for signing sigv4 requests.
    # @seahorse.client.option [String] :sigv4_region
    #   Override the default region name used for signing sigv4 requests.
    class SignatureV4 < Seahorse::Client::Plugin

      option(:sigv4_name) do |cfg|
        cfg.api.metadata('signingName') || cfg.api.metadata('endpointPrefix')
      end

      option(:sigv4_region) do |cfg|
        prefix = cfg.api.metadata('endpointPrefix')
        if matches = cfg.endpoint.match(/#{prefix}[.-](.+)\.amazonaws\.com/)
          matches[1]
        elsif cfg.endpoint.match(/#{prefix}\.amazonaws\.com/)
          'us-east-1'
        else
          cfg.region
        end
      end

      handler(Signers::Handler.new(Signers::V4), step: :sign)

    end
  end
end
