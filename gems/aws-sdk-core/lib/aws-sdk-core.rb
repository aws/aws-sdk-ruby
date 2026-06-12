# frozen_string_literal: true

require 'aws-partitions'
require 'smithy-client'

# Utilities

require_relative 'aws-sdk-core/arn'
require_relative 'aws-sdk-core/arn_parser'
require_relative 'aws-sdk-core/ec2_metadata'
require_relative 'aws-sdk-core/endpoint_rules'
require_relative 'aws-sdk-core/errors'
require_relative 'aws-sdk-core/util'
require_relative 'aws-sdk-core/retry'
require_relative 'aws-sdk-core/http'

# Shared Config

require_relative 'aws-sdk-core/config_file'
require_relative 'aws-sdk-core/config_file_parser'
require_relative 'aws-sdk-core/config_file_section'
require_relative 'aws-sdk-core/config_file_standardizer'
require_relative 'aws-sdk-core/config_file_utils'
require_relative 'aws-sdk-core/shared_config'

# Identities and Identity Providers

require_relative 'aws-sdk-core/identity_provider'
require_relative 'aws-sdk-core/assume_role_credentials_provider'
require_relative 'aws-sdk-core/assume_role_web_identity_credentials_provider'
require_relative 'aws-sdk-core/cognito_identity_credentials_provider'
require_relative 'aws-sdk-core/container_credentials_provider'
require_relative 'aws-sdk-core/credentials'
require_relative 'aws-sdk-core/credentials_provider_chain'
require_relative 'aws-sdk-core/instance_profile_credentials_provider'
require_relative 'aws-sdk-core/login_credentials_provider'
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
      # ## Global AWS configuration
      #
      # You can specify global configuration defaults via `Aws::Core.config`
      #
      #     Aws::Core.config[:region] = 'us-west-2'
      #
      # Options applied to `Aws::Core.config` are merged with constructed service interfaces.
      #
      #     # uses the global configuration
      #     Aws::EC2.new.config.region #=> 'us-west-2'
      #
      #     # constructor args have priority over global configuration
      #     Aws::EC2.new(region: 'us-east-1').config.region #=> 'us-east-1'
      #
      # ## Service Specific Global Configuration
      #
      # Some services have very specific configuration options that are not
      # shared by other services.
      #
      #     # oops, this option is only recognized by Aws::S3
      #     Aws::Core.config[:force_path_style] = true
      #     Aws::EC2.new
      #     #=> raises ArgumentError: invalid configuration option `:force_path_style'
      #
      # To avoid this issue, you can nest service specific options
      #
      #     Aws::Core.config[:s3] = { force_path_style: true }
      #
      #     Aws::EC2.new # no error this time
      #     Aws::S3.new.config.force_path_style #=> true
      # @return [Hash]
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
