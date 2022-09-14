# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::KMS
  class EndpointProvider
    def initialize(rule_set = nil)
      rule_set ||= EndpointProvider.endpoint_rules
      @provider = Aws::Endpoints::RulesProvider.new(rule_set)
    end

    def resolve_endpoint(parameters)
      @provider.resolve_endpoint(parameters)
    end

    # @api private
    def self.endpoint_rules
      @endpoint_rules ||= begin
        file = File.expand_path('../../endpoint-rule-set.json', __dir__)
        json = Aws::Json.load_file(file) if File.exists?(file)

        Aws::Endpoints::RuleSet.new(
          version: json['version'],
          service_id: json['serviceId'],
          parameters: json['parameters'],
          rules: json['rules']
        ) if json
      end
    end
  end
end
