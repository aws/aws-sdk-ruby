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
      @@endpoint_rules ||= Aws::Json.load_file(
        File.expand_path('../../endpoint-rule-set.json', __dir__)
      )
      rule_set ||= Aws::Endpoints::RuleSet.new(
        version: @@endpoint_rules['version'],
        service_id: @@endpoint_rules['serviceId'],
        parameters: @@endpoint_rules['parameters'],
        rules: @@endpoint_rules['rules']
      )
      @provider = Aws::Endpoints::RulesProvider.new(rule_set)
    end

    def resolve_endpoint(parameters)
      @provider.resolve_endpoint(parameters)
    end
  end
end
