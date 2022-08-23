# frozen_string_literal: true

require 'set'

module Aws
  module Partitions
    class Metadata
      # @option options [required, String] :name
      # @option options [required, String] :dns_suffix
      # @option options [required, String] :dualstack_dns_suffix
      # @option options [required, Boolean] :supports_fips
      # @option options [required, Boolean] :supports_dualstack
      # @api private
      def initialize(options = {})
        @name = options[:name]
        @dns_suffix = options[:dns_suffix]
        @dualstack_dns_suffix = options[:dualstack_dns_suffix]
        @supports_fips = options[:supports_fips]
        @supports_dualstack = options[:supports_dualstack]
      end

      # @return [String] The name of this partiton, e.g. "aws".
      attr_reader :name

      # @return [String] The DNS suffix for endpoints in this partition.
      attr_reader :dns_suffix

      # @return [String] The Dual-Stack DNS suffix for endpoints
      #   in this partition.
      attr_reader :dualstack_dns_suffix

      # @return [Boolean] Whether this partition supports FIPS endpoints.
      attr_reader :supports_fips

      # @return [Boolean] Whether this partition supports Dual-Stack endpoints.
      attr_reader :supports_dualstack
    end
  end
end
