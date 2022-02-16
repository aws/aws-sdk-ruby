# frozen_string_literal: true

module Aws
  # generic matcher functions for service endpoints
  module EndpointMatchers
    # { "partition": "aws", "option": "EndpointOptionName" }
    def self.partition?(matcher_value, region)
      return false if region.nil?
      raise ArgumentError unless region.is_a?(String)

      case matcher_value
      when 'aws-cn' then region.match?(/^cn-\w+-\d+$/)
      when 'aws-us-gov' then region.match?(/^us-gov-\w+-\d+$/)
      when 'aws-iso' then region.match?(/^us-iso-\w+-\d+$/)
      when 'aws-iso-b' then region.match?(/^us-isob-\w+-\d+$/)
      when 'aws' then region.match?(/^(us|eu|ap|sa|ca|me|af)-\w+-\d+$/)
      else
        false
      end
    end

    # def self.partition?(matcher_value, region)
    #   return false if region.nil?
    #   raise ArgumentError unless region.is_a?(String)
    #
    #   if region.match?(/^(us|eu|ap|sa|ca|me|af)-\w+-\d+$/)
    #     'aws' == matcher_value
    #   elsif region.match?(/^cn-\w+-\d+$/)
    #     'aws-cn' == matcher_value
    #   elsif region.match?(/^us-gov-\w+-\d+$/)
    #     'aws-us-gov' == matcher_value
    #   elsif region.match?(/^us-iso-\w+-\d+$/)
    #     'aws-iso' == matcher_value
    #   elsif region.match?(/^us-isob-\w+-\d+$/)
    #     'aws-iso-b' == matcher_value
    #   else
    #     false
    #     # 'aws' == matcher_value # is this forwards compatible?
    #   end
    # end

    # { "startsWith": "some-prefix", "option": "EndpointOptionName" }
    def self.starts_with?(matcher_value, param_value)
      return false if param_value.nil?
      raise ArgumentError unless param_value.is_a?(String)

      param_value.start_with?(matcher_value)
    end

    # { "endsWith": "some-suffix", "option": "EndpointOptionName" }
    def self.ends_with?(matcher_value, param_value)
      return false if param_value.nil?
      raise ArgumentError unless param_value.is_a?(String)

      param_value.end_with?(matcher_value)
    end

    # { "stringEquals": "some-value", "option": "EndpointOptionName" }
    def self.string_equals?(matcher_value, param_value)
      return false if param_value.nil?
      raise ArgumentError unless param_value.is_a?(String)

      matcher_value == param_value
    end

    # { "booleanEquals": true/false, "option": "EndpointOptionName" }
    def self.boolean_equals?(matcher_value, param_value)
      return false if param_value.nil?
      unless param_value.is_a?(TrueClass) || param_value.is_a?(FalseClass)
        raise ArgumentError
      end

      matcher_value == param_value
    end

    # { "isSet": true/false, "option": "EndpointOptionName" }
    def self.set?(matcher_value, param_value)
      matcher_value == !param_value.nil?
    end

    # { "isArn": true/false, "option": "EndpointOptionName" }
    def self.arn?(matcher_value, param_value)
      matcher_value == Aws::ARNParser.arn?(param_value)
    end
  end
end
