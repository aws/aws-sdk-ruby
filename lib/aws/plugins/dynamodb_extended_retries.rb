module Aws
  module Plugins
    class DynamoDBExtendedRetries < Seahorse::Client::Plugin

      option(:retry_limit, 10)

      option(:retry_backoff, lambda { |context|
        if context.retries > 1
          Kernel.sleep(50 * (2 ** (context.retries - 1)) / 1000.0)
        end
      })

    end
  end
end
