# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::S3
  class EndpointProvider
    def initialize(rule_set = nil)
      if (rule_set.nil?)
        # TODO: Cache/memoize this as a class constant (may not be necessary this is not slow)
        rule_set_json = JSON.load(File.read(File.expand_path('../../../endpoint-rule-set.json', __FILE__)))
        rule_set = Aws::Endpoints::RuleSet.new(
          version: rule_set_json['version'],
          service_id: rule_set_json['serviceId'],
          parameters: rule_set_json['parameters'],
          rules: rule_set_json['rules']
        )
      end
      @rule_set = rule_set
    end

    attr_reader :rule_set

    def resolve_endpoint(parameters)
      @rule_set.rules.find { |rules| rules.match?(parameters) }
    end
  end
end