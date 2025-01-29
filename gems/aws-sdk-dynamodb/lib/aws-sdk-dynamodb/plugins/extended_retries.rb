# frozen_string_literal: true

module Aws
  module DynamoDB
    module Plugins
      class ExtendedRetries < Seahorse::Client::Plugin
        DEFAULT_BACKOFF = lambda do |c|
          return unless c.retries > 1

          delay = 2**(c.retries - 1) * c.config.retry_base_delay
          if (c.config.retry_max_delay || 0) > 0
            delay = [delay, c.config.retry_max_delay].min
          end
          jitter = c.config.retry_jitter
          jitter = Aws::Plugins::RetryErrors::JITTERS[jitter] if jitter.is_a?(Symbol)
          delay = jitter.call(delay) if jitter
          Kernel.sleep(delay)
        end

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

        option(
          :retry_backoff,
          default: DEFAULT_BACKOFF,
          doc_type: Proc,
          docstring: <<-DOCS)
A proc or lambda used for backoff. Defaults to 2**retries * retry_base_delay.
This option is only used in the `legacy` retry mode.
        DOCS
      end
    end
  end
end
