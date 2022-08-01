# frozen_string_literal: true

module Aws
  module Endpoints
    # @api private
    class Function
      def initialize(fn:, argv:)
        @fn = fn
        @argv = build_argv(argv)
      end

      attr_reader :fn
      attr_reader :argv

      def call
        case @fn
        when 'isSet'
          Matchers.set?(*@argv)
        when 'not'
          Matchers.not(*@argv)
        when 'getAttr'
          Matchers.attr(*@argv)
        when 'aws.partition'
          Matchers.aws_partition(*@argv)
        when 'aws.parseArn'
          Matchers.aws_parse_arn(*@argv)
        when 'stringEquals'
          Matchers.string_equals(*@argv)
        when 'isValidHostLabel'
          Matchers.valid_host_label?(*@argv)
        when 'uriEncode'
          Matchers.uri_encode(*@argv)
        when 'parseUrl'
          Matchers.parse_url(*@argv)
        when 'booleanEquals'
          Matchers.boolean_equals(*@argv)
        end
      end

      private

      def build_argv(argv_json)
        argv = []
        argv_json.each do |arg|
          arg << if arg.is_a?(Hash) && arg['ref']
                   Reference.new(ref: arg['ref'])
                 elsif arg.is_a?(Hash) && arg['fn']
                   Function.new(fn: arg['fn'], argv: arg['argv'])
                 else
                   arg
                 end
        end
        argv
      end
    end
  end
end
