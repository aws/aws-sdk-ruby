require 'aws-sdk-route53/plugins/id_fix'

module Aws
  module Route53
    class Client
      add_plugin(Plugins::IdFix)
    end
  end
end
