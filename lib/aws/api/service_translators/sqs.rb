module Aws::Api::ServiceTranslators::SQS
  class << self

    def translate(api)
      api.metadata['remove_error_prefix'] = 'AWS.SimpleQueueService.'
      api.plugins << 'Aws::Plugins::SQSQueueUrls'
    end

  end
end
