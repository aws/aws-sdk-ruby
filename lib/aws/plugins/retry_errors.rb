require 'set'

module Aws
  module Plugins
    class RetryErrors < Seahorse::Client::Plugin

      option(:max_retries, 3)

    end
  end
end
