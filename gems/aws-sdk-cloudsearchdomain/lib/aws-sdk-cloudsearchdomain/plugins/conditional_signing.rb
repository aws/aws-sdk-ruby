module Aws
  module CloudSearchDomain
    module Plugins

      # Makes it possible to conditional sign {Aws::CloudSearchDomain::Client}
      # requests. When credentials are configured, requests are signed.
      # When they are omitted, the request is sent anonymously.
      class ConditionalSigning < Seahorse::Client::Plugin

        # Adding region as an option to avoid an issue when `Aws.config[:region]`
        # is populated and the global configuration plugin merges options onto
        # this client.
        option(:region)

        option(:sigv4_region, doc_type: String, docstring: <<-DOCS) do |cfg|
Only needed when sending authenticated/signed requests to a Cloud
Search domain and the endpoint does not contain the region name.
        DOCS
          # extract the region name from the cloud search domain endpoint
          if cfg.endpoint
            cfg.endpoint.to_s.split('.')[1]
          else
            raise ArgumentError, 'missing required option :endpoint'
          end
        end

      end
    end
  end
end
