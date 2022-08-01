# frozen_string_literal: true

module Aws
  module Endpoints
    # generic matcher functions for service endpoints
    # @api private
    module Matchers
      # CORE

      # isSet(value: Option<T>) bool
      def self.set?(value)
        !value.nil?
      end

      # not(value: bool) bool
      def self.not(bool)
        !bool
      end

      # getAttr(value: Object | Array, path: string) Document
      def self.attr
        # TODO
      end

      # AWS

      # aws.partition(value: string) Option<Partition>
      def self.aws_partition
        # TODO
      end

      # aws.parseArn(value: string) Option<ARN>
      def self.aws_parse_arn
        # TODO
      end

      # Strings (also core TBH)

      # stringEquals(value1: string, value2: string) bool
      def self.string_equals?
        # TODO
      end

      # isValidHostLabel(value: string, allowSubDomains: bool) bool
      def self.valid_host_label?
        # TODO
      end

      # uriEncode(value: string) string
      def self.uri_encode
        # TODO
      end

      # parseUrl(value: string) Option<URL>
      def self.parse_url
        # TODO
      end

      # Booleans (also core TBH)

      # booleanEquals(value1: bool, value2: bool) bool
      def self.boolean_equals
        # TODO
      end
    end
  end
end
