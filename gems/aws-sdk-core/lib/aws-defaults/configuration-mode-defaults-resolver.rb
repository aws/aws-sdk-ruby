# frozen_string_literal: true

module Aws
  module ConfigurationDefaults
    #@api private
    class ConfigurationModeDefaultsResolver

      # mappings from Ruby SDK configuration names to the
      # sdk defaults option names and (optionally) scale modifiers
      CFG_OPTIONS = {
        retry_mode: { name: "retryMode" },
        sts_regional_endpoints: { name: "stsRegionalEndpoints" },
        s3_us_east_1_regional_endpoint: { name: "s3UsEast1RegionalEndpoints" },
        http_open_timeout: { name: "connectTimeoutInMillis", scale: 0.001 },
        http_read_timeout: { name: "timeToFirstByteTimeoutInMillis", scale: 0.001 },
        http_ssl_timeout: { name: "tlsNegotiationTimeoutInMillis", scale: 0.001 }
      }.freeze

      def initialize(sdk_defaults, cfg)
        @sdk_defaults = sdk_defaults
        @cfg = cfg
        @resolved_mode = nil
        @mutex = Mutex.new
      end

      # option_name should be the symbolized ruby name to resolve
      # returns the ruby appropriate value or nil if none are resolved
      def resolve(option_name)
        return unless (std_option = CFG_OPTIONS[option_name])
        mode = resolved_mode

        return nil if mode == 'legacy'

        value = resolve_for_mode(std_option[:name], mode)
        value = value * std_option[:scale] if value && std_option[:scale]

        value
      end

      private
      def resolved_mode
        @mutex.synchronize do
          return @resolved_mode unless @resolved_mode.nil?

          @resolved_mode = @cfg.defaults_mode == 'auto' ? resolve_auto_mode : @cfg.defaults_mode
        end
      end

      def resolve_auto_mode
        # TODO: implement logic
        'standard'
      end

      def resolve_for_mode(name, mode)
        base_value = @sdk_defaults['base'][name]
        mode_value = @sdk_defaults['modes'].fetch(mode, {})[name]

        if mode_value.nil?
          return mode != 'standard' ?
                   resolve_for_mode(name, 'standard') : base_value
        end

        return mode_value['override'] unless mode_value['override'].nil?
        return base_value + mode_value['add'] unless mode_value['add'].nil?
        return base_value * mode_value['multiply'] unless mode_value['multiply'].nil?
        return base_value
      end
    end
  end
end