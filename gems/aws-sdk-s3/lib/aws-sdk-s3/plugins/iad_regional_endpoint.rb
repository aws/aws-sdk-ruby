module Aws
  module S3
    module Plugins

      class IADRegionalEndpoint < Seahorse::Client::Plugin
        
        option(:s3_us_east_1_regional_endpoint,
          default: 'legacy',
          doc_type: String,
          docstring: <<-DOCS) do |cfg|
Passing in `regional` to enable regional endpoint for S3 `us-east-1`
region, defaults to `legacy` mode, using global endpoint.
          DOCS
          resolve_iad_regional_endpoint(cfg)
        end

        private

        def self.resolve_iad_regional_endpoint(cfg)
          env_mode = ENV['AWS_S3_US_EAST_1_REGIONAL_ENDPOINT']
          env_mode = nil if env_mode == ''
          cfg_mode = Aws.shared_config.s3_us_east_1_regional_endpoint(
            profile: cfg.profile)
          env_mode || cfg_mode || 'legacy'
        end

      end

    end
  end
end
