# frozen_string_literal: true

require_relative 'endpoints/rule'
require_relative 'endpoints/condition'
require_relative 'endpoints/endpoint_rule'
require_relative 'endpoints/endpoint'
require_relative 'endpoints/error_rule'
require_relative 'endpoints/function'
require_relative 'endpoints/matchers'
require_relative 'endpoints/provider'
require_relative 'endpoints/reference'
require_relative 'endpoints/rule_set'
require_relative 'endpoints/templater'
require_relative 'endpoints/tree_rule'
require_relative 'endpoints/url'

module Aws
  module Endpoints
    SUPPORTED_AUTH_TYPES = %w[sigv4 sigv4a none].freeze

    class << self
      def resolve_auth_scheme(context, endpoint)
        if (auth_schemes = endpoint.properties['authSchemes'])
          auth_scheme = auth_schemes.find do |scheme|
            SUPPORTED_AUTH_TYPES.include?(scheme['name'])
          end
          raise 'No supported auth scheme for this endpoint.' unless auth_scheme

          auth_scheme
        else
          case resolve_api_authtype(context)
          when 'v4'
            { 'name' => 'sigv4' }
          when 's3v4'
            { 'name' => 'sigv4', 'disableDoubleEncoding' => true }
          when 'bearer'
            { 'name' => 'bearer' }
          when 'none', nil # TODO: should we include nil here?
            { 'name' => 'none' }
          end
        end
      end

      private

      def resolve_api_authtype(context)
        context.config.api.operation(context.operation_name)['authtype'] ||
          context.config.api.metadata['signatureVersion']
      end
    end
  end
end
