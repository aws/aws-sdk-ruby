# frozen_string_literal: true

require 'aws-partitions'
require 'smithy-client'

# Utilities

require_relative 'aws-sdk-core/arn'
require_relative 'aws-sdk-core/arn_parser'
require_relative 'aws-sdk-core/ec2_metadata'
require_relative 'aws-sdk-core/endpoint_rules'

# Shared Config

require_relative 'aws-sdk-core/config_file'
require_relative 'aws-sdk-core/config_file_parser'
require_relative 'aws-sdk-core/config_file_section'
require_relative 'aws-sdk-core/config_file_standardizer'
require_relative 'aws-sdk-core/config_file_utils'
require_relative 'aws-sdk-core/shared_config'

# Identities and Identity Providers

require_relative 'aws-sdk-core/assume_role_credentials_provider'
require_relative 'aws-sdk-core/assume_role_web_identity_credentials_provider'
require_relative 'aws-sdk-core/container_credentials_provider'
require_relative 'aws-sdk-core/credentials'
require_relative 'aws-sdk-core/credentials_provider_chain'
require_relative 'aws-sdk-core/instance_profile_credentials_provider'
require_relative 'aws-sdk-core/process_credentials_provider'
require_relative 'aws-sdk-core/sso_credentials_provider'
require_relative 'aws-sdk-core/ssooidc_token'
require_relative 'aws-sdk-core/ssooidc_token_provider'
require_relative 'aws-sdk-core/static_credentials_provider'

# Protocol Codecs

require_relative 'aws-sdk-core/json'
require_relative 'aws-sdk-core/query'
require_relative 'aws-sdk-core/rest'
require_relative 'aws-sdk-core/stubbing'
require_relative 'aws-sdk-core/xml'

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

      def shared_config
        @shared_config ||= SharedConfig.load
      end
    end
  end
end
