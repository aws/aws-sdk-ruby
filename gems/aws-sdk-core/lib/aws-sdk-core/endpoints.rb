# frozen_string_literal: true

require_relative 'endpoints/rule'
require_relative 'endpoints/condition'
require_relative 'endpoints/endpoint_rule'
require_relative 'endpoints/endpoint'
require_relative 'endpoints/error_rule'
require_relative 'endpoints/function'
require_relative 'endpoints/matchers'
require_relative 'endpoints/reference'
require_relative 'endpoints/rules_provider'
require_relative 'endpoints/rule_set'
require_relative 'endpoints/static_provider'
require_relative 'endpoints/templater'
require_relative 'endpoints/tree_rule'
require_relative 'endpoints/url'

module Aws
  # @api private
  module Endpoints
    SUPPORTED_AUTH_TYPES = %w[sigv4 sigv4a bearer none].freeze

    class << self
      def resolve_auth_scheme(context, endpoint)
        if (auth_schemes = endpoint.properties['authSchemes'])
          auth_scheme = auth_schemes.find do |scheme|
            SUPPORTED_AUTH_TYPES.include?(scheme['name'])
          end
          raise 'No supported auth scheme for this endpoint.' unless auth_scheme

          auth_scheme
        else
          case resolve_default_api_authtype(context)
          when 'v4', 'v4-unsigned-payload', 'v4-unsigned-body'
            { 'name' => 'sigv4' }
          when 's3v4'
            { 'name' => 'sigv4', 'disableDoubleEncoding' => true }
          when 'bearer'
            { 'name' => 'bearer' }
          when 'none', nil
            { 'name' => 'none' }
          end
        end
      end

      private
      # 
      # def merge_scheme_defaults(context, scheme)
      #   scheme['signingName'] ||= sigv4_name(context.config, scheme)
      #   if scheme['name'] == 'sigv4a'
      #
      # end
      #
      # def resolve_default_api_authtype(context)
      #   context.config.api.operation(context.operation_name)['authtype'] ||
      #     context.config.api.metadata['signatureVersion']
      # end
      #
      # def sigv4_name(cfg, scheme)
      #   cfg.sigv4_name || scheme['signingName'] ||
      #     cfg.api.metadata['signingName'] ||
      #     cfg.api.metadata['endpointPrefix']
      # end

      def sigv4_region(cfg, scheme)
        cfg.sigv4_region || scheme['signingRegion'] ||
          '*' if scheme['name'] == 'sigv4a' || cfg.region
      end
    end
  end
end
