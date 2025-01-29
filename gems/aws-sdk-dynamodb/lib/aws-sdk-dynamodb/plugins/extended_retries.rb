# frozen_string_literal: true

module Aws
  module DynamoDB
    module Plugins
      class ExtendedRetries < Seahorse::Client::Plugin
        option(
          :retry_limit,
          default: 10,
          doc_type: Integer,
          docstring: <<-DOCS)
The maximum number of times to retry failed requests.  Only
~ 500 level server errors and certain ~ 400 level client errors
are retried.  Generally, these are throttling errors, data
checksum errors, networking errors, timeout errors, auth errors,
endpoint discovery, and errors from expired credentials.
This option is only used in the `legacy` retry mode.
        DOCS

        option(
          :retry_base_delay,
          default: 0.05,
          doc_type: Float,
          docstring: <<-DOCS)
The base delay in seconds used by the default backoff function. This option
is only used in the `legacy` retry mode.
        DOCS
      end
    end
  end
end
