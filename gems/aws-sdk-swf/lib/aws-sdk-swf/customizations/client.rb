require 'aws-sdk-swf/plugins/read_timeouts'

module Aws
  module SWF
    class Client
      add_plugin(Plugins::ReadTimeouts)
    end
  end
end
