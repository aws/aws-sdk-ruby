# frozen_string_literal: true

module Aws
  module Core
    # @api private
    module Plugins
      # @api private
      class RegionalEndpoints < Smithy::Client::Plugin
        option(
          :region,
          doc_type: String,
          docstring: <<~DOCS) do |config|
            The AWS region to connect to. The configured `:region` is used to determine the service `:endpoint`.
            When not provided, a default region is searched for in the following locations:

            * `Aws.config[:region]`
            * `ENV['AWS_REGION']`
            * `ENV['AWS_DEFAULT_REGION']`
            * `~/.aws/credentials` as `region` under a profile
            * `~/.aws/config` as `region` under a profile
          DOCS
          resolve_region(config)
        end

        option(
          :use_dualstack_endpoint,
          doc_type: 'Boolean',
          docstring: <<~DOCS) do |config|
            When set to `true`, dualstack enabled endpoints (with `.aws` TLD) will be used if available.
            This option can also be configured in the following locations:
            * `ENV['AWS_USE_DUALSTACK_ENDPOINT']`
            * `~/.aws/credentials` as `use_dualstack_endpoint` under a profile
            * `~/.aws/config` as `use_dualstack_endpoint` under a profile
          DOCS
          resolve_use_dualstack_endpoint(config)
        end

        option(
          :use_fips_endpoint,
          doc_type: 'Boolean',
          docstring: <<~DOCS) do |config|
            When set to `true`, FIPS compatible endpoints will be used if available.
            This option can also be configured in the following locations:
            * `ENV['AWS_USE_FIPS_ENDPOINT']`
            * `~/.aws/credentials` as `use_fips_endpoint` under a profile
            * `~/.aws/config` as `use_fips_endpoint` under a profile
          DOCS
          resolve_use_fips_endpoint(config)
        end

        class << self
          private

          def resolve_region(config)
            ENV['AWS_REGION'] ||
              ENV['AWS_DEFAULT_REGION'] ||
              Aws::Core.shared_config.profiles[config.profile]['region']
          end

          def resolve_use_dualstack_endpoint(config) # rubocop:disable Naming/PredicateMethod
            value =
              ENV['AWS_USE_DUALSTACK_ENDPOINT'] ||
              Aws::Core.shared_config.profiles[config.profile]['use_dualstack_endpoint']
            value == 'true'
          end

          def resolve_use_fips_endpoint(config) # rubocop:disable Naming/PredicateMethod
            value =
              ENV['AWS_USE_FIPS_ENDPOINT'] ||
              Aws::Core.shared_config.profiles[config.profile]['use_fips_endpoint']
            value == 'true'
          end
        end
      end
    end
  end
end
