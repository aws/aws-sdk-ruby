require 'aws-sdk-cloudsearchdomain/plugins/conditional_signing'

module Aws
  module CloudSearchDomain
    class Client
      add_plugin(Plugins::ConditionalSigning)
      remove_plugin(Aws::Plugins::RegionalEndpoint)
    end
  end
end
