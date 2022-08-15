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
      rule_set ||= Aws::Endpoints::RuleSet.new(
        version: @@default_rules['version'],
        service_id: @@default_rules['serviceId'],
        parameters: @@default_rules['parameters'],
        rules: @@default_rules['rules']
      )
      @provider = Aws::Endpoints::Provider.new(rule_set)
    end

    def resolve_endpoint(parameters)
      @provider.resolve_endpoint(parameters)
    end

    @@default_rules = Aws::Json.load_file(
      File.expand_path('../../../endpoint-rule-set.json', __FILE__)
    )

  end
end
