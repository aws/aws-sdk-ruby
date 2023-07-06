# frozen_string_literal: true

module Aws
  module Plugins
    # @api private
    class RegionalEndpoint < Seahorse::Client::Plugin
      option(:profile)

      option(:region,
        required: true,
        doc_type: String,
        docstring: <<-DOCS) do |cfg|
The AWS region to connect to.  The configured `:region` is
used to determine the service `:endpoint`. When not passed,
a default `:region` is searched for in the following locations:

* `Aws.config[:region]`
* `ENV['AWS_REGION']`
* `ENV['AMAZON_REGION']`
* `ENV['AWS_DEFAULT_REGION']`
* `~/.aws/credentials`
* `~/.aws/config`
        DOCS
        resolve_region(cfg)
      end

      option(:use_dualstack_endpoint,
        doc_type: 'Boolean',
        docstring: <<-DOCS) do |cfg|
When set to `true`, dualstack enabled endpoints (with `.aws` TLD)
will be used if available.
        DOCS
        resolve_use_dualstack_endpoint(cfg)
      end

      option(:use_fips_endpoint,
        doc_type: 'Boolean',
        docstring: <<-DOCS) do |cfg|
When set to `true`, fips compatible endpoints will be used if available.
When a `fips` region is used, the region is normalized and this config
is set to `true`.
        DOCS
        resolve_use_fips_endpoint(cfg)
      end

      # This option signals whether :endpoint was provided or not.
      # Legacy endpoints must continue to be generated at client time.
      option(:regional_endpoint, false)

      option(:ignore_configured_endpoint_urls, default: nil, doc_type: 'Boolean', docstring: <<-DOCS)
Setting to true disables use of endpoint URLs provided via environment 
variables and the shared configuration file.
DOCS

      # NOTE: with Endpoints 2.0, some of this logic is deprecated
      # but because new old service gems may depend on new core versions
      # we must preserve that behavior.
      # Additional behavior controls the setting of the custom SDK::Endpoint
      # parameter.
      # When the `regional_endpoint` config is set to true - this indicates to
      # Endpoints2.0 that a custom endpoint has NOT been configured by the user.
      option(:endpoint, doc_type: String, docstring: <<-DOCS) do |cfg|
The client endpoint is normally constructed from the `:region`
option. You should only configure an `:endpoint` when connecting
to test or custom endpoints. This should be a valid HTTP(S) URI.
        DOCS

        config_endpoint = resolve_custom_config_endpoint(cfg)

        endpoint_prefix = cfg.api.metadata['endpointPrefix']
        if cfg.region && endpoint_prefix
          if cfg.respond_to?(:sts_regional_endpoints)
            sts_regional = cfg.sts_regional_endpoints
          end

          # check region is a valid RFC host label
          unless Seahorse::Util.host_label?(cfg.region)
            raise Errors::InvalidRegionError
          end

          # handle deprecated pseudo-regions
          region = cfg.region
          new_region = region.gsub('fips-', '').gsub('-fips', '')
          if region != new_region
            warn("Legacy region #{region} was transformed to #{new_region}."\
                 '`use_fips_endpoint` config was set to true.')
            cfg.override_config(:use_fips_endpoint, true)
            cfg.override_config(:region, new_region)
          end

          unless config_endpoint
            # set regional_endpoint flag - this indicates to Endpoints 2.0 that a custom endpoint has NOT been configured by the user
            cfg.override_config(:regional_endpoint, true)

            # set a default endpoint in config
            config_endpoint = Aws::Partitions::EndpointProvider.resolve(
              cfg.region,
              endpoint_prefix,
              sts_regional,
              {
                dualstack: cfg.use_dualstack_endpoint,
                fips: cfg.use_fips_endpoint
              }
            )
          end
        end

        config_endpoint
      end

      def after_initialize(client)
        if client.config.region.nil? || client.config.region == ''
          raise Errors::MissingRegionError
        end
      end

      class << self
        private

        def resolve_region(cfg)
          keys = %w[AWS_REGION AMAZON_REGION AWS_DEFAULT_REGION]
          env_region = ENV.values_at(*keys).compact.first
          env_region = nil if env_region == ''
          cfg_region = Aws.shared_config.region(profile: cfg.profile)
          env_region || cfg_region
        end

        def resolve_use_dualstack_endpoint(cfg)
          value = ENV['AWS_USE_DUALSTACK_ENDPOINT']
          value ||= Aws.shared_config.use_dualstack_endpoint(
            profile: cfg.profile
          )
          Aws::Util.str_2_bool(value) || false
        end

        def resolve_use_fips_endpoint(cfg)
          value = ENV['AWS_USE_FIPS_ENDPOINT']
          value ||= Aws.shared_config.use_fips_endpoint(profile: cfg.profile)
          Aws::Util.str_2_bool(value) || false
        end

        # get a custom configured endpoint from ENV or configuration
        def resolve_custom_config_endpoint(cfg)
          config_endpoint = nil
          ignore_configured_endpoints = cfg.ignore_configured_endpoint_urls
          if ignore_configured_endpoints.nil?
            ignore_configured_endpoints = ENV['AWS_IGNORE_CONFIGURED_ENDPOINT_URLS']
            ignore_configured_endpoints ||= Aws.shared_config.ignore_configured_endpoint_urls(profile: cfg.profile)
            ignore_configured_endpoints = Aws::Util.str_2_bool(ignore_configured_endpoints&.downcase) || false
          end
          unless ignore_configured_endpoints
            service_id = cfg.api.metadata['serviceId'] || cfg.api.metadata['endpointPrefix']
            env_service_id = service_id.gsub(" ", "_").upcase
            if (config_endpoint = ENV["AWS_ENDPOINT_URL_#{env_service_id}"])
              cfg.logger&.debug(
                "Endpoint configured from ENV['AWS_ENDPOINT_URL_#{env_service_id}']: #{config_endpoint}\n")
            elsif (config_endpoint = ENV['AWS_ENDPOINT_URL'])
              cfg.logger&.debug(
                "Endpoint configured from ENV['AWS_ENDPOINT_URL']: #{config_endpoint}\n")
            elsif (config_endpoint = Aws.shared_config.configured_endpoint(profile: cfg.profile, service_id: service_id))
              cfg.logger&.debug(
                "Endpoint configured from shared config(profile: #{cfg.profile}): #{config_endpoint}\n")
            end
          end
          return config_endpoint
        end
      end
    end
  end
end
