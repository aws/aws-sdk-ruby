# frozen_string_literal: true

module Aws
  # @api private
  module Plugins
    # @api private
    class DefaultsMode < Seahorse::Client::Plugin

      option(:defaults_mode,
             default: 'legacy',
             doc_type: String,
             docstring: <<-DOCS
TODO: See Aws::ConfigurationDefaults Documentation
      DOCS
      ) do |cfg|
        resolve_defaults_mode(cfg)
      end

      option(:defaults_mode_config_resolver,
             doc_type: 'Aws::ConfigurationDefaults::DefaultsModeConfigResolver',
             docstring: '') do |cfg|
        Aws::ConfigurationDefaults::DefaultsModeConfigResolver.new(
          Aws::ConfigurationDefaults::Defaults::SDK_DEFAULT_CONFIGURATION, cfg)
      end

      class << self
        private

        def resolve_defaults_mode(cfg)
          value = ENV['AWS_DEFAULTS_MODE']
          value ||= Aws.shared_config.defaults_mode(
            profile: cfg.profile
          )
          value&.downcase || "legacy"
        end
      end

    end
  end
end
