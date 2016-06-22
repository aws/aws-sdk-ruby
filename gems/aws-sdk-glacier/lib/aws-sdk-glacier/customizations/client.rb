require 'aws-sdk-glacier/plugins/account_id'
require 'aws-sdk-glacier/plugins/api_version'
require 'aws-sdk-glacier/plugins/checksums'

module Aws
  module Glacier
    class Client
      add_plugin(Plugins::AccountId)
      add_plugin(Plugins::ApiVersion)
      add_plugin(Plugins::Checksums)
    end
  end
end
