module Aws::Api::ServiceTranslators::SWF
  class << self
    def translate(api)
      api.plugins << "Aws::Plugins::SWFReadTimeouts"
    end
  end
end
