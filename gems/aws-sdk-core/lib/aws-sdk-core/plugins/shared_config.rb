# frozen_string_literal: true

module Aws
  module Core
    # @api private
    module Plugins
      # @api private
      class SharedConfig < Smithy::Client::Plugin
        option(
          :profile,
          doc_default: 'default',
          doc_type: String,
          docstring: <<~DOCS) do |_config|
            Used when loading credentials from the shared config file and credentials file
            at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
          DOCS
          ENV['AWS_PROFILE'] || 'default'
        end
      end
    end
  end
end
