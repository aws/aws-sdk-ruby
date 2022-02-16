# frozen_string_literal: true

module Aws
  # generic matcher functions for service endpoints
  module EndpointMatchers
    # { "partition": "aws", "option": "EndpointOptionName" }
    def self.partition?(matcher_value, region)
      return false if region.nil?
      raise ArgumentError unless region.is_a?(String)

      case matcher_value
      when 'aws' then region.match?(/^(us|eu|ap|sa|ca|me|af)-\w+-\d+$/)
      when 'aws-cn' then region.match?(/^cn-\w+-\d+$/)
      when 'aws-us-gov' then region.match?(/^us-gov-\w+-\d+$/)
      when 'aws-iso' then region.match?(/^us-iso-\w+-\d+$/)
      when 'aws-iso-b' then region.match?(/^us-isob-\w+-\d+$/)
      else
        false
      end
    end

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
