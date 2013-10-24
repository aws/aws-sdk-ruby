module Aws::Api::ServiceTranslators::DynamoDB
  class << self
    def translate(api)
      api.plugins << "Aws::Plugins::DynamoDBExtendedRetries"
    end
  end
end
