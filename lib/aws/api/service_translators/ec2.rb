module Aws::Api::ServiceTranslators::EC2
  class << self

    def translate(api)
      if api.version >= '2014-05-01'
        api.plugins << "Aws::Plugins::EC2CopyEncryptedSnapshot"
      end
    end

  end
end
