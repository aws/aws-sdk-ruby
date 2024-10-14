# frozen_string_literal: true

require 'openssl'

module Aws
  module S3
    module Plugins
      # @api private
      # This plugin is deprecated in favor of modeled
      # httpChecksumRequired traits.
      class Md5s < Seahorse::Client::Plugin
        option(:compute_checksums,
               default: true,
               doc_type: 'Boolean',
               docstring: <<~DOCS)
                 This option is deprecated. Please use `:request_checksum_calculation`
                 instead. When `true`, `request_checksum_calculation` is set to `when_supported`,
                 and if `false` it is set to `when_required`.
               DOCS

        def after_initialize(client)
          client.config.request_checksum_calculation =
            if client.config.compute_checksums
              'when_supported'
            else
              'when_required'
            end
        end
      end
    end
  end
end
