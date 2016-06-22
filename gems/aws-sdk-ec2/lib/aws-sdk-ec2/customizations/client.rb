require 'aws-sdk-ec2/plugins/copy_encrypted_snapshot'
require 'aws-sdk-ec2/plugins/region_validation'

module Aws
  module EC2
    class Client
      add_plugin(Plugins::CopyEncryptedSnapshot)
      add_plugin(Plugins::RegionValidation)
    end
  end
end
