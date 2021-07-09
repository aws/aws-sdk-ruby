# frozen_string_literal: true

module Aws
  module Plugins
    # @api private
    class DualstackEndpoint < Seahorse::Client::Plugin

      option(:use_dualstack_endpoint,
        doc_type: 'Boolean',
        docstring: <<-DOCS) do |cfg|
When set to `true`, dualstack enabled endpoints (with `.aws` TLD)
will be used if available.
        DOCS
        resolve_use_dualstack_endpoint(cfg)
      end

      private

      def self.resolve_use_dualstack_endpoint(cfg)
        value = ENV['AWS_USE_DUALSTACK_ENDPOINT']
        value ||= Aws.shared_config.use_dualstack_endpoint(profile: cfg.profile)
        Aws::Util.str_2_bool(value) || false
      end

    end
  end
end
