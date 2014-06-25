module Aws::Api::ServiceTranslators::CloudSearchDomain
  class << self
    def translate(api)
      api.plugins.delete("Aws::Plugins::RegionalEndpoint")
      api.plugins.delete("Aws::Plugins::Credentials")
    end
  end
end
