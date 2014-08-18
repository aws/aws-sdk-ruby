module Aws
  module Plugins

    # Makes it possible to conditional sign {Aws::CloudSearchDomain::Client}
    # requests. When credentials are configured, requests are signed.
    # When they are omitted, the request is sent anonymously.
    #
    # @seahorse.client.option [String] :sigv4_region Only needed when sending
    #   authenticated/signed requests to a Cloud Search domain and the
    #   endpoint does not contain the region name.
    #
    class CSDConditionalSigning < Seahorse::Client::Plugin

      option(:sigv4_region) do |cfg|
        # extract the region name from the cloud search domain endpoint
        if cfg.endpoint
          cfg.endpoint.to_s.split('.')[1]
        else
          raise ArgumentError, 'missing required option :endpoint'
        end
      end

      def after_initialize(client)
        # disable request singing when credentials are not set
        if client.config.credentials.nil? or !client.config.credentials.set?
          client.config.signature_version = nil
        end
      end

    end
  end
end
