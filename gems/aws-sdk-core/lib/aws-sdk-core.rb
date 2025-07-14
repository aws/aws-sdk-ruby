# frozen_string_literal: true

require 'smithy-client'

require_relative 'aws-sdk-core/endpoint_rules'
require_relative 'aws-sdk-core/json'
require_relative 'aws-sdk-core/rest'
require_relative 'aws-sdk-core/stubbing'

module Aws
  # The root namespace for the AWS SDK for Ruby core modules and classes.
  module Core
    VERSION = File.read(File.expand_path('../VERSION', __dir__)).strip

    @config = {}

    class << self
      # @return [Hash] Returns a hash of default configuration options shared
      #  by all constructed AWS clients.
      attr_reader :config

      # @param [Hash] config
      def config=(config)
        raise ArgumentError, 'configuration object must be a hash' unless config.is_a?(Hash)

        @config = config
      end
    end
  end
end
