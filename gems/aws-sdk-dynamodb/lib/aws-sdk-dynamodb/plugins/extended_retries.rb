# frozen_string_literal: true

module Aws
  module DynamoDB
    module Plugins
      class ExtendedRetries < Seahorse::Client::Plugin

        option(:retry_limit,
          default: 10,
          required: false,
          doc_type: Integer,
          docstring: <<-DOCS)
The maximum number of times to retry failed requests.  Only
~ 500 level server errors and certain ~ 400 level client errors
are retried.  Generally, these are throttling errors, data
checksum errors, networking errors, timeout errors and auth
errors from expired credentials.
          DOCS

        option(:retry_backoff, default: lambda { |context|
          if context.retries > 1
            Kernel.sleep(50 * (2 ** (context.retries - 1)) / 1000.0)
          end
        })

      end
    end
  end
end
